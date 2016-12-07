#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/complete_chromosomes/
#SBATCH -J vcfshuffle
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=32000
#SBATCH --time=96:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/vcftools_shuffle_XRQ.out
#SBATCH -e /global/home/users/makman/snpEff/outs/vcftools_shuffle_XRQ.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-16
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr02_complete_ordered_norm.vcf.gz > ordered/HanXRQChr02_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr03_complete_ordered_norm.vcf.gz > ordered/HanXRQChr03_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr04_complete_ordered_norm.vcf.gz > ordered/HanXRQChr04_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr05_complete_ordered_norm.vcf.gz > ordered/HanXRQChr05_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr06_complete_ordered_norm.vcf.gz > ordered/HanXRQChr06_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr07_complete_ordered_norm.vcf.gz > ordered/HanXRQChr07_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr08_complete_ordered_norm.vcf.gz > ordered/HanXRQChr08_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr09_complete_ordered_norm.vcf.gz > ordered/HanXRQChr09_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr10_complete_ordered_norm.vcf.gz > ordered/HanXRQChr10_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr11_complete_ordered_norm.vcf.gz > ordered/HanXRQChr11_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr12_complete_ordered_norm.vcf.gz > ordered/HanXRQChr12_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr13_complete_ordered_norm.vcf.gz > ordered/HanXRQChr13_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr14_complete_ordered_norm.vcf.gz > ordered/HanXRQChr14_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr15_complete_ordered_norm.vcf.gz > ordered/HanXRQChr15_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr16_complete_ordered_norm.vcf.gz > ordered/HanXRQChr16_complete_ordered_norm.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_complete_ordered_norm.vcf.gz HanXRQChr17_complete_ordered_norm.vcf.gz > ordered/HanXRQChr17_complete_ordered_norm.vcf.gz
