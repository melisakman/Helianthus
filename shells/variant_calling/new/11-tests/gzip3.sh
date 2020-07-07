#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfTajD
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=36000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/gzip1.out
#SBATCH -e /global/home/users/makman/vcftools/outs/gzip1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
# gzip chr04_final.vcf
# gzip chr05_final.vcf
# gzip chr06_final.vcf
# gzip chr07_final.vcf
# gzip chr08_final.vcf
# gzip chr09_final.vcf
# gzip chr10_final.vcf
# gzip chr11_final.vcf
# gzip chr12_final.vcf
# gzip chr13_final.vcf
# gzip chr14_final.vcf
# gzip chr15_final.vcf
# gzip chr16_final.vcf
# gzip chr17_final.vcf

gzip *.vcf