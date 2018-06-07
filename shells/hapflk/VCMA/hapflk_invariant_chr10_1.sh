#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr10
#SBATCH -J flk_10_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr10_1_variantOnly.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr10_1_variantOnly.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
module load bio/vcftools
module load python
vcftools --gzvcf VCMA_variantOnly_allchr_noHanXRQ.vcf.gz --out chr10_intersect_variantOnly --chr 10 --plink
python plink_ped_fixer.py samples_VCMA_hapflk.txt chr10_intersect_variantOnly.ped chr10_intersect_variantOnly_modified.ped
mv chr10_intersect_variantOnly.map chr10_intersect_variantOnly_modified.map
hapflk --file chr10_intersect_variantOnly_modified --miss_pheno 0 --chr 10 --from 1 --to 20000000 -p chr10_1 --ncpu 16 -K 15