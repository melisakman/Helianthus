#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/samtools_VC/
#SBATCH -J filST1
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_samtools1.out
#SBATCH -i /global/home/users/makman/GATK/outs/bcftools_filter_samtools1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load java

cat samtools_invariant_chr01_combined.vcf | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr01_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr02_combined.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr02_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr03_combined.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr03_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr04_combined.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr04_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr05.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr05_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr06.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr06_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr07.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr07_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr08.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr08_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr09.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr09_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr10.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr10_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr11.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr11_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr12.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr12_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr13.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr13_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr14.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr14_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr15.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr15_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr16.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr16_Filtered_sorted.vcf.gz
# zcat samtools_invariant_chr17.vcf.gz | bcftools filter -g 5 -i 'QUAL/DP > 2.0 || QUAL > 50 || MQ > 40 || TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /global/scratch/makman/temp_files | gzip -c > samtools_invariant_chr17_Filtered_sorted.vcf.gz


