#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 3chr16
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr16.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/filtered_combined/VCMA_GATK_chr16_secondFilter.vcf > fastq/invariants/filtered_combined/VCMA_GATK_chr16_secondFilter.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/freebayes_invariant_chr16_allFiltered.vcf > freebayes/final_combined/freebayes_invariant_chr16_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/samtools_invariant_chr16_Filtered_dupsRemoved.vcf > samtools_VC/samtools_invariant_chr16_Filtered_dupsRemoved.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix fastq/invariants/filtered_combined/VCMA_GATK_chr16_secondFilter.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/freebayes_invariant_chr16_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/samtools_invariant_chr16_Filtered_dupsRemoved.vcf.gz

bcftools isec -n =3 -O z -p bcftools_isec/chr16_3 fastq/invariants/filtered_combined/VCMA_GATK_chr16_secondFilter.vcf.gz \
samtools_VC/samtools_invariant_chr16_Filtered_dupsRemoved.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr16_allFiltered.vcf.gz