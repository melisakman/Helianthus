#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr02
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr02_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr02_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

bcftools isec -n=3 -O z -p vcf-isec_chr02_3 fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr02_Filtered_sorted.vcf.gz

