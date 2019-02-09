#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J varcal38
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=170:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/variant_cal38.out
#SBATCH -e /global/home/users/makman/GATK/outs/variant_cal38.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann06-seWY_sorted_markdup_readGroup.bam -O ann06-seWY.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann08-ceTN_sorted_markdup_readGroup.bam -O ann08-ceTN.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann34-cwKS_sorted_markdup_readGroup.bam -O ann34-cwKS.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann39-ncNE_sorted_markdup_readGroup.bam -O ann39-ncNE.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annIA_sorted_markdup_readGroup.bam -O annIA.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annKS_sorted_markdup_readGroup.bam -O annKS.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1516_sorted_markdup_readGroup.bam -O annMex_A1516.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1517_sorted_markdup_readGroup.bam -O annMex_A1517.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1572_sorted_markdup_readGroup.bam -O annMex_A1572.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1574_sorted_markdup_readGroup.bam -O annMex_A1574.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_Ann261_sorted_markdup_readGroup.bam -O annMex_Ann261.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMO1W-39_sorted_markdup_readGroup.bam -O annMO1W-39.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annND1W-6_sorted_markdup_readGroup.bam -O annND1W-6.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annSD1W-35_sorted_markdup_readGroup.bam -O annSD1W-35.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annSD2W-18_sorted_markdup_readGroup.bam -O annSD2W-18.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Anzac_Pueblo_sorted_markdup_readGroup.bam -O Anzac_Pueblo.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Arikara_sorted_markdup_readGroup.bam -O Arikara.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA124_sorted_markdup_readGroup.bam -O HA124.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA316_sorted_markdup_readGroup.bam -O HA316.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA404_sorted_markdup_readGroup.bam -O HA404.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA442_sorted_markdup_readGroup.bam -O HA442.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA89_sorted_markdup_readGroup.bam -O HA89.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Havasupai_sorted_markdup_readGroup.bam -O Havasupai.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hidatsa1_sorted_markdup_readGroup.bam -O Hidatsa1.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hopi_sorted_markdup_readGroup.bam -O Hopi.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hopi_PPN285_sorted_markdup_readGroup.bam -O Hopi_PPN285.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hopi_mapping_parent_sorted_markdup_readGroup.bam -O Hopi_mapping_parent.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hopi_other_sorted_markdup_readGroup.bam -O Hopi_other.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Laguna_Pueblo_sorted_markdup_readGroup.bam -O Laguna_Pueblo.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Mandan1_sorted_markdup_readGroup.bam -O Mandan1.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Mandan2_sorted_markdup_readGroup.bam -O Mandan2.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult3_sorted_markdup_readGroup.bam -O MexCult3.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult6_sorted_markdup_readGroup.bam -O MexCult6.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult7_sorted_markdup_readGroup.bam -O MexCult7.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Pueblo_sorted_markdup_readGroup.bam -O Pueblo.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA271_sorted_markdup_readGroup.bam -O RHA271.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA309_sorted_markdup_readGroup.bam -O RHA309.g.vcf.gz -ERC BP_RESOLUTION
/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA328_sorted_markdup_readGroup.bam -O RHA328.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA408_sorted_markdup_readGroup.bam -O RHA408.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA426_sorted_markdup_readGroup.bam -O RHA426.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA857_sorted_markdup_readGroup.bam -O RHA857.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Seneca_sorted_markdup_readGroup.bam -O Seneca.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Zuni_sorted_markdup_readGroup.bam -O Zuni.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann01-cwIA_sorted_markdup_readGroup.bam -O ann01-cwIA.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann04-nwAR_sorted_markdup_readGroup.bam -O ann04-nwAR.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann05-ccNM_sorted_markdup_readGroup.bam -O ann05-ccNM.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann10-ccIL_sorted_markdup_readGroup.bam -O ann10-ccIL.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann20-seAZ_sorted_markdup_readGroup.bam -O ann20-seAZ.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann29-neSD_sorted_markdup_readGroup.bam -O ann29-neSD.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann44-ccCA_sorted_markdup_readGroup.bam -O ann44-ccCA.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annKS1W-27_sorted_markdup_readGroup.bam -O annKS1W-27.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annNM_sorted_markdup_readGroup.bam -O annNM.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annSK1W-Q_sorted_markdup_readGroup.bam -O annSK1W-Q.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annWY_sorted_markdup_readGroup.bam -O annWY.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Ari_broa_sorted_markdup_readGroup.bam -O Ari_broa.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Ari_Mand_sorted_markdup_readGroup.bam -O Ari_Mand.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA433_sorted_markdup_readGroup.bam -O HA433.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult1_sorted_markdup_readGroup.bam -O MexCult1.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult14_sorted_markdup_readGroup.bam -O MexCult14.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult9_sorted_markdup_readGroup.bam -O MexCult9.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Paiute_sorted_markdup_readGroup.bam -O Paiute.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA358_sorted_markdup_readGroup.bam -O RHA358.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Se_purp_sorted_markdup_readGroup.bam -O Se_purp.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Se_strip_sorted_markdup_readGroup.bam -O Se_strip.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Se137749_sorted_markdup_readGroup.bam -O Se137749.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA207_sorted_markdup_readGroup.bam -O HA207.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA259_sorted_markdup_readGroup.bam -O HA259.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA314_sorted_markdup_readGroup.bam -O HA314.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA323_sorted_markdup_readGroup.bam -O HA323.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA380_sorted_markdup_readGroup.bam -O HA380.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA310_sorted_markdup_readGroup.bam -O RHA310.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA324_sorted_markdup_readGroup.bam -O RHA324.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA354_sorted_markdup_readGroup.bam -O RHA354.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA362_sorted_markdup_readGroup.bam -O RHA362.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA397_sorted_markdup_readGroup.bam -O RHA397.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I _sorted_markdup_readGroup.bam -O .g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann1238_sorted_markdup_readGroup.bam -O ann1238.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann28-swSK_sorted_markdup_readGroup.bam -O ann28-swSK.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annIA1W-1_sorted_markdup_readGroup.bam -O annIA1W-1.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annIA2W-17_sorted_markdup_readGroup.bam -O annIA2W-17.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annKS2W-35_sorted_markdup_readGroup.bam -O annKS2W-35.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMB1W-40_sorted_markdup_readGroup.bam -O annMB1W-40.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA821_sorted_markdup_readGroup.bam -O HA821.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult15_sorted_markdup_readGroup.bam -O MexCult15.g.vcf.gz -ERC BP_RESOLUTION
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I SF33_sorted_markdup_readGroup.bam -O SF33.g.vcf.gz -ERC BP_RESOLUTION
