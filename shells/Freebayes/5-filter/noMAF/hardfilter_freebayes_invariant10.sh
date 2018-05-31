#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined
#SBATCH -J filFB10
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --time=800:00:006
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_freebayes10.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_freebayes10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat freebayes_invariant_chr01_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr01_allFiltered_yeni3.vcf.gz
# zcat freebayes_invariant_chr02_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr02_allFiltered.vcf.gz
# zcat freebayes_invariant_chr03_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr03_allFiltered.vcf.gz
# zcat freebayes_invariant_chr04_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr04_allFiltered.vcf.gz
# zcat freebayes_invariant_chr05_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr05_allFiltered.vcf.gz
# zcat freebayes_invariant_chr06_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr06_allFiltered.vcf.gz
# zcat freebayes_invariant_chr07_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr07_allFiltered.vcf.gz
# zcat freebayes_invariant_chr08_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr08_allFiltered.vcf.gz
# zcat freebayes_invariant_chr09_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr09_allFiltered.vcf.gz
zcat freebayes_invariant_chr10_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr10_allFiltered.vcf.gz
# zcat freebayes_invariant_chr11_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr11_allFiltered.vcf.gz
# zcat freebayes_invariant_chr12_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr12_allFiltered.vcf.gz
# zcat freebayes_invariant_chr13_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr13_allFiltered.vcf.gz
# zcat freebayes_invariant_chr14_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr14_allFiltered.vcf.gz
# zcat freebayes_invariant_chr15_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr15_allFiltered.vcf.gz
# zcat freebayes_invariant_chr16_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr16_allFiltered.vcf.gz
# zcat freebayes_invariant_chr17_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > freebayes_invariant_chr17_allFiltered.vcf.gz
# 
