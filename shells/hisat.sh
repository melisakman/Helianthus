#!/bin/bash -l
#SBATCH -D /home/makman/Helianthus/hisat/
#SBATCH -J hisat
#SBATCH --partition=bigmemh
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --cpus-per-task=4
#SBATCH --mem=64000
#SBATCH --time=104:00:00
#SBATCH -o /home/makman/Helianthus/outs/hisat_map.out
#SBATCH -e /home/makman/Helianthus/outs/hisat_map.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load hisat2/2.0.3-beta
module load samtools/1.3.1

hisat2 -p 10 -q -x ./index/HanXRQ_an --dta --rna-strandness RF --fr --max-intronlen 100000 -1 ../AriNB10M_all_1.fq -2 ../AriNB10M_all_2.fq 2> AriNBcombined.txt -S AriNBcombined.sam && samtools sort -@ 10 -o AriNBcombined.bam AriNBcombined.sam
