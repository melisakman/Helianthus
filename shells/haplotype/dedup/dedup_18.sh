#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_18.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/dedup_18.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1
# srun samtools rmdup -S Anzac_Pueblo_combined.bam Anzac_Pueblo_combined_dedup.bam
# srun samtools rmdup -S Arikara_combined.bam Arikara_combined_dedup.bam
# srun samtools rmdup -S Havasupai_combined.bam Havasupai_combined_dedup.bam
# srun samtools rmdup -S Hidatsa1_combined.bam Hidatsa1_combined_dedup.bam
srun samtools rmdup -S Hopi_combined.bam Hopi_combined_dedup.bam
# srun samtools rmdup -S Hopi_1_HanXRQ_nochr00.bam Hopi_1_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S Laguna_Pueblo_combined.bam Laguna_Pueblo_combined_dedup.bam
# srun samtools rmdup -S Mandan2_combined.bam Mandan2_combined_dedup.bam
# srun samtools rmdup -S MexCult1_513_HanXRQ_nochr00.bam MexCult1_513_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S MexCult14_combined.bam MexCult14_combined_dedup.bam
# srun samtools rmdup -S MexCult15_combined.bam MexCult15_combined_dedup.bam
# srun samtools rmdup -S MexCult3_combined.bam MexCult3_combined_dedup.bam
# srun samtools rmdup -S MexCult6_combined.bam MexCult6_combined_dedup.bam
# srun samtools rmdup -S MexCult7_combined.bam MexCult7_combined_dedup.bam
# srun samtools rmdup -S MexCult9_combined.bam MexCult9_combined_dedup.bam
# srun samtools rmdup -S Pueblo_combined.bam Pueblo_combined_dedup.bam
# srun samtools rmdup -S Seneca_combined.bam Seneca_combined_dedup.bam
# srun samtools rmdup -S Zuni_combined.bam Zuni_combined_dedup.bam
# srun samtools rmdup -S PPN046_78_HanXRQ_nochr00.bam PPN046_78_HanXRQ_nochr00_dedup.bam
# srun samtools rmdup -S PPN083_combined.bam PPN083_combined_dedup.bam
