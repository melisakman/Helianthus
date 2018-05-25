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
freebayes_invariant_chr10_chunk10b.vcf \
freebayes_invariant_chr10_chunk11.vcf \
freebayes_invariant_chr10_chunk11b.vcf \
freebayes_invariant_chr10_chunk12.vcf \
freebayes_invariant_chr10_chunk12b.vcf \
freebayes_invariant_chr10_chunk13.vcf \
freebayes_invariant_chr10_chunk14a.vcf \
freebayes_invariant_chr10_chunk14b.vcf \
freebayes_invariant_chr10_chunk14c.vcf \
freebayes_invariant_chr10_chunk14d.vcf \
freebayes_invariant_chr10_chunk14e.vcf \
freebayes_invariant_chr10_chunk15.vcf \
freebayes_invariant_chr10_chunk16.vcf \
freebayes_invariant_chr10_chunk16b.vcf \
freebayes_invariant_chr10_chunk17.vcf \
freebayes_invariant_chr10_chunk18.vcf \
freebayes_invariant_chr10_chunk19.vcf \
freebayes_invariant_chr10_chunk20.vcf \
freebayes_invariant_chr10_chunk21.vcf \
freebayes_invariant_chr10_chunk22.vcf \
freebayes_invariant_chr10_chunk23.vcf \
freebayes_invariant_chr10_chunk24.vcf \
freebayes_invariant_chr10_chunk25.vcf \
freebayes_invariant_chr10_chunk25b.vcf \
freebayes_invariant_chr10_chunk26.vcf \
freebayes_invariant_chr10_chunk26b.vcf \
freebayes_invariant_chr10_chunk27.vcf \
freebayes_invariant_chr10_chunk27b.vcf \
freebayes_invariant_chr10_chunk28.vcf \
freebayes_invariant_chr10_chunk29.vcf \
freebayes_invariant_chr10_chunk29b.vcf \
freebayes_invariant_chr10_chunk30.vcf \
freebayes_invariant_chr10_chunk31.vcf \
freebayes_invariant_chr10_chunk31b.vcf > freebayes_invariant_chr10_combined.vcf

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr10_AnzacPueblo.vcf freebayes_invariant_chr10_AnzacPueblo_b.vcf > freebayes_invariant_chr10_AnzacPueblo_all.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr10_combined.vcf > freebayes_invariant_chr10_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr10_AnzacPueblo_all.vcf > freebayes_invariant_chr10_AnzacPueblo_all.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr10_combined.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr10_AnzacPueblo_all.vcf.gz  

bcftools merge -m all -O z freebayes_invariant_chr10_combined.vcf.gz freebayes_invariant_chr10_AnzacPueblo_all.vcf.gz > freebayes_invariant_chr10_all.vcf.gz