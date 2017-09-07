#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/Helianthus/blast_databases/
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/blast/outs/databases_mRNA.out
#SBATCH -e /global/home/users/makman/blast/outs/databases_mRNA.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2
module load blast/2.2.30 
srun makeblastdb -in ../HA412/20141217-Ha412v1r1_mrna.fasta -input_type fasta -dbtype nucl -title HA412_mRNA -out HA412_mRNA
srun makeblastdb -in ../XRQ/HanXRQr1.0-20151230-EGN-r1.1.mrna.fna -input_type fasta -dbtype nucl -title XRQ_mRNA -out XRQ_mRNA
