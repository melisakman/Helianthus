#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/SF2
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


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr01_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr01_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr02_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr02_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr03_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr03_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr04_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr04_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr05_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr05_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr06_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr06_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr07_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr07_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr08_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr08_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr09_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr09_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr10_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr10_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr11_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr11_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr12_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr12_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr13_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr13_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr14_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr14_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr15_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr15_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr16_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr16_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr17_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_biallelic/chr17_variants_biallelic.SF

cat variant_biallelic/chr01_variants_biallelic.SF > variant_biallelic/01_toCombine.txt
tail -n +2 variant_biallelic/chr02_variants_biallelic.SF > variant_biallelic/02_toCombine.txt
tail -n +2 variant_biallelic/chr03_variants_biallelic.SF > variant_biallelic/03_toCombine.txt
tail -n +2 variant_biallelic/chr04_variants_biallelic.SF > variant_biallelic/04_toCombine.txt
tail -n +2 variant_biallelic/chr05_variants_biallelic.SF > variant_biallelic/05_toCombine.txt
tail -n +2 variant_biallelic/chr06_variants_biallelic.SF > variant_biallelic/06_toCombine.txt
tail -n +2 variant_biallelic/chr07_variants_biallelic.SF > variant_biallelic/07_toCombine.txt
tail -n +2 variant_biallelic/chr08_variants_biallelic.SF > variant_biallelic/08_toCombine.txt
tail -n +2 variant_biallelic/chr09_variants_biallelic.SF > variant_biallelic/09_toCombine.txt
tail -n +2 variant_biallelic/chr10_variants_biallelic.SF > variant_biallelic/10_toCombine.txt
tail -n +2 variant_biallelic/chr11_variants_biallelic.SF > variant_biallelic/11_toCombine.txt
tail -n +2 variant_biallelic/chr12_variants_biallelic.SF > variant_biallelic/12_toCombine.txt
tail -n +2 variant_biallelic/chr13_variants_biallelic.SF > variant_biallelic/13_toCombine.txt
tail -n +2 variant_biallelic/chr14_variants_biallelic.SF > variant_biallelic/14_toCombine.txt
tail -n +2 variant_biallelic/chr15_variants_biallelic.SF > variant_biallelic/15_toCombine.txt
tail -n +2 variant_biallelic/chr16_variants_biallelic.SF > variant_biallelic/16_toCombine.txt
tail -n +2 variant_biallelic/chr17_variants_biallelic.SF > variant_biallelic/17_toCombine.txt

cat variant_biallelic/*_toCombine.txt > variant_biallelic/all_variants_biallelic.SF

./SweepFinder2 -f variant_biallelic/all_variants_biallelic.SF variant_biallelic/all_spectFile.txt

