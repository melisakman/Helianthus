#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J VMC
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VMC_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VMC_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip samtools_VC/samtools_invariant_chr01_Filtered.vcf.gz > samtools_VC/samtools_invariant_chr01_Filtered.vcf
gunzip freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz > freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf
# gunzip samtools_VC/samtools_invariant_chr01.vcf.gz

/global/home/users/makman/VariantMetaCaller_v1.0/VariantMetaCaller -t prioritize --allInfo \
-c /global/home/users/makman/VariantMetaCaller_v1.0/definitions.config \
-v samtools samtools samtools_VC/samtools_invariant_chr01_Filtered.vcf \
-v freebayes freebayes freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf \
-o VMC_chr01_test.vcf --allInfo


# -v GATK HaplotypeCaller fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf.gz \