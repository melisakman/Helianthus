#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed/
#SBATCH -J trimTile
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim_byTile.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim_byTile.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

bwa mem -t 16 -M index Anzac_Pueblo_R1_trimmed_fastq.gz Anzac_Pueblo_R2_trimmed_fastq.gz > Anzac_Pueblo.sam
bwa mem -t 16 -M index Arikara_R1_trimmed_fastq.gz Arikara_R2_trimmed_fastq.gz > Arikara.sam
bwa mem -t 16 -M index HA124_R1_trimmed_fastq.gz HA124_R2_trimmed_fastq.gz > HA124.sam
bwa mem -t 16 -M index HA316_R1_trimmed_fastq.gz HA316_R2_trimmed_fastq.gz > HA316.sam
bwa mem -t 16 -M index HA404_R1_trimmed_fastq.gz HA404_R2_trimmed_fastq.gz > HA404.sam
bwa mem -t 16 -M index HA433_R1_trimmed_fastq.gz HA433_R2_trimmed_fastq.gz > HA433.sam
bwa mem -t 16 -M index HA442_R1_trimmed_fastq.gz HA442_R2_trimmed_fastq.gz > HA442.sam
bwa mem -t 16 -M index HA821_R1_trimmed_fastq.gz HA821_R2_trimmed_fastq.gz > HA821.sam
bwa mem -t 16 -M index HA89_R1_trimmed_fastq.gz HA89_R2_trimmed_fastq.gz > HA89.sam
bwa mem -t 16 -M index Havasupai_R1_trimmed_fastq.gz Havasupai_R2_trimmed_fastq.gz > Havasupai.sam
bwa mem -t 16 -M index Hidatsa1_R1_trimmed_fastq.gz Hidatsa1_R2_trimmed_fastq.gz > Hidatsa1.sam
bwa mem -t 16 -M index Hopi_PPN285_R1_trimmed_fastq.gz Hopi_PPN285_R2_trimmed_fastq.gz > Hopi_PPN285.sam
bwa mem -t 16 -M index Hopi_R1_trimmed_fastq.gz Hopi_R2_trimmed_fastq.gz > Hopi.sam
bwa mem -t 16 -M index Laguna_Pueblo_R1_trimmed_fastq.gz Laguna_Pueblo_R2_trimmed_fastq.gz > Laguna_Pueblo.sam
bwa mem -t 16 -M index Mandan2_R1_trimmed_fastq.gz Mandan2_R2_trimmed_fastq.gz > Mandan2.sam
bwa mem -t 16 -M index MexCult14_R1_trimmed_fastq.gz MexCult14_R2_trimmed_fastq.gz > MexCult14.sam
bwa mem -t 16 -M index MexCult15_R1_trimmed_fastq.gz MexCult15_R2_trimmed_fastq.gz > MexCult15.sam
bwa mem -t 16 -M index MexCult1_R1_trimmed_fastq.gz MexCult1_R2_trimmed_fastq.gz > MexCult1.sam
bwa mem -t 16 -M index MexCult3_R1_trimmed_fastq.gz MexCult3_R2_trimmed_fastq.gz > MexCult3.sam
bwa mem -t 16 -M index MexCult6_R1_trimmed_fastq.gz MexCult6_R2_trimmed_fastq.gz > MexCult6.sam
bwa mem -t 16 -M index MexCult7_R1_trimmed_fastq.gz MexCult7_R2_trimmed_fastq.gz > MexCult7.sam
bwa mem -t 16 -M index MexCult9_R1_trimmed_fastq.gz MexCult9_R2_trimmed_fastq.gz > MexCult9.sam
bwa mem -t 16 -M index PPN046_R1_trimmed_fastq.gz PPN046_R2_trimmed_fastq.gz > PPN046.sam
bwa mem -t 16 -M index PPN083_R1_trimmed_fastq.gz PPN083_R2_trimmed_fastq.gz > PPN083.sam
bwa mem -t 16 -M index PPN255_Manchurian_R1_trimmed_fastq.gz PPN255_Manchurian_R2_trimmed_fastq.gz > PPN255_Manchurian.sam
bwa mem -t 16 -M index PPN262_R1_trimmed_fastq.gz PPN262_R2_trimmed_fastq.gz > PPN262.sam
bwa mem -t 16 -M index Pueblo_R1_trimmed_fastq.gz Pueblo_R2_trimmed_fastq.gz > Pueblo.sam
bwa mem -t 16 -M index RHA271_R1_trimmed_fastq.gz RHA271_R2_trimmed_fastq.gz > RHA271.sam
bwa mem -t 16 -M index RHA309_R1_trimmed_fastq.gz RHA309_R2_trimmed_fastq.gz > RHA309.sam
bwa mem -t 16 -M index RHA311_R1_trimmed_fastq.gz RHA311_R2_trimmed_fastq.gz > RHA311.sam
bwa mem -t 16 -M index RHA328_R1_trimmed_fastq.gz RHA328_R2_trimmed_fastq.gz > RHA328.sam
bwa mem -t 16 -M index RHA355_R1_trimmed_fastq.gz RHA355_R2_trimmed_fastq.gz > RHA355.sam
bwa mem -t 16 -M index RHA358_R1_trimmed_fastq.gz RHA358_R2_trimmed_fastq.gz > RHA358.sam
bwa mem -t 16 -M index RHA408_R1_trimmed_fastq.gz RHA408_R2_trimmed_fastq.gz > RHA408.sam
bwa mem -t 16 -M index RHA426_R1_trimmed_fastq.gz RHA426_R2_trimmed_fastq.gz > RHA426.sam
bwa mem -t 16 -M index RHA857_R1_trimmed_fastq.gz RHA857_R2_trimmed_fastq.gz > RHA857.sam
bwa mem -t 16 -M index SF33_R1_trimmed_fastq.gz SF33_R2_trimmed_fastq.gz > SF33.sam
bwa mem -t 16 -M index Seneca_R1_trimmed_fastq.gz Seneca_R2_trimmed_fastq.gz > Seneca.sam
bwa mem -t 16 -M index VIR847_R1_trimmed_fastq.gz VIR847_R2_trimmed_fastq.gz > VIR847.sam
bwa mem -t 16 -M index Zuni_R1_trimmed_fastq.gz Zuni_R2_trimmed_fastq.gz > Zuni.sam
bwa mem -t 16 -M index ann01-cwIA_R1_trimmed_fastq.gz ann01-cwIA_R2_trimmed_fastq.gz > ann01-cwIA.sam
bwa mem -t 16 -M index ann04-nwAR_R1_trimmed_fastq.gz ann04-nwAR_R2_trimmed_fastq.gz > ann04-nwAR.sam
bwa mem -t 16 -M index ann05-ccNM_R1_trimmed_fastq.gz ann05-ccNM_R2_trimmed_fastq.gz > ann05-ccNM.sam
bwa mem -t 16 -M index ann06-seWY_R1_trimmed_fastq.gz ann06-seWY_R2_trimmed_fastq.gz > ann06-seWY.sam
bwa mem -t 16 -M index ann08-ceTN_R1_trimmed_fastq.gz ann08-ceTN_R2_trimmed_fastq.gz > ann08-ceTN.sam
bwa mem -t 16 -M index ann10-ccIL_R1_trimmed_fastq.gz ann10-ccIL_R2_trimmed_fastq.gz > ann10-ccIL.sam
bwa mem -t 16 -M index ann20-seAZ_R1_trimmed_fastq.gz ann20-seAZ_R2_trimmed_fastq.gz > ann20-seAZ.sam
bwa mem -t 16 -M index ann28-swSK_R1_trimmed_fastq.gz ann28-swSK_R2_trimmed_fastq.gz > ann28-swSK.sam
bwa mem -t 16 -M index ann29-neSD_R1_trimmed_fastq.gz ann29-neSD_R2_trimmed_fastq.gz > ann29-neSD.sam
bwa mem -t 16 -M index ann34-cwKS_R1_trimmed_fastq.gz ann34-cwKS_R2_trimmed_fastq.gz > ann34-cwKS.sam
bwa mem -t 16 -M index ann39-ncNE_R1_trimmed_fastq.gz ann39-ncNE_R2_trimmed_fastq.gz > ann39-ncNE.sam
bwa mem -t 16 -M index ann44-ccCA_R1_trimmed_fastq.gz ann44-ccCA_R2_trimmed_fastq.gz > ann44-ccCA.sam
bwa mem -t 16 -M index annIA1W-1_R1_trimmed_fastq.gz annIA1W-1_R2_trimmed_fastq.gz > annIA1W-1.sam
bwa mem -t 16 -M index annIA2W-17_R1_trimmed_fastq.gz annIA2W-17_R2_trimmed_fastq.gz > annIA2W-17.sam
bwa mem -t 16 -M index annIA_R1_trimmed_fastq.gz annIA_R2_trimmed_fastq.gz > annIA.sam
bwa mem -t 16 -M index annKS1W-27_R1_trimmed_fastq.gz annKS1W-27_R2_trimmed_fastq.gz > annKS1W-27.sam
bwa mem -t 16 -M index annKS2W-35_R1_trimmed_fastq.gz annKS2W-35_R2_trimmed_fastq.gz > annKS2W-35.sam
bwa mem -t 16 -M index annKS_R1_trimmed_fastq.gz annKS_R2_trimmed_fastq.gz > annKS.sam
bwa mem -t 16 -M index annMB1W-40_R1_trimmed_fastq.gz annMB1W-40_R2_trimmed_fastq.gz > annMB1W-40.sam
bwa mem -t 16 -M index annMO1W-39_R1_trimmed_fastq.gz annMO1W-39_R2_trimmed_fastq.gz > annMO1W-39.sam
bwa mem -t 16 -M index annND1W-6_R1_trimmed_fastq.gz annND1W-6_R2_trimmed_fastq.gz > annND1W-6.sam
bwa mem -t 16 -M index annNM_R1_trimmed_fastq.gz annNM_R2_trimmed_fastq.gz > annNM.sam
bwa mem -t 16 -M index annSD1W-35_R1_trimmed_fastq.gz annSD1W-35_R2_trimmed_fastq.gz > annSD1W-35.sam
bwa mem -t 16 -M index annSD2W-18_R1_trimmed_fastq.gz annSD2W-18_R2_trimmed_fastq.gz > annSD2W-18.sam
bwa mem -t 16 -M index annSK1W-Q_R1_trimmed_fastq.gz annSK1W-Q_R2_trimmed_fastq.gz > annSK1W-Q.sam
bwa mem -t 16 -M index annWY_R1_trimmed_fastq.gz annWY_R2_trimmed_fastq.gz > annWY.sam






