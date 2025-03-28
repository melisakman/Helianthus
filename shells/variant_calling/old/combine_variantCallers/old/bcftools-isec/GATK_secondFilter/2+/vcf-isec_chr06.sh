#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr06
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr06.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

gunzip fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf.gz
gunzip freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf.gz
gunzip samtools_VC/samtools_invariant_chr06_Filtered_sorted.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf > fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf > freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/samtools_invariant_chr06_Filtered_sorted.vcf > samtools_VC/samtools_invariant_chr06_Filtered_sorted.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./samtools_VC/samtools_invariant_chr06_Filtered_sorted.vcf.gz

bcftools isec -n +2 -O z -p vcf-isec_chr06 fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr06_Filtered_sorted.vcf.gz

