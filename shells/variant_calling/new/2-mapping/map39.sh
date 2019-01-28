#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_39
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map39.out
#SBATCH -e /global/home/users/makman/GATK/outs/map39.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann01-cwIA_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann01-cwIA_R2_trimmed.fastq.gz -o ann01-cwIA.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann04-nwAR_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann04-nwAR_R2_trimmed.fastq.gz -o ann04-nwAR.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann05-ccNM_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann05-ccNM_R2_trimmed.fastq.gz -o ann05-ccNM.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann10-ccIL_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann10-ccIL_R2_trimmed.fastq.gz -o ann10-ccIL.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann20-seAZ_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann20-seAZ_R2_trimmed.fastq.gz -o ann20-seAZ.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann28-swSK_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann28-swSK_R2_trimmed.fastq.gz -o ann28-swSK.sam
/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann29-neSD_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann29-neSD_R2_trimmed.fastq.gz -o ann29-neSD.sam
/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann44-ccCA_trimmed_R1.fastq.gz -2 ../fastq/raw/ready/ann44-ccCA_R2_trimmed.fastq.gz -o ann44-ccCA.sam
