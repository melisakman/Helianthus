#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr03
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr03_hardfilter.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr03_hardfilter.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

# gunzip fastq/invariants/filtered_combined/VCMA_GATK_chr03_sorted.vcf.gz
# gunzip freebayes/final_combined/freebayes_invariant_chr03_allFiltered.vcf.gz
# gunzip samtools_VC/samtools_invariant_chr03_Filtered_sorted.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/filtered_combined/VCMA_GATK_chr03_sorted.vcf > fastq/invariants/filtered_combined/VCMA_GATK_chr03_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/freebayes_invariant_chr03_allFiltered.vcf > freebayes/final_combined/freebayes_invariant_chr03_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/samtools_invariant_chr03_Filtered_sorted.vcf > samtools_VC/samtools_invariant_chr03_Filtered_sorted.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./fastq/invariants/filtered_combined/VCMA_GATK_chr03_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -f ./freebayes/final_combined/freebayes_invariant_chr03_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -f ./samtools_VC/samtools_invariant_chr03_Filtered_sorted.vcf.gz

bcftools isec -n +2 -O z -p vcf-isec_chr03_hardFilter fastq/invariants/filtered_combined/VCMA_GATK_chr03_sorted.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr03_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr03_Filtered_sorted.vcf.gz

