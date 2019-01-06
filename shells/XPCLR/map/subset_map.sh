#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/map
#SBATCH -J map_ext
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/map_extract_subset.out
#SBATCH -e /global/home/users/makman/H12/outs/map_extract_subset.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr01_map.txt ../../SF2/variant/chr01_variants.SF chr01_variants_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr02_map.txt ../../SF2/variant/chr02_variants.SF chr02_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr03_map.txt ../../SF2/variant/chr03_variants.SF chr03_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr04_map.txt ../../SF2/variant/chr04_variants.SF chr04_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr05_map.txt ../../SF2/variant/chr05_variants.SF chr05_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr06_map.txt ../../SF2/variant/chr06_variants.SF chr06_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr07_map.txt ../../SF2/variant/chr07_variants.SF chr07_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr08_map.txt ../../SF2/variant/chr08_variants.SF chr08_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr09_map.txt ../../SF2/variant/chr09_variants.SF chr09_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr10_map.txt ../../SF2/variant/chr10_variants.SF chr10_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr11_map.txt ../../SF2/variant/chr11_variants.SF chr11_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr12_map.txt ../../SF2/variant/chr12_variants.SF chr12_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr13_map.txt ../../SF2/variant/chr13_variants.SF chr13_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr14_map.txt ../../SF2/variant/chr14_variants.SF chr14_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr15_map.txt ../../SF2/variant/chr15_variants.SF chr15_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr16_map.txt ../../SF2/variant/chr16_variants.SF chr16_variants_map.txt
# python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr17_map.txt ../../SF2/variant/chr17_variants.SF chr17_variants_map.txt