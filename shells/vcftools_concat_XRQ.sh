#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/ordered/
#SBATCH -J vcfMerge
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/vcftools_merge_XRQ.out
#SBATCH -e /global/home/users/makman/snpEff/outs/vcftools_merge_XRQ.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load perl
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat XRQ_fil_01_ordered.vcf \
XRQ_fil_02_ordered.vcf \
XRQ_fil_03_ordered.vcf \
XRQ_fil_04_ordered.vcf \
XRQ_fil_05_ordered.vcf \
XRQ_fil_06_ordered.vcf \
XRQ_fil_07_ordered.vcf \
XRQ_fil_08_ordered.vcf \
XRQ_fil_09_ordered.vcf \
XRQ_fil_10_ordered.vcf \
XRQ_fil_11_ordered.vcf \
XRQ_fil_12_ordered.vcf \
XRQ_fil_13_ordered.vcf \
XRQ_fil_14_ordered.vcf \
XRQ_fil_15_ordered.vcf \
XRQ_fil_16_ordered.vcf \
XRQ_fil_17_ordered.vcf \
| gzip -c > XRQ_fil_ordered_combined.vcf.gz
