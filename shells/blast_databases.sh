#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/blast_databases/
#SBATCH -J blast
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/blast/outs/databases.out
#SBATCH -e /global/home/users/makman/blast/outs/databases.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-3
module load blast
makeblastdb -in ../Hulke/all_markers.fa -input_type fasta -dbtype nucl -title Hulke -out Hulke
makeblastdb -in ../HA412/Ha412v1r1_genome.fasta -input_type fasta -dbtype nucl -title HA412 -out HA412
makeblastdb -in ../XRQ/HanXRQr1.0-20151230.fa -input_type fasta -dbtype nucl -title XRQ -out XRQ
