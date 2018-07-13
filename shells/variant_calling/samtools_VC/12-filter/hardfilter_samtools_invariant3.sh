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

# cat old/samtools_invariant_chr01_combined.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr01_Filtered.vcf.gz
# zcat old/samtools_invariant_chr02_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr02_Filtered.vcf.gz
# zcat old/samtools_invariant_chr03_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr03_Filtered.vcf.gz
# zcat old/samtools_invariant_chr04_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr04_Filtered.vcf.gz
# zcat old/samtools_invariant_chr05.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr05_Filtered.vcf.gz
# zcat old/samtools_invariant_chr06.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr06_Filtered.vcf.gz
# zcat old/samtools_invariant_chr07.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr07_Filtered.vcf.gz
# zcat old/samtools_invariant_chr08.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr08_Filtered.vcf.gz
# zcat old/samtools_invariant_chr09.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr09_Filtered.vcf.gz
cat old/samtools_invariant_chr10.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr10_Filtered.vcf.gz
cat old/samtools_invariant_chr11.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr11_Filtered.vcf.gz
cat old/samtools_invariant_chr12.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr12_Filtered.vcf.gz
cat old/samtools_invariant_chr13.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr13_Filtered.vcf.gz
# zcat old/samtools_invariant_chr14.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr14_Filtered.vcf.gz
# zcat old/samtools_invariant_chr15.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr15_Filtered.vcf.gz
# zcat old/samtools_invariant_chr16.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr16_Filtered.vcf.gz
# zcat old/samtools_invariant_chr17.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr17_Filtered.vcf.gz


