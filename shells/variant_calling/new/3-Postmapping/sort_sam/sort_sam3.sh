#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J samsort3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sam_sort3.out
#SBATCH -e /global/home/users/makman/GATK/outs/sam_sort3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Anzac_Pueblo.sam OUTPUT=Anzac_Pueblo_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Arikara.sam OUTPUT=Arikara_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA124.sam OUTPUT=HA124_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA316.sam OUTPUT=HA316_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA404.sam OUTPUT=HA404_sorted.bam SORT_ORDER=coordinate 
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA433.sam OUTPUT=HA433_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA442.sam OUTPUT=HA442_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA821.sam OUTPUT=HA821_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=HA89.sam OUTPUT=HA89_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Havasupai.sam OUTPUT=Havasupai_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Hidatsa1.sam OUTPUT=Hidatsa1_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Hopi.sam OUTPUT=Hopi_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Hopi_dye.sam OUTPUT=Hopi_dye_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Hopi_mapping_parent.sa.sam OUTPUT=Hopi_mapping_parent.sa_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Hopi_other.sam OUTPUT=Hopi_other_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Laguna_Pueblo.sam OUTPUT=Laguna_Pueblo_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Mandan1.sam OUTPUT=Mandan1_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Mandan2.sam OUTPUT=Mandan2_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult1.sam OUTPUT=MexCult1_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult14.sam OUTPUT=MexCult14_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult3.sam OUTPUT=MexCult3_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult6.sam OUTPUT=MexCult6_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult7.sam OUTPUT=MexCult7_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult9.sam OUTPUT=MexCult9_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=PPN262.sam OUTPUT=PPN262_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Pueblo.sam OUTPUT=Pueblo_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA271.sam OUTPUT=RHA271_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA309.sam OUTPUT=RHA309_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA311.sam OUTPUT=RHA311_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA328.sam OUTPUT=RHA328_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA355.sam OUTPUT=RHA355_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA358.sam OUTPUT=RHA358_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA408.sam OUTPUT=RHA408_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA426.sam OUTPUT=RHA426_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=RHA857.sam OUTPUT=RHA857_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=SF33.sam OUTPUT=SF33_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Seneca.sam OUTPUT=Seneca_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=VIR847.sam OUTPUT=VIR847_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Zuni.sam OUTPUT=Zuni_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann06-seWY.sam OUTPUT=ann06-seWY_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann08-ceTN.sam OUTPUT=ann08-ceTN_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann28-swSK.sam OUTPUT=ann28-swSK_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann34-cwKS.sam OUTPUT=ann34-cwKS_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann39-ncNE.sam OUTPUT=ann39-ncNE_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annIA.sam OUTPUT=annIA_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annKS.sam OUTPUT=annKS_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annKS1W-27.sam OUTPUT=annKS1W-27_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annKS2W-35.sam OUTPUT=annKS2W-35_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMB1W-40.sam OUTPUT=annMB1W-40_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMO1W-39.sam OUTPUT=annMO1W-39_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMex_A1516.sam OUTPUT=annMex_A1516_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMex_A1517.sam OUTPUT=annMex_A1517_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMex_A1572.sam OUTPUT=annMex_A1572_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMex_A1574.sam OUTPUT=annMex_A1574_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annMex_Ann261.sam OUTPUT=annMex_Ann261_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annND1W-6.sam OUTPUT=annND1W-6_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annSD1W-35.sam OUTPUT=annSD1W-35_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annSD2W-18.sam OUTPUT=annSD2W-18_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annSK1W-Q.sam OUTPUT=annSK1W-Q_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annWY.sam OUTPUT=annWY_sorted.bam SORT_ORDER=coordinate 
# 
# 
# 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=MexCult15.sam OUTPUT=MexCult15_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=annNM.sam OUTPUT=annNM_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann1238.sam OUTPUT=ann1238_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann01-cwIA.sam OUTPUT=ann01-cwIA_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann04-nwAR.sam OUTPUT=ann04-nwAR_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann05-ccNM.sam OUTPUT=ann05-ccNM_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann10-ccIL.sam OUTPUT=ann10-ccIL_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann20-seAZ.sam OUTPUT=ann20-seAZ_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann29-neSD.sam OUTPUT=ann29-neSD_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=ann44-ccCA.sam OUTPUT=ann44-ccCA_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Ari_Mand.sam OUTPUT=Ari_Mand_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Ari_broa.sam OUTPUT=Ari_broa_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Paiute.sam OUTPUT=Paiute_sorted.bam SORT_ORDER=coordinate 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx54G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar SortSam INPUT=Se_purp.sam OUTPUT=Se_purp_sorted.bam SORT_ORDER=coordinate 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
