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


python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr01_map.txt ../../SF2/variant_asAlt/chr01_variants_asAlt.SF chr01_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr02_map.txt ../../SF2/variant_asAlt/chr02_variants_asAlt.SF chr02_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr03_map.txt ../../SF2/variant_asAlt/chr03_variants_asAlt.SF chr03_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr04_map.txt ../../SF2/variant_asAlt/chr04_variants_asAlt.SF chr04_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr05_map.txt ../../SF2/variant_asAlt/chr05_variants_asAlt.SF chr05_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr06_map.txt ../../SF2/variant_asAlt/chr06_variants_asAlt.SF chr06_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr07_map.txt ../../SF2/variant_asAlt/chr07_variants_asAlt.SF chr07_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr08_map.txt ../../SF2/variant_asAlt/chr08_variants_asAlt.SF chr08_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr09_map.txt ../../SF2/variant_asAlt/chr09_variants_asAlt.SF chr09_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr10_map.txt ../../SF2/variant_asAlt/chr10_variants_asAlt.SF chr10_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr11_map.txt ../../SF2/variant_asAlt/chr11_variants_asAlt.SF chr11_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr12_map.txt ../../SF2/variant_asAlt/chr12_variants_asAlt.SF chr12_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr13_map.txt ../../SF2/variant_asAlt/chr13_variants_asAlt.SF chr13_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr14_map.txt ../../SF2/variant_asAlt/chr14_variants_asAlt.SF chr14_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr15_map.txt ../../SF2/variant_asAlt/chr15_variants_asAlt.SF chr15_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr16_map.txt ../../SF2/variant_asAlt/chr16_variants_asAlt.SF chr16_variants_asAlt_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr17_map.txt ../../SF2/variant_asAlt/chr17_variants_asAlt.SF chr17_variants_asAlt_map.txt