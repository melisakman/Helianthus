#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/sift/
#SBATCH -J sftchr06
#SBATCH --partition=bigmemh
#SBATCH --mem=32000
#SBATCH -o /home/makman/Helianthus/outs/sift_annotate_helia_VCMA_latest_chr06.out
#SBATCH -e /home/makman/Helianthus/outs/sift_annotate_helia_VCMA_latest_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --time=72:00:00
#SBATCH --mail-type=All
module load python3/3.6.1
module unload perl
module load perlbrew
module unload gcc
module load gcc/4.9.3
java -jar annotator/SIFT4G_Annotator_v2.4.jar -c -i ../Helianthus/vcf/VCMA_GK_FB_ST/chr06_intersect_snpeff.vcf.gz -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VCMA_June2018
