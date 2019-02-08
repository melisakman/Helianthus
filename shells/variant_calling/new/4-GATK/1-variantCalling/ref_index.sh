#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J varref1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=170:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/variant_ref.out
#SBATCH -e /global/home/users/makman/GATK/outs/variant_ref.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

module load picard/2.9.0 

java -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar CreateSequenceDictionary R= /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta OUTPUT= /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.dict