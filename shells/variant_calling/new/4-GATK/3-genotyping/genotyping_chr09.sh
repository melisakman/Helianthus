#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/gvcfs/genotyping
#SBATCH -J chr09gen
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=470:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/genotype_chr09.out
#SBATCH -e /global/home/users/makman/GATK/outs/genotype_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# module load gatk/4.0.1.2
module load java

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" GenotypeGVCFs \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V gendb:///global/scratch/makman/GATK/DBI/GATK_DB_chr09 \
-O chr09_GATK.vcf \
-L HanXRQChr09 \
--include-non-variant-sites \

