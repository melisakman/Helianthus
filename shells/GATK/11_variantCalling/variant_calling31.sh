#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J varcal7
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=2
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/variant_cal31.out
#SBATCH -e /global/home/users/makman/GATK/outs/variant_cal31.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Anzac_Pueblo_sorted_markdup_recal.bam -O Anzac_Pueblo.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Arikara_sorted_markdup_recal.bam -O Arikara.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I HA124_sorted_markdup_recal.bam -O HA124.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I HA316_sorted_markdup_recal.bam -O HA316.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I HA404_sorted_markdup_recal.bam -O HA404.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I HA433_sorted_markdup_recal.bam -O HA433.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I HA442_sorted_markdup_recal.bam -O HA442.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I HA821_sorted_markdup_recal.bam -O HA821.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I HA89_sorted_markdup_recal.bam -O HA89.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Havasupai_sorted_markdup_recal.bam -O Havasupai.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hidatsa1_sorted_markdup_recal.bam -O Hidatsa1.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hopi_sorted_markdup_recal.bam -O Hopi.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Hopi_PPN285_sorted_markdup_recal.bam -O Hopi_PPN285.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Laguna_Pueblo_sorted_markdup_recal.bam -O Laguna_Pueblo.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mandan2_sorted_markdup_recal.bam -O Mandan2.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I MexCult1_sorted_markdup_recal.bam -O MexCult1.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I MexCult14_sorted_markdup_recal.bam -O MexCult14.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I MexCult15_sorted_markdup_recal.bam -O MexCult15.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I MexCult3_sorted_markdup_recal.bam -O MexCult3.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I MexCult6_sorted_markdup_recal.bam -O MexCult6.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I MexCult7_sorted_markdup_recal.bam -O MexCult7.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I MexCult9_sorted_markdup_recal.bam -O MexCult9.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I PPN046_sorted_markdup_recal.bam -O PPN046.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I PPN083_sorted_markdup_recal.bam -O PPN083.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I PPN255_Manchurian_sorted_markdup_recal.bam -O PPN255_Manchurian.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I PPN262_sorted_markdup_recal.bam -O PPN262.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Pueblo_sorted_markdup_recal.bam -O Pueblo.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA271_sorted_markdup_recal.bam -O RHA271.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA309_sorted_markdup_recal.bam -O RHA309.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA311_sorted_markdup_recal.bam -O RHA311.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA328_sorted_markdup_recal.bam -O RHA328.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA355_sorted_markdup_recal.bam -O RHA355.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA358_sorted_markdup_recal.bam -O RHA358.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA408_sorted_markdup_recal.bam -O RHA408.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA426_sorted_markdup_recal.bam -O RHA426.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I RHA857_sorted_markdup_recal.bam -O RHA857.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I SF33_sorted_markdup_recal.bam -O SF33.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Seneca_sorted_markdup_recal.bam -O Seneca.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I VIR847_sorted_markdup_recal.bam -O VIR847.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Zuni_sorted_markdup_recal.bam -O Zuni.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann01-cwIA_sorted_markdup_recal.bam -O ann01-cwIA.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann04-nwAR_sorted_markdup_recal.bam -O ann04-nwAR.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann05-ccNM_sorted_markdup_recal.bam -O ann05-ccNM.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann06-seWY_sorted_markdup_recal.bam -O ann06-seWY.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann08-ceTN_sorted_markdup_recal.bam -O ann08-ceTN.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann10-ccIL_sorted_markdup_recal.bam -O ann10-ccIL.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann20-seAZ_sorted_markdup_recal.bam -O ann20-seAZ.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann28-swSK_sorted_markdup_recal.bam -O ann28-swSK.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann29-neSD_sorted_markdup_recal.bam -O ann29-neSD.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann34-cwKS_sorted_markdup_recal.bam -O ann34-cwKS.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann39-ncNE_sorted_markdup_recal.bam -O ann39-ncNE.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I ann44-ccCA_sorted_markdup_recal.bam -O ann44-ccCA.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annIA_sorted_markdup_recal.bam -O annIA.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annIA1W-1_sorted_markdup_recal.bam -O annIA1W-1.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annIA2W-17_sorted_markdup_recal.bam -O annIA2W-17.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annKS_sorted_markdup_recal.bam -O annKS.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annKS1W-27_sorted_markdup_recal.bam -O annKS1W-27.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annKS2W-35_sorted_markdup_recal.bam -O annKS2W-35.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annMB1W-40_sorted_markdup_recal.bam -O annMB1W-40.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annMO1W-39_sorted_markdup_recal.bam -O annMO1W-39.g.vcf.gz -ERC GVCF
# 
# 
/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annND1W-6_sorted_markdup_recal.bam -O annND1W-6.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annNM_sorted_markdup_recal.bam -O annNM.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annSD1W-35_sorted_markdup_recal.bam -O annSD1W-35.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annSD2W-18_sorted_markdup_recal.bam -O annSD2W-18.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annSK1W-Q_sorted_markdup_recal.bam -O annSK1W-Q.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I annWY_sorted_markdup_recal.bam -O annWY.g.vcf.gz -ERC GVCF
# 
# 
# 
