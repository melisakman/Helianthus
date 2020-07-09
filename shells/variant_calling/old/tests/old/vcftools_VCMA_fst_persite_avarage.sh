#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst_average.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst_average.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load python/2.7
# python window-fst.py fst/lr_wd_chr01_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr01_sites_average.fst fst/lr_wd_fst_chr01_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr02_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr02_sites_average.fst fst/lr_wd_fst_chr02_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr03_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr03_sites_average.fst fst/lr_wd_fst_chr03_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr04_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr04_sites_average.fst fst/lr_wd_fst_chr04_sites_averageNA.fst
python window-fst.py fst/lr_wd_chr05_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr05_sites_average.fst fst/lr_wd_fst_chr05_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr06_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr06_sites_average.fst fst/lr_wd_fst_chr06_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr07_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr07_sites_average.fst fst/lr_wd_fst_chr07_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr08_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr08_sites_average.fst fst/lr_wd_fst_chr08_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr09_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr09_sites_average.fst fst/lr_wd_fst_chr09_sites_averageNA.fst
python window-fst.py fst/lr_wd_chr10_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr10_sites_average.fst fst/lr_wd_fst_chr10_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr11_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr11_sites_average.fst fst/lr_wd_fst_chr11_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr12_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr12_sites_average.fst fst/lr_wd_fst_chr12_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr13_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr13_sites_average.fst fst/lr_wd_fst_chr13_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr14_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr14_sites_average.fst fst/lr_wd_fst_chr14_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr15_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr15_sites_average.fst fst/lr_wd_fst_chr15_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr16_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr16_sites_average.fst fst/lr_wd_fst_chr16_sites_averageNA.fst
# python window-fst.py fst/lr_wd_chr17_persite.windowed.weir.fst 10000 fst/lr_wd_fst_chr17_sites_average.fst fst/lr_wd_fst_chr17_sites_averageNA.fst
# 
