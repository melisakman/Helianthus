#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J varcalindex
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=64000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/variant_cal_index.out
#SBATCH -e /global/home/users/makman/GATK/outs/variant_cal_index.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load samtools

samtools index MexCult15_sorted_markdup_recal.bam MexCult15_sorted_markdup_recal.bai

# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Anzac_Pueblo_sorted_markdup_recal.bam -O Anzac_Pueblo.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Arikara_sorted_markdup_recal.bam -O Arikara.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I HA124_sorted_markdup_recal.bam -O HA124.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I HA316_sorted_markdup_recal.bam -O HA316.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I HA404_sorted_markdup_recal.bam -O HA404.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I HA433_sorted_markdup_recal.bam -O HA433.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I HA442_sorted_markdup_recal.bam -O HA442.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I HA821_sorted_markdup_recal.bam -O HA821.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I HA89_sorted_markdup_recal.bam -O HA89.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Havasupai_sorted_markdup_recal.bam -O Havasupai.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Hidatsa1_sorted_markdup_recal.bam -O Hidatsa1.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Hopi_sorted_markdup_recal.bam -O Hopi.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Hopi_PPN285_sorted_markdup_recal.bam -O Hopi_PPN285.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Laguna_Pueblo_sorted_markdup_recal.bam -O Laguna_Pueblo.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Mandan2_sorted_markdup_recal.bam -O Mandan2.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I MexCult1_sorted_markdup_recal.bam -O MexCult1.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I MexCult14_sorted_markdup_recal.bam -O MexCult14.g.vcf.gz -ERC GVCF

# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I MexCult15_sorted_markdup_recal.bam -O MexCult15.g.vcf.gz -ERC GVCF

# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I MexCult3_sorted_markdup_recal.bam -O MexCult3.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I MexCult6_sorted_markdup_recal.bam -O MexCult6.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I MexCult7_sorted_markdup_recal.bam -O MexCult7.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I MexCult9_sorted_markdup_recal.bam -O MexCult9.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I PPN046_sorted_markdup_recal.bam -O PPN046.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I PPN083_sorted_markdup_recal.bam -O PPN083.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I PPN255_Manchurian_sorted_markdup_recal.bam -O PPN255_Manchurian.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I PPN262_sorted_markdup_recal.bam -O PPN262.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Pueblo_sorted_markdup_recal.bam -O Pueblo.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA271_sorted_markdup_recal.bam -O RHA271.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA309_sorted_markdup_recal.bam -O RHA309.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA311_sorted_markdup_recal.bam -O RHA311.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA328_sorted_markdup_recal.bam -O RHA328.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA355_sorted_markdup_recal.bam -O RHA355.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA358_sorted_markdup_recal.bam -O RHA358.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA408_sorted_markdup_recal.bam -O RHA408.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA426_sorted_markdup_recal.bam -O RHA426.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I RHA857_sorted_markdup_recal.bam -O RHA857.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I SF33_sorted_markdup_recal.bam -O SF33.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Seneca_sorted_markdup_recal.bam -O Seneca.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I VIR847_sorted_markdup_recal.bam -O VIR847.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I Zuni_sorted_markdup_recal.bam -O Zuni.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann01-cwIA_sorted_markdup_recal.bam -O ann01-cwIA_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann04-nwAR_sorted_markdup_recal.bam -O ann04-nwAR_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann05-ccNM_sorted_markdup_recal.bam -O ann05-ccNM_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann06-seWY_sorted_markdup_recal.bam -O ann06-seWY_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann08-ceTN_sorted_markdup_recal.bam -O ann08-ceTN_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann10-ccIL_sorted_markdup_recal.bam -O ann10-ccIL_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann20-seAZ_sorted_markdup_recal.bam -O ann20-seAZ_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann28-swSK_sorted_markdup_recal.bam -O ann28-swSK_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann29-neSD_sorted_markdup_recal.bam -O ann29-neSD_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann34-cwKS_sorted_markdup_recal.bam -O ann34-cwKS_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann39-ncNE_sorted_markdup_recal.bam -O ann39-ncNE_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I ann44-ccCA_sorted_markdup_recal.bam -O ann44-ccCA_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annIA_sorted_markdup_recal.bam -O annIA.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annIA1W-1_sorted_markdup_recal.bam -O annIA1W-1_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annIA2W-17_sorted_markdup_recal.bam -O annIA2W-17_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annKS_sorted_markdup_recal.bam -O annKS.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annKS1W-27_sorted_markdup_recal.bam -O annKS1W-27_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annKS2W-35_sorted_markdup_recal.bam -O annKS2W-35_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annMB1W-40_sorted_markdup_recal.bam -O annMB1W-40_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annMO1W-39_sorted_markdup_recal.bam -O annMO1W-39_dedup.table
# 
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annND1W-6_sorted_markdup_recal.bam -O annND1W-6_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annNM_sorted_markdup_recal.bam -O annNM.g.vcf.gz -ERC GVCF
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annSD1W-35_sorted_markdup_recal.bam -O annSD1W-35_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annSD2W-18_sorted_markdup_recal.bam -O annSD2W-18_dedup.table
# 
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annSK1W-Q_sorted_markdup_recal.bam -O annSK1W-Q_dedup.table
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230_no_Chr00.fasta -I annWY_sorted_markdup_recal.bam -O annWY.g.vcf.gz -ERC GVCF
# 
# 
# 
