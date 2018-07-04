#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bams/
#SBATCH -J RG7
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/readgroups_freebayes7.out
#SBATCH -e /global/home/users/makman/GATK/outs/readgroups_freebayes7.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load picard/2.9.0

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Anzac_Pueblo_sorted_markdup_recal.bam O=Anzac_Pueblo_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Anzac_Pueblo RGID=Anzac_Pueblo
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Arikara_sorted_markdup_recal.bam O=Arikara_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Arikara RGID=Arikara
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA124_sorted_markdup_recal.bam O=HA124_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA124 RGID=HA124
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA316_sorted_markdup_recal.bam O=HA316_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA316 RGID=HA316
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA404_sorted_markdup_recal.bam O=HA404_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA404 RGID=HA404
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA433_sorted_markdup_recal.bam O=HA433_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA433 RGID=HA433
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA442_sorted_markdup_recal.bam O=HA442_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA442 RGID=HA442
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA821_sorted_markdup_recal.bam O=HA821_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA821 RGID=HA821
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=HA89_sorted_markdup_recal.bam O=HA89_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=HA89 RGID=HA89
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Havasupai_sorted_markdup_recal.bam O=Havasupai_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Havasupai RGID=Havasupai
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Hidatsa1_sorted_markdup_recal.bam O=Hidatsa1_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hidatsa1 RGID=Hidatsa1
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Hopi_sorted_markdup_recal.bam O=Hopi_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi RGID=Hopi
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Hopi_PPN285_sorted_markdup_recal.bam O=Hopi_PPN285_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Hopi_PPN285 RGID=Hopi_PPN285
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Laguna_Pueblo_sorted_markdup_recal.bam O=Laguna_Pueblo_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Laguna_Pueblo RGID=Laguna_Pueblo
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mandan2_sorted_markdup_recal.bam O=Mandan2_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mandan2 RGID=Mandan2
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult1_sorted_markdup_recal.bam O=MexCult1_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult1 RGID=MexCult1
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult14_sorted_markdup_recal.bam O=MexCult14_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult14 RGID=MexCult14
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult15_sorted_markdup_recal.bam O=MexCult15_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult15 RGID=MexCult15
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult3_sorted_markdup_recal.bam O=MexCult3_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult3 RGID=MexCult3
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult6_sorted_markdup_recal.bam O=MexCult6_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult6 RGID=MexCult6
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult7_sorted_markdup_recal.bam O=MexCult7_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult7 RGID=MexCult7
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=MexCult9_sorted_markdup_recal.bam O=MexCult9_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MexCult9 RGID=MexCult9
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=PPN046_sorted_markdup_recal.bam O=PPN046_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN046 RGID=PPN046
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=PPN083_sorted_markdup_recal.bam O=PPN083_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN083 RGID=PPN083
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=PPN255_Manchurian_sorted_markdup_recal.bam O=PPN255_Manchurian_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN255_Manchurian RGID=PPN255_Manchurian
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=PPN262_sorted_markdup_recal.bam O=PPN262_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=PPN262 RGID=PPN262
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Pueblo_sorted_markdup_recal.bam O=Pueblo_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Pueblo RGID=Pueblo
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA271_sorted_markdup_recal.bam O=RHA271_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA271 RGID=RHA271
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA309_sorted_markdup_recal.bam O=RHA309_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA309 RGID=RHA309
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA311_sorted_markdup_recal.bam O=RHA311_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA311 RGID=RHA311
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA328_sorted_markdup_recal.bam O=RHA328_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA328 RGID=RHA328
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA355_sorted_markdup_recal.bam O=RHA355_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA355 RGID=RHA355
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA358_sorted_markdup_recal.bam O=RHA358_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA358 RGID=RHA358
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA408_sorted_markdup_recal.bam O=RHA408_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA408 RGID=RHA408
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA426_sorted_markdup_recal.bam O=RHA426_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA426 RGID=RHA426
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=RHA857_sorted_markdup_recal.bam O=RHA857_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=RHA857 RGID=RHA857
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=SF33_sorted_markdup_recal.bam O=SF33_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SF33 RGID=SF33
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Seneca_sorted_markdup_recal.bam O=Seneca_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Seneca RGID=Seneca
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=VIR847_sorted_markdup_recal.bam O=VIR847_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=VIR847 RGID=VIR847
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Zuni_sorted_markdup_recal.bam O=Zuni_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Zuni RGID=Zuni
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann01-cwIA_sorted_markdup_recal.bam O=ann01-cwIA_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann01cwIA RGID=ann01-cwIA
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann04-nwAR_sorted_markdup_recal.bam O=ann04-nwAR_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann04nwAR RGID=ann04-nwAR
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann05-ccNM_sorted_markdup_recal.bam O=ann05-ccNM_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann05ccNM RGID=ann05-ccNM
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann06-seWY_sorted_markdup_recal.bam O=ann06-seWY_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann06seWY RGID=ann06-seWY
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann08-ceTN_sorted_markdup_recal.bam O=ann08-ceTN_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann08ceTN RGID=ann08-ceTN
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann10-ccIL_sorted_markdup_recal.bam O=ann10-ccIL_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann10ccIL RGID=ann10-ccIL
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann20-seAZ_sorted_markdup_recal.bam O=ann20-seAZ_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann20seAZ RGID=ann20-seAZ
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann28-swSK_sorted_markdup_recal.bam O=ann28-swSK_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann28swSK RGID=ann28-swSK
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann29-neSD_sorted_markdup_recal.bam O=ann29-neSD_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann29neSD RGID=ann29-neSD
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann34-cwKS_sorted_markdup_recal.bam O=ann34-cwKS_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann34cwKS RGID=ann34-cwKS
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann39-ncNE_sorted_markdup_recal.bam O=ann39-ncNE_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann39ncNE RGID=ann39-ncNE
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=ann44-ccCA_sorted_markdup_recal.bam O=ann44-ccCA_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ann44ccCA RGID=ann44-ccCA
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annIA_sorted_markdup_recal.bam O=annIA_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA RGID=annIA
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annIA1W-1_sorted_markdup_recal.bam O=annIA1W-1_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA1W1 RGID=annIA1W-1
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annIA2W-17_sorted_markdup_recal.bam O=annIA2W-17_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annIA2W17 RGID=annIA2W-17
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annKS_sorted_markdup_recal.bam O=annKS_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS RGID=annKS
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annKS1W-27_sorted_markdup_recal.bam O=annKS1W-27_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS1W27 RGID=annKS1W-27
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annKS2W-35_sorted_markdup_recal.bam O=annKS2W-35_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annKS2W35 RGID=annKS2W-35
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMB1W-40_sorted_markdup_recal.bam O=annMB1W-40_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMB1W40 RGID=annMB1W-40
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annMO1W-39_sorted_markdup_recal.bam O=annMO1W-39_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annMO1W39 RGID=annMO1W-39
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annND1W-6_sorted_markdup_recal.bam O=annND1W-6_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annND1W6 RGID=annND1W-6
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annNM_sorted_markdup_recal.bam O=annNM_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annNM RGID=annNM
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annSD1W-35_sorted_markdup_recal.bam O=annSD1W-35_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSD1W35 RGID=annSD1W-35
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annSD2W-18_sorted_markdup_recal.bam O=annSD2W-18_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSD2W18 RGID=annSD2W-18
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annSK1W-Q_sorted_markdup_recal.bam O=annSK1W-Q_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annSK1WQ RGID=annSK1W-Q
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=annWY_sorted_markdup_recal.bam O=annWY_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=annWY RGID=annWY
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Ari_Mand_sorted_markdup_recal.bam O=Ari_Mand_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Ari_Mand RGID=Ari_Mand
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Ari_broa_sorted_markdup_recal.bam O=Ari_broa_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Ari_broa RGID=Ari_broa
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Paiute_sorted_markdup_recal.bam O=Paiute_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Paiute RGID=Paiute
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Se137749_sorted_markdup_recal.bam O=Se137749_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Se137749 RGID=Se137749
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Se_purp_sorted_markdup_recal.bam O=Se_purp_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Se_purp RGID=Se_purp
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Se_strip_sorted_markdup_recal.bam O=Se_strip_sorted_markdup_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Se_strip RGID=Se_strip
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mex_A1516_sorted_markdup_readGroups_recal.bam O=Mex_A1516_sorted_markdup_readGroups_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1516 RGID=Mex_A1516
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mex_A1517_sorted_markdup_readGroups_recal.bam O=Mex_A1517_sorted_markdup_readGroups_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1517 RGID=Mex_A1517
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mex_A1572_sorted_markdup_readGroups_recal.bam O=Mex_A1572_sorted_markdup_readGroups_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1572 RGID=Mex_A1572
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mex_A1574_sorted_markdup_readGroups_recal.bam O=Mex_A1574_sorted_markdup_readGroups_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_A1574 RGID=Mex_A1574
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G -jar /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/picard/2.9.0/lib/picard.jar AddOrReplaceReadGroups I=Mex_Ann261_sorted_markdup_readGroups_recal.bam O=Mex_Ann261_sorted_markdup_readGroups_recal_RG.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=Mex_Ann261 RGID=Mex_Ann261


