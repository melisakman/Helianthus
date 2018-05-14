#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J tail
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/GATK_invariant_tail.out
#SBATCH -e /global/home/users/makman/GATK/outs/GATK_invariant_tail.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


zcat VCMA_chr17.vcf.gz | tail -n 1
