#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr12
#SBATCH -J flk_12_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr12_1.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr12_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
module load bio/vcftools
module load python
zcat chr12_intersect.vcf.gz | sed 's/HanXRQChr//g' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr12_intersect_noHanXRQ.vcf.gz
vcftools --gzvcf chr12_intersect_noHanXRQ.vcf.gz --out chr12_intersect_noHanXRQ --chr 12 --plink
python ../plink_ped_fixer.py ../samples_VCMA_hapflk.txt chr12_intersect_noHanXRQ.ped chr12_intersect_noHanXRQ_modified.ped
mv chr12_intersect_noHanXRQ.map chr12_intersect_noHanXRQ_modified.map
hapflk --file chr12_intersect_noHanXRQ_modified --miss_pheno 0 --chr 12 --from 1 --to 20000000 -p chr12_1 --ncpu 16 -K 15