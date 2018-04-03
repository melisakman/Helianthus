#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J freebayes
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /clusterfs/rosalind/users/makman/GATK/bams/freebayes_combined.out
#SBATCH -e /clusterfs/rosalind/users/makman/GATK/bams/freebayes_combined.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635
module load samtools

samtools index Anzac_Pueblo_sorted_markdup_recal_RG.bam Anzac_Pueblo_sorted_markdup_recal_RG.bai
samtools index HA433_sorted_markdup_recal_RG.bam HA433_sorted_markdup_recal_RG.bai
samtools index Hidatsa1_sorted_markdup_recal_RG.bam Hidatsa1_sorted_markdup_recal_RG.bai
samtools index MexCult7_sorted_markdup_recal_RG.bam MexCult7_sorted_markdup_recal_RG.bai
samtools index ann01-cwIA_sorted_markdup_recal_RG.bam ann01-cwIA_sorted_markdup_recal_RG.bai

freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -r HanXRQChr01 Anzac_Pueblo_sorted_markdup_recal_RG.bam HA433_sorted_markdup_recal_RG.bam Hidatsa1_sorted_markdup_recal_RG.bam MexCult7_sorted_markdup_recal_RG.bam ann01-cwIA_sorted_markdup_recal_RG.bam > ../freebayes/freebayes_combined_chr01.vcf
# Arikara_sorted_markdup_recal_RG.bam \
# HA124_sorted_markdup_recal_RG.bam \
# HA316_sorted_markdup_recal_RG.bam \
# HA404_sorted_markdup_recal_RG.bam \
# HA433_sorted_markdup_recal_RG.bam \
# HA442_sorted_markdup_recal_RG.bam \
# HA821_sorted_markdup_recal_RG.bam \
# HA89_sorted_markdup_recal_RG.bam \
# Havasupai_sorted_markdup_recal_RG.bam \
# Hidatsa1_sorted_markdup_recal_RG.bam \
# Hopi_real_sorted_markdup_recal_RG.bam \
# Hopi_PPN285_sorted_markdup_recal_RG.bam \
# Laguna_Pueblo_sorted_markdup_recal_RG.bam \
# Mandan2_sorted_markdup_recal_RG.bam \
# MexCult1_sorted_markdup_recal_RG.bam \
# MexCult14_sorted_markdup_recal_RG.bam \
# MexCult15_sorted_markdup_recal_RG.bam \
# MexCult3_sorted_markdup_recal_RG.bam \
# MexCult6_sorted_markdup_recal_RG.bam \
# MexCult7_sorted_markdup_recal_RG.bam \
# MexCult9_sorted_markdup_recal_RG.bam \
# PPN046_sorted_markdup_recal_RG.bam \
# PPN083_sorted_markdup_recal_RG.bam \
# PPN255_Manchurian_sorted_markdup_recal_RG.bam \
# PPN262_sorted_markdup_recal_RG.bam \
# Pueblo_sorted_markdup_recal_RG.bam \
# RHA271_sorted_markdup_recal_RG.bam \
# RHA309_sorted_markdup_recal_RG.bam \
# RHA311_sorted_markdup_recal_RG.bam \
# RHA328_sorted_markdup_recal_RG.bam \
# RHA355_sorted_markdup_recal_RG.bam \
# RHA358_sorted_markdup_recal_RG.bam \
# RHA408_sorted_markdup_recal_RG.bam \
# RHA426_sorted_markdup_recal_RG.bam \
# RHA857_sorted_markdup_recal_RG.bam \
# SF33_sorted_markdup_recal_RG.bam \
# Seneca_sorted_markdup_recal_RG.bam \
# VIR847_sorted_markdup_recal_RG.bam \
# Zuni_sorted_markdup_recal_RG.bam \
# ann01-cwIA_sorted_markdup_recal_RG.bam \
# ann04-nwAR_sorted_markdup_recal_RG.bam \
# ann05-ccNM_sorted_markdup_recal_RG.bam \
# ann06-seWY_sorted_markdup_recal_RG.bam \
# ann08-ceTN_sorted_markdup_recal_RG.bam \
# ann10-ccIL_sorted_markdup_recal_RG.bam \
# ann20-seAZ_sorted_markdup_recal_RG.bam \
# ann28-swSK_sorted_markdup_recal_RG.bam \
# ann29-neSD_sorted_markdup_recal_RG.bam \
# ann34-cwKS_sorted_markdup_recal_RG.bam \
# ann39-ncNE_sorted_markdup_recal_RG.bam \
# ann44-ccCA_sorted_markdup_recal_RG.bam \
# annIA_sorted_markdup_recal_RG.bam \
# annIA1W-1_sorted_markdup_recal_RG.bam \
# annIA2W-17_sorted_markdup_recal_RG.bam \
# annKS_sorted_markdup_recal_RG.bam \
# annKS1W-27_sorted_markdup_recal_RG.bam \
# annKS2W-35_sorted_markdup_recal_RG.bam \
# annND1W-6_sorted_markdup_recal_RG.bam \
# annNM_sorted_markdup_recal_RG.bam \
# annSD1W-35_sorted_markdup_recal_RG.bam \
# annSD2W-18_sorted_markdup_recal_RG.bam \
# annSK1W-Q_sorted_markdup_recal_RG.bam \
# annWY_sorted_markdup_recal_RG.bam \
# > ../freebayes/freebayes_combined_chr01.vcf
