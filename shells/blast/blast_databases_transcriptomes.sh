#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/blast/outs/databases_transcriptomes.out
#SBATCH -e /global/home/users/makman/blast/outs/databases_transcriptomes.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-3
module load blast/2.2.30 
srun makeblastdb -in /global/home/users/makman/blast/transcriptomes/stringtie_merged_annot.fa -input_type fasta -dbtype nucl -title stringtie -out stringtie
srun makeblastdb -in /global/home/users/makman/blast/transcriptomes/trinity_Ari_all_Trinity_TPM170_filtered.fasta -input_type fasta -dbtype nucl -title Ari -out Ari
srun makeblastdb -in /global/home/users/makman/blast/transcriptomes/trinity_NB_all_TPM140_filtered.fasta -input_type fasta -dbtype nucl -title NB -out NB
