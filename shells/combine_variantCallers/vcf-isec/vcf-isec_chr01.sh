#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J vcfisec1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
bcftools isec -n 2+ -O z fastq/invariants/VCMA_chr01_ALL_hardfiltered.vcf.gz freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz samtools_VC/samtools_invariant_chr01_Filtered.vcf.gz > GATK_FB_ST_2plus_intersect_chr01.vcf.gz