#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isec_hf3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr01_hardfilter_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr01_hardfilter_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

# gunzip fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf.gz
# gunzip freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz
# gunzip samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf > fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf > freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf > samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz

# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz

bcftools isec -n=3 -O z -p vcf-isec_chr01_hardFilter_3 fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz

