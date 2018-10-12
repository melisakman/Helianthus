#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J filGK1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_GATK1_secondfilter.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_GATK1_secondfilter.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# cat VCMA_GATK_chr01_sorted.vcf | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr01_secondFilter.vcf.gz
# zcat VCMA_GATK_chr02_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr02_secondFilter.vcf.gz
# zcat VCMA_GATK_chr03_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr03_secondFilter.vcf.gz
# zcat VCMA_GATK_chr04_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr04_secondFilter.vcf.gz
# zcat VCMA_GATK_chr05_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr05_secondFilter.vcf.gz
# zcat VCMA_GATK_chr06_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr06_secondFilter.vcf.gz
# zcat VCMA_GATK_chr07_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr07_secondFilter.vcf.gz
# zcat VCMA_GATK_chr08_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr08_secondFilter.vcf.gz
# zcat VCMA_GATK_chr09_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr09_secondFilter.vcf.gz
# zcat VCMA_GATK_chr10_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr10_secondFilter.vcf.gz
# zcat VCMA_GATK_chr11_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr11_secondFilter.vcf.gz
# zcat VCMA_GATK_chr12_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr12_secondFilter.vcf.gz
# zcat VCMA_GATK_chr13_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr13_secondFilter.vcf.gz
# zcat VCMA_GATK_chr14_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr14_secondFilter.vcf.gz
# zcat VCMA_GATK_chr15_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr15_secondFilter.vcf.gz
# zcat VCMA_GATK_chr16_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr16_secondFilter.vcf.gz
# zcat VCMA_GATK_chr17_sorted.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr17_secondFilter.vcf.gz


# cat VCMA_GATK_chr01_sorted.vcf | bcftools filter -g 5 -i 'TYPE = "indel" && QUAL > 40 || TYPE = "snp" && QUAL > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 40' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > VCMA_GATK_chr01_secondFilter_3.vcf
# 
# cat VCMA_GATK_chr01_sorted.vcf | bcftools filter -g 5 -i 'TYPE = "indel" && QUAL > 40 || TYPE = "snp" && QUAL > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 40' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > VCMA_GATK_chr01_secondFilter_2.vcf
# 
# cat VCMA_GATK_chr01_sorted.vcf | bcftools filter -g 5 -i 'TYPE = "indel" && QUAL > 20 || TYPE = "snp" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 || TYPE = "ref" && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > VCMA_GATK_chr01_secondFilter_4.vcf

# cat VCMA_chr01_NO_VARIATION_hardfiltered.vcf | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 25 --recode --stdout > VCMA_GATK_chr01_NO_VARIATION_secondFilter_mindepth.vcf
# cat VCMA_chr01_NO_VARIATION_hardfiltered.vcf | vcftools --vcf - --minDP 1 --max-missing 0.8 --recode --stdout > VCMA_GATK_chr01_NO_VARIATION_secondFilter_maxdepth.vcf
# cat VCMA_chr01_NO_VARIATION_hardfiltered.vcf | vcftools --vcf - --minDP 1 --max-missing 0.9 --maxDP 25 --recode --stdout > VCMA_GATK_chr01_NO_VARIATION_secondFilter_maxmissing.vcf

# cat VCMA_chr01_NO_VARIATION_hardfiltered.vcf | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 50 --recode --stdout > VCMA_GATK_chr01_NO_VARIATION_secondFilter_50maxdepth.vcf
# cat VCMA_chr01_NO_VARIATION_hardfiltered.vcf | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 100 --recode --stdout > VCMA_GATK_chr01_NO_VARIATION_secondFilter_100maxdepth.vcf
# cat VCMA_chr01_NO_VARIATION_hardfiltered.vcf | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 250 --recode --stdout > VCMA_GATK_chr01_NO_VARIATION_secondFilter_250maxdepth.vcf

python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/extract_interval_from_vcf.py VCMA_GATK_chr01_NO_VARIATION_secondFilter_50maxdepth.vcf VCMA_chr01_132110001_50maxdepth.vcf VCMA_chr01_132110001_50maxdepth.txt HanXRQChr01 132110001 132120001

python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/extract_interval_from_vcf.py VCMA_GATK_chr01_NO_VARIATION_secondFilter_100maxdepth.vcf VCMA_chr01_132110001_100maxdepth.vcf VCMA_chr01_132110001_100maxdepth.txt HanXRQChr01 132110001 132120001

python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/extract_interval_from_vcf.py VCMA_GATK_chr01_NO_VARIATION_secondFilter_250maxdepth.vcf VCMA_chr01_132110001_250maxdepth.vcf VCMA_chr01_132110001_250maxdepth.txt HanXRQChr01 132110001 132120001







