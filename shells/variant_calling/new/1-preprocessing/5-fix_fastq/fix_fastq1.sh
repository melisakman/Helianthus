#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/sra/ready/
#SBATCH -J fixfastq1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=54000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fix_fastq1.out
#SBATCH -e /global/home/users/makman/GATK/outs/fix_fastq1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

gunzip ann01-cwIA_trimmed_R1.fastq
gunzip ann04-nwAR_trimmed_R1.fastq
gunzip ann05-ccNM_trimmed_R1.fastq
gunzip ann10-ccIL_trimmed_R1.fastq
# gunzip ann20-seAZ_trimmed_R1.fastq
# gunzip ann28-swSK_trimmed_R1.fastq
# gunzip ann29-neSD_trimmed_R1.fastq
# gunzip ann44-ccCA_trimmed_R1.fastq
# gunzip ann01-cwIA_trimmed_R2.fastq
# gunzip ann04-nwAR_trimmed_R2.fastq
# gunzip ann05-ccNM_trimmed_R2.fastq
# gunzip ann10-ccIL_trimmed_R2.fastq
# gunzip ann20-seAZ_trimmed_R2.fastq
# gunzip ann28-swSK_trimmed_R2.fastq
# gunzip ann29-neSD_trimmed_R2.fastq
# gunzip ann44-ccCA_trimmed_R2.fastq




python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann01-cwIA_trimmed_R1.fastq ann01-cwIA_trimmed_fixed_R1.fastq
python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann04-nwAR_trimmed_R1.fastq ann04-nwAR_trimmed_fixed_R1.fastq
python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann05-ccNM_trimmed_R1.fastq ann05-ccNM_trimmed_fixed_R1.fastq
python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann10-ccIL_trimmed_R1.fastq ann10-ccIL_trimmed_fixed_R1.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann20-seAZ_trimmed_R1.fastq ann20-seAZ_trimmed_fixed_R1.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann28-swSK_trimmed_R1.fastq ann28-swSK_trimmed_fixed_R1.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann29-neSD_trimmed_R1.fastq ann29-neSD_trimmed_fixed_R1.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann44-ccCA_trimmed_R1.fastq ann44-ccCA_trimmed_fixed_R1.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann01-cwIA_trimmed_R2.fastq ann01-cwIA_trimmed_fixed_R2.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann04-nwAR_trimmed_R2.fastq ann04-nwAR_trimmed_fixed_R2.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann05-ccNM_trimmed_R2.fastq ann05-ccNM_trimmed_fixed_R2.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann10-ccIL_trimmed_R2.fastq ann10-ccIL_trimmed_fixed_R2.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann20-seAZ_trimmed_R2.fastq ann20-seAZ_trimmed_fixed_R2.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann28-swSK_trimmed_R2.fastq ann28-swSK_trimmed_fixed_R2.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann29-neSD_trimmed_R2.fastq ann29-neSD_trimmed_fixed_R2.fastq
# python /clusterfs/rosalind/users/makman/GATK/scripts/remove_pair_info_v2.py ann44-ccCA_trimmed_R2.fastq ann44-ccCA_trimmed_fixed_R2.fastq
