#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/
#SBATCH -J vcfshuffle
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=32000
#SBATCH --time=96:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01_order.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_variant_calling_filter01_order.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-4
module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr02_filter01.vcf.gz > ordered/HanXRQChr02_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr03_filter01.vcf.gz > ordered/HanXRQChr03_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr04_filter01.vcf.gz > ordered/HanXRQChr04_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr05_filter01.vcf.gz > ordered/HanXRQChr05_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr06_filter01.vcf.gz > ordered/HanXRQChr06_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr07_filter01.vcf.gz > ordered/HanXRQChr07_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr08_filter01.vcf.gz > ordered/HanXRQChr08_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr09_filter01.vcf.gz > ordered/HanXRQChr09_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr10_filter01.vcf.gz > ordered/HanXRQChr10_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr11_filter01.vcf.gz > ordered/HanXRQChr11_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr12_filter01.vcf.gz > ordered/HanXRQChr12_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr13_filter01.vcf.gz > ordered/HanXRQChr13_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr14_filter01.vcf.gz > ordered/HanXRQChr14_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr15_filter01.vcf.gz > ordered/HanXRQChr15_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr16_filter01.vcf.gz > ordered/HanXRQChr16_filter01_ordered.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t HanXRQChr01_filter01.vcf.gz HanXRQChr17_filter01.vcf.gz > ordered/HanXRQChr17_filter01_ordered.vcf.gz
