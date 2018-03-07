#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J sort
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/sort_VC_MA.out
#SBATCH -e /global/home/users/makman/GATK/outs/sort_VC_MA.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr01 > VC_MA_combined_all_info_hardfilter_Chr01_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr02 > VC_MA_combined_all_info_hardfilter_Chr02_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr03 > VC_MA_combined_all_info_hardfilter_Chr03_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr04 > VC_MA_combined_all_info_hardfilter_Chr04_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr05 > VC_MA_combined_all_info_hardfilter_Chr05_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr06 > VC_MA_combined_all_info_hardfilter_Chr06_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr07 > VC_MA_combined_all_info_hardfilter_Chr07_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr08 > VC_MA_combined_all_info_hardfilter_Chr08_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr09 > VC_MA_combined_all_info_hardfilter_Chr09_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr10 > VC_MA_combined_all_info_hardfilter_Chr10_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr11 > VC_MA_combined_all_info_hardfilter_Chr11_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr12 > VC_MA_combined_all_info_hardfilter_Chr12_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr13 > VC_MA_combined_all_info_hardfilter_Chr13_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr14 > VC_MA_combined_all_info_hardfilter_Chr14_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr15 > VC_MA_combined_all_info_hardfilter_Chr15_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr16 > VC_MA_combined_all_info_hardfilter_Chr16_sorted.vcf
vcf-sort -t /clusterfs/rosalind/users/makman/temp VC_MA_combined_all_info_hardfilter.vcf -c HanXRQChr17 > VC_MA_combined_all_info_hardfilter_Chr17_sorted.vcf

gzip VC_MA_combined_all_info_hardfilter_Chr*_sorted.vcf