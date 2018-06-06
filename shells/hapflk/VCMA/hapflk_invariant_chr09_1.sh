#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr09
#SBATCH -J flk_09_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr09_1.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr09_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
module load bio/vcftools
module load python
zcat chr09_intersect.vcf.gz | sed 's/HanXRQChr//g' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr09_intersect_noHanXRQ.vcf.gz
vcftools --gzvcf chr09_intersect_noHanXRQ.vcf.gz --out chr09_intersect_noHanXRQ --chr 09 --plink
python ../plink_ped_fixer.py ../samples_VCMA_hapflk.txt chr09_intersect_noHanXRQ.ped chr09_intersect_noHanXRQ_modified.ped
mv chr09_intersect_noHanXRQ.map chr09_intersect_noHanXRQ_modified.map
hapflk --file chr09_intersect_noHanXRQ_modified --miss_pheno 0 --chr 09 --from 1 --to 20000000 -p chr09_1 --ncpu 16 -K 15