#!/bin/bash
#
#SBATCH --job-name=ngsLD_Alred_Merged
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/5_ngsLD/
#SBATCH --begin=19:00:00
#SBATCH --time=40:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/5_ngsLD_Alred_Merged.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/5_ngsLD_Alred_Merged.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

Project_name="Merged_Alred_angsd"
BAM_list="Bam_list_Merged_Alred_2X.txt"
BAM_list_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
angsd_file_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"

mkdir ${Project_name}
cd ${Project_name}

cp ${BAM_list_path}/${BAM_list} .
sed -i 's/.XRQ_nuclear.realigned.bam//g' ${BAM_list}
sed -i 's/.*\///g' ${BAM_list}
number_of_samples=`wc -l < ${BAM_list}`

cp ${angsd_file_path}/${Project_name}.mafs.gz .
cp ${angsd_file_path}/${Project_name}.counts.gz .


### Starts with XXX SNPs, but this needs to be reduced
### Going to keep the sites that are well covered across samples. Want 75% or better coverage
### And only keeping the sites where Alred is covered (using coverage)

echo "Starting to run R to find well covered SNPs"

module load r

R --vanilla --args ${Project_name}.mafs.gz ${Project_name}.counts.gz  ${Project_name}_SNP_coverage_unfiltered.csv Alred_sites_stats.csv  ${Project_name}_well_covered.mafs --no-save <<RSCRIPT
#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

angsd_locations <- read.delim(file = args[1])
coverage_counts <- read.delim(file = args[2])

library(plyr)

Mycounts <- count(df = angsd_locations, vars = "nInd")
Mycounts[,"cumsum"] <- rev(cumsum(rev(Mycounts[ ,"freq"])))
write.csv(Mycounts, file=args[3], row.names=FALSE, quote=FALSE)

maximum_ind <- max(Mycounts[ , "nInd"])

Alred_counts <- coverage_counts[,"ind79TotDepth"]
Alred_mean_on_SNPs <- mean(Alred_counts)
Alred_SD_on_SNPs <- sd(Alred_counts)
Alred_cutoff <- Alred_mean_on_SNPs + 3 * Alred_SD_on_SNPs
Alred_statistics <- cbind(Alred_mean_on_SNPs, Alred_SD_on_SNPs, Alred_cutoff)
write.csv(Alred_statistics, file=args[4], row.names=FALSE, quote=FALSE)

angsd_locations <- cbind(angsd_locations,Alred_counts)

well_covered_locations <- angsd_locations[angsd_locations[, "nInd"] > (0.75 * maximum_ind) & (angsd_locations[, "Alred_counts"] > 0) & (angsd_locations[, "Alred_counts"] < Alred_cutoff) , ]

## makes sure the sorting is correct
well_covered_locations_temp1 <-  well_covered_locations
well_covered_locations_temp1[,"index"] <- as.numeric(row.names(well_covered_locations_temp1))
well_covered_locations_temp2 <- well_covered_locations_temp1[order(well_covered_locations_temp1[,"index"]), ]

write.table(well_covered_locations_temp2, file=args[5], sep = "\t", row.names=FALSE, quote=FALSE)

RSCRIPT

rm ${Project_name}.mafs.gz ${Project_name}.counts.gz

# Analysis started with  XXXX  SNPs
# Keeping 75% covered and normal Alred coverage leaves XXXX SNPs (90% is too low)
# Use the filtered sites and pull out the same lines of the Beagle file

awk '{print $1"_"$2}' ${Project_name}_well_covered.mafs > ${Project_name}_SNPs_to_find.txt
zcat ${angsd_file_path}/${Project_name}.beagle.gz > ${Project_name}.beagle
head -n1 ${Project_name}.beagle > ${Project_name}_covered.beagle
awk 'NR==FNR{SNPs[$1]=$1; next} $1 in SNPs' ${Project_name}_SNPs_to_find.txt ${Project_name}.beagle >> ${Project_name}_covered.beagle
rm ${Project_name}.beagle

# Split beagle file into individual chromosomes
sed '1d' ${Project_name}_covered.beagle > ${Project_name}_for_splitting.beagle
awk -F_ '{print > $1".beagle"}' ${Project_name}_for_splitting.beagle
rm ${Project_name}_for_splitting.beagle ${Project_name}_SNPs_to_find.txt

# Make a list of chromosomes to process
echo -e "HanXRQChr01\nHanXRQChr02\nHanXRQChr03\nHanXRQChr04\nHanXRQChr05\nHanXRQChr06\nHanXRQChr07\nHanXRQChr08\nHanXRQChr09\nHanXRQChr10\nHanXRQChr11\nHanXRQChr12\nHanXRQChr13\nHanXRQChr14\nHanXRQChr15\nHanXRQChr16\nHanXRQChr17" > Chromosome_names.txt

mkdir LD_0.2_${Project_name}

cat Chromosome_names.txt| while read Chr_name
do
	echo "Starting to prepare for ngsLD: " $Chr_name
	date
	sed -e 's/_/\t/' ${Chr_name}.beagle | ~/programs/pigz-2.4/pigz -p ${SLURM_CPUS_PER_TASK} > ${Project_name}_${Chr_name}.beagle.gz
	zcat ${Project_name}_${Chr_name}.beagle.gz | cut -f1-2 > ${Project_name}_${Chr_name}.pos
	number_sites=`wc -l < ${Project_name}_${Chr_name}.pos`	
	rm ${Chr_name}.beagle

	module purge
	module load zlib/1.2.11
	module load gsl/2.0
	module load gcc/6.3.0
	
	echo "Starting to run ngsLD on: " $Chr_name
	date
	~/programs/ngsLD/ngsLD --geno ${Project_name}_${Chr_name}.beagle.gz --n_ind $number_of_samples --n_sites $number_sites --out ngsLD_${Project_name}_${Chr_name}.ld --pos ${Project_name}_${Chr_name}.pos --max_kb_dist 10 --probs --n_threads ${SLURM_CPUS_PER_TASK} --rnd_sample 1

	echo "Starting to run ngsLD perl pruning script on: " $Chr_name
	date
	perl ~/programs/ngsLD/scripts/prune_graph.pl --in_file ngsLD_${Project_name}_${Chr_name}.ld --max_kb_dist 10 --min_weight 0.2 --out unlinked_${Project_name}_${Chr_name}.id
	echo "Starting to sort ngsLD pruned file on: " $Chr_name
	date
	sort -k 2n -t : unlinked_${Project_name}_${Chr_name}.id > LD_0.2_${Project_name}/unlinked_${Project_name}_${Chr_name}_sort.id
	rm ${Project_name}_${Chr_name}.beagle.gz ${Project_name}_${Chr_name}.pos ngsLD_${Project_name}_*.ld unlinked_${Project_name}_${Chr_name}.id 
done

echo "Making summary file and cleaning up ngsLD"

cat LD_0.2_${Project_name}/unlinked_${Project_name}_*_sort.id > unlinked_${Project_name}_0.2_all.id
sed -e 's/:/_/g' unlinked_${Project_name}_0.2_all.id > unlinked_${Project_name}_0.2_all_underscore.id

rm Chromosome_names.txt

~/programs/pigz-2.4/pigz -p ${SLURM_CPUS_PER_TASK} ${Project_name}_covered.beagle

## Next: 
## The uncompressed file is ready or ngsAdmix: ${Project_name}_covered.beagle

# Take the locations for the haplo file for RAxML
### get the same haplo lines as in ngsLD file

zcat ${angsd_file_path}/${Project_name}.haplo.gz > ${Project_name}.haplo
head -n1 ${Project_name}.haplo > ${Project_name}_LDpruned.haplo
awk '{print $1"_"$2}' ${Project_name}.haplo > temp_merged_position.txt
cut -f 2- ${Project_name}.haplo | paste temp_merged_position.txt - > ${Project_name}.renamed.haplo
head -1 ${Project_name}.haplo > ${Project_name}_LDpruned.haplo

awk 'NR==FNR{SNPs[$1]=$1; next} $1 in SNPs' unlinked_${Project_name}_0.2_all_underscore.id ${Project_name}.renamed.haplo >> ${Project_name}_LDpruned.haplo

## Delete the header and first three columns of the pruned haplo file
cut -f4- ${Project_name}_LDpruned.haplo | tail -n +2  > ${Project_name}_cleandata.haplo

START=1
END=${number_of_samples}

for (( c=$START; c<=$END; c++ ))
do
	printf ">"
	head -$c ${BAM_list} | tail -1
	cut  -f${c} ${Project_name}_cleandata.haplo  | tr -d $'\n'
	printf "\n"
done > ${Project_name}.fasta

rm  temp_merged_position.txt ${Project_name}.haplo  ${Project_name}_LDpruned.haplo   ${Project_name}.renamed.haplo ${Project_name}_cleandata.haplo
  
