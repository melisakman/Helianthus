#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2chr14
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr14.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr14.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/old/samtools_invariant_chr14.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/old/freebayes_invariant_chr14_all.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/unfiltered/chr14_2 fastq/invariants/VCMA_chr14.vcf.gz \
samtools_VC/old/samtools_invariant_chr14.vcf.gz \
freebayes/final_combined/old/freebayes_invariant_chr14_all.vcf.gz