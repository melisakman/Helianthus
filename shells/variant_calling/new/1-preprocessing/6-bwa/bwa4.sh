#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/ready/
#SBATCH -J bwa4
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=54000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bwa4.out
#SBATCH -e /global/home/users/makman/GATK/outs/bwa4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bwa/0.7.17-r1188

# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann01-cwIA_trimmed_fixed_R1.fastq ann01-cwIA_trimmed_fixed_R2.fastq > ann01-cwIA.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann04-nwAR_trimmed_fixed_R1.fastq ann04-nwAR_trimmed_fixed_R2.fastq > ann04-nwAR.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann05-ccNM_trimmed_fixed_R1.fastq ann05-ccNM_trimmed_fixed_R2.fastq > ann05-ccNM.sam
bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann10-ccIL_trimmed_fixed_R1.fastq ann10-ccIL_trimmed_fixed_R2.fastq > ann10-ccIL.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann20-seAZ_trimmed_fixed_R1.fastq ann20-seAZ_trimmed_fixed_R2.fastq > ann20-seAZ.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann28-swSK_trimmed_fixed_R1.fastq ann28-swSK_trimmed_fixed_R2.fastq > ann28-swSK.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann29-neSD_trimmed_fixed_R1.fastq ann29-neSD_trimmed_fixed_R2.fastq > ann29-neSD.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_index/HanXRQr1.0-20151230.fa ann44-ccCA_trimmed_fixed_R1.fastq ann44-ccCA_trimmed_fixed_R2.fastq > ann44-ccCA.sam

