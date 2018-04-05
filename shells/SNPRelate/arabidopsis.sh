#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/Arabidopsis/
#SBATCH -J AT
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=200:00:00
#SBATCH -o /global/home/users/makman/Arabidopsis/outs/Ara.out
#SBATCH -e /global/home/users/makman/Arabidopsis/outs/Ara.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All



module load r/3.4.3

R

library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/Arabidopsis")

vcf.fn = "testy.recode.vcf"
snpgdsVCF2GDS(vcf.fn, "Arabidopsis.gds", method="biallelic.only")
snpgdsSummary("Arabidopsis.gds")


genofile <- snpgdsOpen("Arabidopsis.gds")
