#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/samtools_VC/
#SBATCH -J filST3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filterUpdate_samtools3.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filterUpdate_samtools3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load java

# cat old/samtools_invariant_chr01_combined.vcf | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr01_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr02_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr02_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr03_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr03_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr04_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr04_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr05.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr05_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr06.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr06_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr07.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr07_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr08.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr08_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr09.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr09_Filtered_invariantSitesOnly.vcf.gz
zcat old/samtools_invariant_chr10_dupsRemoved.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr10_Filtered_invariantSitesOnly.vcf.gz
zcat old/samtools_invariant_chr11_dupsRemoved.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr11_Filtered_invariantSitesOnly.vcf.gz
zcat old/samtools_invariant_chr12_dupsRemoved.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr12_Filtered_invariantSitesOnly.vcf.gz
zcat old/samtools_invariant_chr13_dupsRemoved.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr13_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr14.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr14_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr15.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr15_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr16.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr16_Filtered_invariantSitesOnly.vcf.gz
# zcat old/samtools_invariant_chr17.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr17_Filtered_invariantSitesOnly.vcf.gz


