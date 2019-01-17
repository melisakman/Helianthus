#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/ethno/
#SBATCH -J catfastqet
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/cat_fastq_et3.out
#SBATCH -e /global/home/users/makman/GATK/outs/cat_fastq_et3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


cp Ari_Mand/Ari_Mand_USPD16084925-AK1650_HJHWVCCXY_L4_1.fq.gz ../fastq/raw/ready/Ari_Mand_R1.fastq.gz
cp Ari_Mand/Ari_Mand_USPD16084925-AK1650_HJHWVCCXY_L4_2.fq.gz ../fastq/raw/ready/Ari_Mand_R1.fastq.gz
cp Ari_broa/Ari_broa_USPD16084925-AK2959_HJHWVCCXY_L4_1.fq.gz ../fastq/raw/ready/Ari_broa_R1.fastq.gz
cp Ari_broa/Ari_broa_USPD16084925-AK2959_HJHWVCCXY_L4_2.fq.gz ../fastq/raw/ready/Ari_broa_R2.fastq.gz
cp Paiute/Paiute_USPD16084925-AK2950_HJHWVCCXY_L4_1.fq.gz ../fastq/raw/ready/Paiute_R1.fastq.gz
cp Paiute/Paiute_USPD16084925-AK2950_HJHWVCCXY_L4_2.fq.gz ../fastq/raw/ready/Paiute_R2.fastq.gz
cp Se137749/Se137749_USPD16084925-AK1073_HJHWVCCXY_L4_1.fq.gz ../fastq/raw/ready/Se137749_R1.fastq.gz
cp Se137749/Se137749_USPD16084925-AK1073_HJHWVCCXY_L4_2.fq.gz ../fastq/raw/ready/Se137749_R2.fastq.gz
cp Se_purp/Se_purp_USPD16084925-AK974_HJHWVCCXY_L4_1.fq.gz ../fastq/raw/ready/Se_purp_R1.fastq.gz
cp Se_purp/Se_purp_USPD16084925-AK974_HJHWVCCXY_L4_2.fq.gz ../fastq/raw/ready/Se_purp_R2.fastq.gz
cp Se_strip/Se_strip_USPD16084925-AK2942_HJHWVCCXY_L4_1.fq.gz ../fastq/raw/ready/Se_strip_R1.fastq.gz
cp Se_strip/Se_strip_USPD16084925-AK2942_HJHWVCCXY_L4_2.fq.gz ../fastq/raw/ready/Se_strip_R2.fastq.gz


