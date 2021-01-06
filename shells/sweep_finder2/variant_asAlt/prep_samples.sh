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


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr01_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr01_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr02_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr02_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr03_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr03_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr04_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr04_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr05_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr05_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr06_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr06_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr07_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr07_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr08_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr08_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr09_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr09_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr10_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr10_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr11_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr11_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr12_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr12_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr13_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr13_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr14_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr14_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr15_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr15_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr16_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr16_variants_asAlt.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_asAlt.py ../GATK/bcftools_isec/final/chr17_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt variant_asAlt/chr17_variants_asAlt.SF

cat variant_asAlt/chr01_variants_asAlt.SF > variant_asAlt/01_toCombine.txt
tail -n +2 variant_asAlt/chr02_variants_asAlt.SF > variant_asAlt/02_toCombine.txt
tail -n +2 variant_asAlt/chr03_variants_asAlt.SF > variant_asAlt/03_toCombine.txt
tail -n +2 variant_asAlt/chr04_variants_asAlt.SF > variant_asAlt/04_toCombine.txt
tail -n +2 variant_asAlt/chr05_variants_asAlt.SF > variant_asAlt/05_toCombine.txt
tail -n +2 variant_asAlt/chr06_variants_asAlt.SF > variant_asAlt/06_toCombine.txt
tail -n +2 variant_asAlt/chr07_variants_asAlt.SF > variant_asAlt/07_toCombine.txt
tail -n +2 variant_asAlt/chr08_variants_asAlt.SF > variant_asAlt/08_toCombine.txt
tail -n +2 variant_asAlt/chr09_variants_asAlt.SF > variant_asAlt/09_toCombine.txt
tail -n +2 variant_asAlt/chr10_variants_asAlt.SF > variant_asAlt/10_toCombine.txt
tail -n +2 variant_asAlt/chr11_variants_asAlt.SF > variant_asAlt/11_toCombine.txt
tail -n +2 variant_asAlt/chr12_variants_asAlt.SF > variant_asAlt/12_toCombine.txt
tail -n +2 variant_asAlt/chr13_variants_asAlt.SF > variant_asAlt/13_toCombine.txt
tail -n +2 variant_asAlt/chr14_variants_asAlt.SF > variant_asAlt/14_toCombine.txt
tail -n +2 variant_asAlt/chr15_variants_asAlt.SF > variant_asAlt/15_toCombine.txt
tail -n +2 variant_asAlt/chr16_variants_asAlt.SF > variant_asAlt/16_toCombine.txt
tail -n +2 variant_asAlt/chr17_variants_asAlt.SF > variant_asAlt/17_toCombine.txt

cat variant_asAlt/*_toCombine.txt > variant_asAlt/all_variants_asAlt.SF

./SweepFinder2 -f variant_asAlt/all_variants_asAlt.SF variant_asAlt/all_spectFile.txt

