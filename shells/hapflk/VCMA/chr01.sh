#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr01
#SBATCH -J sed
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00

module load bio/vcftools
module load python
# zcat chr01_intersect.vcf.gz | sed 's/HanXRQChr//g' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr01_intersect_noHanXRQ.vcf.gz
vcftools --gzvcf chr01_intersect_noHanXRQ.vcf.gz --out chr01_intersect_noHanXRQ --chr 01 --plink
python ../plink_ped_fixer.py ../samples_VCMA_hapflk.txt chr01_intersect_noHanXRQ.ped chr01_intersect_noHanXRQ_modified.ped



