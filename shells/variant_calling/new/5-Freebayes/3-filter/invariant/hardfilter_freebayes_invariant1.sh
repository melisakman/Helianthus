#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/
#SBATCH -J filFB1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter2_freebayes1.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter2_freebayes1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

zcat freebayes_invariant_chr01_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr01_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr02_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr02_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr03_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr03_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr04_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr04_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr05_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr05_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr06_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr06_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr07_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr07_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr08_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr08_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr09_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr09_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr10_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr10_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr11_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr11_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr12_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr12_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr13_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr13_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr14_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr14_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr15_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr15_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr16_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr16_allFiltered_onlyInvariantSites.vcf.gz
# zcat freebayes_invariant_chr17_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr17_allFiltered_onlyInvariantSites.vcf.gz


