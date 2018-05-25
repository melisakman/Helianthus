#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr15
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr15.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr15.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr15_chunk1.vcf \
freebayes_invariant_chr15_chunk2.vcf \
freebayes_invariant_chr15_chunk2b.vcf \
freebayes_invariant_chr15_chunk2c.vcf \
freebayes_invariant_chr15_chunk3.vcf \
freebayes_invariant_chr15_chunk3b.vcf \
freebayes_invariant_chr15_chunk3c.vcf \
freebayes_invariant_chr15_chunk3d.vcf \
freebayes_invariant_chr15_chunk4.vcf \
freebayes_invariant_chr15_chunk4b.vcf \
freebayes_invariant_chr15_chunk4c.vcf \
freebayes_invariant_chr15_chunk4d.vcf \
freebayes_invariant_chr15_chunk5.vcf \
freebayes_invariant_chr15_chunk5b.vcf \
freebayes_invariant_chr15_chunk5c.vcf \
freebayes_invariant_chr15_chunk5d.vcf \
freebayes_invariant_chr15_chunk6.vcf \
freebayes_invariant_chr15_chunk6b.vcf \
freebayes_invariant_chr15_chunk6c.vcf \
freebayes_invariant_chr15_chunk6d.vcf \
freebayes_invariant_chr15_chunk7.vcf \
freebayes_invariant_chr15_chunk7b.vcf \
freebayes_invariant_chr15_chunk7c.vcf \
freebayes_invariant_chr15_chunk7d.vcf \
freebayes_invariant_chr15_chunk8.vcf \
freebayes_invariant_chr15_chunk8b.vcf \
freebayes_invariant_chr15_chunk8c.vcf \
freebayes_invariant_chr15_chunk8d.vcf \
freebayes_invariant_chr15_chunk8e.vcf \
freebayes_invariant_chr15_chunk9.vcf \
freebayes_invariant_chr15_chunk10.vcf \
freebayes_invariant_chr15_chunk11.vcf \
freebayes_invariant_chr15_chunk12.vcf \
freebayes_invariant_chr15_chunk13.vcf \
freebayes_invariant_chr15_chunk14.vcf \
freebayes_invariant_chr15_chunk15.vcf \
freebayes_invariant_chr15_chunk16.vcf \
freebayes_invariant_chr15_chunk17.vcf \
freebayes_invariant_chr15_chunk17b.vcf \
freebayes_invariant_chr15_chunk18.vcf \
freebayes_invariant_chr15_chunk19.vcf \
freebayes_invariant_chr15_chunk20.vcf \
freebayes_invariant_chr15_chunk21.vcf \
freebayes_invariant_chr15_chunk22.vcf > freebayes_invariant_chr15_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr15_combined.vcf > freebayes_invariant_chr15_all.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr15_all.vcf.gz  
