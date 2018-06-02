#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J vcfshuffle1
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/shufflecols_freebayes1.out
#SBATCH -e /global/home/users/makman/GATK/outs/shufflecols_freebayes1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t vcf-isec_chr01/0000.vcf.gz vcf-isec_chr01/0001.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > vcf-isec_chr01/0001_sorted.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t vcf-isec_chr01/0000.vcf.gz vcf-isec_chr01/0002.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > vcf-isec_chr01/0002_sorted.vcf.gz
