#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams
#SBATCH --nodes=1
#SBATCH --time=10:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_16.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1
# srun samtools view -b ann01-cwIA_3e2_HanXRQ.bam -L ./chr_group.txt > ann01-cwIA_3e2_nochr00.bam
# srun samtools view -b ann01-cwIA_3e3_HanXRQ.bam -L ./chr_group.txt > ann01-cwIA_3e3_nochr00.bam
# srun samtools view -b ann04-nwAR_3e4_HanXRQ.bam -L ./chr_group.txt > ann04-nwAR_3e4_nochr00.bam
# srun samtools view -b ann04-nwAR_3e5_HanXRQ.bam -L ./chr_group.txt > ann04-nwAR_3e5_nochr00.bam
# srun samtools view -b ann05-ccNM_3e6_HanXRQ.bam -L ./chr_group.txt > ann05-ccNM_3e6_nochr00.bam
# srun samtools view -b ann05-ccNM_3e7_HanXRQ.bam -L ./chr_group.txt > ann05-ccNM_3e7_nochr00.bam
# srun samtools view -b ann06-seWY_3e8_HanXRQ.bam -L ./chr_group.txt > ann06-seWY_3e8_nochr00.bam
# srun samtools view -b ann08-ceTN_3e9_HanXRQ.bam -L ./chr_group.txt > ann08-ceTN_3e9_nochr00.bam
# srun samtools view -b ann10-ccIL_3ea_HanXRQ.bam -L ./chr_group.txt > ann10-ccIL_3ea_nochr00.bam
# srun samtools view -b ann10-ccIL_3eb_HanXRQ.bam -L ./chr_group.txt > ann10-ccIL_3eb_nochr00.bam
# srun samtools view -b ann20-seAZ_3ec_HanXRQ.bam -L ./chr_group.txt > ann20-seAZ_3ec_nochr00.bam
# srun samtools view -b ann20-seAZ_3ed_HanXRQ.bam -L ./chr_group.txt > ann20-seAZ_3ed_nochr00.bam
# srun samtools view -b ann22-nwTX_3ee_HanXRQ.bam -L ./chr_group.txt > ann22-nwTX_3ee_nochr00.bam
# srun samtools view -b ann28-swSK_3ef_HanXRQ.bam -L ./chr_group.txt > ann28-swSK_3ef_nochr00.bam
# srun samtools view -b ann28-swSK_3f0_HanXRQ.bam -L ./chr_group.txt > ann28-swSK_3f0_nochr00.bam
# srun samtools view -b ann29-neSD_3f1_HanXRQ.bam -L ./chr_group.txt > ann29-neSD_3f1_nochr00.bam
# srun samtools view -b ann29-neSD_3f2_HanXRQ.bam -L ./chr_group.txt > ann29-neSD_3f2_nochr00.bam
# srun samtools view -b ann34-cwKS_3f5_HanXRQ.bam -L ./chr_group.txt > ann34-cwKS_3f5_nochr00.bam
# srun samtools view -b ann39-ncNE_3f6_HanXRQ.bam -L ./chr_group.txt > ann39-ncNE_3f6_nochr00.bam
# srun samtools view -b ann44-ccCA_3f8_HanXRQ.bam -L ./chr_group.txt > ann44-ccCA_3f8_nochr00.bam

# srun samtools view -b ann44-ccCA_3f9_HanXRQ.bam -L ./chr_group.txt > ann44-ccCA_3f9_nochr00.bam
# srun samtools view -b annIA_401_HanXRQ.bam -L ./chr_group.txt > annIA_401_nochr00.bam
srun samtools view -b annKS_402_HanXRQ.bam -L ./chr_group.txt > annKS_402_nochr00.bam
# srun samtools view -b annNM_405_HanXRQ.bam -L ./chr_group.txt > annNM_405_nochr00.bam
# srun samtools view -b annWY_406_HanXRQ.bam -L ./chr_group.txt > annWY_406_nochr00.bam
