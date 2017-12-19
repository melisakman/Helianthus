#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/XPCLR/bin/helianthus
#SBATCH -J XPCLR
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/XPCLR/outs/data_structure.out
#SBATCH -e /global/home/users/makman/XPCLR/outs/data_structure.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
python vcf_modify_for_XPCLR.py XRQ_fil_ordered_combined.vcf wilds.txt landraces.txt cultivars.txt wd_genotype.txt lr_genotype.txt cv_genotype.txt