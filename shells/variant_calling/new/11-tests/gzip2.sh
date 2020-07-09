#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J vcfTajD
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/gzip1.out
#SBATCH -e /global/home/users/makman/vcftools/outs/gzip1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
# gzip chr04_final.vcf
# gzip chr05_final.vcf
# gzip chr06_final.vcf
# gzip chr07_final.vcf
# gzip chr08_final.vcf
gzip chr09_final.vcf
gzip chr10_final.vcf
gzip chr11_final.vcf
gzip chr12_final.vcf
# gzip chr13_final.vcf
# gzip chr14_final.vcf
# gzip chr15_final.vcf
# gzip chr16_final.vcf
# gzip chr17_final.vcf
