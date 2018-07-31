#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_VQSR_final.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_VQSR_final.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
zcat chr01_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr01.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr01_final_snpeff.vcf.gz
zcat chr02_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr02.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr02_final_snpeff.vcf.gz
zcat chr03_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr03.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr03_final_snpeff.vcf.gz
zcat chr04_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr04.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr04_final_snpeff.vcf.gz
zcat chr05_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr05.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr05_final_snpeff.vcf.gz
zcat chr06_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr06.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr06_final_snpeff.vcf.gz
zcat chr07_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr07.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr07_final_snpeff.vcf.gz
zcat chr08_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr08.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr08_final_snpeff.vcf.gz
zcat chr09_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr09.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr09_final_snpeff.vcf.gz
zcat chr10_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr10.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr10_final_snpeff.vcf.gz
zcat chr11_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr11.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr11_final_snpeff.vcf.gz
zcat chr12_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr12.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr12_final_snpeff.vcf.gz
zcat chr13_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr13.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr13_final_snpeff.vcf.gz
zcat chr14_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr14.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr14_final_snpeff.vcf.gz
zcat chr15_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr15.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr15_final_snpeff.vcf.gz
zcat chr16_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr16.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr16_final_snpeff.vcf.gz
zcat chr17_final.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VQSR_final_SNPEff_stats_chr17.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr17_final_snpeff.vcf.gz
