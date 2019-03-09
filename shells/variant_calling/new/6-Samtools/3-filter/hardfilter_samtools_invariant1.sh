#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/samtools
#SBATCH -J ST_chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_samtools_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_samtools_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

cat samtools_invariant_chr01_dupsRemoved.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 20' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_variants_chr01_filtered.vcf.gz
cat samtools_invariant_chr01_dupsRemoved.vcf | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariants_chr01_filtered.vcf.gz

