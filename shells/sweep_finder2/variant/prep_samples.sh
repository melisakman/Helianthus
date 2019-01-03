#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/SF2
#SBATCH -J vcf2genotype
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3 
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sweed1.out
#SBATCH -e /global/home/users/makman/H12/outs/sweed1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr01_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr01_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr02_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr02_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr03_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr03_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr04_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr04_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr05_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr05_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr06_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr06_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr07_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr07_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr08_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr08_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr09_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr09_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr10_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr10_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr11_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr11_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr12_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr12_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr13_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr13_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr14_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr14_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr15_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr15_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr16_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr16_variants.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr17_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant/chr17_variants.SF

cat variant/chr01_variants.SF > variant/01_toCombine.txt
tail -n +2 variant/chr02_variants.SF > variant/02_toCombine.txt
tail -n +2 variant/chr03_variants.SF > variant/03_toCombine.txt
tail -n +2 variant/chr04_variants.SF > variant/04_toCombine.txt
tail -n +2 variant/chr05_variants.SF > variant/05_toCombine.txt
tail -n +2 variant/chr06_variants.SF > variant/06_toCombine.txt
tail -n +2 variant/chr07_variants.SF > variant/07_toCombine.txt
tail -n +2 variant/chr08_variants.SF > variant/08_toCombine.txt
tail -n +2 variant/chr09_variants.SF > variant/09_toCombine.txt
tail -n +2 variant/chr10_variants.SF > variant/10_toCombine.txt
tail -n +2 variant/chr11_variants.SF > variant/11_toCombine.txt
tail -n +2 variant/chr12_variants.SF > variant/12_toCombine.txt
tail -n +2 variant/chr13_variants.SF > variant/13_toCombine.txt
tail -n +2 variant/chr14_variants.SF > variant/14_toCombine.txt
tail -n +2 variant/chr15_variants.SF > variant/15_toCombine.txt
tail -n +2 variant/chr16_variants.SF > variant/16_toCombine.txt
tail -n +2 variant/chr17_variants.SF > variant/17_toCombine.txt

cat variant/*_toCombine.txt > variant/all_variants.SF

./SweepFinder2 -f variant/all_variants.SF variant/all_spectFile.txt

