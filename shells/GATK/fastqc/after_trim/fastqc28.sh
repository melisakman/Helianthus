#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J fastqc28
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=8:45:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc_trim28.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc_trim28.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load fastqc/0.11.5 
# Anzac_Pueblo_R1_trimmed_fastq.gz
# Anzac_Pueblo_R2_trimmed_fastq.gz
# Arikara_R1_trimmed_fastq.gz
# Arikara_R2_trimmed_fastq.gz
# HA124_R1_trimmed_fastq.gz
# HA124_R2_trimmed_fastq.gz
# HA316_R1_trimmed_fastq.gz
# HA316_R2_trimmed_fastq.gz
# HA404_R1_trimmed_fastq.gz
# HA404_R2_trimmed_fastq.gz
# HA433_R1_trimmed_fastq.gz
# HA433_R2_trimmed_fastq.gz
# HA442_R1_trimmed_fastq.gz
# HA442_R2_trimmed_fastq.gz
# HA821_R1_trimmed_fastq.gz
# HA821_R2_trimmed_fastq.gz
# HA89_R1_trimmed_fastq.gz
# HA89_R2_trimmed_fastq.gz
# Havasupai_R1_trimmed_fastq.gz
# Havasupai_R2_trimmed_fastq.gz
# Hidatsa1_R1_trimmed_fastq.gz
# Hidatsa1_R2_trimmed_fastq.gz
# Hopi_PPN285_R1_trimmed_fastq.gz
# Hopi_PPN285_R2_trimmed_fastq.gz
# Hopi_R1_trimmed_fastq.gz
# Hopi_R2_trimmed_fastq.gz
# Laguna_Pueblo_R1_trimmed_fastq.gz
# Laguna_Pueblo_R2_trimmed_fastq.gz
# Mandan2_R1_trimmed_fastq.gz
# Mandan2_R2_trimmed_fastq.gz
# MexCult14_R1_trimmed_fastq.gz
# MexCult14_R2_trimmed_fastq.gz
# MexCult15_R1_trimmed_fastq.gz
# MexCult15_R2_trimmed_fastq.gz
# MexCult1_R1_trimmed_fastq.gz
# MexCult1_R2_trimmed_fastq.gz
# MexCult3_R1_trimmed_fastq.gz
# MexCult3_R2_trimmed_fastq.gz
# MexCult6_R1_trimmed_fastq.gz
# MexCult6_R2_trimmed_fastq.gz
# MexCult7_R1_trimmed_fastq.gz
# MexCult7_R2_trimmed_fastq.gz
# MexCult9_R1_trimmed_fastq.gz
# MexCult9_R2_trimmed_fastq.gz
# PPN046_R1_trimmed_fastq.gz
# PPN046_R2_trimmed_fastq.gz
# PPN083_R1_trimmed_fastq.gz
# PPN083_R2_trimmed_fastq.gz
# PPN255_Manchurian_R1_trimmed_fastq.gz
# PPN255_Manchurian_R2_trimmed_fastq.gz
# PPN262_R1_trimmed_fastq.gz
# PPN262_R2_trimmed_fastq.gz
# RHA271_R1_trimmed_fastq.gz
# RHA271_R2_trimmed_fastq.gz
# RHA309_R1_trimmed_fastq.gz
# RHA309_R2_trimmed_fastq.gz
# RHA311_R1_trimmed_fastq.gz
# RHA311_R2_trimmed_fastq.gz
# RHA328_R1_trimmed_fastq.gz
# RHA328_R2_trimmed_fastq.gz
# RHA355_R1_trimmed_fastq.gz
# RHA355_R2_trimmed_fastq.gz
# RHA358_R1_trimmed_fastq.gz
# RHA358_R2_trimmed_fastq.gz
# RHA408_R1_trimmed_fastq.gz
# RHA408_R2_trimmed_fastq.gz
# RHA426_R1_trimmed_fastq.gz
# RHA426_R2_trimmed_fastq.gz
# SF33_R1_trimmed_fastq.gz
# SF33_R2_trimmed_fastq.gz
# Seneca_R1_trimmed_fastq.gz
# Seneca_R2_trimmed_fastq.gz
# VIR847_R1_trimmed_fastq.gz
# VIR847_R2_trimmed_fastq.gz
# Zuni_R1_trimmed_fastq.gz
# Zuni_R2_trimmed_fastq.gz
# ann01-cwIA_R1_trimmed_fastq.gz
# ann01-cwIA_R2_trimmed_fastq.gz
# ann04-nwAR_R1_trimmed_fastq.gz
# ann04-nwAR_R2_trimmed_fastq.gz
# fastqc ann05-ccNM_R1_trimmed_fastq.gz
# fastqc ann05-ccNM_R2_trimmed_fastq.gz
# fastqc ann06-seWY_R1_trimmed_fastq.gz
# fastqc ann06-seWY_R2_trimmed_fastq.gz
# ann08-ceTN_R1_trimmed_fastq.gz
# ann08-ceTN_R2_trimmed_fastq.gz
# ann10-ccIL_R1_trimmed_fastq.gz
# ann10-ccIL_R2_trimmed_fastq.gz
# ann20-seAZ_R1_trimmed_fastq.gz
# ann20-seAZ_R2_trimmed_fastq.gz
# ann28-swSK_R1_trimmed_fastq.gz
# ann28-swSK_R2_trimmed_fastq.gz
# ann29-neSD_R1_trimmed_fastq.gz
# ann29-neSD_R2_trimmed_fastq.gz
# ann34-cwKS_R1_trimmed_fastq.gz
# ann34-cwKS_R2_trimmed_fastq.gz
# ann39-ncNE_R1_trimmed_fastq.gz
# ann39-ncNE_R2_trimmed_fastq.gz
# ann44-ccCA_R1_trimmed_fastq.gz
# ann44-ccCA_R2_trimmed_fastq.gz
# annIA1W-1_R1_trimmed_fastq.gz
# annIA1W-1_R2_trimmed_fastq.gz
# annIA2W-17_R1_trimmed_fastq.gz
# annIA2W-17_R2_trimmed_fastq.gz
# annIA_R1_trimmed_fastq.gz
# annIA_R2_trimmed_fastq.gz
# annKS1W-27_R1_trimmed_fastq.gz
# annKS1W-27_R2_trimmed_fastq.gz
annKS2W-35_R1_trimmed_fastq.gz
annKS2W-35_R2_trimmed_fastq.gz
annKS_R1_trimmed_fastq.gz
annKS_R2_trimmed_fastq.gz
# annMB1W-40_R1_trimmed_fastq.gz
# annMB1W-40_R2_trimmed_fastq.gz
# annMO1W-39_R1_trimmed_fastq.gz
# annMO1W-39_R2_trimmed_fastq.gz
# annND1W-6_R1_trimmed_fastq.gz
# annND1W-6_R2_trimmed_fastq.gz
# annNM_R1_trimmed_fastq.gz
# annNM_R2_trimmed_fastq.gz
# annSD1W-35_R1_trimmed_fastq.gz
# annSD1W-35_R2_trimmed_fastq.gz
# annSD2W-18_R1_trimmed_fastq.gz
# annSD2W-18_R2_trimmed_fastq.gz
# annSK1W-Q_R1_trimmed_fastq.gz
# annSK1W-Q_R2_trimmed_fastq.gz
# annWY_R1_trimmed_fastq.gz
# annWY_R2_trimmed_fastq.gz
# 
# 
