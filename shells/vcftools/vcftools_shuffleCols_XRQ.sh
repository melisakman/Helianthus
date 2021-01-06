#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/
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
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.02.vcf.ok.vcf.gz > ordered/XRQ_fil_02_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.03.vcf.ok.vcf.gz > ordered/XRQ_fil_03_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.04.vcf.ok.vcf.gz > ordered/XRQ_fil_04_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.05.vcf.ok.vcf.gz > ordered/XRQ_fil_05_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.06.vcf.ok.vcf.gz > ordered/XRQ_fil_06_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.07.vcf.ok.vcf.gz > ordered/XRQ_fil_07_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.08.vcf.ok.vcf.gz > ordered/XRQ_fil_08_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.09.vcf.ok.vcf.gz > ordered/XRQ_fil_09_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.10.vcf.ok.vcf.gz > ordered/XRQ_fil_10_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.11.vcf.ok.vcf.gz > ordered/XRQ_fil_11_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.12.vcf.ok.vcf.gz > ordered/XRQ_fil_12_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.13.vcf.ok.vcf.gz > ordered/XRQ_fil_13_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.14.vcf.ok.vcf.gz > ordered/XRQ_fil_14_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.15.vcf.ok.vcf.gz > ordered/XRQ_fil_15_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.16.vcf.ok.vcf.gz > ordered/XRQ_fil_16_ordered_vcf.gz
srun /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t XRQ.fil.01.vcf.ok.vcf.gz XRQ.fil.17.vcf.ok.vcf.gz > ordered/XRQ_fil_17_ordered_vcf.gz
