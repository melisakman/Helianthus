#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J markdup1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=180:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bamindex1.out
#SBATCH -e /global/home/users/makman/GATK/outs/bamindex1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load samtools/1.8

# samtools index ann06-seWY_sorted_markdup_readGroup.bam ann06-seWY_sorted_markdup_readGroup.bai
# samtools index ann08-ceTN_sorted_markdup_readGroup.bam ann08-ceTN_sorted_markdup_readGroup.bai
# samtools index ann34-cwKS_sorted_markdup_readGroup.bam ann34-cwKS_sorted_markdup_readGroup.bai
# samtools index ann39-ncNE_sorted_markdup_readGroup.bam ann39-ncNE_sorted_markdup_readGroup.bai
# samtools index annIA_sorted_markdup_readGroup.bam annIA_sorted_markdup_readGroup.bai
# samtools index annKS_sorted_markdup_readGroup.bam annKS_sorted_markdup_readGroup.bai
# samtools index annMex_A1516_sorted_markdup_readGroup.bam annMex_A1516_sorted_markdup_readGroup.bai
# samtools index annMex_A1517_sorted_markdup_readGroup.bam annMex_A1517_sorted_markdup_readGroup.bai
samtools index annMex_A1572_sorted_markdup_readGroup.bam annMex_A1572_sorted_markdup_readGroup.bai
# samtools index annMex_A1574_sorted_markdup_readGroup.bam annMex_A1574_sorted_markdup_readGroup.bai
# samtools index annMex_Ann261_sorted_markdup_readGroup.bam annMex_Ann261_sorted_markdup_readGroup.bai
# samtools index annMO1W-39_sorted_markdup_readGroup.bam annMO1W-39_sorted_markdup_readGroup.bai
# samtools index annND1W-6_sorted_markdup_readGroup.bam annND1W-6_sorted_markdup_readGroup.bai
# samtools index annSD1W-35_sorted_markdup_readGroup.bam annSD1W-35_sorted_markdup_readGroup.bai
# samtools index annSD2W-18_sorted_markdup_readGroup.bam annSD2W-18_sorted_markdup_readGroup.bai
# samtools index Anzac_Pueblo_sorted_markdup_readGroup.bam Anzac_Pueblo_sorted_markdup_readGroup.bai
# samtools index Arikara_sorted_markdup_readGroup.bam Arikara_sorted_markdup_readGroup.bai
# samtools index HA124_sorted_markdup_readGroup.bam HA124_sorted_markdup_readGroup.bai
# samtools index HA316_sorted_markdup_readGroup.bam HA316_sorted_markdup_readGroup.bai
# samtools index HA404_sorted_markdup_readGroup.bam HA404_sorted_markdup_readGroup.bai
# samtools index HA442_sorted_markdup_readGroup.bam HA442_sorted_markdup_readGroup.bai
# samtools index HA89_sorted_markdup_readGroup.bam HA89_sorted_markdup_readGroup.bai
# samtools index Havasupai_sorted_markdup_readGroup.bam Havasupai_sorted_markdup_readGroup.bai
# samtools index Hidatsa1_sorted_markdup_readGroup.bam Hidatsa1_sorted_markdup_readGroup.bai
# samtools index Hopi_sorted_markdup_readGroup.bam Hopi_sorted_markdup_readGroup.bai
# samtools index Hopi_PPN285_sorted_markdup_readGroup.bam Hopi_PPN285_sorted_markdup_readGroup.bai
# samtools index Hopi_real_sorted_markdup_readGroup.bam Hopi_real_sorted_markdup_readGroup.bai
# samtools index Laguna_Pueblo_sorted_markdup_readGroup.bam Laguna_Pueblo_sorted_markdup_readGroup.bai
# samtools index Mandan1_sorted_markdup_readGroup.bam Mandan1_sorted_markdup_readGroup.bai
# samtools index Mandan2_sorted_markdup_readGroup.bam Mandan2_sorted_markdup_readGroup.bai
# samtools index MexCult3_sorted_markdup_readGroup.bam MexCult3_sorted_markdup_readGroup.bai
# samtools index MexCult6_sorted_markdup_readGroup.bam MexCult6_sorted_markdup_readGroup.bai
# samtools index MexCult7_sorted_markdup_readGroup.bam MexCult7_sorted_markdup_readGroup.bai
# samtools index Pueblo_sorted_markdup_readGroup.bam Pueblo_sorted_markdup_readGroup.bai
# samtools index RHA271_sorted_markdup_readGroup.bam RHA271_sorted_markdup_readGroup.bai
# samtools index RHA309_sorted_markdup_readGroup.bam RHA309_sorted_markdup_readGroup.bai
# samtools index RHA328_sorted_markdup_readGroup.bam RHA328_sorted_markdup_readGroup.bai
# samtools index RHA408_sorted_markdup_readGroup.bam RHA408_sorted_markdup_readGroup.bai
# samtools index RHA426_sorted_markdup_readGroup.bam RHA426_sorted_markdup_readGroup.bai
# samtools index RHA857_sorted_markdup_readGroup.bam RHA857_sorted_markdup_readGroup.bai
# samtools index Seneca_sorted_markdup_readGroup.bam Seneca_sorted_markdup_readGroup.bai
# samtools index Zuni_sorted_markdup_readGroup.bam Zuni_sorted_markdup_readGroup.bai
# samtools index ann01-cwIA_sorted_markdup_readGroup.bam ann01-cwIA_sorted_markdup_readGroup.bai
# samtools index ann04-nwAR_sorted_markdup_readGroup.bam ann04-nwAR_sorted_markdup_readGroup.bai
# samtools index ann05-ccNM_sorted_markdup_readGroup.bam ann05-ccNM_sorted_markdup_readGroup.bai
# samtools index ann10-ccIL_sorted_markdup_readGroup.bam ann10-ccIL_sorted_markdup_readGroup.bai
# samtools index ann20-seAZ_sorted_markdup_readGroup.bam ann20-seAZ_sorted_markdup_readGroup.bai
# samtools index ann29-neSD_sorted_markdup_readGroup.bam ann29-neSD_sorted_markdup_readGroup.bai
# samtools index ann44-ccCA_sorted_markdup_readGroup.bam ann44-ccCA_sorted_markdup_readGroup.bai
# samtools index annKS1W-27_sorted_markdup_readGroup.bam annKS1W-27_sorted_markdup_readGroup.bai
# samtools index annNM_sorted_markdup_readGroup.bam annNM_sorted_markdup_readGroup.bai
# samtools index annSK1W-Q_sorted_markdup_readGroup.bam annSK1W-Q_sorted_markdup_readGroup.bai
# samtools index annWY_sorted_markdup_readGroup.bam annWY_sorted_markdup_readGroup.bai
# samtools index Ari_broa_sorted_markdup_readGroup.bam Ari_broa_sorted_markdup_readGroup.bai
# samtools index Ari_Mand_sorted_markdup_readGroup.bam Ari_Mand_sorted_markdup_readGroup.bai
# samtools index HA433_sorted_markdup_readGroup.bam HA433_sorted_markdup_readGroup.bai
# samtools index MexCult1_sorted_markdup_readGroup.bam MexCult1_sorted_markdup_readGroup.bai
# samtools index MexCult14_sorted_markdup_readGroup.bam MexCult14_sorted_markdup_readGroup.bai
# samtools index MexCult9_sorted_markdup_readGroup.bam MexCult9_sorted_markdup_readGroup.bai
# samtools index Paiute_sorted_markdup_readGroup.bam Paiute_sorted_markdup_readGroup.bai
# samtools index RHA358_sorted_markdup_readGroup.bam RHA358_sorted_markdup_readGroup.bai
# samtools index Se_purp_sorted_markdup_readGroup.bam Se_purp_sorted_markdup_readGroup.bai
# samtools index Se_strip_sorted_markdup_readGroup.bam Se_strip_sorted_markdup_readGroup.bai
# samtools index Se137749_sorted_markdup_readGroup.bam Se137749_sorted_markdup_readGroup.bai
# samtools index HA207_sorted_markdup_readGroup.bam HA207_sorted_markdup_readGroup.bai
# samtools index HA259_sorted_markdup_readGroup.bam HA259_sorted_markdup_readGroup.bai
# samtools index HA314_sorted_markdup_readGroup.bam HA314_sorted_markdup_readGroup.bai
# samtools index HA323_sorted_markdup_readGroup.bam HA323_sorted_markdup_readGroup.bai
# samtools index HA380_sorted_markdup_readGroup.bam HA380_sorted_markdup_readGroup.bai
# samtools index RHA310_sorted_markdup_readGroup.bam RHA310_sorted_markdup_readGroup.bai
# samtools index RHA324_sorted_markdup_readGroup.bam RHA324_sorted_markdup_readGroup.bai
# samtools index RHA354_sorted_markdup_readGroup.bam RHA354_sorted_markdup_readGroup.bai
# samtools index RHA362_sorted_markdup_readGroup.bam RHA362_sorted_markdup_readGroup.bai
# samtools index RHA397_sorted_markdup_readGroup.bam RHA397_sorted_markdup_readGroup.bai
# samtools index _sorted_markdup_readGroup.bam _sorted_markdup_readGroup.bai
# samtools index ann1238_sorted_markdup_readGroup.bam ann1238_sorted_markdup_readGroup.bai
# samtools index ann28-swSK_sorted_markdup_readGroup.bam ann28-swSK_sorted_markdup_readGroup.bai
# samtools index annIA1W-1_sorted_markdup_readGroup.bam annIA1W-1_sorted_markdup_readGroup.bai
# samtools index annIA2W-17_sorted_markdup_readGroup.bam annIA2W-17_sorted_markdup_readGroup.bai
# samtools index annKS2W-35_sorted_markdup_readGroup.bam annKS2W-35_sorted_markdup_readGroup.bai
# samtools index annMB1W-40_sorted_markdup_readGroup.bam annMB1W-40_sorted_markdup_readGroup.bai
# samtools index HA821_sorted_markdup_readGroup.bam HA821_sorted_markdup_readGroup.bai
# samtools index MexCult15_sorted_markdup_readGroup.bam MexCult15_sorted_markdup_readGroup.bai
# samtools index SF33_sorted_markdup_readGroup.bam SF33_sorted_markdup_readGroup.bai
