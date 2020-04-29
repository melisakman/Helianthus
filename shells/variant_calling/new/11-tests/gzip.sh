#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J zip
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/gzip1.out
#SBATCH -e /global/home/users/makman/vcftools/outs/gzip1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr02_final.vcf > chr02_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr03_final.vcf > chr03_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr04_final.vcf > chr04_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr05_final.vcf > chr05_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr06_final.vcf > chr06_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr07_final.vcf > chr07_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr08_final.vcf > chr08_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_final.vcf > chr09_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr10_final.vcf > chr10_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr11_final.vcf > chr11_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr12_final.vcf > chr12_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr13_final.vcf > chr13_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr14_final.vcf > chr14_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr15_final.vcf > chr15_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr16_final.vcf > chr16_final.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr17_final.vcf > chr17_final.vcf.gz

cp *_final.vcf.gz /clusterfs/vector/instrumentData/blackmanlab/Helianthus/final_vcf/