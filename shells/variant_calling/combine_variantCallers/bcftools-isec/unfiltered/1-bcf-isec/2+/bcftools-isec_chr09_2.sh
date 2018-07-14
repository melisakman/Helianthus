#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2chr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr09.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/old/samtools_invariant_chr09_dupsRemoved.vcf > samtools_VC/old/samtools_invariant_chr09_dupsRemoved.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/old/samtools_invariant_chr09_dupsRemoved.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/old/freebayes_invariant_chr09_combined.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/unfiltered/chr09_2 fastq/invariants/VCMA_chr09.vcf.gz \
samtools_VC/old/samtools_invariant_chr09_dupsRemoved.vcf.gz \
freebayes/final_combined/old/freebayes_invariant_chr09_combined.vcf.gz
