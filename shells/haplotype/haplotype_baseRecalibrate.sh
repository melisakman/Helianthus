#!/bin/bash
#
#SBATCH --job-name=BaseReCal
#SBATCH --partition=vector
#SBATCH -D /global/scratch/nwales/Haplotypes/
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=24:00:00
#SBATCH -o /global/scratch/nwales/Haplotypes/Scripts/BaseRecal_Group_6.out
#SBATCH -e /global/scratch/nwales/Haplotypes/Scripts/BaseRecal_Group_6.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All


module load java

# Make a loop to process each BAM file individually
for i in $( ls /global/scratch/nwales/Haplotypes/BAM_files/Group_6/*.bam ); do
	Var_current_path=${i}
	Var_current_file=`basename $Var_current_path`
	Var_current_sample=${Var_current_file/_no_Chr00_HanXRQ_dup.bam/}
	
## 1) Run Basecall on Bam file. About 2 hours per sample.
# doing just for chromosome 1 to make it faster.  

java -Xmx32G -jar /global/home/users/nwales/programs/GenomeAnalysisTK-3.7/GenomeAnalysisTK.jar \
    -T BaseRecalibrator \
    -R /global/scratch/nwales/Genomes/XRQ_ref_GATK/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I $Var_current_path \
    -L HanXRQChr01 \
    -knownSites /global/scratch/nwales/Phasing/Original_VCF/XRQ_fil_ordered_combined.vcf \
    -o /global/scratch/nwales/Haplotypes/BaseRecalibrator/recal_data_${Var_current_sample}.table


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

java -Xmx32G -jar /global/home/users/nwales/programs/GenomeAnalysisTK-3.7/GenomeAnalysisTK.jar \
    -T PrintReads \
    -R /global/scratch/nwales/Genomes/XRQ_ref_GATK/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I $Var_current_path \
    -BQSR /global/scratch/nwales/Haplotypes/BaseRecalibrator/recal_data_${Var_current_sample}.table \
    -o /global/scratch/nwales/Haplotypes/BAM_recal/${Var_current_sample}_recal.bam

done



