#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/ancestry/
#SBATCH -J vcfMerge
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=48:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_new_filtering.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_new_filtering.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load python


python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr01_complete_ordered_norm_maf_filt_indel_in.vcf.gz results/ancestry_chr01.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr02_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr02.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr03_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr03.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr04_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr04.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr05_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr05.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr06_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr06.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr07_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr07.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr08_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr08.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr09_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr09.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr10_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr10.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr11_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr11.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr12_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr12.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr13_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr13.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr14_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr14.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr15_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr15.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr16_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr16.txt
# python ./ancestry_informative.py /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/HanXRQChr17_complete_ordered_norm_maf_filt_indel_in_ordered.vcf.gz results/ancestry_chr17.txt
