#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=32000
#SBATCH -o ../outs/filter_dedup_new_VC_bams.out
#SBATCH -e ../outs/filter_dedup_new_VC_bams.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1

srun samtools view -b HT013_SD2W-18.sort.dup.realign.bam ./chr_regions.txt > HT013_SD2W-18.sort.dup.realign_nochr00.bam

# srun samtools view HT172_SK1W-Q.sort.dup.realign.bam chr_regions.txt > HT172_SK1W-Q.sort.dup.realign_nochr00_dedup.bam
# srun samtools view HT211_MO1W-39.sort.dup.realign.bam -R chr_regions.txt -b rmdup -S > HT211_MO1W-39.sort.dup.realign_nochr00_dedup.bam
# srun samtools view HT254_KS1W-27.sort.dup.realign.bam -R chr_regions.txt -b | samtools rmdup -S > HT254_KS1W-27.sort.dup.realign_nochr00_dedup.bam
# srun samtools view HT330_ND1W-6.sort.dup.realign.bam -R chr_regions.txt -b | samtools rmdup -S > HT330_ND1W-6.sort.dup.realign_nochr00_dedup.bam
# srun samtools view HT360_SD1W-35.sort.dup.realign.bam -R chr_regions.txt -b | samtools rmdup -S > HT360_SD1W-35.sort.dup.realign_nochr00_dedup.bam
# srun samtools view HT55_IA2W-17.sort.dup.realign.bam -R chr_regions.txt -b | samtools rmdup -S > HT55_IA2W-17.sort.dup.realign_nochr00_dedup.bam 
# srun samtools view Q075_IA1W-1.sort.dup.realign.bam -R chr_regions.txt -b | samtools rmdup -S > Q075_IA1W-1.sort.dup.realign_nochr00_dedup.bam
# srun samtools view Q086_MB1W-40.sort.dup.realign.bam -R chr_regions.txt -b | samtools rmdup -S > Q086_MB1W-40.sort.dup.realign_nochr00_dedup.bam
# srun samtools view QPG4_KS2W-35.sort.dup.realign.bam -R chr_regions.txt -b | samtools rmdup -S > QPG4_KS2W-35.sort.dup.realign_nochr00_dedup.bam