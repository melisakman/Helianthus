#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchrchr03_13_4
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chrchr03_13_4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=6:00:00
module load hapflk/1.4
hapflk --file chrchr03_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr chr03 --from 64000001 --to 65000001 -p chrchr03_13_4 --ncpu 6 -K 15