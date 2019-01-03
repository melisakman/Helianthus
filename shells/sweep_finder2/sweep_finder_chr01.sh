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


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr01_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr01_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr02_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr02_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr03_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr03_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr04_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr04_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr05_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr05_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr06_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr06_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr07_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr07_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr08_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr08_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr09_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr09_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr10_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr10_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr11_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr11_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr12_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr12_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr13_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr13_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr14_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr14_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr15_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr15_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr16_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr16_variants_biallelic.SF
python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr17_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr17_variants_biallelic.SF



# ./SweepFinder2 -f all_variants_biallelic.SF all_spectFile.txt
# 
# ./SweepFinder2 -l 10000 chr01_variants_biallelic.SF all_spectFile.txt chr01_variants_biallelic_output.txt
