#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J fb08-12
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_invariant_chr08_chunk12.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_invariant_chr08_chunk12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635
TMPDIR=/clusterfs/rosalind/users/makman/temp

freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa --report-monomorphic -r HanXRQChr08:88000001-96000000\
Anzac_Pueblo_sorted_markdup_recal_RG.bam \
Arikara_sorted_markdup_recal_RG.bam \
HA124_sorted_markdup_recal_RG.bam \
HA316_sorted_markdup_recal_RG.bam \
HA404_sorted_markdup_recal_RG.bam \
HA433_sorted_markdup_recal_RG.bam \
HA442_sorted_markdup_recal_RG.bam \
HA821_sorted_markdup_recal_RG.bam \
HA89_sorted_markdup_recal_RG.bam \
Havasupai_sorted_markdup_recal_RG.bam \
Hidatsa1_sorted_markdup_recal_RG.bam \
Hopi_real_sorted_markdup_recal_RG.bam \
Hopi_PPN285_sorted_markdup_recal.bam \
Laguna_Pueblo_sorted_markdup_recal_RG.bam \
Mandan2_sorted_markdup_recal_RG.bam \
MexCult1_sorted_markdup_recal_RG.bam \
MexCult14_sorted_markdup_recal_RG.bam \
MexCult15_sorted_markdup_recal_RG.bam \
MexCult3_sorted_markdup_recal_RG.bam \
MexCult6_sorted_markdup_recal_RG.bam \
MexCult7_sorted_markdup_recal_RG.bam \
MexCult9_sorted_markdup_recal_RG.bam \
PPN046_sorted_markdup_recal_RG.bam \
PPN083_sorted_markdup_recal_RG.bam \
PPN255_Manchurian_sorted_markdup_recal_RG.bam \
PPN262_sorted_markdup_recal_RG.bam \
Pueblo_sorted_markdup_recal_RG.bam \
RHA271_sorted_markdup_recal_RG.bam \
RHA309_sorted_markdup_recal_RG.bam \
RHA311_sorted_markdup_recal_RG.bam \
RHA328_sorted_markdup_recal_RG.bam \
RHA355_sorted_markdup_recal_RG.bam \
RHA358_sorted_markdup_recal_RG.bam \
RHA408_sorted_markdup_recal_RG.bam \
RHA426_sorted_markdup_recal_RG.bam \
RHA857_sorted_markdup_recal_RG.bam \
SF33_sorted_markdup_recal_RG.bam \
Seneca_sorted_markdup_recal_RG.bam \
VIR847_sorted_markdup_recal_RG.bam \
Zuni_sorted_markdup_recal_RG.bam \
ann01-cwIA_sorted_markdup_recal_RG.bam \
ann04-nwAR_sorted_markdup_recal_RG.bam \
ann05-ccNM_sorted_markdup_recal_RG.bam \
ann06-seWY_sorted_markdup_recal_RG.bam \
ann08-ceTN_sorted_markdup_recal_RG.bam \
ann10-ccIL_sorted_markdup_recal_RG.bam \
ann20-seAZ_sorted_markdup_recal_RG.bam \
ann28-swSK_sorted_markdup_recal_RG.bam \
ann29-neSD_sorted_markdup_recal_RG.bam \
ann34-cwKS_sorted_markdup_recal_RG.bam \
ann39-ncNE_sorted_markdup_recal_RG.bam \
ann44-ccCA_sorted_markdup_recal_RG.bam \
annMB1W-40_sorted_markdup_recal_RG.bam \
annMO1W-39_sorted_markdup_recal_RG.bam \
annIA_sorted_markdup_recal_RG.bam \
annIA1W-1_sorted_markdup_recal_RG.bam \
annIA2W-17_sorted_markdup_recal_RG.bam \
annKS_sorted_markdup_recal_RG.bam \
annKS1W-27_sorted_markdup_recal_RG.bam \
annKS2W-35_sorted_markdup_recal_RG.bam \
annND1W-6_sorted_markdup_recal_RG.bam \
annNM_sorted_markdup_recal_RG.bam \
annSD1W-35_sorted_markdup_recal_RG.bam \
annSD2W-18_sorted_markdup_recal_RG.bam \
annSK1W-Q_sorted_markdup_recal_RG.bam \
annWY_sorted_markdup_recal_RG.bam \
Ari_Mand_sorted_markdup_recal_RG.bam \
Ari_broa_sorted_markdup_recal_RG.bam \
Paiute_sorted_markdup_recal_RG.bam \
Se137749_sorted_markdup_recal_RG.bam \
Se_purp_sorted_markdup_recal_RG.bam \
Se_strip_sorted_markdup_recal_RG.bam \
Mex_A1516_sorted_markdup_readGroups_recal_RG.bam \
Mex_A1517_sorted_markdup_readGroups_recal_RG.bam \
Mex_A1572_sorted_markdup_readGroups_recal_RG.bam \
Mex_A1574_sorted_markdup_readGroups_recal_RG.bam \
Mex_Ann261_sorted_markdup_readGroups_recal_RG.bam > ../freebayes/freebayes_invariant_chr08_chunk12.vcf