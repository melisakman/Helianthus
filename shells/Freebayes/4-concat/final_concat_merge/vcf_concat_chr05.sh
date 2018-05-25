#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr05
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr05.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr05.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# freebayes_invariant_chr05_chunk1.vcf \
# freebayes_invariant_chr05_chunk2.vcf \
# freebayes_invariant_chr05_chunk3.vcf \
# freebayes_invariant_chr05_chunk4.vcf \
# freebayes_invariant_chr05_chunk5.vcf \
# freebayes_invariant_chr05_chunk6.vcf \
# freebayes_invariant_chr05_chunk7.vcf \
# freebayes_invariant_chr05_chunk8.vcf \
# freebayes_invariant_chr05_chunk9.vcf \
# freebayes_invariant_chr05_chunk10.vcf \
# freebayes_invariant_chr05_chunk11.vcf \
# freebayes_invariant_chr05_chunk12.vcf \
# freebayes_invariant_chr05_chunk13.vcf \
# freebayes_invariant_chr05_chunk14.vcf \
# freebayes_invariant_chr05_chunk15.vcf \
# freebayes_invariant_chr05_chunk16.vcf \
# freebayes_invariant_chr05_chunk17.vcf \
# freebayes_invariant_chr05_chunk18.vcf \
# freebayes_invariant_chr05_chunk19.vcf \
# freebayes_invariant_chr05_chunk20.vcf \
# freebayes_invariant_chr05_chunk21.vcf \
# freebayes_invariant_chr05_chunk22.vcf \
# freebayes_invariant_chr05_chunk23.vcf \
# freebayes_invariant_chr05_chunk24.vcf \
# freebayes_invariant_chr05_chunk25.vcf \
# freebayes_invariant_chr05_chunk26.vcf \
# freebayes_invariant_chr05_chunk27.vcf \
# freebayes_invariant_chr05_chunk28.vcf > freebayes_invariant_chr05_combined.vcf

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr05_combined.vcf \
freebayes_invariant_chr05_chunk28.vcf > freebayes_invariant_chr05_combined_end.vcf

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr05_AnzacPueblo.vcf freebayes_invariant_chr05_AnzacPueblo_b.vcf > freebayes_invariant_chr05_AnzacPueblo_all.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr05_combined_end.vcf > freebayes_invariant_chr05_combined_end.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr05_AnzacPueblo_all.vcf > freebayes_invariant_chr05_AnzacPueblo_all.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr05_combined_end.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr05_AnzacPueblo_all.vcf.gz  

bcftools merge -m all -O z freebayes_invariant_chr05_combined_end.vcf.gz freebayes_invariant_chr05_AnzacPueblo_all.vcf.gz > final_combined/freebayes_invariant_chr05_all.vcf.gz