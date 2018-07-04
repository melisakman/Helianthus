#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2chr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr06.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf > fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf > freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/samtools_invariant_chr06_Filtered_dupsRemoved.vcf > samtools_VC/samtools_invariant_chr06_Filtered_dupsRemoved.vcf.gz
# 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/samtools_invariant_chr06_Filtered_dupsRemoved.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/chr06_2 fastq/invariants/filtered_combined/VCMA_GATK_chr06_secondFilter.vcf.gz \
samtools_VC/samtools_invariant_chr06_Filtered_dupsRemoved.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr06_allFiltered.vcf.gz
