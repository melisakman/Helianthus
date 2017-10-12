#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=8:00:00
#SBATCH --mem=48000
#SBATCH -o ../outs/base_calibrate_chr00_new_VC10.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_chr00_new_VC10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load java


java -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T BaseRecalibrator \
    --fix_misencoded_quality_scores \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I annNM_405_nochr00_dedup.bam \
    -L HanXRQChr01 \
    -knownSites /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered/HanXRQ_filtered_ordered_newVC.vcf \
    -o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/annNM_405_nochr00_dedup.table

java -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T PrintReads \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I annNM_405_nochr00_dedup.bam \
    -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/annNM_405_nochr00_dedup.table \
    -o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/annNM_405_nochr00_dedup_recal.bam






