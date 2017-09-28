#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_27.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_27.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1 
# srun samtools rmdup -S PI_531071_4d6_HanXRQ_nochr00.bam PI_531071_4d6_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN020_7_HanXRQ_nochr00.bam PPN020_7_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN026_b_HanXRQ_nochr00.bam PPN026_b_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN035_combined.bam PPN035_combined_dedup.bam
srun samtools rmdup -S PPN069_16_HanXRQ_nochr00.bam PPN069_16_HanXRQ_nochr00_dedup.bam
srun samtools rmdup -S PPN072_19_HanXRQ_nochr00.bam PPN072_19_HanXRQ_nochr00_dedup.bam
srun samtools rmdup -S PPN107_28_HanXRQ_nochr00.bam PPN107_28_HanXRQ_nochr00_dedup.bam
srun samtools rmdup -S PPN153_34_HanXRQ_nochr00.bam PPN153_34_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN173_3e_HanXRQ_nochr00.bam PPN173_3e_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN179_40_HanXRQ_nochr00.bam PPN179_40_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN185_44_HanXRQ_nochr00.bam PPN185_44_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN191_46_HanXRQ_nochr00.bam PPN191_46_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN203_2f4_HanXRQ_nochr00.bam PPN203_2f4_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN237_396_HanXRQ_nochr00.bam PPN237_396_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN240_397_HanXRQ_nochr00.bam PPN240_397_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN255_3ae_HanXRQ_nochr00.bam PPN255_3ae_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN262_3b7_HanXRQ_nochr00.bam PPN262_3b7_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S SF_33_177_HanXRQ_nochr00.bam SF_33_177_HanXRQ_nochr00_dedup.bam
#  