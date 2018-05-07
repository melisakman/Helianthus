#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/gvcf/combined
#SBATCH -J gntyp1M
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/genotype_chr1_invariant.out
#SBATCH -e /global/home/users/makman/GATK/outs/genotype_chr1_invariant.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load gatk/3.8.1
/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk/3.8.0/GenomeAnalysisTK.jar --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp/ -Xmx60G" GenotypeGVCFs --includeNonVariantSites \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V combined_chr01_ethno.g.vcf.gz \
-O ../../invariants/VCMA_chr01.vcf.gz