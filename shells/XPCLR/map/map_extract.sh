#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/map
#SBATCH -J map_ext
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3 
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/map_extract.out
#SBATCH -e /global/home/users/makman/H12/outs/map_extract.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr01_formap.vcf chr01_map.txt

