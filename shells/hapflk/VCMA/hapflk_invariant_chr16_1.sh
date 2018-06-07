#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr16
#SBATCH -J flk_16_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr16_1_variantOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr16_1_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
module load bio/vcftools
module load python
vcftools --gzvcf VCMA_variantOnly_allchr_noHanXRQ.vcf.gz --out chr16_intersect_variantOnly --chr 16 --plink
python plink_ped_fixer.py samples_VCMA_hapflk.txt chr16_intersect_variantOnly.ped chr16_intersect_variantOnly_modified.ped
mv chr16_intersect_variantOnly.map chr16_intersect_variantOnly_modified.map
hapflk --file chr16_intersect_variantOnly_modified --miss_pheno 0 --chr 16 --from 1 --to 20000000 -p chr16_1 --ncpu 16 -K 15