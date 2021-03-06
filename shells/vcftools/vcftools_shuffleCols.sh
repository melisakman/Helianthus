#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/
#SBATCH -J vcfshuffle
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/vcftools_shuffle_HA412.out
#SBATCH -e /global/home/users/makman/snpEff/outs/vcftools_shuffle_HA412.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom2_cultivated_filtered_ordered.vcf.gz > ordered/chrom2_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom3_cultivated_filtered_ordered.vcf.gz > ordered/chrom3_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom4_cultivated_filtered_ordered.vcf.gz > ordered/chrom4_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom5_cultivated_filtered_ordered.vcf.gz > ordered/chrom5_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom6_cultivated_filtered_ordered.vcf.gz > ordered/chrom6_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom7_cultivated_filtered_ordered.vcf.gz > ordered/chrom7_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom8_cultivated_filtered_ordered.vcf.gz > ordered/chrom8_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom9_cultivated_filtered_ordered.vcf.gz > ordered/chrom9_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom10_cultivated_filtered_ordered.vcf.gz > ordered/chrom10_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom11_cultivated_filtered_ordered.vcf.gz > ordered/chrom11_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom12_cultivated_filtered_ordered.vcf.gz > ordered/chrom12_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom13_cultivated_filtered_ordered.vcf.gz > ordered/chrom13_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom14_cultivated_filtered_ordered.vcf.gz > ordered/chrom14_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom15_cultivated_filtered_ordered.vcf.gz > ordered/chrom15_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom16_cultivated_filtered_ordered.vcf.gz > ordered/chrom16_cultivated_filtered_ordered.vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t chrom1_cultivated_filtered_ordered.vcf.gz chrom17_cultivated_filtered_ordered.vcf.gz > ordered/chrom17_cultivated_filtered_ordered.vcf.gz
