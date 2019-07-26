#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J snpEff
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQv2.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQv2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
cat chr01_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr01.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr01_SNP_snpeff.vcf.gz
cat chr02_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr02.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr02_SNP_snpeff.vcf.gz
cat chr03_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr03.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr03_SNP_snpeff.vcf.gz
cat chr04_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr04.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr04_SNP_snpeff.vcf.gz
cat chr05_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr05.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr05_SNP_snpeff.vcf.gz
cat chr06_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr06.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr06_SNP_snpeff.vcf.gz
cat chr07_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr07.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr07_SNP_snpeff.vcf.gz
cat chr08_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr08.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr08_SNP_snpeff.vcf.gz
cat chr09_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr09.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr09_SNP_snpeff.vcf.gz
cat chr10_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr10.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr10_SNP_snpeff.vcf.gz
cat chr11_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr11.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr11_SNP_snpeff.vcf.gz
cat chr12_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr12.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr12_SNP_snpeff.vcf.gz
cat chr13_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr13.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr13_SNP_snpeff.vcf.gz
cat chr14_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr14.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr14_SNP_snpeff.vcf.gz
cat chr15_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr15.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr15_SNP_snpeff.vcf.gz
cat chr16_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr16.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr16_SNP_snpeff.vcf.gz
cat chr17_SNP.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr17.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr17_SNP_snpeff.vcf.gz
