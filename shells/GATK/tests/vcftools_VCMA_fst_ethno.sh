#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/VCMA_ethno
#SBATCH -J vcffst
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_ethno_fst.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_ethno_fst.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
vcftools --vcf VC_MA_combined_all_ethno_hardfiltered_filtered_sorted.vcf --minQ 50 --minDP 5 --maxDP 50 --max-missing 0.8 --weir-fst-pop ethno_wd.txt --weir-fst-pop ethno_lr.txt --fst-window-size 10000 --out lr_wd_ethno_10kb
