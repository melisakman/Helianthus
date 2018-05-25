#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr12
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr12.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr12_chunk1a.vcf \
freebayes_invariant_chr12_chunk1b.vcf \
freebayes_invariant_chr12_chunk1c.vcf \
freebayes_invariant_chr12_chunk1d.vcf \
freebayes_invariant_chr12_chunk2.vcf \
freebayes_invariant_chr12_chunk3.vcf \
freebayes_invariant_chr12_chunk4.vcf \
freebayes_invariant_chr12_chunk5.vcf \
freebayes_invariant_chr12_chunk5b.vcf \
freebayes_invariant_chr12_chunk6.vcf \
freebayes_invariant_chr12_chunk6b.vcf \
freebayes_invariant_chr12_chunk7.vcf \
freebayes_invariant_chr12_chunk8.vcf \
freebayes_invariant_chr12_chunk8b.vcf \
freebayes_invariant_chr12_chunk9.vcf \
freebayes_invariant_chr12_chunk10.vcf \
freebayes_invariant_chr12_chunk11.vcf \
freebayes_invariant_chr12_chunk11b.vcf \
freebayes_invariant_chr12_chunk12.vcf \
freebayes_invariant_chr12_chunk12b.vcf \
freebayes_invariant_chr12_chunk13.vcf \
freebayes_invariant_chr12_chunk14.vcf \
freebayes_invariant_chr12_chunk15.vcf \
freebayes_invariant_chr12_chunk16.vcf \
freebayes_invariant_chr12_chunk16b.vcf \
freebayes_invariant_chr12_chunk17.vcf \
freebayes_invariant_chr12_chunk17b.vcf \
freebayes_invariant_chr12_chunk18.vcf \
freebayes_invariant_chr12_chunk19.vcf \
freebayes_invariant_chr12_chunk20.vcf \
freebayes_invariant_chr12_chunk21.vcf\
freebayes_invariant_chr12_chunk21b.vcf > freebayes_invariant_chr12_combined.vcf

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr12_AnzacPueblo.vcf freebayes_invariant_chr12_AnzacPueblo_b.vcf > freebayes_invariant_chr12_AnzacPueblo_all.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr12_combined.vcf > freebayes_invariant_chr12_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr12_AnzacPueblo_all.vcf > freebayes_invariant_chr12_AnzacPueblo_all.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr12_combined.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr12_AnzacPueblo_all.vcf.gz  

bcftools merge -m all -O z freebayes_invariant_chr12_combined.vcf.gz freebayes_invariant_chr12_AnzacPueblo_all.vcf.gz > final_combined/freebayes_invariant_chr12_all.vcf.gz

