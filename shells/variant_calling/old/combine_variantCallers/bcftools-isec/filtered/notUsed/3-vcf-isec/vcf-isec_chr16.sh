#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr16_2
#SBATCH -J chr16
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chr16_vcf-isec.out
#SBATCH -e /global/home/users/makman/GATK/outs/chr16_vcf-isec.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
PATH=$PATH:/clusterfs/rosalind/users/makman/tabix-0.2.6/

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf 0000_renamed.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf 0001_sorted.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf 0002_sorted.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-isec -n +2 \
0000_renamed.vcf.gz 0001_sorted.vcf.gz 0002_sorted.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr16_intersect.vcf.gz


