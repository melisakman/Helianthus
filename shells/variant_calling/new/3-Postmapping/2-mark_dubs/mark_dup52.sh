#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J markdu52
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/mark_dups52.out
#SBATCH -e /global/home/users/makman/GATK/outs/mark_dups52.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann06-seWY_sorted.bam OUTPUT=ann06-seWY_sorted_markdup.bam METRICS_FILE=metrics_ann06-seWY.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann08-ceTN_sorted.bam OUTPUT=ann08-ceTN_sorted_markdup.bam METRICS_FILE=metrics_ann08-ceTN.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann34-cwKS_sorted.bam OUTPUT=ann34-cwKS_sorted_markdup.bam METRICS_FILE=metrics_ann34-cwKS.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann39-ncNE_sorted.bam OUTPUT=ann39-ncNE_sorted_markdup.bam METRICS_FILE=metrics_ann39-ncNE.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annIA_sorted.bam OUTPUT=annIA_sorted_markdup.bam METRICS_FILE=metrics_annIA.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annKS_sorted.bam OUTPUT=annKS_sorted_markdup.bam METRICS_FILE=metrics_annKS.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annMex_A151_sorted.bam OUTPUT=annMex_A151_sorted_markdup.bam METRICS_FILE=metrics_annMex_A151.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annMex_A151_sorted.bam OUTPUT=annMex_A151_sorted_markdup.bam METRICS_FILE=metrics_annMex_A151.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annMex_A157_sorted.bam OUTPUT=annMex_A157_sorted_markdup.bam METRICS_FILE=metrics_annMex_A157.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annMex_A157_sorted.bam OUTPUT=annMex_A157_sorted_markdup.bam METRICS_FILE=metrics_annMex_A157.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annMex_Ann2_sorted.bam OUTPUT=annMex_Ann2_sorted_markdup.bam METRICS_FILE=metrics_annMex_Ann2.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annMO1W-39_sorted.bam OUTPUT=annMO1W-39_sorted_markdup.bam METRICS_FILE=metrics_annMO1W-39.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annND1W-6_sorted.bam OUTPUT=annND1W-6_sorted_markdup.bam METRICS_FILE=metrics_annND1W-6.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annSD1W-35_sorted.bam OUTPUT=annSD1W-35_sorted_markdup.bam METRICS_FILE=metrics_annSD1W-35.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annSD2W-18_sorted.bam OUTPUT=annSD2W-18_sorted_markdup.bam METRICS_FILE=metrics_annSD2W-18.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Anzac_Puebl_sorted.bam OUTPUT=Anzac_Puebl_sorted_markdup.bam METRICS_FILE=metrics_Anzac_Puebl.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Arikara_sorted.bam OUTPUT=Arikara_sorted_markdup.bam METRICS_FILE=metrics_Arikara.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA124_sorted.bam OUTPUT=HA124_sorted_markdup.bam METRICS_FILE=metrics_HA124.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA316_sorted.bam OUTPUT=HA316_sorted_markdup.bam METRICS_FILE=metrics_HA316.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA404_sorted.bam OUTPUT=HA404_sorted_markdup.bam METRICS_FILE=metrics_HA404.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA442_sorted.bam OUTPUT=HA442_sorted_markdup.bam METRICS_FILE=metrics_HA442.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA89_sorted.bam OUTPUT=HA89_sorted_markdup.bam METRICS_FILE=metrics_HA89.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Havasupai_sorted.bam OUTPUT=Havasupai_sorted_markdup.bam METRICS_FILE=metrics_Havasupai.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Hidatsa1_sorted.bam OUTPUT=Hidatsa1_sorted_markdup.bam METRICS_FILE=metrics_Hidatsa1.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Hopi_sorted.bam OUTPUT=Hopi_sorted_markdup.bam METRICS_FILE=metrics_Hopi.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Hopi_dye_sorted.bam OUTPUT=Hopi_dye_sorted_markdup.bam METRICS_FILE=metrics_Hopi_dye.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Hopi_mapping_parent_sorted.bam OUTPUT=Hopi_mapping_parent_sorted_markdup.bam METRICS_FILE=metrics_Hopi_mapping_parent.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Hopi_other_sorted.bam OUTPUT=Hopi_other_sorted_markdup.bam METRICS_FILE=metrics_Hopi_other.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Laguna_Pueblo_sorted.bam OUTPUT=Laguna_Pueblo_sorted_markdup.bam METRICS_FILE=metrics_Laguna_Pueblo.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Mandan1_sorted.bam OUTPUT=Mandan1_sorted_markdup.bam METRICS_FILE=metrics_Mandan1.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Mandan2_sorted.bam OUTPUT=Mandan2_sorted_markdup.bam METRICS_FILE=metrics_Mandan2.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=MexCult3_sorted.bam OUTPUT=MexCult3_sorted_markdup.bam METRICS_FILE=metrics_MexCult3.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=MexCult6_sorted.bam OUTPUT=MexCult6_sorted_markdup.bam METRICS_FILE=metrics_MexCult6.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=MexCult7_sorted.bam OUTPUT=MexCult7_sorted_markdup.bam METRICS_FILE=metrics_MexCult7.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Pueblo_sorted.bam OUTPUT=Pueblo_sorted_markdup.bam METRICS_FILE=metrics_Pueblo.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA271_sorted.bam OUTPUT=RHA271_sorted_markdup.bam METRICS_FILE=metrics_RHA271.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA309_sorted.bam OUTPUT=RHA309_sorted_markdup.bam METRICS_FILE=metrics_RHA309.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA328_sorted.bam OUTPUT=RHA328_sorted_markdup.bam METRICS_FILE=metrics_RHA328.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA408_sorted.bam OUTPUT=RHA408_sorted_markdup.bam METRICS_FILE=metrics_RHA408.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA426_sorted.bam OUTPUT=RHA426_sorted_markdup.bam METRICS_FILE=metrics_RHA426.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA857_sorted.bam OUTPUT=RHA857_sorted_markdup.bam METRICS_FILE=metrics_RHA857.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Seneca_sorted.bam OUTPUT=Seneca_sorted_markdup.bam METRICS_FILE=metrics_Seneca.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Zuni_sorted.bam OUTPUT=Zuni_sorted_markdup.bam METRICS_FILE=metrics_Zuni.txt

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA433_sorted.bam OUTPUT=HA433_sorted_markdup.bam METRICS_FILE=metrics_HA433.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=MexCult1_sorted.bam OUTPUT=MexCult1_sorted_markdup.bam METRICS_FILE=metrics_MexCult1.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annSK1W-Q_sorted.bam OUTPUT=annSK1W-Q_sorted_markdup.bam METRICS_FILE=metrics_annSK1W-Q.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annWY_sorted.bam OUTPUT=annWY_sorted_markdup.bam METRICS_FILE=metrics_annWY.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann01-cwIA_sorted.bam OUTPUT=ann01-cwIA_sorted_markdup.bam METRICS_FILE=metrics_ann01-cwIA.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann04-nwAR_sorted.bam OUTPUT=ann04-nwAR_sorted_markdup.bam METRICS_FILE=metrics_ann04-nwAR.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann05-ccNM_sorted.bam OUTPUT=ann05-ccNM_sorted_markdup.bam METRICS_FILE=metrics_ann05-ccNM.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann10-ccIL_sorted.bam OUTPUT=ann10-ccIL_sorted_markdup.bam METRICS_FILE=metrics_ann10-ccIL.txt
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann20-seAZ_sorted.bam OUTPUT=ann20-seAZ_sorted_markdup.bam METRICS_FILE=metrics_ann20-seAZ.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann29-neSD_sorted.bam OUTPUT=ann29-neSD_sorted_markdup.bam METRICS_FILE=metrics_ann29-neSD.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann44-ccCA_sorted.bam OUTPUT=ann44-ccCA_sorted_markdup.bam METRICS_FILE=metrics_ann44-ccCA.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Ari_Mand_sorted.bam OUTPUT=Ari_Mand_sorted_markdup.bam METRICS_FILE=metrics_Ari_Mand.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Se_purp_sorted.bam OUTPUT=Se_purp_sorted_markdup.bam METRICS_FILE=metrics_Se_purp.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annKS1W-27_sorted.bam OUTPUT=annKS1W-27_sorted_markdup.bam METRICS_FILE=metrics_annKS1W-27.txt

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annNM_sorted.bam OUTPUT=annNM_sorted_markdup.bam METRICS_FILE=metrics_annNM.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Ari_broa_sorted.bam OUTPUT=Ari_broa_sorted_markdup.bam METRICS_FILE=metrics_Ari_broa.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=MexCult14_sorted.bam OUTPUT=MexCult14_sorted_markdup.bam METRICS_FILE=metrics_MexCult14.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=MexCult9_sorted.bam OUTPUT=MexCult9_sorted_markdup.bam METRICS_FILE=metrics_MexCult9.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Paiute_sorted.bam OUTPUT=Paiute_sorted_markdup.bam METRICS_FILE=metrics_Paiute.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA358_sorted.bam OUTPUT=RHA358_sorted_markdup.bam METRICS_FILE=metrics_RHA358.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Se_strip_sorted.bam OUTPUT=Se_strip_sorted_markdup.bam METRICS_FILE=metrics_Se_strip.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=Se137749_sorted.bam OUTPUT=Se137749_sorted_markdup.bam METRICS_FILE=metrics_Se137749.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA207_sorted.bam OUTPUT=HA207_sorted_markdup.bam METRICS_FILE=metrics_HA207.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA259_sorted.bam OUTPUT=HA259_sorted_markdup.bam METRICS_FILE=metrics_HA259.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA314_sorted.bam OUTPUT=HA314_sorted_markdup.bam METRICS_FILE=metrics_HA314.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA323_sorted.bam OUTPUT=HA323_sorted_markdup.bam METRICS_FILE=metrics_HA323.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA380_sorted.bam OUTPUT=HA380_sorted_markdup.bam METRICS_FILE=metrics_HA380.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA310_sorted.bam OUTPUT=RHA310_sorted_markdup.bam METRICS_FILE=metrics_RHA310.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA324_sorted.bam OUTPUT=RHA324_sorted_markdup.bam METRICS_FILE=metrics_RHA324.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA354_sorted.bam OUTPUT=RHA354_sorted_markdup.bam METRICS_FILE=metrics_RHA354.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA362_sorted.bam OUTPUT=RHA362_sorted_markdup.bam METRICS_FILE=metrics_RHA362.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=RHA397_sorted.bam OUTPUT=RHA397_sorted_markdup.bam METRICS_FILE=metrics_RHA397.txt
# 
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann1238_sorted.bam OUTPUT=ann1238_sorted_markdup.bam METRICS_FILE=metrics_ann1238.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=ann28-swSK_sorted.bam OUTPUT=ann28-swSK_sorted_markdup.bam METRICS_FILE=metrics_ann28-swSK.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annIA1W-1_sorted.bam OUTPUT=annIA1W-1_sorted_markdup.bam METRICS_FILE=metrics_annIA1W-1.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annIA2W-17_sorted.bam OUTPUT=annIA2W-17_sorted_markdup.bam METRICS_FILE=metrics_annIA2W-17.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annKS2W-35_sorted.bam OUTPUT=annKS2W-35_sorted_markdup.bam METRICS_FILE=metrics_annKS2W-35.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=annMB1W-40_sorted.bam OUTPUT=annMB1W-40_sorted_markdup.bam METRICS_FILE=metrics_annMB1W-40.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=HA821_sorted.bam OUTPUT=HA821_sorted_markdup.bam METRICS_FILE=metrics_HA821.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=MexCult15_sorted.bam OUTPUT=MexCult15_sorted_markdup.bam METRICS_FILE=metrics_MexCult15.txt
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar MarkDuplicates INPUT=SF33_sorted.bam OUTPUT=SF33_sorted_markdup.bam METRICS_FILE=metrics_SF33.txt
