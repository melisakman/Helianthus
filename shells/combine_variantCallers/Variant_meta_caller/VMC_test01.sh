#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J VMC
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --mem=128000
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VMC_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VMC_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


/global/home/users/makman/VariantMetaCaller_v1.0/VariantMetaCaller -t prioritize --allInfo \
-c /global/home/users/makman/VariantMetaCaller_v1.0/definitions.config \
-v GATK HaplotypeCaller fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf \
-v freebayes freebayes freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf \
-o VMC_chr01_test.vcf --allInfo


# -v GATK HaplotypeCaller fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf.gz \
# -v samtools samtools samtools_VC/samtools_invariant_chr01_Filtered.vcf \