#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/HanXRQr2/
#SBATCH -J map_ref
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=172:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/ngs_reference.out
#SBATCH -e /global/home/users/makman/GATK/outs/ngs_reference.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r HanXRQr2.0-SUNRISE-2.1.genome.fasta