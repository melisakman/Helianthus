#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/raw
#SBATCH -J catfastq2
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=36000
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq2.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# zcat HI.1253.007.Index_2.PI432521_R1.fastq.gz HI.1253.006.Index_2.PI432521_R1.fastq.gz HI.1253.005.Index_2.PI432521_R1.fastq.gz > ready/Anzac_Pueblo_R1.fastq
# zcat HI.1251.006.Index_21.PI369357_R1.fastq.gz HI.1251.005.Index_21.PI369357_R1.fastq.gz > ready/Arikara_R1.fastq
# zcat HI.1251.006.Index_22.PI369358_R1.fastq.gz HI.1251.005.Index_22.PI369358_R1.fastq.gz > ready/Havasupai_R1.fastq
# zcat HI.1253.007.Index_5.PI600720_R1.fastq.gz HI.1253.006.Index_5.PI600720_R1.fastq.gz HI.1253.005.Index_5.PI600720_R1.fastq.gz > ready/Hidatsa1_R1.fastq

zcat HI.1251.006.Index_25.PI432505_R1.fastq.gz HI.1251.005.Index_25.PI432505_R1.fastq.gz > ready/Hopi_R1.fastq

zcat HI.1253.007.Index_3.PI432522_R1.fastq.gz HI.1253.006.Index_3.PI432522_R1.fastq.gz HI.1253.005.Index_3.PI432522_R1.fastq.gz > ready/Laguna_Pueblo_R1.fastq

zcat HI.1253.007.Index_4.PI600718_R1.fastq.gz HI.1253.006.Index_4.PI600718_R1.fastq.gz HI.1253.005.Index_4.PI600718_R1.fastq.gz > ready/Mandan2_R1.fastq

zcat HI.0913.006.Index_16.MexCult14_R1.fastq.gz HI.0913.005.Index_16.MexCult14_R1.fastq.gz > ready/MexCult14_R1.fastq

# zcat HI.0913.006.Index_18.MexCult15_R1.fastq.gz HI.0913.005.Index_18.MexCult15_R1.fastq.gz > ready/MexCult15_R1.fastq
# zcat HI.0810.006.Index_12.MexCult3_R1.fastq.gz HI.0810.005.Index_12.MexCult3_R1.fastq.gz > ready/MexCult3_R1.fastq
# zcat HI.0810.006.Index_13.MexCult6_R1.fastq.gz HI.0810.005.Index_13.MexCult6_R1.fastq.gz > ready/MexCult6_R1.fastq
# zcat HI.0810.006.Index_14.MexCult7_R1.fastq.gz HI.0810.005.Index_14.MexCult7_R1.fastq.gz > ready/MexCult7_R1.fastq
# zcat HI.0810.006.Index_15.MexCult9_R1.fastq.gz HI.0810.005.Index_15.MexCult9_R1.fastq.gz > ready/MexCult9_R1.fastq
# zcat HI.1253.007.Index_1.PI432516_R1.fastq.gz HI.1253.006.Index_1.PI432516_R1.fastq.gz HI.1253.005.Index_1.PI432516_R1.fastq.gz > ready/Pueblo_R1.fastq
# zcat HI.1251.006.Index_23.PI369360_R1.fastq.gz HI.1251.005.Index_23.PI369360_R1.fastq.gz > ready/Seneca_R1.fastq
# zcat HI.1253.007.Index_27.PI432515_R1.fastq.gz HI.1253.006.Index_27.PI432515_R1.fastq.gz HI.1253.005.Index_27.PI432515_R1.fastq.gz > ready/Zuni_R1.fastq
# zcat HI.1253.007.Index_2.PI432521_R2.fastq.gz HI.1253.006.Index_2.PI432521_R2.fastq.gz HI.1253.005.Index_2.PI432521_R2.fastq.gz > ready/Anzac_Pueblo_R2.fastq
# zcat HI.1251.006.Index_21.PI369357_R2.fastq.gz HI.1251.005.Index_21.PI369357_R2.fastq.gz > ready/Arikara_R2.fastq
# zcat HI.1251.006.Index_22.PI369358_R2.fastq.gz HI.1251.005.Index_22.PI369358_R2.fastq.gz > ready/Havasupai_R2.fastq
# zcat HI.1253.007.Index_5.PI600720_R2.fastq.gz HI.1253.006.Index_5.PI600720_R2.fastq.gz HI.1253.005.Index_5.PI600720_R2.fastq.gz > ready/Hidatsa1_R2.fastq
# zcat HI.1251.006.Index_25.PI432505_R2.fastq.gz HI.1251.005.Index_25.PI432505_R2.fastq.gz > ready/Hopi_R2.fastq
# zcat HI.1253.007.Index_3.PI432522_R2.fastq.gz HI.1253.006.Index_3.PI432522_R2.fastq.gz HI.1253.005.Index_3.PI432522_R2.fastq.gz > ready/Laguna_Pueblo_R2.fastq
# zcat HI.1253.007.Index_4.PI600718_R2.fastq.gz HI.1253.006.Index_4.PI600718_R2.fastq.gz HI.1253.005.Index_4.PI600718_R2.fastq.gz > ready/Mandan2_R2.fastq
# zcat HI.0913.006.Index_16.MexCult14_R2.fastq.gz HI.0913.005.Index_16.MexCult14_R2.fastq.gz > ready/MexCult14_R2.fastq
# zcat HI.0913.006.Index_18.MexCult15_R2.fastq.gz HI.0913.005.Index_18.MexCult15_R2.fastq.gz > ready/MexCult15_R2.fastq
# zcat HI.0810.006.Index_12.MexCult3_R2.fastq.gz HI.0810.005.Index_12.MexCult3_R2.fastq.gz > ready/MexCult3_R2.fastq
# zcat HI.0810.006.Index_13.MexCult6_R2.fastq.gz HI.0810.005.Index_13.MexCult6_R2.fastq.gz > ready/MexCult6_R2.fastq
# zcat HI.0810.006.Index_14.MexCult7_R2.fastq.gz HI.0810.005.Index_14.MexCult7_R2.fastq.gz > ready/MexCult7_R2.fastq
# zcat HI.0810.006.Index_15.MexCult9_R2.fastq.gz HI.0810.005.Index_15.MexCult9_R2.fastq.gz > ready/MexCult9_R2.fastq
# zcat HI.1253.007.Index_1.PI432516_R2.fastq.gz HI.1253.006.Index_1.PI432516_R2.fastq.gz HI.1253.005.Index_1.PI432516_R2.fastq.gz > ready/Pueblo_R2.fastq
# zcat HI.1251.006.Index_23.PI369360_R2.fastq.gz HI.1251.005.Index_23.PI369360_R2.fastq.gz > ready/Seneca_R2.fastq
# zcat HI.1253.007.Index_27.PI432515_R2.fastq.gz HI.1253.006.Index_27.PI432515_R2.fastq.gz HI.1253.005.Index_27.PI432515_R2.fastq.gz > ready/Zuni_R2.fastq
