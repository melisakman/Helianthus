#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/samtools
#SBATCH -J comchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/gzip.out
#SBATCH -e /global/home/users/makman/GATK/outs/gzip.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr01.vcf > samtools_invariant_chr01.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr02.vcf > samtools_invariant_chr02.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr03.vcf > samtools_invariant_chr03.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr04.vcf > samtools_invariant_chr04.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr05.vcf > samtools_invariant_chr05.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr06.vcf > samtools_invariant_chr06.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr07.vcf > samtools_invariant_chr07.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr08.vcf > samtools_invariant_chr08.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr09.vcf > samtools_invariant_chr09.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr10.vcf > samtools_invariant_chr10.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr11.vcf > samtools_invariant_chr11.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr12.vcf > samtools_invariant_chr12.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr13.vcf > samtools_invariant_chr13.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr14.vcf > samtools_invariant_chr14.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr15.vcf > samtools_invariant_chr15.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr16.vcf > samtools_invariant_chr16.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr17.vcf > samtools_invariant_chr17.vcf.gz
