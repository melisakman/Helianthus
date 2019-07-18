#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/xp-ehh
#SBATCH -J beagle
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/xpehh_prep_chr01.out
#SBATCH -e /global/home/users/makman/H12/outs/xpehh_prep_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
java -Xmx64G -jar /global/scratch/makman/beagle/beagle.12Jul19.0df.jar gt=../chr01_final_fixed_forPi.vcf out=chr01_phased