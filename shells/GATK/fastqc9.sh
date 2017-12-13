#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J fastqc9
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc_raw9.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc_raw9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load fastqc/0.11.5 

# fastqc Mandan2_R2.fastq.gz
# fastqc MexCult14_R1.fastq.gz
# fastqc MexCult14_R2.fastq.gz
# fastqc MexCult15_R1.fastq.gz
# fastqc MexCult15_R2.fastq.gz
# fastqc MexCult1_R1.fastq.gz
# fastqc MexCult1_R2.fastq.gz
# fastqc MexCult3_R1.fastq.gz
# fastqc MexCult3_R2.fastq.gz
# fastqc MexCult6_R1.fastq.gz
# fastqc MexCult6_R2.fastq.gz
# fastqc MexCult7_R1.fastq.gz
# fastqc MexCult7_R2.fastq.gz
# fastqc MexCult9_R1.fastq.gz
# fastqc MexCult9_R2.fastq.gz
# fastqc PPN046_R1.fastq.gz
# fastqc PPN046_R2.fastq.gz
# fastqc PPN083_R1.fastq.gz
# fastqc PPN083_R2.fastq.gz
# fastqc PPN255_Manchurian_R1.fastq.gz
# fastqc PPN255_Manchurian_R2.fastq.gz
# fastqc PPN262_R1.fastq.gz
# fastqc PPN262_R2.fastq.gz
# fastqc Pueblo_R1.fastq.gz
# fastqc Pueblo_R2.fastq.gz
# fastqc RHA271_R1.fastq.gz
# fastqc RHA271_R2.fastq.gz
# fastqc RHA309_R1.fastq.gz
# fastqc RHA309_R2.fastq.gz
# fastqc RHA311_R1.fastq.gz
# fastqc RHA311_R2.fastq.gz
# fastqc RHA328_R1.fastq.gz
# fastqc RHA328_R2.fastq.gz
# fastqc RHA355_R1.fastq.gz
# fastqc RHA355_R2.fastq.gz
# fastqc RHA358_R1.fastq.gz
# fastqc RHA358_R2.fastq.gz
# fastqc RHA408_R1.fastq.gz
# fastqc RHA408_R2.fastq.gz
# fastqc RHA426_R1.fastq.gz
# fastqc RHA426_R2.fastq.gz
# fastqc RHA857_R1.fastq.gz
# fastqc RHA857_R2.fastq.gz
# fastqc SF33_R1.fastq.gz
# fastqc SF33_R2.fastq.gz
# fastqc Seneca_R1.fastq.gz
# fastqc Seneca_R2.fastq.gz
# fastqc VIR847_R1.fastq.gz
# fastqc VIR847_R2.fastq.gz
# fastqc Zuni_R1.fastq.gz
# fastqc Zuni_R2.fastq.gz
# fastqc ann01-cwIA_R1.fastq.gz
# fastqc ann01-cwIA_R2.fastq.gz
# fastqc ann04-nwAR_R1.fastq.gz
# fastqc ann04-nwAR_R2.fastq.gz
# fastqc ann05-ccNM_R1.fastq.gz
# fastqc ann05-ccNM_R2.fastq.gz
# fastqc ann06-seWY_R1.fastq.gz
# fastqc ann06-seWY_R2.fastq.gz
# fastqc ann08-ceTN_R1.fastq.gz
# fastqc ann08-ceTN_R2.fastq.gz
# fastqc ann10-ccIL_R1.fastq.gz
# fastqc ann10-ccIL_R2.fastq.gz
# fastqc ann20-seAZ_R1.fastq.gz
# fastqc ann20-seAZ_R2.fastq.gz
# fastqc ann28-swSK_R1.fastq.gz
# fastqc ann28-swSK_R2.fastq.gz
# fastqc ann29-neSD_R1.fastq.gz
# fastqc ann29-neSD_R2.fastq.gz
# fastqc ann34-cwKS_R1.fastq.gz
# fastqc ann34-cwKS_R2.fastq.gz
# fastqc ann39-ncNE_R1.fastq.gz
# fastqc ann39-ncNE_R2.fastq.gz
# fastqc ann44-ccCA_R1.fastq.gz
# fastqc ann44-ccCA_R2.fastq.gz
# fastqc annHA89_R1.fastq.gz
# fastqc annHA89_R2.fastq.gz
# fastqc annIA1W-1_R1.fastq.gz
# fastqc annIA1W-1_R2.fastq.gz
# fastqc annIA2W-17_R1.fastq.gz
# fastqc annIA2W-17_R2.fastq.gz
# fastqc annIA_R1.fastq.gz
# fastqc annIA_R2.fastq.gz
fastqc annKS1W-27_R1.fastq.gz
fastqc annKS1W-27_R2.fastq.gz
fastqc annKS2W-35_R1.fastq.gz
fastqc annKS2W-35_R2.fastq.gz
fastqc annKS_R1.fastq.gz
fastqc annKS_R2.fastq.gz
fastqc annMB1W-40_R1.fastq.gz
fastqc annMB1W-40_R2.fastq.gz
fastqc annMO1W-39_R1.fastq.gz
fastqc annMO1W-39_R2.fastq.gz
# fastqc annND1W-6_R1.fastq.gz
# fastqc annND1W-6_R2.fastq.gz
# fastqc annNM_R1.fastq.gz
# fastqc annNM_R2.fastq.gz
# fastqc annSD1W-35_R1.fastq.gz
# fastqc annSD1W-35_R2.fastq.gz
# fastqc annSD2W-18_R1.fastq.gz
# fastqc annSD2W-18_R2.fastq.gz
# fastqc annSK1W-Q_R1.fastq.gz
# fastqc annSK1W-Q_R2.fastq.gz
# fastqc annWY_R1.fastq.gz
# fastqc annWY_R2.fastq.gz
