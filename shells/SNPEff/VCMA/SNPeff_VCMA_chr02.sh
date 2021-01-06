#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/SNPEff/VCMA
#SBATCH -J snpEff2
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_VCMA_chr02.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_VCMA_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
zcat ../../bcftools_isec/secondFilter/vcf-isec_chr02/chr02_intersect.vcf.gz | java -Xmx16g -jar /clusterfs/vector/scratch/makman/snpEff/snpEff.jar -noLof -stats VCMA_SNPEff_stats_chr02.html XRQ | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr02_intersect_snpeff.vcf.gz
