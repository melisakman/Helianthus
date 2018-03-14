#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/ethno
#SBATCH -J Paiute
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fastqc_ethno.out
#SBATCH -e /global/home/users/makman/GATK/outs/fastqc_ethno.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load fastqc/0.11.7

fastqc Paiute/Paiute_USPD16084925-AK2950_HJHWVCCXY_L4_1.fq.gz
fastqc Paiute/Paiute_USPD16084925-AK2950_HJHWVCCXY_L4_2.fq.gz
fastqc Ari_broa/Ari_broa_USPD16084925-AK2959_HJHWVCCXY_L4_1.fq.gz
fastqc Ari_broa/Ari_broa_USPD16084925-AK2959_HJHWVCCXY_L4_2.fq.gz
fastqc Ari_Mand/Ari_Mand_USPD16084925-AK1650_HJHWVCCXY_L4_1.fq.gz
fastqc Ari_Mand/Ari_Mand_USPD16084925-AK1650_HJHWVCCXY_L4_2.fq.gz
fastqc Se_purp/Se_purp_USPD16084925-AK974_HJHWVCCXY_L4_1.fq.gz
fastqc Se_purp/Se_purp_USPD16084925-AK974_HJHWVCCXY_L4_2.fq.gz
fastqc Se_strip/Se_strip_USPD16084925-AK2942_HJHWVCCXY_L4_1.fq.gz
fastqc Se_strip/Se_strip_USPD16084925-AK2942_HJHWVCCXY_L4_2.fq.gz
fastqc Se137749/Se137749_USPD16084925-AK1073_HJHWVCCXY_L4_1.fq.gz
fastqc Se137749/Se137749_USPD16084925-AK1073_HJHWVCCXY_L4_2.fq.gz