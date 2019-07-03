#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J LD
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_MA_fst_LD2.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_MA_fst_LD2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load plink

plink --vcf chr01_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr01
plink --vcf chr02_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr02
plink --vcf chr03_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr03
plink --vcf chr04_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr04
plink --vcf chr05_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr05
plink --vcf chr06_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr06
plink --vcf chr07_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr07
plink --vcf chr08_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr08
plink --vcf chr09_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr09
plink --vcf chr10_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr10
plink --vcf chr11_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr11
plink --vcf chr12_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr12
plink --vcf chr13_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr13
plink --vcf chr14_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr14
plink --vcf chr15_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr15
plink --vcf chr16_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr16
plink --vcf chr17_final.vcf.gz --r2 --ld-window-kb 10 --keep wd_list.txt --out LD/wd_chr17

plink --vcf chr01_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr01
plink --vcf chr02_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr02
plink --vcf chr03_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr03
plink --vcf chr04_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr04
plink --vcf chr05_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr05
plink --vcf chr06_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr06
plink --vcf chr07_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr07
plink --vcf chr08_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr08
plink --vcf chr09_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr09
plink --vcf chr10_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr10
plink --vcf chr11_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr11
plink --vcf chr12_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr12
plink --vcf chr13_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr13
plink --vcf chr14_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr14
plink --vcf chr15_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr15
plink --vcf chr16_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr16
plink --vcf chr17_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_list.txt --out LD/lr_chr17

plink --vcf chr01_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr01
plink --vcf chr02_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr02
plink --vcf chr03_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr03
plink --vcf chr04_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr04
plink --vcf chr05_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr05
plink --vcf chr06_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr06
plink --vcf chr07_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr07
plink --vcf chr08_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr08
plink --vcf chr09_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr09
plink --vcf chr10_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr10
plink --vcf chr11_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr11
plink --vcf chr12_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr12
plink --vcf chr13_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr13
plink --vcf chr14_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr14
plink --vcf chr15_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr15
plink --vcf chr16_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr16
plink --vcf chr17_final.vcf.gz --r2 --ld-window-kb 10 --keep lr_wd_list.txt --out LD/lr_wd_chr17

# vcftools --gzvcf chr01_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr01
# vcftools --gzvcf chr02_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr02
# vcftools --gzvcf chr03_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr03
# vcftools --gzvcf chr04_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr04
# vcftools --gzvcf chr05_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr05
# vcftools --gzvcf chr06_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr06
# vcftools --gzvcf chr07_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr07
# vcftools --gzvcf chr08_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr08
# vcftools --gzvcf chr09_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr09
# vcftools --gzvcf chr10_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr10
# vcftools --gzvcf chr11_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr11
# vcftools --gzvcf chr12_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr12
# vcftools --gzvcf chr13_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr13
# vcftools --gzvcf chr14_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr14
# vcftools --gzvcf chr15_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr15
# vcftools --gzvcf chr16_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr16
# vcftools --gzvcf chr17_final.vcf.gz --SNPdensity 10000 --keep lr_list.txt --out SNPden/lr_chr17
# 
# vcftools --gzvcf chr01_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr01
# vcftools --gzvcf chr02_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr02
# vcftools --gzvcf chr03_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr03
# vcftools --gzvcf chr04_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr04
# vcftools --gzvcf chr05_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr05
# vcftools --gzvcf chr06_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr06
# vcftools --gzvcf chr07_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr07
# vcftools --gzvcf chr08_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr08
# vcftools --gzvcf chr09_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr09
# vcftools --gzvcf chr10_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr10
# vcftools --gzvcf chr11_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr11
# vcftools --gzvcf chr12_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr12
# vcftools --gzvcf chr13_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr13
# vcftools --gzvcf chr14_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr14
# vcftools --gzvcf chr15_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr15
# vcftools --gzvcf chr16_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr16
# vcftools --gzvcf chr17_final.vcf.gz --SNPdensity 10000 --keep wd_list.txt --out SNPden/wd_chr17
