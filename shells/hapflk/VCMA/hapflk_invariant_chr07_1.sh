#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/vcf-isec_chr07
#SBATCH -J flk_07_1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr07_1.out
#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr07_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
module load bio/vcftools
module load python
zcat chr07_intersect.vcf.gz | sed 's/HanXRQChr//g' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr07_intersect_noHanXRQ.vcf.gz
vcftools --gzvcf chr07_intersect_noHanXRQ.vcf.gz --out chr07_intersect_noHanXRQ --chr 01 --plink
python ../plink_ped_fixer.py ../samples_VCMA_hapflk.txt chr07_intersect_noHanXRQ.ped chr07_intersect_noHanXRQ_modified.ped
mv chr07_intersect_noHanXRQ.map chr07_intersect_noHanXRQ_modified.map
hapflk --file chr07_intersect_noHanXRQ_modified --miss_pheno 0 --chr 07 --from 1 --to 20000000 -p chr07_1 --ncpu 16 -K 15