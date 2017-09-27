#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams
#SBATCH --nodes=1
#SBATCH --time=12:00:00
#SBATCH --mem=64000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/merge_new_VC_lr3.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/merge_new_VC_lr3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1
# srun samtools merge Anzac_Pueblo_combined.bam Anzac_Pueblo*_nochr00.bam 
# srun samtools merge Arikara_combined.bam Arikara*_nochr00.bam
# srun samtools merge Havasupai_combined.bam Havasupai*_nochr00.bam
# srun samtools merge Hidatsa1_combined.bam Hidatsa1*_nochr00.bam
srun samtools merge Hopi_combined.bam Hopi*_nochr00.bam
srun samtools merge Laguna_Pueblo_combined.bam Laguna_Pueblo*_nochr00.bam
# srun samtools merge Mandan2_combined.bam Mandan2*_nochr00.bam
# srun samtools merge MexCult14_combined.bam MexCult14*_nochr00.bam
# srun samtools merge MexCult15_combined.bam MexCult15*_nochr00.bam 
# srun samtools merge MexCult3_combined.bam MexCult3*_nochr00.bam
# srun samtools merge MexCult6_combined.bam MexCult6*_nochr00.bam
# srun samtools merge MexCult7_combined.bam MexCult7*_nochr00.bam
# srun samtools merge MexCult9_combined.bam MexCult9*_nochr00.bam
# srun samtools merge Pueblo_combined.bam Pueblo*_nochr00.bam
# srun samtools merge Seneca_combined.bam Seneca*_nochr00.bam
# srun samtools merge Zuni_combined.bam Zuni*_nochr00.bam

