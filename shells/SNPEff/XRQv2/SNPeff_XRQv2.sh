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
cat chr01_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr01.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr01_final_snpeff.vcf.gz
cat chr02_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr02.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr02_final_snpeff.vcf.gz
cat chr03_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr03.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr03_final_snpeff.vcf.gz
cat chr04_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr04.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr04_final_snpeff.vcf.gz
cat chr05_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr05.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr05_final_snpeff.vcf.gz
cat chr06_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr06.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr06_final_snpeff.vcf.gz
cat chr07_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr07.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr07_final_snpeff.vcf.gz
cat chr08_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr08.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr08_final_snpeff.vcf.gz
cat chr09_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr09.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr09_final_snpeff.vcf.gz
cat chr10_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr10.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr10_final_snpeff.vcf.gz
cat chr11_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr11.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr11_final_snpeff.vcf.gz
cat chr12_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr12.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr12_final_snpeff.vcf.gz
cat chr13_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr13.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr13_final_snpeff.vcf.gz
cat chr14_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr14.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr14_final_snpeff.vcf.gz
cat chr15_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr15.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr15_final_snpeff.vcf.gz
cat chr16_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr16.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr16_final_snpeff.vcf.gz
cat chr17_final.vcf | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr17.html XRQ | /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c > snpEff/chr17_final_snpeff.vcf.gz
