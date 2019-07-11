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
#SBATCH -o /global/home/users/makman/H12/outs/sweed1.out
#SBATCH -e /global/home/users/makman/H12/outs/sweed1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr01_SNP.vcf lr_list.txt sweep_finder/chr01_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr02_SNP.vcf lr_list.txt sweep_finder/chr02_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr03_SNP.vcf lr_list.txt sweep_finder/chr03_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr04_SNP.vcf lr_list.txt sweep_finder/chr04_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr05_SNP.vcf lr_list.txt sweep_finder/chr05_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr06_SNP.vcf lr_list.txt sweep_finder/chr06_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr07_SNP.vcf lr_list.txt sweep_finder/chr07_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr08_SNP.vcf lr_list.txt sweep_finder/chr08_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr09_SNP.vcf lr_list.txt sweep_finder/chr09_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr10_SNP.vcf lr_list.txt sweep_finder/chr10_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr11_SNP.vcf lr_list.txt sweep_finder/chr11_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr12_SNP.vcf lr_list.txt sweep_finder/chr12_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr13_SNP.vcf lr_list.txt sweep_finder/chr13_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr14_SNP.vcf lr_list.txt sweep_finder/chr14_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr15_SNP.vcf lr_list.txt sweep_finder/chr15_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr16_SNP.vcf lr_list.txt sweep_finder/chr16_SNP.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr17_SNP.vcf lr_list.txt sweep_finder/chr17_SNP.SF

cat sweep_finder/chr01_variants.SF > sweep_finder/01_toCombine.txt
tail -n +2 sweep_finder/chr02_variants.SF > sweep_finder/02_toCombine.txt
tail -n +2 sweep_finder/chr03_variants.SF > sweep_finder/03_toCombine.txt
tail -n +2 sweep_finder/chr04_variants.SF > sweep_finder/04_toCombine.txt
tail -n +2 sweep_finder/chr05_variants.SF > sweep_finder/05_toCombine.txt
tail -n +2 sweep_finder/chr06_variants.SF > sweep_finder/06_toCombine.txt
tail -n +2 sweep_finder/chr07_variants.SF > sweep_finder/07_toCombine.txt
tail -n +2 sweep_finder/chr08_variants.SF > sweep_finder/08_toCombine.txt
tail -n +2 sweep_finder/chr09_variants.SF > sweep_finder/09_toCombine.txt
tail -n +2 sweep_finder/chr10_variants.SF > sweep_finder/10_toCombine.txt
tail -n +2 sweep_finder/chr11_variants.SF > sweep_finder/11_toCombine.txt
tail -n +2 sweep_finder/chr12_variants.SF > sweep_finder/12_toCombine.txt
tail -n +2 sweep_finder/chr13_variants.SF > sweep_finder/13_toCombine.txt
tail -n +2 sweep_finder/chr14_variants.SF > sweep_finder/14_toCombine.txt
tail -n +2 sweep_finder/chr15_variants.SF > sweep_finder/15_toCombine.txt
tail -n +2 sweep_finder/chr16_variants.SF > sweep_finder/16_toCombine.txt
tail -n +2 sweep_finder/chr17_variants.SF > sweep_finder/17_toCombine.txt

cat sweep_finder/*_toCombine.txt > sweep_finder/all_variants.SF

./SweepFinder2 -f sweep_finder/all_variants.SF sweep_finder/all_spectFile.txt

