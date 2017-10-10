#!/bin/bash
#
#SBATCH --job-name=index
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=10:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_index_3_u.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_index_3_u.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-1

module load samtools
# srun samtools index ann01-cwIA_nochr00_combined_dedup.bam ann01-cwIA_nochr00_combined_dedup.bai
# srun samtools index ann08-ceTN_3e9_nochr00_dedup.bam ann08-ceTN_3e9_nochr00_dedup.bai
# srun samtools index ann22-nwTX_3ee_nochr00_dedup.bam ann22-nwTX_3ee_nochr00_dedup.bai
# srun samtools index ann34-cwKS_3f5_nochr00_dedup.bam ann34-cwKS_3f5_nochr00_dedup.bai
# srun samtools index ann39-ncNE_3f6_nochr00_dedup.bam ann39-ncNE_3f6_nochr00_dedup.bai
# srun samtools index annIA_401_nochr00_dedup.bam annIA_401_nochr00_dedup.bai
# srun samtools index annKS_402_nochr00_dedup.bam annKS_402_nochr00_dedup.bai
# srun samtools index annNM_405_nochr00_dedup.bam annNM_405_nochr00_dedup.bai
srun samtools index annWY_406_nochr00_dedup.bam annWY_406_nochr00_dedup.bai
# srun samtools index ann04-nwAR_nochr00_combined_dedup.bam ann04-nwAR_nochr00_combined_dedup.bai
# srun samtools index ann05-ccNM_nochr00_combined_dedup.bam ann05-ccNM_nochr00_combined_dedup.bai
# srun samtools index ann10-ccIL_nochr00_combined_dedup.bam ann10-ccIL_nochr00_combined_dedup.bai
# srun samtools index ann20-seAZ_nochr00_combined_dedup.bam ann20-seAZ_nochr00_combined_dedup.bai
# srun samtools index ann28-swSK_nochr00_combined_dedup.bam ann28-swSK_nochr00_combined_dedup.bai
# srun samtools index ann29-neSD_nochr00_combined_dedup.bam ann29-neSD_nochr00_combined_dedup.bai
# srun samtools index ann44-ccCA_nochr00_combined_dedup.bam ann44-ccCA_nochr00_combined_dedup.bai
# srun samtools index PPN020_7_HanXRQ_nochr00_dedup.bam PPN020_7_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN026_b_HanXRQ_nochr00_dedup.bam PPN026_b_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN035_combined_dedup.bam PPN035_combined_dedup.bai
# srun samtools index PPN069_16_HanXRQ_nochr00_dedup.bam PPN069_16_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN072_19_HanXRQ_nochr00_dedup.bam PPN072_19_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN107_28_HanXRQ_nochr00_dedup.bam PPN107_28_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN153_34_HanXRQ_nochr00_dedup.bam PPN153_34_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN173_3e_HanXRQ_nochr00_dedup.bam PPN173_3e_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN179_40_HanXRQ_nochr00_dedup.bam PPN179_40_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN185_44_HanXRQ_nochr00_dedup.bam PPN185_44_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN191_46_HanXRQ_nochr00_dedup.bam PPN191_46_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN203_2f4_HanXRQ_nochr00_dedup.bam PPN203_2f4_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN237_396_HanXRQ_nochr00_dedup.bam PPN237_396_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN240_397_HanXRQ_nochr00_dedup.bam PPN240_397_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN255_3ae_HanXRQ_nochr00_dedup.bam PPN255_3ae_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN262_3b7_HanXRQ_nochr00_dedup.bam PPN262_3b7_HanXRQ_nochr00_dedup.bai
# srun samtools index SF_33_177_HanXRQ_nochr00_dedup.bam SF_33_177_HanXRQ_nochr00_dedup.bai
# srun samtools index PI_531071_4d6_HanXRQ_nochr00_dedup.bam PI_531071_4d6_HanXRQ_nochr00_dedup.bai
# srun samtools index Anzac_Pueblo_combined_dedup.bam Anzac_Pueblo_combined_dedup.bai
# srun samtools index Arikara_combined_dedup.bam Arikara_combined_dedup.bai
# srun samtools index Havasupai_combined_dedup.bam Havasupai_combined_dedup.bai
# srun samtools index Hidatsa1_combined_dedup.bam Hidatsa1_combined_dedup.bai
# srun samtools index Hopi_combined_dedup.bam Hopi_combined_dedup.bai
# srun samtools index Hopi_1_HanXRQ_nochr00_dedup.bam Hopi_1_HanXRQ_nochr00_dedup.bai
# srun samtools index Laguna_Pueblo_combined_dedup.bam Laguna_Pueblo_combined_dedup.bai
# srun samtools index Mandan2_combined_dedup.bam Mandan2_combined_dedup.bai
# srun samtools index MexCult1_513_HanXRQ_nochr00_dedup.bam MexCult1_513_HanXRQ_nochr00_dedup.bai
# srun samtools index MexCult14_combined_dedup.bam MexCult14_combined_dedup.bai
# srun samtools index MexCult15_combined_dedup.bam MexCult15_combined_dedup.bai
# srun samtools index MexCult3_combined_dedup.bam MexCult3_combined_dedup.bai
# srun samtools index MexCult6_combined_dedup.bam MexCult6_combined_dedup.bai
# srun samtools index MexCult7_combined_dedup.bam MexCult7_combined_dedup.bai
# srun samtools index MexCult9_combined_dedup.bam MexCult9_combined_dedup.bai
# srun samtools index Pueblo_combined_dedup.bam Pueblo_combined_dedup.bai
# srun samtools index Seneca_combined_dedup.bam Seneca_combined_dedup.bai
# srun samtools index Zuni_combined_dedup.bam Zuni_combined_dedup.bai
# srun samtools index PPN046_78_HanXRQ_nochr00_dedup.bam PPN046_78_HanXRQ_nochr00_dedup.bai
# srun samtools index PPN083_combined_dedup.bam PPN083_combined_dedup.bai
 
 