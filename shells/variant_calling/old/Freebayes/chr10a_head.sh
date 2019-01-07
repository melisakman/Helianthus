#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J fb10a
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_invariant_chr10_chunk14a.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_invariant_chr10_chunk14a.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

head -n 3262931 freebayes_invariant_chr10_chunk14.vcf > freebayes_invariant_chr10_chunk14a.vcf