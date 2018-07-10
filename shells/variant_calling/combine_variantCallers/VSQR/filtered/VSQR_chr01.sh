#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/chr01_3
#SBATCH -J VSQchr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_filtered_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_filtered_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All



java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V chr01_intersect.vcf.gz \
	-selectType SNP \
	-o chr01_intersect_SNP.vcf.gz 

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
-T VariantRecalibrator \
-nt 6 \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-input chr01_intersect_SNP.vcf.gz
-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR -an InbreedingCoeff \
-mode SNP \
-recalFile output.recal \
-tranchesFile output.tranches \
-rscriptFile output.plots.R