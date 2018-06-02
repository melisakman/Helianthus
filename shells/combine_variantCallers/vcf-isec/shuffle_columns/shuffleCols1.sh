#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J vcfshuffle1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/shufflecols_freebayes1.out
#SBATCH -e /global/home/users/makman/GATK/outs/shufflecols_freebayes1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load vcftools/0.1.13
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

zcat vcf-isec_chr01/0000.vcf.gz | wc -l
zcat vcf-isec_chr01/0001.vcf.gz | wc -l
zcat vcf-isec_chr01/0002.vcf.gz | wc -l

# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/final_combined/shuffleCols/freebayes_invariant_chr01_allFilteredshuffled.vcf.gz
