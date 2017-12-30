#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed_fixed
#SBATCH -J bwa3
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bwa3_1.out
#SBATCH -e /global/home/users/makman/GATK/outs/bwa3_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-2

module load bwa/0.7.15

# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Anzac_Pueblo_R1_trimmed_fastq.gz Anzac_Pueblo_R2_trimmed_fastq.gz > Anzac_Pueblo.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Arikara_R1_trimmed_fastq.gz Arikara_R2_trimmed_fastq.gz > Arikara.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HA124_R1_trimmed_fastq.gz HA124_R2_trimmed_fastq.gz > HA124.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HA316_R1_trimmed_fastq.gz HA316_R2_trimmed_fastq.gz > HA316.sam

bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HA404_R1_trimmed_fixed.fastq.gz HA404_R2_trimmed_fixed.fastq.gz > HA404.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HA433_R1_trimmed_fixed.fastq.gz HA433_R2_trimmed_fixed.fastq.gz > HA433.sam

# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HA442_R1_trimmed_fastq.gz HA442_R2_trimmed_fastq.gz > HA442.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HA821_R1_trimmed_fastq.gz HA821_R2_trimmed_fastq.gz > HA821.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa HA89_R1_trimmed_fastq.gz HA89_R2_trimmed_fastq.gz > HA89.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Havasupai_R1_trimmed_fastq.gz Havasupai_R2_trimmed_fastq.gz > Havasupai.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Hidatsa1_R1_trimmed_fastq.gz Hidatsa1_R2_trimmed_fastq.gz > Hidatsa1.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Hopi_PPN285_R1_trimmed_fastq.gz Hopi_PPN285_R2_trimmed_fastq.gz > Hopi_PPN285.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Hopi_R1_trimmed_fastq.gz Hopi_R2_trimmed_fastq.gz > Hopi.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Laguna_Pueblo_R1_trimmed_fastq.gz Laguna_Pueblo_R2_trimmed_fastq.gz > Laguna_Pueblo.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Mandan2_R1_trimmed_fastq.gz Mandan2_R2_trimmed_fastq.gz > Mandan2.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa MexCult14_R1_trimmed_fastq.gz MexCult14_R2_trimmed_fastq.gz > MexCult14.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa MexCult15_R1_trimmed_fastq.gz MexCult15_R2_trimmed_fastq.gz > MexCult15.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa MexCult1_R1_trimmed_fastq.gz MexCult1_R2_trimmed_fastq.gz > MexCult1.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa MexCult3_R1_trimmed_fastq.gz MexCult3_R2_trimmed_fastq.gz > MexCult3.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa MexCult6_R1_trimmed_fastq.gz MexCult6_R2_trimmed_fastq.gz > MexCult6.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa MexCult7_R1_trimmed_fastq.gz MexCult7_R2_trimmed_fastq.gz > MexCult7.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa MexCult9_R1_trimmed_fastq.gz MexCult9_R2_trimmed_fastq.gz > MexCult9.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa PPN046_R1_trimmed_fastq.gz PPN046_R2_trimmed_fastq.gz > PPN046.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa PPN083_R1_trimmed_fastq.gz PPN083_R2_trimmed_fastq.gz > PPN083.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa PPN255_Manchurian_R1_trimmed_fastq.gz PPN255_Manchurian_R2_trimmed_fastq.gz > PPN255_Manchurian.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa PPN262_R1_trimmed_fastq.gz PPN262_R2_trimmed_fastq.gz > PPN262.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Pueblo_R1_trimmed_fastq.gz Pueblo_R2_trimmed_fastq.gz > Pueblo.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA271_R1_trimmed_fastq.gz RHA271_R2_trimmed_fastq.gz > RHA271.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA309_R1_trimmed_fastq.gz RHA309_R2_trimmed_fastq.gz > RHA309.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA311_R1_trimmed_fastq.gz RHA311_R2_trimmed_fastq.gz > RHA311.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA328_R1_trimmed_fastq.gz RHA328_R2_trimmed_fastq.gz > RHA328.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA355_R1_trimmed_fastq.gz RHA355_R2_trimmed_fastq.gz > RHA355.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA358_R1_trimmed_fastq.gz RHA358_R2_trimmed_fastq.gz > RHA358.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA408_R1_trimmed_fastq.gz RHA408_R2_trimmed_fastq.gz > RHA408.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA426_R1_trimmed_fastq.gz RHA426_R2_trimmed_fastq.gz > RHA426.sam

# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa RHA857_R1_trimmed_fastq.gz RHA857_R2_trimmed_fastq.gz > RHA857.sam

# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa SF33_R1_trimmed_fastq.gz SF33_R2_trimmed_fastq.gz > SF33.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Seneca_R1_trimmed_fastq.gz Seneca_R2_trimmed_fastq.gz > Seneca.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa VIR847_R1_trimmed_fastq.gz VIR847_R2_trimmed_fastq.gz > VIR847.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa Zuni_R1_trimmed_fastq.gz Zuni_R2_trimmed_fastq.gz > Zuni.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann01-cwIA_R1_trimmed_fastq.gz ann01-cwIA_R2_trimmed_fastq.gz > ann01-cwIA.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann04-nwAR_R1_trimmed_fastq.gz ann04-nwAR_R2_trimmed_fastq.gz > ann04-nwAR.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann05-ccNM_R1_trimmed_fastq.gz ann05-ccNM_R2_trimmed_fastq.gz > ann05-ccNM.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann06-seWY_R1_trimmed_fastq.gz ann06-seWY_R2_trimmed_fastq.gz > ann06-seWY.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann08-ceTN_R1_trimmed_fastq.gz ann08-ceTN_R2_trimmed_fastq.gz > ann08-ceTN.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann10-ccIL_R1_trimmed_fastq.gz ann10-ccIL_R2_trimmed_fastq.gz > ann10-ccIL.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann20-seAZ_R1_trimmed_fastq.gz ann20-seAZ_R2_trimmed_fastq.gz > ann20-seAZ.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann28-swSK_R1_trimmed_fastq.gz ann28-swSK_R2_trimmed_fastq.gz > ann28-swSK.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann29-neSD_R1_trimmed_fastq.gz ann29-neSD_R2_trimmed_fastq.gz > ann29-neSD.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann34-cwKS_R1_trimmed_fastq.gz ann34-cwKS_R2_trimmed_fastq.gz > ann34-cwKS.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann39-ncNE_R1_trimmed_fastq.gz ann39-ncNE_R2_trimmed_fastq.gz > ann39-ncNE.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa ann44-ccCA_R1_trimmed_fastq.gz ann44-ccCA_R2_trimmed_fastq.gz > ann44-ccCA.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annIA1W-1_R1_trimmed_fastq.gz annIA1W-1_R2_trimmed_fastq.gz > annIA1W-1.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annIA2W-17_R1_trimmed_fastq.gz annIA2W-17_R2_trimmed_fastq.gz > annIA2W-17.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annIA_R1_trimmed_fastq.gz annIA_R2_trimmed_fastq.gz > annIA.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annKS1W-27_R1_trimmed_fastq.gz annKS1W-27_R2_trimmed_fastq.gz > annKS1W-27.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annKS2W-35_R1_trimmed_fastq.gz annKS2W-35_R2_trimmed_fastq.gz > annKS2W-35.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annKS_R1_trimmed_fastq.gz annKS_R2_trimmed_fastq.gz > annKS.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annMB1W-40_R1_trimmed_fastq.gz annMB1W-40_R2_trimmed_fastq.gz > annMB1W-40.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annMO1W-39_R1_trimmed_fastq.gz annMO1W-39_R2_trimmed_fastq.gz > annMO1W-39.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annND1W-6_R1_trimmed_fastq.gz annND1W-6_R2_trimmed_fastq.gz > annND1W-6.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annNM_R1_trimmed_fastq.gz annNM_R2_trimmed_fastq.gz > annNM.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annSD1W-35_R1_trimmed_fastq.gz annSD1W-35_R2_trimmed_fastq.gz > annSD1W-35.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annSD2W-18_R1_trimmed_fastq.gz annSD2W-18_R2_trimmed_fastq.gz > annSD2W-18.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annSK1W-Q_R1_trimmed_fastq.gz annSK1W-Q_R2_trimmed_fastq.gz > annSK1W-Q.sam
# bwa mem -t 16 -M /clusterfs/rosalind/users/makman/GATK/bwa_mem/HanXRQr1.0-20151230.fa annWY_R1_trimmed_fastq.gz annWY_R2_trimmed_fastq.gz > annWY.sam
