#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr07
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr07.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr07.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# freebayes_invariant_chr07_chunk1.vcf \
# freebayes_invariant_chr07_chunk1b.vcf \
# freebayes_invariant_chr07_chunk1c.vcf \
# freebayes_invariant_chr07_chunk1d.vcf \
# freebayes_invariant_chr07_chunk2.vcf \
# freebayes_invariant_chr07_chunk2b.vcf \
# freebayes_invariant_chr07_chunk3.vcf \
# freebayes_invariant_chr07_chunk3b.vcf \
# freebayes_invariant_chr07_chunk4.vcf \
# freebayes_invariant_chr07_chunk5.vcf \
# freebayes_invariant_chr07_chunk6.vcf \
# freebayes_invariant_chr07_chunk7.vcf \
# freebayes_invariant_chr07_chunk8.vcf \
# freebayes_invariant_chr07_chunk9.vcf \
# freebayes_invariant_chr07_chunk10.vcf \
# freebayes_invariant_chr07_chunk10b.vcf \
# freebayes_invariant_chr07_chunk11.vcf \
# freebayes_invariant_chr07_chunk11b.vcf \
# freebayes_invariant_chr07_chunk12.vcf \
# freebayes_invariant_chr07_chunk13.vcf \
# freebayes_invariant_chr07_chunk13b.vcf \
# freebayes_invariant_chr07_chunk13c.vcf \
# freebayes_invariant_chr07_chunk13d.vcf \
# freebayes_invariant_chr07_chunk13e.vcf > freebayes_invariant_chr07_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr07_combined.vcf > freebayes_invariant_chr07_combined.vcf.gz 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr07_AnzacPueblo.vcf > freebayes_invariant_chr07_AnzacPueblo.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr07_combined.vcf.gz  
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr07_AnzacPueblo.vcf.gz  

bcftools merge -m all -O z freebayes_invariant_chr07_combined.vcf.gz freebayes_invariant_chr07_AnzacPueblo.vcf.gz > final_combined/freebayes_invariant_chr07_all.vcf.gz