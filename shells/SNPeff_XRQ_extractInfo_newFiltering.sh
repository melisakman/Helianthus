#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/snpEff/results/
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_extractCandidates_newFiltering.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_extractCandidates_newFiltering.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load python
python ./extract_info_candidates.py ../vcf/XRQ_combined_new_filtering_snpeff.vcf.gz ./newFilteringGenes.txt
