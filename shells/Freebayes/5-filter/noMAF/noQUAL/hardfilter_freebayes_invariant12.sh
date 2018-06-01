#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined
#SBATCH -J filFB12
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --time=800:00:006
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_freebayes12.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_freebayes12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat freebayes_invariant_chr01_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr01_allFiltered_noQual_yeni3.vcf.gz
# zcat freebayes_invariant_chr02_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr02_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr03_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr03_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr04_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr04_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr05_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr05_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr06_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr06_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr07_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr07_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr08_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr08_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr09_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr09_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr10_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr10_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr11_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr11_allFiltered_noQual.vcf.gz
zcat freebayes_invariant_chr12_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr12_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr13_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr13_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr14_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr14_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr15_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr15_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr16_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr16_allFiltered_noQual.vcf.gz
# zcat freebayes_invariant_chr17_all.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref" || SAF > 1 || SAR > 1 || RPR > 1 || RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr17_allFiltered_noQual.vcf.gz
# 
