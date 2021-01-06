#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/Sariel_new_variant_calling/filtered/ordered
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_new_VC_pi15_invariant.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_new_VC_pi15_invariant.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17

module load vcftools/0.1.13
vcftools --gzvcf HanXRQChr06_filter01_ordered.vcf --from-bp 0 --tobp 10000000 --minQ 50 --minDP 3 --maxDP 25 --keep wd_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/wd_pi_chr06_10kb_invariant
vcftools --gzvcf HanXRQChr06_filter01_ordered.vcf --from-bp 0 --tobp 10000000 --minQ 50 --minDP 3 --maxDP 25 --keep lr_list.txt --max-missing 0.8 --window-pi 10000 --out /clusterfs/vector/scratch/makman/new_variant_calling/pi/lr_pi_chr06_10kb_invariant
