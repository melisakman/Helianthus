#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/xp-ehh
#SBATCH -J beagle
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/xpehh_prep_chr01.out
#SBATCH -e /global/home/users/makman/H12/outs/xpehh_prep_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

java -Xmx64G -jar /global/scratch/makman/beagle/beagle.12Jul19.0df.jar gt=../vcfgz/chr01_final.vcf.gz out=chr01_final_phased