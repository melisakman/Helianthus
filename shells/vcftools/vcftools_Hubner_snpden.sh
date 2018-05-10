#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/coverage_haplotype
#SBATCH -J snpden
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_Hubner_snpden.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_Hubner_snpden.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
vcftools --gzvcf /clusterfs/vector/instrumentData/blackmanlab/Helianthus/vcf/XRQ_fil_ordered_combined.vcf.gz --chr HanXRQChr02 --from-bp 278 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --SNPdensity 2000 --out wd_snpden_chr02_2kb
