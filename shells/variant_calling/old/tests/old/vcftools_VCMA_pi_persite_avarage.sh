#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J vcfpi1
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi_average.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_pi_average.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load python/2.7
python window-pi.py pi/wd_pi_chr01_10kb.sites.pi 10000 pi/wd_pi_chr01_sites_average.pi pi/wd_pi_chr01_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr02_10kb.sites.pi 10000 pi/wd_pi_chr02_sites_average.pi pi/wd_pi_chr02_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr03_10kb.sites.pi 10000 pi/wd_pi_chr03_sites_average.pi pi/wd_pi_chr03_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr04_10kb.sites.pi 10000 pi/wd_pi_chr04_sites_average.pi pi/wd_pi_chr04_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr05_10kb.sites.pi 10000 pi/wd_pi_chr05_sites_average.pi pi/wd_pi_chr05_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr06_10kb.sites.pi 10000 pi/wd_pi_chr06_sites_average.pi pi/wd_pi_chr06_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr07_10kb.sites.pi 10000 pi/wd_pi_chr07_sites_average.pi pi/wd_pi_chr07_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr08_10kb.sites.pi 10000 pi/wd_pi_chr08_sites_average.pi pi/wd_pi_chr08_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr09_10kb.sites.pi 10000 pi/wd_pi_chr09_sites_average.pi pi/wd_pi_chr09_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr10_10kb.sites.pi 10000 pi/wd_pi_chr10_sites_average.pi pi/wd_pi_chr10_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr11_10kb.sites.pi 10000 pi/wd_pi_chr11_sites_average.pi pi/wd_pi_chr11_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr12_10kb.sites.pi 10000 pi/wd_pi_chr12_sites_average.pi pi/wd_pi_chr12_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr13_10kb.sites.pi 10000 pi/wd_pi_chr13_sites_average.pi pi/wd_pi_chr13_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr14_10kb.sites.pi 10000 pi/wd_pi_chr14_sites_average.pi pi/wd_pi_chr14_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr15_10kb.sites.pi 10000 pi/wd_pi_chr15_sites_average.pi pi/wd_pi_chr15_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr16_10kb.sites.pi 10000 pi/wd_pi_chr16_sites_average.pi pi/wd_pi_chr16_sites_averageNA.pi
python window-pi.py pi/wd_pi_chr17_10kb.sites.pi 10000 pi/wd_pi_chr17_sites_average.pi pi/wd_pi_chr17_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr01_10kb.sites.pi 10000 pi/lr_pi_chr01_sites_average.pi pi/lr_pi_chr01_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr02_10kb.sites.pi 10000 pi/lr_pi_chr02_sites_average.pi pi/lr_pi_chr02_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr03_10kb.sites.pi 10000 pi/lr_pi_chr03_sites_average.pi pi/lr_pi_chr03_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr04_10kb.sites.pi 10000 pi/lr_pi_chr04_sites_average.pi pi/lr_pi_chr04_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr05_10kb.sites.pi 10000 pi/lr_pi_chr05_sites_average.pi pi/lr_pi_chr05_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr06_10kb.sites.pi 10000 pi/lr_pi_chr06_sites_average.pi pi/lr_pi_chr06_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr07_10kb.sites.pi 10000 pi/lr_pi_chr07_sites_average.pi pi/lr_pi_chr07_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr08_10kb.sites.pi 10000 pi/lr_pi_chr08_sites_average.pi pi/lr_pi_chr08_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr09_10kb.sites.pi 10000 pi/lr_pi_chr09_sites_average.pi pi/lr_pi_chr09_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr10_10kb.sites.pi 10000 pi/lr_pi_chr10_sites_average.pi pi/lr_pi_chr10_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr11_10kb.sites.pi 10000 pi/lr_pi_chr11_sites_average.pi pi/lr_pi_chr11_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr12_10kb.sites.pi 10000 pi/lr_pi_chr12_sites_average.pi pi/lr_pi_chr12_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr13_10kb.sites.pi 10000 pi/lr_pi_chr13_sites_average.pi pi/lr_pi_chr13_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr14_10kb.sites.pi 10000 pi/lr_pi_chr14_sites_average.pi pi/lr_pi_chr14_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr15_10kb.sites.pi 10000 pi/lr_pi_chr15_sites_average.pi pi/lr_pi_chr15_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr16_10kb.sites.pi 10000 pi/lr_pi_chr16_sites_average.pi pi/lr_pi_chr16_sites_averageNA.pi
python window-pi.py pi/lr_pi_chr17_10kb.sites.pi 10000 pi/lr_pi_chr17_sites_average.pi pi/lr_pi_chr17_sites_averageNA.pi
