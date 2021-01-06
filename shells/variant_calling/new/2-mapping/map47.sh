#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_47
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map47.out
#SBATCH -e /global/home/users/makman/GATK/outs/map47.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/HA207_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA207_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/HA207.sam
/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/RHA310_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA310_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/RHA310.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/RHA354_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA354_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/RHA354.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/HA323_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA323_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/HA323.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/HA380_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA380_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/HA380.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/HA314_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA314_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/HA314.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/RHA324_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA324_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/RHA324.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/HA259_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA259_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/HA259.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/RHA362_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA362_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/RHA362.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta --skip-mate-check -p -1 ../fastq/raw/ready/RHA397_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA397_R2_trimmed.fastq.gz -o /global/scratch/makman/GATK/sams/RHA397.sam



