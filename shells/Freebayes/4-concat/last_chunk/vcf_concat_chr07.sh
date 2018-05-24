#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr07
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr07_al.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr07_al.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr07_combined.vcf freebayes_invariant_chr07_chunk13.vcf > freebayes_invariant_chr07_combined_end.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr07_combined_end.vcf > freebayes_invariant_chr07_combined_end.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr07_AnzacPueblo.vcf > freebayes_invariant_chr07_AnzacPueblo.vcf.gz 

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr07_combined_end.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr07_AnzacPueblo.vcf.gz  


/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-merge \
freebayes_invariant_chr07_combined_end.vcf.gz freebayes_invariant_chr07_AnzacPueblo.vcf.gz > freebayes_invariant_chr07_all.vcf.gz