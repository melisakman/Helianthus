#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J vcf2genotype
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sweed_prep_biallelic.out
#SBATCH -e /global/home/users/makman/H12/outs/sweed_prep_biallelic.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr01_SNP.vcf lr_list.txt sweep_finder/chr01_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr02_SNP.vcf lr_list.txt sweep_finder/chr02_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr03_SNP.vcf lr_list.txt sweep_finder/chr03_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr04_SNP.vcf lr_list.txt sweep_finder/chr04_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr05_SNP.vcf lr_list.txt sweep_finder/chr05_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr06_SNP.vcf lr_list.txt sweep_finder/chr06_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr07_SNP.vcf lr_list.txt sweep_finder/chr07_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr08_SNP.vcf lr_list.txt sweep_finder/chr08_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr09_SNP.vcf lr_list.txt sweep_finder/chr09_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr10_SNP.vcf lr_list.txt sweep_finder/chr10_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr11_SNP.vcf lr_list.txt sweep_finder/chr11_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr12_SNP.vcf lr_list.txt sweep_finder/chr12_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr13_SNP.vcf lr_list.txt sweep_finder/chr13_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr14_SNP.vcf lr_list.txt sweep_finder/chr14_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr15_SNP.vcf lr_list.txt sweep_finder/chr15_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr16_SNP.vcf lr_list.txt sweep_finder/chr16_SNP_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py chr17_SNP.vcf lr_list.txt sweep_finder/chr17_SNP_biallelic.SF

cat sweep_finder/chr01_SNP_biallelic.SF > sweep_finder/01_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr02_SNP_biallelic.SF > sweep_finder/02_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr03_SNP_biallelic.SF > sweep_finder/03_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr04_SNP_biallelic.SF > sweep_finder/04_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr05_SNP_biallelic.SF > sweep_finder/05_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr06_SNP_biallelic.SF > sweep_finder/06_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr07_SNP_biallelic.SF > sweep_finder/07_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr08_SNP_biallelic.SF > sweep_finder/08_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr09_SNP_biallelic.SF > sweep_finder/09_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr10_SNP_biallelic.SF > sweep_finder/10_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr11_SNP_biallelic.SF > sweep_finder/11_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr12_SNP_biallelic.SF > sweep_finder/12_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr13_SNP_biallelic.SF > sweep_finder/13_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr14_SNP_biallelic.SF > sweep_finder/14_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr15_SNP_biallelic.SF > sweep_finder/15_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr16_SNP_biallelic.SF > sweep_finder/16_biallelic_toCombine.txt
tail -n +2 sweep_finder/chr17_SNP_biallelic.SF > sweep_finder/17_biallelic_toCombine.txt

cat sweep_finder/*_biallelic_toCombine.txt > sweep_finder/all_variants_biallelic.SF

/clusterfs/rosalind/users/makman/SF2/SweepFinder2 -f sweep_finder/all_variants_biallelic.SF sweep_finder/all_biallelic_spectFile.txt

