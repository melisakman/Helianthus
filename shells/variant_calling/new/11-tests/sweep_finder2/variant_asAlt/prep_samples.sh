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
#SBATCH -o /global/home/users/makman/H12/outs/sweed_prep_asAlt.out
#SBATCH -e /global/home/users/makman/H12/outs/sweed_prep_asAlt.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr01_SNP.vcf lr_list.txt sweep_finder/chr01_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr02_SNP.vcf lr_list.txt sweep_finder/chr02_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr03_SNP.vcf lr_list.txt sweep_finder/chr03_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr04_SNP.vcf lr_list.txt sweep_finder/chr04_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr05_SNP.vcf lr_list.txt sweep_finder/chr05_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr06_SNP.vcf lr_list.txt sweep_finder/chr06_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr07_SNP.vcf lr_list.txt sweep_finder/chr07_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr08_SNP.vcf lr_list.txt sweep_finder/chr08_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr09_SNP.vcf lr_list.txt sweep_finder/chr09_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr10_SNP.vcf lr_list.txt sweep_finder/chr10_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr11_SNP.vcf lr_list.txt sweep_finder/chr11_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr12_SNP.vcf lr_list.txt sweep_finder/chr12_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr13_SNP.vcf lr_list.txt sweep_finder/chr13_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr14_SNP.vcf lr_list.txt sweep_finder/chr14_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr15_SNP.vcf lr_list.txt sweep_finder/chr15_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr16_SNP.vcf lr_list.txt sweep_finder/chr16_SNP_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py chr17_SNP.vcf lr_list.txt sweep_finder/chr17_SNP_asAlt.SF

cat sweep_finder/chr01_SNP_asAlt.SF > sweep_finder/01_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr02_SNP_asAlt.SF > sweep_finder/02_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr03_SNP_asAlt.SF > sweep_finder/03_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr04_SNP_asAlt.SF > sweep_finder/04_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr05_SNP_asAlt.SF > sweep_finder/05_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr06_SNP_asAlt.SF > sweep_finder/06_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr07_SNP_asAlt.SF > sweep_finder/07_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr08_SNP_asAlt.SF > sweep_finder/08_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr09_SNP_asAlt.SF > sweep_finder/09_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr10_SNP_asAlt.SF > sweep_finder/10_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr11_SNP_asAlt.SF > sweep_finder/11_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr12_SNP_asAlt.SF > sweep_finder/12_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr13_SNP_asAlt.SF > sweep_finder/13_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr14_SNP_asAlt.SF > sweep_finder/14_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr15_SNP_asAlt.SF > sweep_finder/15_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr16_SNP_asAlt.SF > sweep_finder/16_asAlt_toCombine.txt
tail -n +2 sweep_finder/chr17_SNP_asAlt.SF > sweep_finder/17_asAlt_toCombine.txt

cat sweep_finder/*_asAlt_toCombine.txt > sweep_finder/all_variants_asAlt.SF

/clusterfs/rosalind/users/makman/SF2/SweepFinder2 -f sweep_finder/all_variants_asAlt.SF sweep_finder/all_asAlt_spectFile.txt

