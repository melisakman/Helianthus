#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/samtools_VC/
#SBATCH -J filST8
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_samtools8noMAF.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_samtools8noMAF.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load java
module load bio/vcftools

# zcat samtools_invariant_chr01_combined.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr01_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr02_combined.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr02_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr03_combined.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr03_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr04_combined.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr04_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr05.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr05_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr06.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr06_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr07.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr07_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr08.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr08_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr09.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr09_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr10.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr10_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr11.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr11_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr12.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr12_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr13.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr13_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr14.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr14_Filtered_noMAF.vcf.gz
zcat samtools_invariant_chr15.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr15_Filtered_noMAF.vcf.gz
zcat samtools_invariant_chr16.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr16_Filtered_noMAF.vcf.gz
# zcat samtools_invariant_chr17.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & MQ > 40" | vcftools --gzvcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > samtools_invariant_chr17_Filtered_noMAF.vcf.gz


