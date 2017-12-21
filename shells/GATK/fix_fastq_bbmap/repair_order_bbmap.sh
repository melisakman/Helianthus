#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/bbmap
#SBATCH -J bbmap1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=84000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bbmap_repair1.out
#SBATCH -e /global/home/users/makman/GATK/outs/bbmap_repair1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

./repair.sh in1=../HA124_R1_trimmed_fastq.gz in2=../HA124_R2_trimmed_fastq.gz out1=../repaired_HA124_R1_trimmed_fastq.gz out2=../repaired_HA124_R2_trimmed_fastq.gz outsingle=../single_HA124_R1_trimmed_fastq.gz 
./repair.sh in1=../HA316_R1_trimmed_fastq.gz in2=../HA316_R2_trimmed_fastq.gz out1=../repaired_HA316_R1_trimmed_fastq.gz out2=../repaired_HA316_R2_trimmed_fastq.gz outsingle=../single_HA316_R1_trimmed_fastq.gz 
./repair.sh in1=../HA404_R1_trimmed_fastq.gz in2=../HA404_R2_trimmed_fastq.gz out1=../repaired_HA404_R1_trimmed_fastq.gz out2=../repaired_HA404_R2_trimmed_fastq.gz outsingle=../single_HA404_R1_trimmed_fastq.gz 
./repair.sh in1=../HA433_R1_trimmed_fastq.gz in2=../HA433_R2_trimmed_fastq.gz out1=../repaired_HA433_R1_trimmed_fastq.gz out2=../repaired_HA433_R2_trimmed_fastq.gz outsingle=../single_HA433_R1_trimmed_fastq.gz 
./repair.sh in1=../HA442_R1_trimmed_fastq.gz in2=../HA442_R2_trimmed_fastq.gz out1=../repaired_HA442_R1_trimmed_fastq.gz out2=../repaired_HA442_R2_trimmed_fastq.gz outsingle=../single_HA442_R1_trimmed_fastq.gz 
./repair.sh in1=../HA821_R1_trimmed_fastq.gz in2=../HA821_R2_trimmed_fastq.gz out1=../repaired_HA821_R1_trimmed_fastq.gz out2=../repaired_HA821_R2_trimmed_fastq.gz outsingle=../single_HA821_R1_trimmed_fastq.gz 
./repair.sh in1=../RHA271_R1_trimmed_fastq.gz in2=../RHA271_R2_trimmed_fastq.gz out1=../repaired_RHA271_R1_trimmed_fastq.gz out2=../repaired_RHA271_R2_trimmed_fastq.gz outsingle=../single_RHA271_R1_trimmed_fastq.gz
./repair.sh in1=../RHA309_R1_trimmed_fastq.gz in2=../RHA309_R2_trimmed_fastq.gz out1=../repaired_RHA309_R1_trimmed_fastq.gz out2=../repaired_RHA309_R2_trimmed_fastq.gz outsingle=../single_RHA309_R1_trimmed_fastq.gz
./repair.sh in1=../RHA311_R1_trimmed_fastq.gz in2=../RHA311_R2_trimmed_fastq.gz out1=../repaired_RHA311_R1_trimmed_fastq.gz out2=../repaired_RHA311_R2_trimmed_fastq.gz outsingle=../single_RHA311_R1_trimmed_fastq.gz
./repair.sh in1=../RHA328_R1_trimmed_fastq.gz in2=../RHA328_R2_trimmed_fastq.gz out1=../repaired_RHA328_R1_trimmed_fastq.gz out2=../repaired_RHA328_R2_trimmed_fastq.gz outsingle=../single_RHA328_R1_trimmed_fastq.gz
./repair.sh in1=../RHA355_R1_trimmed_fastq.gz in2=../RHA355_R2_trimmed_fastq.gz out1=../repaired_RHA355_R1_trimmed_fastq.gz out2=../repaired_RHA355_R2_trimmed_fastq.gz outsingle=../single_RHA355_R1_trimmed_fastq.gz
./repair.sh in1=../RHA358_R1_trimmed_fastq.gz in2=../RHA358_R2_trimmed_fastq.gz out1=../repaired_RHA358_R1_trimmed_fastq.gz out2=../repaired_RHA358_R2_trimmed_fastq.gz outsingle=../single_RHA358_R1_trimmed_fastq.gz
./repair.sh in1=../RHA408_R1_trimmed_fastq.gz in2=../RHA408_R2_trimmed_fastq.gz out1=../repaired_RHA408_R1_trimmed_fastq.gz out2=../repaired_RHA408_R2_trimmed_fastq.gz outsingle=../single_RHA408_R1_trimmed_fastq.gz
./repair.sh in1=../VIR847_R1_trimmed_fastq.gz in2=../VIR847_R2_trimmed_fastq.gz out1=../repaired_VIR847_R1_trimmed_fastq.gz out2=../repaired_VIR847_R2_trimmed_fastq.gz outsingle=../single_VIR847_R1_trimmed_fastq.gz
./repair.sh in1=../RHA857_R1_trimmed_fastq.gz in2=../RHA857_R2_trimmed_fastq.gz out1=../repaired_RHA857_R1_trimmed_fastq.gz out2=../repaired_RHA857_R2_trimmed_fastq.gz outsingle=../single_RHA857_R1_trimmed_fastq.gz




