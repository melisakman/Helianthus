#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/xp-ehh
#SBATCH -J beagle
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/xpehh_prep_chr03.out
#SBATCH -e /global/home/users/makman/H12/outs/xpehh_prep_chr03.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
java -Xmx64G -jar /global/scratch/makman/beagle/beagle.11Mar19.69c.jar gt=../chr03_final_fixed_forPi.vcf out=chr03_phased