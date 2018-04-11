#!/bin/bash 
#SBATCH -D /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/freebayes/scripts/
#SBATCH -J fb1p
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_combined_chr01p2.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_combined_chr01p2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load freebayes/v1.1.0-56-ga180635
module load parallel/20180322
TMPDIR=/clusterfs/rosalind/users/makman/temp
# ./fasta_generate_regions.py /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa.fai 100000 > /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa.100kbp.regions
./freebayes-parallel /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa.100kbp.regions 16 --tmpdir /clusterfs/rosalind/users/makman/temp -f /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -r HanXRQChr01 /clusterfs/rosalind/users/makman/GATK/bams/Anzac_Pueblo_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Arikara_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/HA124_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/HA316_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/HA404_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/HA433_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/HA442_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/HA821_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/HA89_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Havasupai_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Hidatsa1_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Hopi_real_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Hopi_PPN285_sorted_markdup_recal.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Laguna_Pueblo_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Mandan2_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/MexCult1_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/MexCult14_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/MexCult15_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/MexCult3_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/MexCult6_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/MexCult7_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/MexCult9_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/PPN046_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/PPN083_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/PPN255_Manchurian_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/PPN262_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Pueblo_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA271_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA309_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA311_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA328_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA355_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA358_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA408_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA426_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/RHA857_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/SF33_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Seneca_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/VIR847_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Zuni_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann01-cwIA_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann04-nwAR_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann05-ccNM_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann06-seWY_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann08-ceTN_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann10-ccIL_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann20-seAZ_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann28-swSK_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann29-neSD_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann34-cwKS_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann39-ncNE_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/ann44-ccCA_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annMB1W-40_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annMO1W-39_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annIA_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annIA1W-1_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annIA2W-17_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annKS_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annKS1W-27_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annKS2W-35_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annND1W-6_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annNM_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annSD1W-35_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annSD2W-18_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annSK1W-Q_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/annWY_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Ari_Mand_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Ari_broa_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Paiute_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Se137749_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Se_purp_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Se_strip_sorted_markdup_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Mex_A1516_sorted_markdup_readGroups_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Mex_A1517_sorted_markdup_readGroups_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Mex_A1572_sorted_markdup_readGroups_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Mex_A1574_sorted_markdup_readGroups_recal_RG.bam \
/clusterfs/rosalind/users/makman/GATK/bams/Mex_Ann261_sorted_markdup_readGroups_recal_RG.bam > /clusterfs/rosalind/users/makman/GATK/freebayes/freebayes_combined_chr01_p.vcf
