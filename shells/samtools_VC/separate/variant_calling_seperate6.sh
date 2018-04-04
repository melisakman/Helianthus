#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams
#SBATCH -J ST_VC6
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=16000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/samtools_VC6.out
#SBATCH -e /global/home/users/makman/GATK/outs/samtools_VC6.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/0.1.19
bcftools/1.6 

# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Anzac_Pueblo_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Anzac_Pueblo.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Arikara_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Arikara.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa HA124_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/HA124.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa HA316_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/HA316.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa HA404_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/HA404.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa HA433_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/HA433.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa HA442_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/HA442.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa HA821_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/HA821.raw.bcf

# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa HA89_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/HA89.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Havasupai_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Havasupai.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Hidatsa1_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Hidatsa1.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Hopi_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Hopi.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Hopi_real_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Hopi_real.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Hopi_PPN285_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Hopi_PPN285.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Laguna_Pueblo_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Laguna_Pueblo.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Mandan2_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Mandan2.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa MexCult1_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/MexCult1.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa MexCult14_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/MexCult14.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa MexCult15_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/MexCult15.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa MexCult3_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/MexCult3.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa MexCult6_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/MexCult6.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa MexCult7_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/MexCult7.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa MexCult9_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/MexCult9.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa PPN046_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/PPN046.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa PPN083_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/PPN083.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa PPN255_Manchurian_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/PPN255_Manchurian.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa PPN262_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/PPN262.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Pueblo_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Pueblo.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA271_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA271.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA309_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA309.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA311_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA311.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA328_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA328.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA355_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA355.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA358_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA358.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA408_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA408.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA426_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA426.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa RHA857_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/RHA857.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa SF33_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/SF33.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Seneca_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Seneca.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa VIR847_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/VIR847.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa Zuni_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/Zuni.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann01-cwIA_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann01-cwIA.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann04-nwAR_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann04-nwAR.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann05-ccNM_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann05-ccNM.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann06-seWY_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann06-seWY.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann08-ceTN_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann08-ceTN.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann10-ccIL_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann10-ccIL.raw.bcf
# 
samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann20-seAZ_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann20-seAZ.raw.bcf
samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann28-swSK_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann28-swSK.raw.bcf

samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann29-neSD_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann29-neSD.raw.bcf
samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann34-cwKS_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann34-cwKS.raw.bcf

samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann39-ncNE_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann39-ncNE.raw.bcf
samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa ann44-ccCA_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/ann44-ccCA.raw.bcf

samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annIA_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annIA.raw.bcf
samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annIA1W-1_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annIA1W-1.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annIA2W-17_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annIA2W-17.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annKS_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annKS.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annKS1W-27_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annKS1W-27.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annKS2W-35_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annKS2W-35.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annMB1W-40_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annMB1W-40.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annMO1W-39_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annMO1W-39.raw.bcf
# 
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annND1W-6_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annND1W-6.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annNM_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annNM.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annSD1W-35_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annSD1W-35.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annSD2W-18_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annSD2W-18.raw.bcf
# 
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annSK1W-Q_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annSK1W-Q.raw.bcf
# samtools mpileup -uf /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa annWY_sorted_markdup_recal.bam | bcftools view -bvcg - > ../samtools_VC/annWY.raw.bcf
# 
# 
# 
