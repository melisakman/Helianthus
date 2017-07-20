#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/snpEff/vcf/
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQ_extractCandidates_newFiltering_cp.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQ_extractCandidates_newFiltering_cp.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
tail -n  20417470 XRQ_combined_new_filtering_snpeff.vcf > XRQ_combined_new_filtering_snpeff_noHeader.vcf 