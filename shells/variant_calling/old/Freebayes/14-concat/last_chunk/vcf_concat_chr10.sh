#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr10
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr10.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr10_chunk1.vcf \
freebayes_invariant_chr10_chunk2.vcf \
freebayes_invariant_chr10_chunk3.vcf \
freebayes_invariant_chr10_chunk4.vcf \
freebayes_invariant_chr10_chunk5.vcf \
freebayes_invariant_chr10_chunk6.vcf \
freebayes_invariant_chr10_chunk7.vcf \
freebayes_invariant_chr10_chunk8.vcf \
freebayes_invariant_chr10_chunk9.vcf \
freebayes_invariant_chr10_chunk10.vcf \
freebayes_invariant_chr10_chunk11.vcf \
freebayes_invariant_chr10_chunk12.vcf \
freebayes_invariant_chr10_chunk13.vcf \
freebayes_invariant_chr10_chunk14.vcf \
freebayes_invariant_chr10_chunk14b.vcf \
freebayes_invariant_chr10_chunk14c.vcf \
freebayes_invariant_chr10_chunk14d.vcf \
freebayes_invariant_chr10_chunk15.vcf \
freebayes_invariant_chr10_chunk16.vcf \
freebayes_invariant_chr10_chunk17.vcf \
freebayes_invariant_chr10_chunk18.vcf \
freebayes_invariant_chr10_chunk19.vcf \
freebayes_invariant_chr10_chunk20.vcf \
freebayes_invariant_chr10_chunk21.vcf \
freebayes_invariant_chr10_chunk22.vcf \
freebayes_invariant_chr10_chunk23.vcf \
freebayes_invariant_chr10_chunk24.vcf \
freebayes_invariant_chr10_chunk25.vcf \
freebayes_invariant_chr10_chunk26.vcf \
freebayes_invariant_chr10_chunk27.vcf \
freebayes_invariant_chr10_chunk28.vcf \
freebayes_invariant_chr10_chunk29.vcf \
freebayes_invariant_chr10_chunk30.vcf \
freebayes_invariant_chr10_chunk31.vcf 
freebayes_invariant_chr10_chunk31b.vcf> freebayes_invariant_chr10_combined.vcf.gz

