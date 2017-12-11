#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK_variant_calling/fastq/
#SBATCH -J catfastq8
#SBATCH --partition=vector
#SBATCH --mem=36000
#SBATCH --qos=vector_batch
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq8.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq8.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-4
# zcat HI.1253.007.Index_2.PI432521_R1.fastq.gz HI.1253.006.Index_2.PI432521_R1.fastq.gz HI.1253.005.Index_2.PI432521_R1.fastq.gz > Anzac_Pueblo_R1.fastq.gz
# zcat HI.1251.006.Index_21.PI369357_R1.fastq.gz HI.1251.005.Index_21.PI369357_R1.fastq.gz > Arikara_R1.fastq.gz
# zcat HI.1251.006.Index_22.PI369358_R1.fastq.gz HI.1251.005.Index_22.PI369358_R1.fastq.gz > Havasupai_R1.fastq.gz
# zcat HI.1253.007.Index_5.PI600720_R1.fastq.gz HI.1253.006.Index_5.PI600720_R1.fastq.gz HI.1253.005.Index_5.PI600720_R1.fastq.gz > Hidatsa1_R1.fastq.gz
# zcat HI.1251.006.Index_25.PI432505_R1.fastq.gz HI.1251.005.Index_25.PI432505_R1.fastq.gz > Hopi_R1.fastq.gz
# zcat HI.1253.007.Index_3.PI432522_R1.fastq.gz HI.1253.006.Index_3.PI432522_R1.fastq.gz HI.1253.005.Index_3.PI432522_R1.fastq.gz > Laguna_Pueblo_R1.fastq.gz
# zcat HI.1253.007.Index_4.PI600718_R1.fastq.gz HI.1253.006.Index_4.PI600718_R1.fastq.gz HI.1253.005.Index_4.PI600718_R1.fastq.gz > Mandan2_R1.fastq.gz
# zcat HI.0913.006.Index_16.MexCult14_R1.fastq.gz HI.0913.005.Index_16.MexCult14_R1.fastq.gz > MexCult14_R1.fastq.gz
# zcat HI.0913.006.Index_18.MexCult15_R1.fastq.gz HI.0913.005.Index_18.MexCult15_R1.fastq.gz > MexCult15_R1.fastq.gz
# zcat HI.0810.006.Index_12.MexCult3_R1.fastq.gz HI.0810.005.Index_12.MexCult3_R1.fastq.gz > MexCult3_R1.fastq.gz
# zcat HI.0810.006.Index_13.MexCult6_R1.fastq.gz HI.0810.005.Index_13.MexCult6_R1.fastq.gz > MexCult6_R1.fastq.gz
# zcat HI.0810.006.Index_14.MexCult7_R1.fastq.gz HI.0810.005.Index_14.MexCult7_R1.fastq.gz > MexCult7_R1.fastq.gz
# zcat HI.0810.006.Index_15.MexCult9_R1.fastq.gz HI.0810.005.Index_15.MexCult9_R1.fastq.gz > MexCult9_R1.fastq.gz
# zcat HI.1253.007.Index_1.PI432516_R1.fastq.gz HI.1253.006.Index_1.PI432516_R1.fastq.gz HI.1253.005.Index_1.PI432516_R1.fastq.gz > Pueblo_R1.fastq.gz
# zcat HI.1251.006.Index_23.PI369360_R1.fastq.gz HI.1251.005.Index_23.PI369360_R1.fastq.gz > Seneca_R1.fastq.gz
# zcat HI.1253.007.Index_27.PI432515_R1.fastq.gz HI.1253.006.Index_27.PI432515_R1.fastq.gz HI.1253.005.Index_27.PI432515_R1.fastq.gz > Zuni_R1.fastq.gz
# zcat HI.1253.007.Index_2.PI432521_R2.fastq.gz HI.1253.006.Index_2.PI432521_R2.fastq.gz HI.1253.005.Index_2.PI432521_R2.fastq.gz > Anzac_Pueblo_R2.fastq.gz
# zcat HI.1251.006.Index_21.PI369357_R2.fastq.gz HI.1251.005.Index_21.PI369357_R2.fastq.gz > Arikara_R2.fastq.gz
# zcat HI.1251.006.Index_22.PI369358_R2.fastq.gz HI.1251.005.Index_22.PI369358_R2.fastq.gz > Havasupai_R2.fastq.gz
# zcat HI.1253.007.Index_5.PI600720_R2.fastq.gz HI.1253.006.Index_5.PI600720_R2.fastq.gz HI.1253.005.Index_5.PI600720_R2.fastq.gz > Hidatsa1_R2.fastq.gz
# zcat HI.1251.006.Index_25.PI432505_R2.fastq.gz HI.1251.005.Index_25.PI432505_R2.fastq.gz > Hopi_R2.fastq.gz
# zcat HI.1253.007.Index_3.PI432522_R2.fastq.gz HI.1253.006.Index_3.PI432522_R2.fastq.gz HI.1253.005.Index_3.PI432522_R2.fastq.gz > Laguna_Pueblo_R2.fastq.gz
# zcat HI.1253.007.Index_4.PI600718_R2.fastq.gz HI.1253.006.Index_4.PI600718_R2.fastq.gz HI.1253.005.Index_4.PI600718_R2.fastq.gz > Mandan2_R2.fastq.gz
# zcat HI.0913.006.Index_16.MexCult14_R2.fastq.gz HI.0913.005.Index_16.MexCult14_R2.fastq.gz > MexCult14_R2.fastq.gz
# zcat HI.0913.006.Index_18.MexCult15_R2.fastq.gz HI.0913.005.Index_18.MexCult15_R2.fastq.gz > MexCult15_R2.fastq.gz
# zcat HI.0810.006.Index_12.MexCult3_R2.fastq.gz HI.0810.005.Index_12.MexCult3_R2.fastq.gz > MexCult3_R2.fastq.gz
# zcat HI.0810.006.Index_13.MexCult6_R2.fastq.gz HI.0810.005.Index_13.MexCult6_R2.fastq.gz > MexCult6_R2.fastq.gz
# zcat HI.0810.006.Index_14.MexCult7_R2.fastq.gz HI.0810.005.Index_14.MexCult7_R2.fastq.gz > MexCult7_R2.fastq.gz
zcat HI.0810.006.Index_15.MexCult9_R2.fastq.gz HI.0810.005.Index_15.MexCult9_R2.fastq.gz > MexCult9_R2.fastq.gz
zcat HI.1253.007.Index_1.PI432516_R2.fastq.gz HI.1253.006.Index_1.PI432516_R2.fastq.gz HI.1253.005.Index_1.PI432516_R2.fastq.gz > Pueblo_R2.fastq.gz
zcat HI.1251.006.Index_23.PI369360_R2.fastq.gz HI.1251.005.Index_23.PI369360_R2.fastq.gz > Seneca_R2.fastq.gz
zcat HI.1253.007.Index_27.PI432515_R2.fastq.gz HI.1253.006.Index_27.PI432515_R2.fastq.gz HI.1253.005.Index_27.PI432515_R2.fastq.gz > Zuni_R2.fastq.gz
