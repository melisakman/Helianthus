#!/bin/bash
#
#SBATCH --job-name=Sictransit_WestEurope
#SBATCH --mail-user=nathan.wales@york.ac.uk
#SBATCH --mail-type=All
#SBATCH --ntasks=1                							
#SBATCH --cpus-per-task=1         			
#SBATCH --mem=6GB											# Nodes have up to 192GB
#SBATCH --time=1:00:00								
#SBATCH --output job_1_against_panel.%j.out						
#SBATCH --error job_1_against_panel.%j.err						
#SBATCH --account=arch-adna-2019         				
#SBATCH -D /users/naw525/scratch/SICTRANSIT/nuclear/SmartPCA/14_Segesta_2021-07/


########      Set up       ########

# Provide genome path and genome name
genome_path="/mnt/lustre/groups/arch-adna-2019/reference_genomes/Homo_sapiens/hs37d5_1_to_24/hs37d5_1_to_24.fasta"
SNP_db_path="/mnt/lustre/groups/arch-adna-2019/programs/Reich_genotypes_v42.4/"
SNP_database="v42.4.1240K"
input_bam_path="/mnt/lustre/groups/arch-adna-2019/For_Aurore/04_ModifiedBamfiles/"
Run_name="Segesta_WestEurope_0.05X"


sample_information_file="Segesta_0.05X_WestEurope.txt"
# The above file is in the format of: Sample_name Letter_of_sex
# e.g.    CDMBN4	M
# The sex was determined previously using the Skoglund script

# The bam files need to be the "updated" ones that have the sex chromosomes named as "23" and "24"
# The bam files come from paleomix and were realigned and rescaled for damage


########    End set up       ########



list_of_sample_names=`cut -f1 ${sample_information_file}`
list_of_sample_names_commas=`echo $list_of_sample_names | sed 's/ /,/g'`
list_of_bam_files=`cut -f1 ${sample_information_file} | sed 's/$/.updated_genome.bam/g' | sed "s|^|${input_bam_path}|g"`
list_of_sex_information=`cut -f2 ${sample_information_file}`



module load bio/SAMtools/1.10-foss-2018b

samtools mpileup --ignore-RG --no-BAQ --positions ${SNP_db_path}/${SNP_database}.position_list.txt \
--min-MQ 30  --min-BQ 30  --fasta-ref ${genome_path} ${list_of_bam_files} | \
pileupCaller --randomHaploid --sampleNames ${list_of_sample_names_commas} --samplePopName SICTRANSIT \
-f ${SNP_db_path}/${SNP_database}.snp  -e ${Run_name}

genoStats -g ${Run_name}.geno.txt \
-s ${Run_name}.snp.txt \
-i ${Run_name}.ind.txt > ${Run_name}.stats.txt
 

# Add sex information from the file above
mv ${Run_name}.ind.txt Original_${Run_name}.ind.txt
cut -f 3 Original_${Run_name}.ind.txt | paste ${sample_information_file} -> ${Run_name}.ind.txt
rm  Original_${Run_name}.ind.txt


# Automatically create parameter file to convert EIGENSTRAT into PACKEDANCESTRYMAP
echo \
"genotypename:    ${Run_name}.geno.txt
snpname:         /mnt/lustre/groups/arch-adna-2019/programs/Reich_genotypes_v42.4/${SNP_database}.snp
indivname:       ${Run_name}.ind.txt
outputformat:    PACKEDANCESTRYMAP
genotypeoutname: ${Run_name}.packedancestrymap.geno
snpoutname:      ${Run_name}.packedancestrymap.snp
indivoutname:    ${Run_name}.packedancestrymap.ind" \
> ${Run_name}.convertf.parameter

# Now use parameter file and convertf to convert EIGENSTRAT into PACKEDANCESTRYMAP
module load bio/EIGENSOFT/7.2.1-foss-2018b
convertf -p ${Run_name}.convertf.parameter


# Automatically create parameter file to merge this data set with panel using mergeit software
echo \
"geno1: ${Run_name}.packedancestrymap.geno
snp1:  ${Run_name}.packedancestrymap.snp
ind1:   ${Run_name}.packedancestrymap.ind
geno2: /mnt/lustre/groups/arch-adna-2019/programs/Reich_genotypes_v42.4/${SNP_database}.geno
snp2:  /mnt/lustre/groups/arch-adna-2019/programs/Reich_genotypes_v42.4/${SNP_database}.snp
ind2:  /mnt/lustre/groups/arch-adna-2019/programs/Reich_genotypes_v42.4/${SNP_database}.ind 
genooutfilename:   ${Run_name}.merged.${SNP_database}.geno
snpoutfilename:    ${Run_name}.merged.${SNP_database}.snp
indoutfilename:    ${Run_name}.merged.${SNP_database}.ind" \
> ${Run_name}.mergeit.parameter

# Now use parameter file and mergeit to merge this data with the reference panel
mergeit -p ${Run_name}.mergeit.parameter

# Clean up by moving parameter files and deleting intermediate genotyping files. Only merged file needs to be kept
mkdir -p parameter_files
mv ${Run_name}.mergeit.parameter ${Run_name}.convertf.parameter parameter_files

rm ${Run_name}.geno.txt  ${Run_name}.snp.txt  ${Run_name}.ind.txt
rm ${Run_name}.packedancestrymap.geno  ${Run_name}.packedancestrymap.snp  ${Run_name}.packedancestrymap.ind

### These merged file is ready to be run in SmartPCA
#   You may need to set many samples to "IGNORE" based on what needs to be included in the panel
#   Another script should be used to run SmartPCA because it can do multithreading and more CPUs should be requested



