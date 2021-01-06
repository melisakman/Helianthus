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


python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr01_map.txt ../../SF2/variant_biallelic/chr01_variants_biallelic.SF chr01_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr02_map.txt ../../SF2/variant_biallelic/chr02_variants_biallelic.SF chr02_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr03_map.txt ../../SF2/variant_biallelic/chr03_variants_biallelic.SF chr03_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr04_map.txt ../../SF2/variant_biallelic/chr04_variants_biallelic.SF chr04_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr05_map.txt ../../SF2/variant_biallelic/chr05_variants_biallelic.SF chr05_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr06_map.txt ../../SF2/variant_biallelic/chr06_variants_biallelic.SF chr06_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr07_map.txt ../../SF2/variant_biallelic/chr07_variants_biallelic.SF chr07_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr08_map.txt ../../SF2/variant_biallelic/chr08_variants_biallelic.SF chr08_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr09_map.txt ../../SF2/variant_biallelic/chr09_variants_biallelic.SF chr09_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr10_map.txt ../../SF2/variant_biallelic/chr10_variants_biallelic.SF chr10_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr11_map.txt ../../SF2/variant_biallelic/chr11_variants_biallelic.SF chr11_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr12_map.txt ../../SF2/variant_biallelic/chr12_variants_biallelic.SF chr12_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr13_map.txt ../../SF2/variant_biallelic/chr13_variants_biallelic.SF chr13_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr14_map.txt ../../SF2/variant_biallelic/chr14_variants_biallelic.SF chr14_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr15_map.txt ../../SF2/variant_biallelic/chr15_variants_biallelic.SF chr15_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr16_map.txt ../../SF2/variant_biallelic/chr16_variants_biallelic.SF chr16_variants_biallelic_map.txt
python ~/git/Helianthus/shells/XPCLR/map/subset_map.py chr17_map.txt ../../SF2/variant_biallelic/chr17_variants_biallelic.SF chr17_variants_biallelic_map.txt