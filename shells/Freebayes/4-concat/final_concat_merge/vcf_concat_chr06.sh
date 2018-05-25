#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr06
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr06.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# freebayes_invariant_chr06_chunk1.vcf \
# freebayes_invariant_chr06_chunk2.vcf \
# freebayes_invariant_chr06_chunk3.vcf \
# freebayes_invariant_chr06_chunk4.vcf \
# freebayes_invariant_chr06_chunk5.vcf \
# freebayes_invariant_chr06_chunk6.vcf \
# freebayes_invariant_chr06_chunk7.vcf \
# freebayes_invariant_chr06_chunk8.vcf \
# freebayes_invariant_chr06_chunk9.vcf \
# freebayes_invariant_chr06_chunk10.vcf \
# freebayes_invariant_chr06_chunk11.vcf \
# freebayes_invariant_chr06_chunk12.vcf \
# freebayes_invariant_chr06_chunk13.vcf > freebayes_invariant_chr06_combined.vcf

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr06_combined.vcf \
freebayes_invariant_chr06_chunk13.vcf > freebayes_invariant_chr06_combined_end.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr06_combined_end.vcf > freebayes_invariant_chr06_combined_end.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr06_AnzacPueblo.vcf > freebayes_invariant_chr06_AnzacPueblo.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr06_combined_end.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr06_AnzacPueblo.vcf.gz  

bcftools merge -m all -O z freebayes_invariant_chr06_combined_end.vcf.gz freebayes_invariant_chr06_AnzacPueblo.vcf.gz > final_combined/freebayes_invariant_chr06_all.vcf.gz