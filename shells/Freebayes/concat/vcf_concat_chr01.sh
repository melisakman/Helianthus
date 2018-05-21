#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr01_chunk1.vcf \
freebayes_invariant_chr01_chunk2.vcf \
freebayes_invariant_chr01_chunk3.vcf \
freebayes_invariant_chr01_chunk4.vcf \
freebayes_invariant_chr01_chunk5.vcf \
freebayes_invariant_chr01_chunk6.vcf \
freebayes_invariant_chr01_chunk7.vcf \
freebayes_invariant_chr01_chunk8.vcf \
freebayes_invariant_chr01_chunk9.vcf \
freebayes_invariant_chr01_chunk10.vcf \
freebayes_invariant_chr01_chunk11.vcf \
freebayes_invariant_chr01_chunk12.vcf \
freebayes_invariant_chr01_chunk13.vcf \
freebayes_invariant_chr01_chunk14.vcf \
freebayes_invariant_chr01_chunk15.vcf \
freebayes_invariant_chr01_chunk16.vcf \
freebayes_invariant_chr01_chunk17.vcf \
freebayes_invariant_chr01_chunk18.vcf \
freebayes_invariant_chr01_chunk19.vcf \
freebayes_invariant_chr01_chunk20.vcf > freebayes_invariant_chr01_combined.vcf.gz

