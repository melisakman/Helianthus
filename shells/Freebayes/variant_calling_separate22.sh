#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J fb22
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=16000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes22.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes22.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load freebayes/v1.1.0-56-ga180635

# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Anzac_Pueblo_sorted_markdup_recal.bam > ../freebayes/Anzac_Pueblo.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Arikara_sorted_markdup_recal.bam > ../freebayes/Arikara.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  HA124_sorted_markdup_recal.bam > ../freebayes/HA124.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  HA316_sorted_markdup_recal.bam > ../freebayes/HA316.vcf

# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  HA404_sorted_markdup_recal.bam > ../freebayes/HA404.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  HA433_sorted_markdup_recal.bam > ../freebayes/HA433.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  HA442_sorted_markdup_recal.bam > ../freebayes/HA442.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  HA821_sorted_markdup_recal.bam > ../freebayes/HA821.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  HA89_sorted_markdup_recal.bam > ../freebayes/HA89.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Havasupai_sorted_markdup_recal.bam > ../freebayes/Havasupai.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Hidatsa1_sorted_markdup_recal.bam > ../freebayes/Hidatsa1.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Hopi_sorted_markdup_recal.bam > ../freebayes/Hopi.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Hopi_real_sorted_markdup_recal.bam > ../freebayes/Hopi_real.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Hopi_PPN285_sorted_markdup_recal.bam > ../freebayes/Hopi_PPN285.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Laguna_Pueblo_sorted_markdup_recal.bam > ../freebayes/Laguna_Pueblo.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Mandan2_sorted_markdup_recal.bam > ../freebayes/Mandan2.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  MexCult1_sorted_markdup_recal.bam > ../freebayes/MexCult1.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  MexCult14_sorted_markdup_recal.bam > ../freebayes/MexCult14.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  MexCult15_sorted_markdup_recal.bam > ../freebayes/MexCult15.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  MexCult3_sorted_markdup_recal.bam > ../freebayes/MexCult3.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  MexCult6_sorted_markdup_recal.bam > ../freebayes/MexCult6.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  MexCult7_sorted_markdup_recal.bam > ../freebayes/MexCult7.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  MexCult9_sorted_markdup_recal.bam > ../freebayes/MexCult9.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  PPN046_sorted_markdup_recal.bam > ../freebayes/PPN046.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  PPN083_sorted_markdup_recal.bam > ../freebayes/PPN083.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  PPN255_Manchurian_sorted_markdup_recal.bam > ../freebayes/PPN255_Manchurian.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  PPN262_sorted_markdup_recal.bam > ../freebayes/PPN262.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Pueblo_sorted_markdup_recal.bam > ../freebayes/Pueblo.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA271_sorted_markdup_recal.bam > ../freebayes/RHA271.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA309_sorted_markdup_recal.bam > ../freebayes/RHA309.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA311_sorted_markdup_recal.bam > ../freebayes/RHA311.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA328_sorted_markdup_recal.bam > ../freebayes/RHA328.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA355_sorted_markdup_recal.bam > ../freebayes/RHA355.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA358_sorted_markdup_recal.bam > ../freebayes/RHA358.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA408_sorted_markdup_recal.bam > ../freebayes/RHA408.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA426_sorted_markdup_recal.bam > ../freebayes/RHA426.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  RHA857_sorted_markdup_recal.bam > ../freebayes/RHA857.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  SF33_sorted_markdup_recal.bam > ../freebayes/SF33.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Seneca_sorted_markdup_recal.bam > ../freebayes/Seneca.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  VIR847_sorted_markdup_recal.bam > ../freebayes/VIR847.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  Zuni_sorted_markdup_recal.bam > ../freebayes/Zuni.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann01-cwIA_sorted_markdup_recal.bam > ../freebayes/ann01-cwIA.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann04-nwAR_sorted_markdup_recal.bam > ../freebayes/ann04-nwAR.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann05-ccNM_sorted_markdup_recal.bam > ../freebayes/ann05-ccNM.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann06-seWY_sorted_markdup_recal.bam > ../freebayes/ann06-seWY.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann08-ceTN_sorted_markdup_recal.bam > ../freebayes/ann08-ceTN.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann10-ccIL_sorted_markdup_recal.bam > ../freebayes/ann10-ccIL.vcf
# 
freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann20-seAZ_sorted_markdup_recal.bam > ../freebayes/ann20-seAZ.vcf
freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann28-swSK_sorted_markdup_recal.bam > ../freebayes/ann28-swSK.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann29-neSD_sorted_markdup_recal.bam > ../freebayes/ann29-neSD.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann34-cwKS_sorted_markdup_recal.bam > ../freebayes/ann34-cwKS.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann39-ncNE_sorted_markdup_recal.bam > ../freebayes/ann39-ncNE.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  ann44-ccCA_sorted_markdup_recal.bam > ../freebayes/ann44-ccCA.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annIA_sorted_markdup_recal.bam > ../freebayes/annIA.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annIA1W-1_sorted_markdup_recal.bam > ../freebayes/annIA1W-1.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annIA2W-17_sorted_markdup_recal.bam > ../freebayes/annIA2W-17.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annKS_sorted_markdup_recal.bam > ../freebayes/annKS.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annKS1W-27_sorted_markdup_recal.bam > ../freebayes/annKS1W-27.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annKS2W-35_sorted_markdup_recal.bam > ../freebayes/annKS2W-35.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annMB1W-40_sorted_markdup_recal.bam > ../freebayes/annMB1W-40.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annMO1W-39_sorted_markdup_recal.bam > ../freebayes/annMO1W-39.vcf
# 
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annND1W-6_sorted_markdup_recal.bam > ../freebayes/annND1W-6.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annNM_sorted_markdup_recal.bam > ../freebayes/annNM.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annSD1W-35_sorted_markdup_recal.bam > ../freebayes/annSD1W-35.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annSD2W-18_sorted_markdup_recal.bam > ../freebayes/annSD2W-18.vcf
# 
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annSK1W-Q_sorted_markdup_recal.bam > ../freebayes/annSK1W-Q.vcf
# freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa  annWY_sorted_markdup_recal.bam > ../freebayes/annWY.vcf
