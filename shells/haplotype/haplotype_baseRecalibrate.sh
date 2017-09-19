#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o ../outs/base_calibrate_chr00_new_VC.out
#SBATCH -e ../outs/base_calibrate_chr00_new_VC.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load java

# Make a loop to process each BAM file individually
for i in $( ls /clusterfs/vector/scratch/makman/haplotype_networks/bams/*_dedup.bam ); do
	Var_current_path=${i}
	Var_current_file=`basename $Var_current_path`
	Var_current_sample=${Var_current_file/_nochr00_dedup.bam/}
	
## 1) Run Basecall on Bam file. About 2 hours per sample.
# doing just for chromosome 1 to make it faster.  

java -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T BaseRecalibrator \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I $Var_current_path \
    -L HanXRQChr01 \
    -knownSites /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/HanXRQ_filtered_ordered_newVC.vcf \
    -o /clusterfs/vector/scratch/makman/haplotype_networks/recal_data_${Var_current_sample}.table


# 2) Do a second pass to analyze covariation remaining after recalibration
# java -Xmx32G -jar /global/home/users/nwales/programs/GenomeAnalysisTK-3.7/GenomeAnalysisTK.jar \
#     -T BaseRecalibrator \
#     -R /global/scratch/nwales/Genomes/XRQ_ref_GATK/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I $Var_current_path \
#     -knownSites /global/scratch/nwales/Phasing/Original_VCF/XRQ_fil_ordered_combined.vcf \
#     -BQSR /global/scratch/nwales/Haplotypes/BaseRecalibrator/recal_data_${Var_current_sample}.table \
#     -o /global/scratch/nwales/Haplotypes/BaseRecalibrator/post_recal_data_${Var_current_sample}.table
# 
# 3) Generate before/after plots (must load R for the PDF to be make)
# 
# module load r
# 
# java -Xmx32G -jar /global/home/users/nwales/programs/GenomeAnalysisTK-3.7/GenomeAnalysisTK.jar \
#     -T AnalyzeCovariates \
#     -R /global/scratch/nwales/Genomes/XRQ_ref_GATK/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -before /global/scratch/nwales/Haplotypes/BaseRecalibrator/recal_data_${Var_current_sample}.table \
#     -after /global/scratch/nwales/Haplotypes/BaseRecalibrator/post_recal_data_${Var_current_sample}.table \
#     -plots /global/scratch/nwales/Haplotypes/BaseRecalibrator/recalibration_plots_${Var_current_sample}.pdf

## 4) Apply the recalibration to your sequence data and make new BAM file

java -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T PrintReads \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I $Var_current_path \
    -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/recal_data_${Var_current_sample}.table \
    -o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/${Var_current_sample}_recal.bam

done



