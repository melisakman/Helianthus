#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=64000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_13.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_13.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1
# srun samtools rmdup -S ann06-seWY_3e8_nochr00.bam ann08-ceTN_3e9_nochr00_dedup.bam
# srun samtools rmdup -S ann08-ceTN_3e9_nochr00.bam ann22-nwTX_3ee_nochr00_dedup.bam
# srun samtools rmdup -S ann22-nwTX_3ee_nochr00.bam ann34-cwKS_3f5_nochr00_dedup.bam
# srun samtools rmdup -S ann34-cwKS_3f5_nochr00.bam ann39-ncNE_3f6_nochr00_dedup.bam
# srun samtools rmdup -S ann39-ncNE_3f6_nochr00.bam annIA_401_nochr00_dedup.bam
# srun samtools rmdup -S annIA_401_nochr00.bam annKS_402_nochr00_dedup.bam
# srun samtools rmdup -S annKS_402_nochr00.bam annNM_405_nochr00_dedup.bam
srun samtools rmdup -S annNM_405_nochr00.bam annNM_405_nochr00_dedup.bam
# srun samtools rmdup -S annWY_406_nochr00.bam annWY_406_nochr00_dedup.bam
# srun samtools rmdup -S ann04-nwAR_nochr00_combined.bam ann04-nwAR_nochr00_combined_dedup.bam
# srun samtools rmdup -S ann05-ccNM_nochr00_combined.bam ann05-ccNM_nochr00_combined_dedup.bam
# srun samtools rmdup -S ann10-ccIL_nochr00_combined.bam ann10-ccIL_nochr00_combined_dedup.bam
# srun samtools rmdup -S ann20-seAZ_nochr00_combined.bam ann20-seAZ_nochr00_combined_dedup.bam
# srun samtools rmdup -S ann28-swSK_nochr00_combined.bam ann28-swSK_nochr00_combined_dedup.bam
# srun samtools rmdup -S ann29-neSD_nochr00_combined.bam ann29-neSD_nochr00_combined_dedup.bam
# srun samtools rmdup -S ann44-ccCA_nochr00_combined.bam ann44-ccCA_nochr00_combined_dedup.bam


