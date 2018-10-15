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

cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr01_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr02_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr02_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr03_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr03_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr04_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr04_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr05_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr05_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr06_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr06_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr07_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr07_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr08_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr08_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr09_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr09_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr10_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr10_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr11_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr11_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr12_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr12_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr13_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr13_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr14_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr14_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr15_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr15_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr16_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr16_allFiltered_onlyInvariantSites.vcf.gz
# zcat old/freebayes_invariant_chr17_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr17_allFiltered_onlyInvariantSites.vcf.gz


