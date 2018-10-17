#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined
#SBATCH -J filFB1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter2_freebayes1.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter2_freebayes1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

zcat old/freebayes_invariant_chr01_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr01_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr02_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr02_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr03_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr03_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr04_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr04_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr05_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr05_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr06_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr06_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr07_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr07_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr08_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr08_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr09_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr09_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr10_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr10_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr11_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr11_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr12_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr12_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr13_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr13_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr14_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr14_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr15_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr15_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr16_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr16_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr17_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr17_allFiltered.vcf.gz


# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20|| TYPE = "ref" && QUAL < 2.723e-15' > test_filters/freebayes_invariant_chr01_allFiltered_test1.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 && MQM > 40 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' > test_filters/freebayes_invariant_chr01_allFiltered_test2.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 && MQM > 40 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 3 --recode --stdout > test_filters/freebayes_invariant_chr01_allFiltered_test3.vcf.gz
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 && MQM > 40 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 3 --maxDP 25 --recode --stdout > test_filters/freebayes_invariant_chr01_allFiltered_test4.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 && MQM > 40 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > test_filters/freebayes_invariant_chr01_test5.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && MQM > 40 || TYPE = "indel" && MQM > 40 || TYPE = "mnp" && MQM > 40 || TYPE = "ref" && MQMR > 40' > freebayes_invariant_chr01_allFiltered_test6.vcf
# cat old/freebayes_invariant_chr01_all.vcf | vcftools --vcf - --maxDP 25 --recode --stdout > test_filters/freebayes_invariant_chr01_allFiltered_test8.vcf
# cat old/freebayes_invariant_chr01_all.vcf | vcftools --vcf - --max-missing 0.8 --recode --stdout > test_filters/freebayes_invariant_chr01_test9.vcf
# cat old/freebayes_invariant_chr01_all.vcf | vcftools --vcf - --minDP 3 --recode --stdout > test_filters/freebayes_invariant_chr01_allFiltered_test7.vcf
