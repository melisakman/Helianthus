#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams
#SBATCH --nodes=1
#SBATCH --time=10:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_33.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_33.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1

# srun samtools view -b PI_531071_4d6_HanXRQ.bam -L ./chr_group.txt > PI_531071_4d6_HanXRQ_nochr00.bam
# srun samtools view -b PPN020_7_HanXRQ.bam -L ./chr_group.txt > PPN020_7_HanXRQ_nochr00.bam
# srun samtools view -b PPN026_b_HanXRQ.bam -L ./chr_group.txt > PPN026_b_HanXRQ_nochr00.bam
srun samtools view -b PPN069_16_HanXRQ.bam -L ./chr_group.txt > PPN069_16_HanXRQ_nochr00.bam
srun samtools view -b PPN072_19_HanXRQ.bam -L ./chr_group.txt > PPN072_19_HanXRQ_nochr00.bam
srun samtools view -b PPN093_1e_HanXRQ.bam -L ./chr_group.txt > PPN093_1e_HanXRQ_nochr00.bam
# srun samtools view -b PPN107_28_HanXRQ.bam -L ./chr_group.txt > PPN107_28_HanXRQ_nochr00.bam
# srun samtools view -b PPN153_34_HanXRQ.bam -L ./chr_group.txt > PPN153_34_HanXRQ_nochr00.bam
# srun samtools view -b PPN173_3e_HanXRQ.bam -L ./chr_group.txt > PPN173_3e_HanXRQ_nochr00.bam
# srun samtools view -b PPN179_40_HanXRQ.bam -L ./chr_group.txt > PPN179_40_HanXRQ_nochr00.bam
# srun samtools view -b PPN185_44_HanXRQ.bam -L ./chr_group.txt > PPN185_44_HanXRQ_nochr00.bam
# srun samtools view -b PPN191_46_HanXRQ.bam -L ./chr_group.txt > PPN191_46_HanXRQ_nochr00.bam
# srun samtools view -b PPN203_2f4_HanXRQ.bam -L ./chr_group.txt > PPN203_2f4_HanXRQ_nochr00.bam
# srun samtools view -b PPN237_396_HanXRQ.bam -L ./chr_group.txt > PPN237_396_HanXRQ_nochr00.bam
# srun samtools view -b PPN240_397_HanXRQ.bam -L ./chr_group.txt > PPN240_397_HanXRQ_nochr00.bam
# srun samtools view -b PPN255_3ae_HanXRQ.bam -L ./chr_group.txt > PPN255_3ae_HanXRQ_nochr00.bam
# srun samtools view -b PPN262_3b7_HanXRQ.bam -L ./chr_group.txt > PPN262_3b7_HanXRQ_nochr00.bam
# srun samtools view -b SF_33_177_HanXRQ.bam -L ./chr_group.txt > SF_33_177_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1ad_HanXRQ.bam -L ./chr_group.txt > PPN035_1ad_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1ae_HanXRQ.bam -L ./chr_group.txt > PPN035_1ae_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1af_HanXRQ.bam -L ./chr_group.txt > PPN035_1af_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b0_HanXRQ.bam -L ./chr_group.txt > PPN035_1b0_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b1_HanXRQ.bam -L ./chr_group.txt > PPN035_1b1_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b2_HanXRQ.bam -L ./chr_group.txt > PPN035_1b2_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b3_HanXRQ.bam -L ./chr_group.txt > PPN035_1b3_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b4_HanXRQ.bam -L ./chr_group.txt > PPN035_1b4_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b5_HanXRQ.bam -L ./chr_group.txt > PPN035_1b5_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b6_HanXRQ.bam -L ./chr_group.txt > PPN035_1b6_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b7_HanXRQ.bam -L ./chr_group.txt > PPN035_1b7_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b8_HanXRQ.bam -L ./chr_group.txt > PPN035_1b8_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1b9_HanXRQ.bam -L ./chr_group.txt > PPN035_1b9_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1ba_HanXRQ.bam -L ./chr_group.txt > PPN035_1ba_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1bb_HanXRQ.bam -L ./chr_group.txt > PPN035_1bb_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1bc_HanXRQ.bam -L ./chr_group.txt > PPN035_1bc_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1bd_HanXRQ.bam -L ./chr_group.txt > PPN035_1bd_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1be_HanXRQ.bam -L ./chr_group.txt > PPN035_1be_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1bf_HanXRQ.bam -L ./chr_group.txt > PPN035_1bf_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c0_HanXRQ.bam -L ./chr_group.txt > PPN035_1c0_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c1_HanXRQ.bam -L ./chr_group.txt > PPN035_1c1_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c2_HanXRQ.bam -L ./chr_group.txt > PPN035_1c2_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c3_HanXRQ.bam -L ./chr_group.txt > PPN035_1c3_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c4_HanXRQ.bam -L ./chr_group.txt > PPN035_1c4_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c5_HanXRQ.bam -L ./chr_group.txt > PPN035_1c5_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c6_HanXRQ.bam -L ./chr_group.txt > PPN035_1c6_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c7_HanXRQ.bam -L ./chr_group.txt > PPN035_1c7_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c8_HanXRQ.bam -L ./chr_group.txt > PPN035_1c8_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1c9_HanXRQ.bam -L ./chr_group.txt > PPN035_1c9_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1ca_HanXRQ.bam -L ./chr_group.txt > PPN035_1ca_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1cb_HanXRQ.bam -L ./chr_group.txt > PPN035_1cb_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1cc_HanXRQ.bam -L ./chr_group.txt > PPN035_1cc_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1cd_HanXRQ.bam -L ./chr_group.txt > PPN035_1cd_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1ce_HanXRQ.bam -L ./chr_group.txt > PPN035_1ce_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1cf_HanXRQ.bam -L ./chr_group.txt > PPN035_1cf_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d0_HanXRQ.bam -L ./chr_group.txt > PPN035_1d0_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d1_HanXRQ.bam -L ./chr_group.txt > PPN035_1d1_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d2_HanXRQ.bam -L ./chr_group.txt > PPN035_1d2_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d3_HanXRQ.bam -L ./chr_group.txt > PPN035_1d3_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d4_HanXRQ.bam -L ./chr_group.txt > PPN035_1d4_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d5_HanXRQ.bam -L ./chr_group.txt > PPN035_1d5_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d6_HanXRQ.bam -L ./chr_group.txt > PPN035_1d6_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d7_HanXRQ.bam -L ./chr_group.txt > PPN035_1d7_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d8_HanXRQ.bam -L ./chr_group.txt > PPN035_1d8_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1d9_HanXRQ.bam -L ./chr_group.txt > PPN035_1d9_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1da_HanXRQ.bam -L ./chr_group.txt > PPN035_1da_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1db_HanXRQ.bam -L ./chr_group.txt > PPN035_1db_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1dc_HanXRQ.bam -L ./chr_group.txt > PPN035_1dc_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1dd_HanXRQ.bam -L ./chr_group.txt > PPN035_1dd_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1de_HanXRQ.bam -L ./chr_group.txt > PPN035_1de_HanXRQ_nochr00.bam
# srun samtools view -b PPN035_1df_HanXRQ.bam -L ./chr_group.txt > PPN035_1df_HanXRQ_nochr00.bam


# missing samples: PPN181, PPN242
