#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J vcfisec2
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr02.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf > fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf > freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/samtools_invariant_chr02_Filtered.vcf > samtools_VC/samtools_invariant_chr02_Filtered.vcf.gz

bcftools isec -n 2+ -O z fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr02_Filtered.vcf.gz > GATK_FB_ST_2plus_intersect_chr02.vcf