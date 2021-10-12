#!/bin/bash 
#SBATCH -D /global/scratch/users/makman/aDNA/smartpca/
#SBATCH -J smartpca
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/smartpca_2.out
#SBATCH -e /global/home/users/makman/paloemix_outs/smartpca_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools
module load bio/vcftools/0.1.15
module load gsl
module load openblas
export PATH="$PATH:/global/scratch/users/makman/EIG/bin"

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/global/scratch/users/makman/temp
module load java



# 
# 
# bcftools view neut_angsd_capture.bcf > neut_angsd_capture.vcf
# 
# sed -i s/HanXRQChr//g neut_angsd_capture.vcf 
# sed -i s/additional_data\///g neut_angsd_capture.vcf 
# sed -i s/.realigned.bam//g neut_angsd_capture.vcf 
# sed -i s/_markdup_readGroup.bam//g neut_angsd_capture.vcf 
# sed -i "s/\/global\/scratch\/makman\/GATK\/sams\/bams\///g" neut_angsd_capture.vcf 
# 
# sh ../../aDNA/convertVCFtoEigenstrat.sh neut_angsd_capture.vcf 
# 
# touch neut_angsd_capture.parameter
# vi neut_angsd_capture.parameter
# genotypename: neut_angsd_capture.eigenstratgeno
# snpname:      neut_angsd_capture.snp
# indivname:    neut_angsd_capture.ind
# evecoutname:  neut_angsd_capture.eigenvector
# evaloutname:  neut_angsd_capture.eigenvalues
# ldregress:    200
# outlieroutname: neut_angsd_capture_smartpca.outliers
# ldlimit:      0.001
# ldposlimit:   100000
# outliermode:  1
# 
# ../../EIG/bin/smartpca -p neut_angsd_capture.parameter > neut_angsd_capture_smartpca.out
# 
##all Snps with initial analyses, then capture samples projected.

# bcftools view neut_angsd_capture.bcf > neut_angsd_capture.vcf
# 
# 
# cd /global/scratch/users/makman/GATK/final/
# vcf-concat chr01_SNP.vcf.gz chr02_SNP.vcf.gz chr03_SNP.vcf.gz chr04_SNP.vcf.gz chr05_SNP.vcf.gz chr06_SNP.vcf.gz chr07_SNP.vcf.gz chr08_SNP.vcf.gz chr09_SNP.vcf.gz chr10_SNP.vcf.gz chr11_SNP.vcf.gz chr12_SNP.vcf.gz chr13_SNP.vcf.gz chr14_SNP.vcf.gz chr15_SNP.vcf.gz chr16_SNP.vcf.gz chr17_SNP.vcf.gz > ../../aDNA/smartpca/all_SNP.vcf
# cd /global/scratch/users/makman/aDNA/smartpca/
# sed -i s/HanXRQChr//g all_SNP.vcf 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c all_SNP.vcf > all_SNP.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf all_SNP.vcf.gz
# 
# bcftools view neut_angsd_capture.bcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > neut_angsd_capture.vcf.gz
# bcftools view ../neut_angsd/neut_angsd.bcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../neut_angsd/neut_angsd.vcf.gz
# bcftools sort neut_angsd_capture.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > neut_angsd_capture_sorted.vcf.gz
# bcftools sort ../neut_angsd/neut_angsd.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../neut_angsd/neut_angsd_sorted.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf neut_angsd_capture_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf ../neut_angsd/neut_angsd_sorted.vcf.gz
# bcftools concat neut_angsd_capture_capture_sorted.vcf.gz ../neut_angsd/neut_angsd_sorted.vcf.gz > neut_neut_angsd_capture_capture_sorted.vcf
# sed -i s/HanXRQChr//g neut_angsd_capture_capture_sorted.vcf
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c neut_neut_angsd_capture_capture_sorted.vcf > neut_neut_angsd_capture_capture_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf neut_neut_angsd_capture_capture_sorted.vcf.gz
# bcftools +fixref neut_neut_angsd_capture_capture_sorted.vcf.gz -- -f ref.fa
# bcftools merge all_SNP.vcf.gz neut_neut_angsd_capture_capture_sorted.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > all_neut_neut_angsd_capture_capture.vcf.gz
# 
# 
# sh ../convertVCFtoEigenstrat.sh all_SNP.vcf 
# 
# touch allChr_2plus_annot.parameter
# vi allChr_2plus_annot.parameter
# genotypename: allChr_2plus_annot.eigenstratgeno
# snpname:      allChr_2plus_annot.snp
# indivname:    allChr_2plus_annot.ind
# evecoutname:  allChr_2plus_annot.eigenvector
# evaloutname:  allChr_2plus_annot.eigenvalues
# ldregress:    200
# outlieroutname: allChr_2plus_annot.outliers
# ldlimit:      0.001
# ldposlimit:   100000
# outliermode:  1
# 
# ../../EIG/bin/smartpca -p allChr_2plus_annot.parameter > allChr_2plus_annot.out
# 




##### new analyses with HanXRQ v2

## this next section was done earlier

# vcf-concat chr01_SNP.vcf.gz chr02_SNP.vcf.gz chr03_SNP.vcf.gz chr04_SNP.vcf.gz chr05_SNP.vcf.gz chr06_SNP.vcf.gz chr07_SNP.vcf.gz chr08_SNP.vcf.gz chr09_SNP.vcf.gz chr10_SNP.vcf.gz chr11_SNP.vcf.gz chr12_SNP.vcf.gz chr13_SNP.vcf.gz chr14_SNP.vcf.gz chr15_SNP.vcf.gz chr16_SNP.vcf.gz chr17_SNP.vcf.gz > ../../aDNA/smartpca/all_SNP.vcf
# cd /global/scratch/users/makman/aDNA/smartpca/
# sed -i s/HanXRQChr//g all_SNP.vcf 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c all_SNP.vcf > all_SNP.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf all_SNP.vcf.gz
cd allSNP_PCA/
# bcftools view -S lr_wd.txt all_SNP.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > all_SNP_lr_wd.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf all_SNP_lr_wd.vcf.gz
## 


# bcftools view neut_angsd_capture.bcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > neut_angsd_capture.vcf.gz
# bcftools sort neut_angsd_capture.vcf.gz > neut_angsd_capture_sorted.vcf
# 
# sed -i s/HanXRQChr//g neut_angsd_capture_sorted.vcf
# 
# 
# bcftools reheader -s new_sample_names.txt neut_angsd_capture_sorted.vcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > neut_angsd_capture_sorted_renamed.vcf.gz

cd ../../Sunflower_angsd/new/random_sampling/neut_angsd_capture/
bcftools merge neut_angsd_capture_sorted_renamed.vcf.gz /global/scratch/users/makman/aDNA/smartpca/allSNP_PCA/all_SNP_lr_wd.vcf.gz -o all_SNP_lr_wd_capture.vcf

# sh ../../../../convertVCFtoEigenstrat.sh neut_angsd_capture_sorted_renamed.vcf 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c neut_angsd_capture_sorted_renamed.vcf > neut_angsd_capture_sorted_renamed.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf neut_angsd_capture_sorted_renamed.vcf.gz
# 
# touch all_SNP.parameter
# vi neut_angsd_capture_sorted_renamed.parameter
# 
# genotypename: allChr_2plus_annot.eigenstratgeno
# snpname:      allChr_2plus_annot.snp
# indivname:    allChr_2plus_annot.ind
# evecoutname:  allChr_2plus_annot.eigenvector
# evaloutname:  allChr_2plus_annot.eigenvalues
# ldregress:    200
# outlieroutname: allChr_2plus_annot.outliers
# ldlimit:      0.001
# ldposlimit:   100000
# outliermode:  1
# 
# ../../EIG/bin/smartpca -p allChr_2plus_annot.parameter > allChr_2plus_annot.out
