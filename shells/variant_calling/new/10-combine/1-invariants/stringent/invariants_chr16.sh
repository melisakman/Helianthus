#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr16
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chr16_invariants_bcftools.out
#SBATCH -e /global/home/users/makman/GATK/outs/chr16_invariants_bcftools.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools


# zcat freebayes/freebayes_invariant_chr16_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/freebayes_invariant_chr16_combined_ref_filtered.vcf.gz
# zcat samtools/samtools_invariant_chr16_dupsRemoved.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL/DP > 2.0 && QUAL > 20 && MQ > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_invariant_chr16_dupsRemoved_ref_filtered.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/freebayes_invariant_chr16_combined_ref_filtered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_invariant_chr16_dupsRemoved_ref_filtered.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr16_GATK_NoVar_hardfiltered_secondFilter.vcf.gz

bcftools isec -n +2 -O z -p ../bcftools_isec/chr16_2_ref gvcfs/genotyping/chr16_GATK_NoVar_hardfiltered_secondFilter.vcf.gz \
freebayes/freebayes_invariant_chr16_combined_ref_filtered.vcf.gz \
samtools/samtools_invariant_chr16_dupsRemoved_ref_filtered.vcf.gz 
