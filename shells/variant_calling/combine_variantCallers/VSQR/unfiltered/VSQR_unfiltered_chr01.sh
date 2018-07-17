#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J VSQchr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_unfiltered_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_unfiltered_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
-T VariantRecalibrator \
-nt 20 \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-input chr01_unfiltered_2plus_GATK_annot.vcf.gz
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an InbreedingCoeff \
-mode SNP \
-recalFile chr01_unfiltered_2plus.recal \
-tranchesFile chr01_unfiltered_2plus.tranches \
-rscriptFile chr01_unfiltered_2plus.plots.R