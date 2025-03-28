#!/bin/bash 
#SBATCH -D /global/scratch/makman/aDNA/pegas/
#SBATCH -J haplonet
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/pegas_1.out
#SBATCH -e /global/home/users/makman/paloemix_outs/pegas_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


## This script takes a list of genes and makes networks for them
## New SNPs are called using just the reads for the gene 

# export PERL5LIB=/global/home/users/makman/vcftools_0.1.13/perl/
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/global/home/groups/allhands/bin:/global/home/users/makman/bin:/global/home/users/makman/angsd/liblzma/:/global/home/users/makman/angsd/liblzma/include/lzma/:/clusterfs/vector/scratch/makman/tabix-0.2.6/
module load samtools

module load java
module load r/3.2.5

# Count number of genes in bed file and add 1 for loop  ***** CHANGE BED FILE IN NEXT LINE *******
Total_lines=`grep -c "^" /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/regions_bed.txt`
Total_lines=`expr $Total_lines + 1`

# Loops through each line of the bed file and does phasing for the gene
Line_to_read=1
while [ $Line_to_read -lt $Total_lines ]
do
   # ********* CHANGE BED FILE IN NEXT LINE (do not modify "Current_gene_tested.bed") ********
  sed "${Line_to_read}q;d" /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/regions_bed.txt > Current_gene_tested.bed;
  Line_to_read=`expr $Line_to_read + 1`
  
	var_current_gene_chr=`cut -f 1 Current_gene_tested.bed` 
	var_current_gene_start=`cut -f 2 Current_gene_tested.bed` 
	var_current_gene_end=`cut -f 3 Current_gene_tested.bed` 
	var_current_gene_name=`cut -f 4 Current_gene_tested.bed` 
	var_lower_flanking=`expr $var_current_gene_start - 5000`
	var_upper_flanking=`expr $var_current_gene_end + 5000`
	
	# Make VCF file for gene to speed things up 
	srun /global/home/users/makman/vcftools_0.1.13/bin/vcftools --gzvcf /global/scratch/makman/Sunflower_angsd/all_angsd.vcf.gz --chr $var_current_gene_chr --from-bp $var_current_gene_start --to-bp $var_current_gene_end --recode --out ${var_current_gene_name}
 	mv ${var_current_gene_name}.recode.vcf /global/scratch/makman/aDNA/pegas/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}.vcf

	# Make a loop to process each BAM file individually
	for i in $( ls /global/scratch/makman/aDNA/all_bams/*.bam ); do
	Var_current_path=${i}
	Var_current_file=`basename $Var_current_path`
	Var_current_sample=${Var_current_file/_dedup_recal.bam/}
# 	
	srun samtools view -hb -@ 19 $Var_current_path ${var_current_gene_chr}:${var_lower_flanking}-${var_upper_flanking} -o ../Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam
	srun samtools index ../Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam
# 
java -Djava.io.tmpdir=/global/scratch/makman/temp -Xmx32G -jar /global/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
     -T HaplotypeCaller \
     -nct 20 \
     -R /global/scratch/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
     -I /global/scratch/makman/aDNA/pegas/Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam \
     -L Current_gene_tested.bed \
     --emitRefConfidence GVCF \
     --dbsnp /global/scratch/makman/aDNA/pegas/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}_original.vcf \
     -o /global/scratch/makman/aDNA/pegas/Haplo_by_gene/gVCFs/raw.snps.indels_${var_current_gene_name}_${Var_current_sample}.g.vcf

	done

# Join the gVCF for the samples.  
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/temp2 -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#    -T GenotypeGVCFs \
#    -R /global/scratch/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Anzac_Pueblo.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Arikara.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Havasupai.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Hidatsa#1.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Hopi.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Laguna_Pueblo.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Mandan#2.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_MexCult1.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_MexCult14.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_MexCult15.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_MexCult3.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_MexCult6.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_MexCult7.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_MexCult9.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PI_531071.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN020.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN026.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN035.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN046.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN069.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN072.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN083.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN107.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN153.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN173.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN179.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN185.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN191.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN203.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN237.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN240.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN255.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_PPN262.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Pueblo.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_SF_33.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Seneca.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Zuni.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann01-cwIA.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann04-nwAR.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann05-ccNM.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann08-ceTN.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann06-seWY.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann10-ccIL.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann20-seAZ.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann22-nwTX.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann28-swSK.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann29-neSD.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann34-cwKS.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann39-ncNE.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_ann44-ccCA.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_annIA.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_annKS.g.vcf \
#    --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_annWY.g.vcf \
#    -o  /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}_new_calls.vcf
# 
## This output file is filtered to just the SNPs and placed into the right directory 
# 	srun vcftools --vcf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}_new_calls.vcf --recode --remove-indels --remove-filtered-all --minQ 50.0 --max-alleles 2 --out $var_current_gene_name
# 
#   /clusterfs/vector/scratch/makman/bcftools/bcftools view --max-alleles 2 -O v /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/${var_current_gene_name}.recode.vcf | sed "s/##fileformat=VCFv4.2/##fileformat=VCFv4.1/" | sed "s/##FORMAT=<ID=AD,Number=R/##FORMAT=<ID=AD,Number=./" | sed "s/(//" | sed "s/)//" | sed "s/,Version=\"3\">/>/" | /clusterfs/vector/scratch/makman/bcftools/bcftools view -O v > /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}.recode.vcf
#    mv ${var_current_gene_name}.recode.vcf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}.before_downgrade.vcf
# # 
# # doing read backed phasing sample by sample
# # Make a loop to process each BAM file individually
 # 	for i in $( ls /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/*1W*.bam ); do
# 	 	Var_current_path=${i}
#  		Var_current_file=`basename $Var_current_path`
#  		Var_current_sample=${Var_current_file/_dedup_recal.bam/}
# 
# 	/clusterfs/vector/scratch/makman/haplotype_networks/jre1.7.0_80/bin/java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/temp3 -server -Xmx2g -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-2.8-1-g932cd3a/GenomeAnalysisTK.jar \
#       -T ReadBackedPhasing \
#       -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#       -I /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam \
#       --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}.recode.vcf \
#       -o /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf \
#       -L Current_gene_tested.bed \
#        --min_base_quality_score 17 \
#        --min_mapping_quality_score 20 \
#        --phaseQualityThresh 20 \
#       --sampleToPhase ${Var_current_sample} \
#       -et NO_ET \
#       -K /clusterfs/vector/scratch/makman/GenomeAnalysisTK-2.8-1-g932cd3a/makman.key
# 	
# # 		# Compress vcf for merging with other files
# # 
# 		srun /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf > /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf.gz 
#  		srun /clusterfs/vector/scratch/makman/tabix-0.2.6/tabix -p vcf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf.gz  
# # 
# 	done
# # 
#  	srun vcf-merge /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_*.vcf.gz  | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/merged_${var_current_gene_name}_phased.vcf.gz
# 	srun /clusterfs/vector/scratch/makman/bcftools/bcftools reheader -o /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/renamed_${var_current_gene_name}_phased.vcf.gz -s /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/Scripts/Names_for_pegas.txt /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/merged_${var_current_gene_name}_phased.vcf.gz
#  
#  	# Run pegas in R on the files and make PDFs
#  	Rscript --vanilla /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/Scripts/Pegas_on_VCF.R $var_current_gene_name merged_${var_current_gene_name}_phased.vcf.gz
# #  	
#  	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=/clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/Network_plots/${var_current_gene_name}_networks.pdf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/HapNet_${var_current_gene_name}*.pdf
#  	#rm  /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/HapNet_${var_current_gene_name}*.pdf 
#  	rm Current_gene_tested.bed
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/merged_${var_current_gene_name}_phased.vcf.gz
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_*
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_*
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}*
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}*
 
done

