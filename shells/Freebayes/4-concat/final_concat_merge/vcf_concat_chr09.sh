#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr09
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr09.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr09_chunk1.vcf \
freebayes_invariant_chr09_chunk2.vcf \
freebayes_invariant_chr09_chunk3.vcf \
freebayes_invariant_chr09_chunk4.vcf \
freebayes_invariant_chr09_chunk5.vcf \
freebayes_invariant_chr09_chunk6.vcf \
freebayes_invariant_chr09_chunk7.vcf \
freebayes_invariant_chr09_chunk8.vcf \
freebayes_invariant_chr09_chunk8b.vcf \
freebayes_invariant_chr09_chunk9.vcf \
freebayes_invariant_chr09_chunk10.vcf \
freebayes_invariant_chr09_chunk11.vcf \
freebayes_invariant_chr09_chunk12.vcf \
freebayes_invariant_chr09_chunk13.vcf \
freebayes_invariant_chr09_chunk14.vcf \
freebayes_invariant_chr09_chunk15.vcf \
freebayes_invariant_chr09_chunk16.vcf \
freebayes_invariant_chr09_chunk17.vcf \
freebayes_invariant_chr09_chunk18.vcf \
freebayes_invariant_chr09_chunk19.vcf \
freebayes_invariant_chr09_chunk20.vcf \
freebayes_invariant_chr09_chunk20b.vcf \
freebayes_invariant_chr09_chunk21.vcf \
freebayes_invariant_chr09_chunk22.vcf \
freebayes_invariant_chr09_chunk23.vcf \
freebayes_invariant_chr09_chunk24.vcf \
freebayes_invariant_chr09_chunk25.vcf \
freebayes_invariant_chr09_chunk25b.vcf \
freebayes_invariant_chr09_chunk26.vcf \
freebayes_invariant_chr09_chunk26b.vcf \
freebayes_invariant_chr09_chunk27.vcf > freebayes_invariant_chr09_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr09_combined.vcf > freebayes_invariant_chr09_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr09_combined.vcf.gz  
