#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/map
#SBATCH -J rec_rate
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/map_recRate.out
#SBATCH -e /global/home/users/makman/H12/outs/map_recRate.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr01_variants_map.txt chr01_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr02_variants_map.txt chr02_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr03_variants_map.txt chr03_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr04_variants_map.txt chr04_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr05_variants_map.txt chr05_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr06_variants_map.txt chr06_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr07_variants_map.txt chr07_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr08_variants_map.txt chr08_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr09_variants_map.txt chr09_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr10_variants_map.txt chr10_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr11_variants_map.txt chr11_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr12_variants_map.txt chr12_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr13_variants_map.txt chr13_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr14_variants_map.txt chr14_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr15_variants_map.txt chr15_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr16_variants_map.txt chr16_variants_recRate.txt
python ~/git/Helianthus/shells/XPCLR/map/map_recRate.py chr17_variants_map.txt chr17_variants_recRate.txt