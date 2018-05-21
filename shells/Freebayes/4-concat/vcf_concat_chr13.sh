#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr13
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr13.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr13.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr13_chunk1.vcf \
freebayes_invariant_chr13_chunk2.vcf \
freebayes_invariant_chr13_chunk3.vcf \
freebayes_invariant_chr13_chunk4.vcf \
freebayes_invariant_chr13_chunk5.vcf \
freebayes_invariant_chr13_chunk6.vcf \
freebayes_invariant_chr13_chunk7.vcf \
freebayes_invariant_chr13_chunk8.vcf \
freebayes_invariant_chr13_chunk9.vcf \
freebayes_invariant_chr13_chunk10.vcf \
freebayes_invariant_chr13_chunk11.vcf \
freebayes_invariant_chr13_chunk12.vcf \
freebayes_invariant_chr13_chunk13.vcf \
freebayes_invariant_chr13_chunk14.vcf \
freebayes_invariant_chr13_chunk15.vcf \
freebayes_invariant_chr13_chunk16.vcf \
freebayes_invariant_chr13_chunk17.vcf \
freebayes_invariant_chr13_chunk18.vcf \
freebayes_invariant_chr13_chunk19.vcf \
freebayes_invariant_chr13_chunk20.vcf \
freebayes_invariant_chr13_chunk21.vcf \
freebayes_invariant_chr13_chunk22.vcf \
freebayes_invariant_chr13_chunk23.vcf \
freebayes_invariant_chr13_chunk24.vcf \
freebayes_invariant_chr13_chunk25.vcf > freebayes_invariant_chr13_combined.vcf.gz

