#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr02
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr02_all.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr02_all.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr02_combined.vcf freebayes_invariant_chr02_chunk23.vcf \
freebayes_invariant_chr02_chunk23b.vcf > freebayes_invariant_chr02_combined_end.vcf

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr02_AnzacPueblo.vcf freebayes_invariant_chr02_AnzacPueblo_b.vcf > freebayes_invariant_chr02_AnzacPueblo_all.vcf

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-merge \
freebayes_invariant_chr02_combined_end.vcf freebayes_invariant_chr02_AnzacPueblo_all.vcf > freebayes_invariant_chr02_all.vcf

