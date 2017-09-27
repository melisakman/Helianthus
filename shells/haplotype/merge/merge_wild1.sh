#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams
#SBATCH --nodes=1
#SBATCH --time=10:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/merge_new_VC_1.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/merge_new_VC_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1
# srun samtools merge ann01-cwIA_nochr00_combined.bam ann01-cwIA_3e2_nochr00.bam ann01-cwIA_3e3_nochr00.bam 
# srun samtools merge ann04-nwAR_nochr00_combined.bam ann04-nwAR_3e4_nochr00.bam ann04-nwAR_3e5_nochr00.bam
srun samtools merge ann05-ccNM_nochr00_combined.bam ann05-ccNM_3e6_nochr00.bam ann05-ccNM_3e7_nochr00.bam
srun samtools merge ann10-ccIL_nochr00_combined.bam ann10-ccIL_3ea_nochr00.bam ann10-ccIL_3eb_nochr00.bam
# srun samtools merge ann20-seAZ_nochr00_combined.bam ann20-seAZ_3ec_nochr00.bam ann20-seAZ_3ed_nochr00.bam
# srun samtools merge ann28-swSK_nochr00_combined.bam ann28-swSK_3ef_nochr00.bam ann28-swSK_3f0_nochr00.bam
# srun samtools merge ann29-neSD_nochr00_combined.bam ann29-neSD_3f1_nochr00.bam ann29-neSD_3f2_nochr00.bam
# srun samtools merge ann44-ccCA_nochr00_combined.bam ann44-ccCA_3f8_nochr00.bam ann44-ccCA_3f9_nochr00.bam
