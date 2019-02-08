#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J RG16
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/readgroups16.out
#SBATCH -e /global/home/users/makman/GATK/outs/readgroups16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0 
module load java

# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann06-seWY_sorted_markdup.bam O=ann06-seWY_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann06-seWY RGID=ann06-seWY
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann08-ceTN_sorted_markdup.bam O=ann08-ceTN_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann08-ceTN RGID=ann08-ceTN
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann34-cwKS_sorted_markdup.bam O=ann34-cwKS_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann34-cwKS RGID=ann34-cwKS
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann39-ncNE_sorted_markdup.bam O=ann39-ncNE_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann39-ncNE RGID=ann39-ncNE
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annIA_sorted_markdup.bam O=annIA_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA RGID=annIA
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annKS_sorted_markdup.bam O=annKS_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS RGID=annKS
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMex_A1516_sorted_markdup.bam O=annMex_A1516_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMex_A1516 RGID=annMex_A1516
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMex_A1517_sorted_markdup.bam O=annMex_A1517_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMex_A1517 RGID=annMex_A1517
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMex_A1572_sorted_markdup.bam O=annMex_A1572_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMex_A1572 RGID=annMex_A1572
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMex_A1574_sorted_markdup.bam O=annMex_A1574_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMex_A1574 RGID=annMex_A1574
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMex_Ann261_sorted_markdup.bam O=annMex_Ann261_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMex_Ann261 RGID=annMex_Ann261
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMO1W-39_sorted_markdup.bam O=annMO1W-39_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMO1W-39 RGID=annMO1W-39
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annND1W-6_sorted_markdup.bam O=annND1W-6_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annND1W-6 RGID=annND1W-6
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annSD1W-35_sorted_markdup.bam O=annSD1W-35_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSD1W-35 RGID=annSD1W-35
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annSD2W-18_sorted_markdup.bam O=annSD2W-18_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSD2W-18 RGID=annSD2W-18
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Anzac_Pueblo_sorted_markdup.bam O=Anzac_Pueblo_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Anzac_Pueblo RGID=Anzac_Pueblo
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Arikara_sorted_markdup.bam O=Arikara_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Arikara RGID=Arikara
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA124_sorted_markdup.bam O=HA124_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA124 RGID=HA124
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA316_sorted_markdup.bam O=HA316_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA316 RGID=HA316
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA404_sorted_markdup.bam O=HA404_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA404 RGID=HA404
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA442_sorted_markdup.bam O=HA442_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA442 RGID=HA442
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA89_sorted_markdup.bam O=HA89_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA89 RGID=HA89
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Havasupai_sorted_markdup.bam O=Havasupai_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Havasupai RGID=Havasupai
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Hidatsa1_sorted_markdup.bam O=Hidatsa1_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hidatsa1 RGID=Hidatsa1
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Hopi_sorted_markdup.bam O=Hopi_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi RGID=Hopi
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Hopi_PPN285_sorted_markdup.bam O=Hopi_PPN285_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi_PPN285 RGID=Hopi_PPN285
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Hopi_real_sorted_markdup.bam O=Hopi_real_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi_real RGID=Hopi_real
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Laguna_Pueblo_sorted_markdup.bam O=Laguna_Pueblo_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Laguna_Pueblo RGID=Laguna_Pueblo
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mandan1_sorted_markdup.bam O=Mandan1_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mandan1 RGID=Mandan1
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mandan2_sorted_markdup.bam O=Mandan2_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mandan2 RGID=Mandan2
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult3_sorted_markdup.bam O=MexCult3_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult3 RGID=MexCult3
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult6_sorted_markdup.bam O=MexCult6_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult6 RGID=MexCult6
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult7_sorted_markdup.bam O=MexCult7_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult7 RGID=MexCult7
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Pueblo_sorted_markdup.bam O=Pueblo_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Pueblo RGID=Pueblo
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA271_sorted_markdup.bam O=RHA271_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA271 RGID=RHA271
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA309_sorted_markdup.bam O=RHA309_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA309 RGID=RHA309
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA328_sorted_markdup.bam O=RHA328_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA328 RGID=RHA328
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA408_sorted_markdup.bam O=RHA408_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA408 RGID=RHA408
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA426_sorted_markdup.bam O=RHA426_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA426 RGID=RHA426
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA857_sorted_markdup.bam O=RHA857_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA857 RGID=RHA857
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Seneca_sorted_markdup.bam O=Seneca_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Seneca RGID=Seneca
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Zuni_sorted_markdup.bam O=Zuni_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Zuni RGID=Zuni
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann01-cwIA_sorted_markdup.bam O=ann01-cwIA_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann01-cwIA RGID=ann01-cwIA
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann04-nwAR_sorted_markdup.bam O=ann04-nwAR_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann04-nwAR RGID=ann04-nwAR
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann05-ccNM_sorted_markdup.bam O=ann05-ccNM_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann05-ccNM RGID=ann05-ccNM
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann10-ccIL_sorted_markdup.bam O=ann10-ccIL_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann10-ccIL RGID=ann10-ccIL
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann20-seAZ_sorted_markdup.bam O=ann20-seAZ_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann20-seAZ RGID=ann20-seAZ
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann29-neSD_sorted_markdup.bam O=ann29-neSD_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann29-neSD RGID=ann29-neSD
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann44-ccCA_sorted_markdup.bam O=ann44-ccCA_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann44-ccCA RGID=ann44-ccCA
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annKS1W-27_sorted_markdup.bam O=annKS1W-27_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS1W-27 RGID=annKS1W-27
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annNM_sorted_markdup.bam O=annNM_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annNM RGID=annNM
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annSK1W-Q_sorted_markdup.bam O=annSK1W-Q_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSK1W-Q RGID=annSK1W-Q
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annWY_sorted_markdup.bam O=annWY_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annWY RGID=annWY
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Ari_broa_sorted_markdup.bam O=Ari_broa_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Ari_broa RGID=Ari_broa
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Ari_Mand_sorted_markdup.bam O=Ari_Mand_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Ari_Mand RGID=Ari_Mand
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA433_sorted_markdup.bam O=HA433_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA433 RGID=HA433
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult1_sorted_markdup.bam O=MexCult1_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult1 RGID=MexCult1
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult14_sorted_markdup.bam O=MexCult14_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult14 RGID=MexCult14
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult9_sorted_markdup.bam O=MexCult9_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult9 RGID=MexCult9
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Paiute_sorted_markdup.bam O=Paiute_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Paiute RGID=Paiute
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA358_sorted_markdup.bam O=RHA358_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA358 RGID=RHA358
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Se_purp_sorted_markdup.bam O=Se_purp_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Se_purp RGID=Se_purp
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Se_strip_sorted_markdup.bam O=Se_strip_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Se_strip RGID=Se_strip
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Se137749_sorted_markdup.bam O=Se137749_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Se137749 RGID=Se137749
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA207_sorted_markdup.bam O=HA207_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA207 RGID=HA207
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA259_sorted_markdup.bam O=HA259_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA259 RGID=HA259
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA314_sorted_markdup.bam O=HA314_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA314 RGID=HA314
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA323_sorted_markdup.bam O=HA323_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA323 RGID=HA323
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA380_sorted_markdup.bam O=HA380_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA380 RGID=HA380
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA310_sorted_markdup.bam O=RHA310_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA310 RGID=RHA310
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA324_sorted_markdup.bam O=RHA324_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA324 RGID=RHA324
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA354_sorted_markdup.bam O=RHA354_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA354 RGID=RHA354
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA362_sorted_markdup.bam O=RHA362_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA362 RGID=RHA362
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA397_sorted_markdup.bam O=RHA397_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA397 RGID=RHA397
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=_sorted_markdup.bam O=_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM= RGID=
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann1238_sorted_markdup.bam O=ann1238_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann1238 RGID=ann1238
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann28-swSK_sorted_markdup.bam O=ann28-swSK_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann28-swSK RGID=ann28-swSK
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annIA1W-1_sorted_markdup.bam O=annIA1W-1_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA1W-1 RGID=annIA1W-1
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annIA2W-17_sorted_markdup.bam O=annIA2W-17_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA2W-17 RGID=annIA2W-17
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annKS2W-35_sorted_markdup.bam O=annKS2W-35_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS2W-35 RGID=annKS2W-35
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMB1W-40_sorted_markdup.bam O=annMB1W-40_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMB1W-40 RGID=annMB1W-40
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA821_sorted_markdup.bam O=HA821_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA821 RGID=HA821
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult15_sorted_markdup.bam O=MexCult15_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult15 RGID=MexCult15
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=SF33_sorted_markdup.bam O=SF33_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SF33 RGID=SF33
