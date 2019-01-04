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
#SBATCH -o /global/home/users/makman/H12/outs/map_extract.out
#SBATCH -e /global/home/users/makman/H12/outs/map_extract.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr01_formap.vcf chr01_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr02_formap.vcf chr02_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr03_formap.vcf chr03_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr04_formap.vcf chr04_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr05_formap.vcf chr05_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr06_formap.vcf chr06_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr07_formap.vcf chr07_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr08_formap.vcf chr08_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr09_formap.vcf chr09_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr10_formap.vcf chr10_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr11_formap.vcf chr11_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr12_formap.vcf chr12_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr13_formap.vcf chr13_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr14_formap.vcf chr14_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr15_formap.vcf chr15_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr16_formap.vcf chr16_map.txt
python ~/git/Helianthus/shells/XPCLR/map/map_extract_from_vcf.py chr17_formap.vcf chr17_map.txt

