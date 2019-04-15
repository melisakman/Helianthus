#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr01
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

# zcat samtools/samtools_invariant_chr01_dupsRemoved.vcf | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_variants_chr01.vcf.gz
# zcat freebayes/freebayes_invariant_chr01_combined.vcf.gz | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/freebayes_variants_chr01.vcf.gz
# 
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_SNP.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/freebayes_variants_chr01.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_variants_chr01.vcf.gz

bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_1 gvcfs/genotyping/chr01_GATK_SNP.vcf.gz \
freebayes/freebayes_variants_chr01.vcf.gz \
samtools/samtools_variants_chr01.vcf.gz





