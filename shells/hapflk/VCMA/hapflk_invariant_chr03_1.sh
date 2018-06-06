#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr03
#SBATCH -J flk_03_1
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr03_1.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr03_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
module load bio/vcftools
module load python
zcat chr03_intersect.vcf.gz | sed 's/HanXRQChr//g' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr03_intersect_noHanXRQ.vcf.gz
vcftools --gzvcf chr03_intersect_noHanXRQ.vcf.gz --out chr03_intersect_noHanXRQ --chr 01 --plink
python ../plink_ped_fixer.py ../samples_VCMA_hapflk.txt chr03_intersect_noHanXRQ.ped chr03_intersect_noHanXRQ_modified.ped
mv chr03_intersect_noHanXRQ.map chr03_intersect_noHanXRQ_modified.map
hapflk --file chr03_intersect_noHanXRQ_modified --miss_pheno 0 --chr 03 --from 1 --to 20000000 -p chr03_1 --ncpu 16 -K 15