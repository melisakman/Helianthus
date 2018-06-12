#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/cp_haplotype
#SBATCH -J vcfFilter
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=32000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_filter_cp_haplotype.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_filter_cp_haplotype.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
module load bio/vcftools/0.1.15


vcftools --vcf All_plastomes_5.named.vcf --keep samples.txt > plastome_melis.vcf