#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr01_all.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr01_all.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# freebayes_invariant_chr01_combined.vcf freebayes_invariant_chr01_chunk20.vcf > freebayes_invariant_chr01_combined_end.vcf
# 
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
# freebayes_invariant_chr01_AnzacPueblo.vcf freebayes_invariant_chr01_AnzacPueblo_b.vcf > freebayes_invariant_chr01_AnzacPueblo_all.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr01_combined_end.vcf > freebayes_invariant_chr01_combined_end.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr01_AnzacPueblo_all.vcf > freebayes_invariant_chr01_AnzacPueblo_all.vcf.gz 

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr01_combined_end.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr01_AnzacPueblo_all.vcf.gz  


/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-merge freebayes_invariant_chr01_combined_end.vcf.gz freebayes_invariant_chr01_AnzacPueblo_all.vcf.gz > freebayes_invariant_chr01_all.vcf.gz