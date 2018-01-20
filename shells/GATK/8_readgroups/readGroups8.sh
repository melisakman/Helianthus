#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J markdup1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=64000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/readgroups8.out
#SBATCH -e /global/home/users/makman/GATK/outs/readgroups8.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.4.1 

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Anzac_Pueblo_sorted_markdup.bam O=Anzac_Pueblo_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Anzac_Pueblo
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Arikara_sorted_markdup.bam O=Arikara_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Arikara
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HA124_sorted_markdup.bam O=HA124_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA124
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HA316_sorted_markdup.bam O=HA316_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA316
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HA404_sorted_markdup.bam O=HA404_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA404
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HA433_sorted_markdup.bam O=HA433_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA433
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HA442_sorted_markdup.bam O=HA442_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA442
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HA821_sorted_markdup.bam O=HA821_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA821
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HA89_sorted_markdup.bam O=HA89_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA89
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Havasupai_sorted_markdup.bam O=Havasupai_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Havasupai
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Hidatsa1_sorted_markdup.bam O=Hidatsa1_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hidatsa1
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Hopi_sorted_markdup.bam O=Hopi_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Hopi_PPN285_sorted_markdup.bam O=Hopi_PPN285_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi_PPN285
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Laguna_Pueblo_sorted_markdup.bam O=Laguna_Pueblo_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Laguna_Pueblo
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Mandan2_sorted_markdup.bam O=Mandan2_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mandan2
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MexCult1_sorted_markdup.bam O=MexCult1_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult1
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MexCult14_sorted_markdup.bam O=MexCult14_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult14
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MexCult15_sorted_markdup.bam O=MexCult15_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult15
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MexCult3_sorted_markdup.bam O=MexCult3_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult3
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MexCult6_sorted_markdup.bam O=MexCult6_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult6
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MexCult7_sorted_markdup.bam O=MexCult7_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult7
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MexCult9_sorted_markdup.bam O=MexCult9_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult9
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=PPN046_sorted_markdup.bam O=PPN046_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN046
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=PPN083_sorted_markdup.bam O=PPN083_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN083
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=PPN255_Manchurian_sorted_markdup.bam O=PPN255_Manchurian_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN255_Manchurian
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=PPN262_sorted_markdup.bam O=PPN262_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN262
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Pueblo_sorted_markdup.bam O=Pueblo_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Pueblo
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA271_sorted_markdup.bam O=RHA271_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA271
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA309_sorted_markdup.bam O=RHA309_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA309
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA311_sorted_markdup.bam O=RHA311_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA311
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA328_sorted_markdup.bam O=RHA328_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA328
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA355_sorted_markdup.bam O=RHA355_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA355
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA358_sorted_markdup.bam O=RHA358_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA358
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA408_sorted_markdup.bam O=RHA408_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA408
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA426_sorted_markdup.bam O=RHA426_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA426
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=RHA857_sorted_markdup.bam O=RHA857_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA857
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=SF33_sorted_markdup.bam O=SF33_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SF33
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Seneca_sorted_markdup.bam O=Seneca_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Seneca
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=VIR847_sorted_markdup.bam O=VIR847_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=VIR847
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Zuni_sorted_markdup.bam O=Zuni_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Zuni
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann01-cwIA_sorted_markdup.bam O=ann01-cwIA_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann01-cwIA
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann04-nwAR_sorted_markdup.bam O=ann04-nwAR_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann04-nwAR
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann05-ccNM_sorted_markdup.bam O=ann05-ccNM_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann05-ccNM
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann06-seWY_sorted_markdup.bam O=ann06-seWY_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann06-seWY
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann08-ceTN_sorted_markdup.bam O=ann08-ceTN_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann08-ceTN
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann10-ccIL_sorted_markdup.bam O=ann10-ccIL_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann10-ccIL
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann20-seAZ_sorted_markdup.bam O=ann20-seAZ_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann20-seAZ
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann28-swSK_sorted_markdup.bam O=ann28-swSK_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann28-swSK
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann29-neSD_sorted_markdup.bam O=ann29-neSD_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann29-neSD
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann34-cwKS_sorted_markdup.bam O=ann34-cwKS_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann34-cwKS
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann39-ncNE_sorted_markdup.bam O=ann39-ncNE_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann39-ncNE
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ann44-ccCA_sorted_markdup.bam O=ann44-ccCA_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann44-ccCA
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annIA_sorted_markdup.bam O=annIA_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annIA1W-1_sorted_markdup.bam O=annIA1W-1_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA1W-1
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annIA2W-17_sorted_markdup.bam O=annIA2W-17_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA2W-17
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annKS_sorted_markdup.bam O=annKS_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annKS1W-27_sorted_markdup.bam O=annKS1W-27_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS1W-27
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annKS2W-35_sorted_markdup.bam O=annKS2W-35_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS2W-35
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annMB1W-40_sorted_markdup.bam O=annMB1W-40_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMB1W-40
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annMO1W-39_sorted_markdup.bam O=annMO1W-39_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMO1W-39
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annND1W-6_sorted_markdup.bam O=annND1W-6_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annND1W-6
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annNM_sorted_markdup.bam O=annNM_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annNM
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annSD1W-35_sorted_markdup.bam O=annSD1W-35_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSD1W-35
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annSD2W-18_sorted_markdup.bam O=annSD2W-18_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSD2W-18
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annSK1W-Q_sorted_markdup.bam O=annSK1W-Q_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSK1W-Q
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=annWY_sorted_markdup.bam O=annWY_sorted_markdup_readGroup.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annWY

