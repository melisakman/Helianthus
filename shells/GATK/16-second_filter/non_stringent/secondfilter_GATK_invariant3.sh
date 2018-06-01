#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/filtered_combined/
#SBATCH -J filGK3
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_GATK3_nonstringent.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_GATK3_nonstringent.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat VCMA_GATK_chr01_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr01_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr02_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr02_nonstringentFilter.vcf.gz
zcat VCMA_GATK_chr03_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr03_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr04_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr04_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr05_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr05_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr06_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr06_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr07_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr07_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr08_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr08_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr09_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr09_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr10_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr10_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr11_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr11_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr12_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr12_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr13_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr13_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr14_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr14_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr15_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr15_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr16_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr16_nonstringentFilter.vcf.gz
# zcat VCMA_GATK_chr17_sorted.vcf.gz | bcftools filter -g 5 -i 'MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VCMA_GATK_chr17_nonstringentFilter.vcf.gz


