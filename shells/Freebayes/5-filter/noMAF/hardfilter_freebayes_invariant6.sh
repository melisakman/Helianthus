#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined
#SBATCH -J filFB6
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_freebayes6MAF.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_freebayes6MAF.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat freebayes_invariant_chr01_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr01_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr02_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr02_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr03_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr03_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr04_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr04_allFiltered_noMAF.vcf.gz

# zcat freebayes_invariant_chr05_secondtime_combined.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr05_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr06_secondtime_combined.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr06_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr07_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr07_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr08_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr08_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr09_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr09_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr10_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr10_allFiltered_noMAF.vcf.gz
zcat freebayes_invariant_chr11_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr11_allFiltered_noMAF.vcf.gz
zcat freebayes_invariant_chr12_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr12_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr13_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr13_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr14_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr14_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr15_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr15_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr16_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr16_allFiltered_noMAF.vcf.gz
# zcat freebayes_invariant_chr17_all.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr17_allFiltered_noMAF.vcf.gz


