#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/sams/bams/
#SBATCH -J fb02-12
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_invariant_chr02_chunk12.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_invariant_chr02_chunk12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635
TMPDIR=/clusterfs/rosalind/users/makman/temp

freebayes -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa --report-monomorphic -r HanXRQChr02:44000001-48000000 \
Anzac_Pueblo_sorted_markdup_readGroup.bam \
Ari_Mand_sorted_markdup_readGroup.bam \
Ari_broa_sorted_markdup_readGroup.bam \
Arikara_sorted_markdup_readGroup.bam \
HA124_sorted_markdup_readGroup.bam \
HA207_sorted_markdup_readGroup.bam \
HA259_sorted_markdup_readGroup.bam \
HA314_sorted_markdup_readGroup.bam \
HA316_sorted_markdup_readGroup.bam \
HA323_sorted_markdup_readGroup.bam \
HA380_sorted_markdup_readGroup.bam \
HA404_sorted_markdup_readGroup.bam \
HA433_sorted_markdup_readGroup.bam \
HA442_sorted_markdup_readGroup.bam \
HA821_sorted_markdup_readGroup.bam \
HA89_sorted_markdup_readGroup.bam \
Havasupai_sorted_markdup_readGroup.bam \
Hidatsa1_sorted_markdup_readGroup.bam \
Hopi_dye_sorted_markdup_readGroup.bam \
Hopi_mapping_parent_sorted_markdup_readGroup.bam \
Hopi_other_sorted_markdup_readGroup.bam \
Hopi_sorted_markdup_readGroup.bam \
Laguna_Pueblo_sorted_markdup_readGroup.bam \
Mandan1_sorted_markdup_readGroup.bam \
Mandan2_sorted_markdup_readGroup.bam \
MexCult14_sorted_markdup_readGroup.bam \
MexCult15_sorted_markdup_readGroup.bam \
MexCult1_sorted_markdup_readGroup.bam \
MexCult3_sorted_markdup_readGroup.bam \
MexCult6_sorted_markdup_readGroup.bam \
MexCult7_sorted_markdup_readGroup.bam \
MexCult9_sorted_markdup_readGroup.bam \
Paiute_sorted_markdup_readGroup.bam \
Pueblo_sorted_markdup_readGroup.bam \
RHA271_sorted_markdup_readGroup.bam \
RHA309_sorted_markdup_readGroup.bam \
RHA310_sorted_markdup_readGroup.bam \
RHA324_sorted_markdup_readGroup.bam \
RHA328_sorted_markdup_readGroup.bam \
RHA354_sorted_markdup_readGroup.bam \
RHA358_sorted_markdup_readGroup.bam \
RHA362_sorted_markdup_readGroup.bam \
RHA397_sorted_markdup_readGroup.bam \
RHA408_sorted_markdup_readGroup.bam \
RHA426_sorted_markdup_readGroup.bam \
RHA857_sorted_markdup_readGroup.bam \
SF33_sorted_markdup_readGroup.bam \
Se137749_sorted_markdup_readGroup.bam \
Se_purp_sorted_markdup_readGroup.bam \
Se_strip_sorted_markdup_readGroup.bam \
Seneca_sorted_markdup_readGroup.bam \
Zuni_sorted_markdup_readGroup.bam \
ann01-cwIA_sorted_markdup_readGroup.bam \
ann04-nwAR_sorted_markdup_readGroup.bam \
ann05-ccNM_sorted_markdup_readGroup.bam \
ann06-seWY_sorted_markdup_readGroup.bam \
ann08-ceTN_sorted_markdup_readGroup.bam \
ann10-ccIL_sorted_markdup_readGroup.bam \
ann20-seAZ_sorted_markdup_readGroup.bam \
ann28-swSK_sorted_markdup_readGroup.bam \
ann29-neSD_sorted_markdup_readGroup.bam \
ann34-cwKS_sorted_markdup_readGroup.bam \
ann39-ncNE_sorted_markdup_readGroup.bam \
ann44-ccCA_sorted_markdup_readGroup.bam \
annIA1W-1_sorted_markdup_readGroup.bam \
annIA2W-17_sorted_markdup_readGroup.bam \
annIA_sorted_markdup_readGroup.bam \
annKS1W-27_sorted_markdup_readGroup.bam \
annKS2W-35_sorted_markdup_readGroup.bam \
annKS_sorted_markdup_readGroup.bam \
annMB1W-40_sorted_markdup_readGroup.bam \
annMO1W-39_sorted_markdup_readGroup.bam \
annMex_A1516_sorted_markdup_readGroup.bam \
annMex_A1517_sorted_markdup_readGroup.bam \
annMex_A1572_sorted_markdup_readGroup.bam \
annMex_A1574_sorted_markdup_readGroup.bam \
annMex_Ann261_sorted_markdup_readGroup.bam \
annND1W-6_sorted_markdup_readGroup.bam \
annNM_sorted_markdup_readGroup.bam \
annSD1W-35_sorted_markdup_readGroup.bam \
annSD2W-18_sorted_markdup_readGroup.bam \
annSK1W-Q_sorted_markdup_readGroup.bam \
annWY_sorted_markdup_readGroup.bam \
ann1238_lane2_62_5M_markdup_readGroup.bam > ../freebayes/freebayes_invariant_chr02_chunk12.vcf