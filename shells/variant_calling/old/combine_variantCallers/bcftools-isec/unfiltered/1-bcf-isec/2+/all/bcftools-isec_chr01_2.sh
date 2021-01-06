#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2_chr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_test.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_test.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
## below is what was ran as final

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/old/samtools_invariant_chr01_dupsRemoved.vcf > samtools_VC/old/samtools_invariant_chr01_dupsRemoved.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/old/samtools_invariant_chr01_dupsRemoved.vcf.gz 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz

# bcftools isec -n +2 -O z -p bcftools_isec/unfiltered/chr01_2 fastq/invariants/VCMA_chr01.vcf.gz \
# samtools_VC/old/samtools_invariant_chr01_dupsRemoved.vcf.gz \
# freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz
# 
# 
# python ~/git/Helianthus/shells/variant_calling/combine_variantCallers/VQSR/unfiltered/4-tests/extract_interval_from_vcf.py freebayes_invariant_chr01_allFiltered.vcf VCMA_chr01_132110001_freebayes_invariant_filtered.vcf VCMA_chr01_132110001_freebayes_invariant_filtered.txt HanXRQChr01 132110001 132120001




###below is ran only for a test

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/old/samtools_invariant_chr01_dupsRemoved.vcf > samtools_VC/old/samtools_invariant_chr01_dupsRemoved.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/raw/freebayes_invariant_chr01_all.vcf > freebayes/final_combined/raw/freebayes_invariant_chr01_all.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/VCMA_chr01.vcf > fastq/invariants/VCMA_chr01.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/unfiltered/chr01_2_test fastq/invariants/VCMA_chr01.vcf.gz \
samtools_VC/old/samtools_invariant_chr01_dupsRemoved.vcf.gz \
freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz


