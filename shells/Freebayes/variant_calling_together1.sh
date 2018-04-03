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
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_combined.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_combined.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635

freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -r HanXRQChr01 Anzac_Pueblo_sorted_markdup_recal.bam \
Arikara_sorted_markdup_recal.bam \
HA124_sorted_markdup_recal.bam \
HA316_sorted_markdup_recal.bam \
HA404_sorted_markdup_recal.bam \
HA433_sorted_markdup_recal.bam \
HA442_sorted_markdup_recal.bam \
HA821_sorted_markdup_recal.bam \
HA89_sorted_markdup_recal.bam \
Havasupai_sorted_markdup_recal.bam \
Hidatsa1_sorted_markdup_recal.bam \
Hopi_real_sorted_markdup_recal.bam \
Hopi_PPN285_sorted_markdup_recal.bam \
Laguna_Pueblo_sorted_markdup_recal.bam \
Mandan2_sorted_markdup_recal.bam \
MexCult1_sorted_markdup_recal.bam \
MexCult14_sorted_markdup_recal.bam \
MexCult15_sorted_markdup_recal.bam \
MexCult3_sorted_markdup_recal.bam \
MexCult6_sorted_markdup_recal.bam \
MexCult7_sorted_markdup_recal.bam \
MexCult9_sorted_markdup_recal.bam \
PPN046_sorted_markdup_recal.bam \
PPN083_sorted_markdup_recal.bam \
PPN255_Manchurian_sorted_markdup_recal.bam \
PPN262_sorted_markdup_recal.bam \
Pueblo_sorted_markdup_recal.bam \
RHA271_sorted_markdup_recal.bam \
RHA309_sorted_markdup_recal.bam \
RHA311_sorted_markdup_recal.bam \
RHA328_sorted_markdup_recal.bam \
RHA355_sorted_markdup_recal.bam \
RHA358_sorted_markdup_recal.bam \
RHA408_sorted_markdup_recal.bam \
RHA426_sorted_markdup_recal.bam \
RHA857_sorted_markdup_recal.bam \
SF33_sorted_markdup_recal.bam \
Seneca_sorted_markdup_recal.bam \
VIR847_sorted_markdup_recal.bam \
Zuni_sorted_markdup_recal.bam \
ann01-cwIA_sorted_markdup_recal.bam \
ann04-nwAR_sorted_markdup_recal.bam \
ann05-ccNM_sorted_markdup_recal.bam \
ann06-seWY_sorted_markdup_recal.bam \
ann08-ceTN_sorted_markdup_recal.bam \
ann10-ccIL_sorted_markdup_recal.bam \
ann20-seAZ_sorted_markdup_recal.bam \
ann28-swSK_sorted_markdup_recal.bam \
ann29-neSD_sorted_markdup_recal.bam \
ann34-cwKS_sorted_markdup_recal.bam \
ann39-ncNE_sorted_markdup_recal.bam \
ann44-ccCA_sorted_markdup_recal.bam \
annIA_sorted_markdup_recal.bam \
annIA1W-1_sorted_markdup_recal.bam \
annIA2W-17_sorted_markdup_recal.bam \
annKS_sorted_markdup_recal.bam \
annKS1W-27_sorted_markdup_recal.bam \
annKS2W-35_sorted_markdup_recal.bam \
annMB1W-40_sorted_markdup_recal.bam \
annMO1W-39_sorted_markdup_recal.bam \
annND1W-6_sorted_markdup_recal.bam \
annNM_sorted_markdup_recal.bam \
annSD1W-35_sorted_markdup_recal.bam \
annSD2W-18_sorted_markdup_recal.bam \
annSK1W-Q_sorted_markdup_recal.bam \
annWY_sorted_markdup_recal.bam --gvcf ../freebayes/freebayes_combined_chr01.vcf.gz
