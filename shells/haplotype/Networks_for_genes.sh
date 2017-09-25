#!/bin/bash
#
#
#SBATCH --job-name=haplo
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH --mem=96000
#SBATCH -o ../outs/haplotypes_new_VC2.out
#SBATCH -e ../outs/haplotypes_new_VC2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


#SBATCH --cpus-per-task=20

## This script takes a list of genes and makes networks for them
## New SNPs are called using just the reads for the gene 

module load samtools/1.3.1
module load vcftools/0.1.13

module load java
module load r/3.2.5
module load ghostscript/9.04

# Count number of genes in bed file and add 1 for loop  ***** CHANGE BED FILE IN NEXT LINE *******
Total_lines=`grep -c "^" Bens_genes.bed`
Total_lines=`expr $Total_lines + 1`

# Loops through each line of the bed file and does phasing for the gene
Line_to_read=1
while [ $Line_to_read -lt $Total_lines ]
do
   # ********* CHANGE BED FILE IN NEXT LINE (do not modify "Current_gene_tested.bed") ********
  sed "${Line_to_read}q;d" Bens_genes.bed > Current_gene_tested.bed;
  Line_to_read=`expr $Line_to_read + 1`
  
	var_current_gene_chr=`cut -f 1 Current_gene_tested.bed` 
	var_current_gene_start=`cut -f 2 Current_gene_tested.bed` 
	var_current_gene_end=`cut -f 3 Current_gene_tested.bed` 
	var_current_gene_name=`cut -f 4 Current_gene_tested.bed` 
	var_lower_flanking=`expr $var_current_gene_start - 200`
	var_upper_flanking=`expr $var_current_gene_end + 200`
	
	# Make VCF file for gene to speed things up 
	srun vcftools --vcf /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/HanXRQ_filtered_ordered_newVC.vcf --chr $var_current_gene_chr --from-bp $var_current_gene_start --to-bp $var_current_gene_end --recode --out ${var_current_gene_name}_original
 	mv ${var_current_gene_name}_original.recode.vcf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}_original.vcf

	# Make a loop to process each BAM file individually
	for i in $( ls /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/*.bam ); do
	Var_current_path=${i}
	Var_current_file=`basename $Var_current_path`
	Var_current_sample=${Var_current_file/.sort.dup.realign_nochr00_dedup_recal.bam/}
	
	srun samtools view -hb -@ 19 $Var_current_path ${var_current_gene_chr}:${var_lower_flanking}-${var_upper_flanking} -o BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam
	srun samtools index BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam

java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/temp1 -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
     -T HaplotypeCaller \
     -nct 20 \
     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
     -I /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam \
     -L Current_gene_tested.bed \
     --emitRefConfidence GVCF \
     --dbsnp /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}_original.vcf \
     -o /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_${Var_current_sample}.g.vcf

	done

## Join the gVCF for the samples.  
java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/temp2 -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -T GenotypeGVCFs \
   -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_HT013_SD2W-18.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_HT172_SK1W-Q.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_HT211_MO1W-39.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_HT254_KS1W-27.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_HT330_ND1W-6.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_HT360_SD1W-35.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_HT55_IA2W-17.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Q075_IA1W-1.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_Q086_MB1W-40.g.vcf \
   --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}_QPG4_KS2W-35.g.vcf \
      -o  /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}_new_calls.vcf

## This output file is filtered to just the SNPs and placed into the right directory 
	srun vcftools --vcf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}_new_calls.vcf --recode --remove-indels --remove-filtered-all --minQ 50.0 --max-alleles 2 --out $var_current_gene_name

   ~/programs/bcftools/bin/bcftools view --max-alleles 2 -O v /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/${var_current_gene_name}.recode.vcf | sed "s/##fileformat=VCFv4.2/##fileformat=VCFv4.1/" | sed "s/##FORMAT=<ID=AD,Number=R/##FORMAT=<ID=AD,Number=./" | sed "s/(//" | sed "s/)//" | sed "s/,Version=\"3\">/>/" | ~/programs/bcftools/bin/bcftools view -O v > /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}.recode.vcf
   mv ${var_current_gene_name}.recode.vcf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}.before_downgrade.vcf

# doing read backed phasing sample by sample
# Make a loop to process each BAM file individually
 	for i in $( ls /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/*.bam ); do
	 	Var_current_path=${i}
 		Var_current_file=`basename $Var_current_path`
 		Var_current_sample=${Var_current_file/.sort.dup.realign_nochr00_dedup_recal.bam/}
#  		Var_current_sample= `basename $Var_current_file, ".sort.dup.realign_nochr00_dedup_recal.bam"`

/clusterfs/vector/scratch/makman/haplotype_networks/jre1.7.0_80/bin/java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/temp3 -server -Xmx2g -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
      -T ReadBackedPhasing \
      -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
      -I /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_${Var_current_sample}.bam \
      --variant /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}.recode.vcf \
      -o /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf \
      -L Current_gene_tested.bed \
       --min_base_quality_score 17 \
       --min_mapping_quality_score 20 \
       --phaseQualityThresh 20 \
      --sampleToPhase ${Var_current_sample} \
      -et NO_ET 
#       -K /global/home/users/nwales/programs/GenomeAnalysisTK-2.6-5-gba531bd/nathan.wales_berkeley.edu.key
	
		# Compress vcf for merging with other files

		srun bgzip -c /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf > /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf.gz 
		srun tabix -p vcf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_${Var_current_sample}.vcf.gz  

	done

 	srun vcf-merge /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_*.vcf.gz  | ~/programs/tabix-0.2.6/bgzip -c > /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/merged_${var_current_gene_name}_phased.vcf.gz
	srun /clusterfs/vector/scratch/makman/bcftools/bcftools reheader -o /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/renamed_${var_current_gene_name}_phased.vcf.gz -s /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/Scripts/Names_for_pegas.txt  /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/merged_${var_current_gene_name}_phased.vcf.gz
 
 	# Run pegas in R on the files and make PDFs
 	Rscript --vanilla /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/Scripts/Pegas_on_VCF.R $var_current_gene_name renamed_${var_current_gene_name}_phased.vcf.gz
 	
 	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=/clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/Network_plots/${var_current_gene_name}_networks.pdf /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/HapNet_${var_current_gene_name}*.pdf
 	#rm  /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/HapNet_${var_current_gene_name}*.pdf 
#  	rm Current_gene_tested.bed
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final/merged_${var_current_gene_name}_phased.vcf.gz
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_readback/phased_${var_current_gene_name}_*
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/BAMs_for_gene/Reads_${var_current_gene_name}_*
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_per_gene/${var_current_gene_name}*
	#rm /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/gVCF_samples/raw.snps.indels_${var_current_gene_name}*
 
done

