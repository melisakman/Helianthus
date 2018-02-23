#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J gntyp6M
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/genotype_chr6_mex.out
#SBATCH -e /global/home/users/makman/GATK/outs/genotype_chr6_mex.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G" GenotypeGVCFs \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-V combined_chr06_mex.g.vcf.gz \
-O VC_MA_chr06_mex.vcf.gz