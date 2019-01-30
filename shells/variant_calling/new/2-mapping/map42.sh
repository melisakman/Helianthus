#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_42
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=172:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map42.out
#SBATCH -e /global/home/users/makman/GATK/outs/map42.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Ari_broa_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Ari_broa_R2_trimmed.fastq.gz -o Ari_broa.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Ari_Mand_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Ari_Mand_R2_trimmed.fastq.gz -o Ari_Mand.sam
/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Paiute_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Paiute_R2_trimmed.fastq.gz -o Paiute.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Se_purp_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Se_purp_R2_trimmed.fastq.gz -o Se_purp.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Se_strip_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Se_strip_R2_trimmed.fastq.gz -o Se_strip.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Se137749_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Se137749_R2_trimmed.fastq.gz -o Se137749.sam
