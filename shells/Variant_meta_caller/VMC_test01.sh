#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J VMC
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VMC_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VMC_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip freebayes/freebayes_invariant_chr01_combined.vcf.gz
gunzip fastq/invariants/VCMA_chr01.vcf.gz
gunzip samtools_VC/samtools_invariant_chr01.vcf.gz

/global/home/users/makman/VariantMetaCaller_v1.0/VariantMetaCaller -t prioritize --allInfo \
-c /global/home/users/makman/VariantMetaCaller_v1.0/definitions.config \
-v GATK HaplotypeCaller fastq/invariants/VCMA_chr01.vcf \
-v samtools samtools samtools_VC/samtools_invariant_chr01.vcf \
-v freebayes freebayes freebayes/final_combined/freebayes_invariant_chr01_all.vcf \
-o VMC_chr01_test.vcf --allInfo 