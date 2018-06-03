#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chr01_vcf-isec.out
#SBATCH -e /global/home/users/makman/GATK/outs/chr01_vcf-isec.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bcftools/1.6
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp


vcf-isec -n +2 fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > vcftools_isec/deneme_intersect.vcf.gz


