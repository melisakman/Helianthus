#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/gvcfs/genotyping
#SBATCH -J chr01gen
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/genotype_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/genotype_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load gatk/4.0.1.2
module load java

/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk --java-options "-Xmx64g" GenotypeGVCFs \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V gendb:/global/scratch/makman/GATK/DBI/GATK_DB_chr01 \
-newQual \
-O chr01_GATK.vcf \
-L HanXRQChr01 \
--reader-threads 20 \
--TMP_DIR=/global/scratch/makman/temp_files/ 

