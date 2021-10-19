#!/bin/bash 
#SBATCH -D /global/scratch/users/makman/aDNA/smartpca/
#SBATCH -J smartpca
#SBATCH --account=co_rosalind
#SBATCH --partition=savio3_xlmem
#SBATCH --qos=rosalind_xlmem3_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --time=400:00:00
#SBATCH --mem=1500000
#SBATCH -o /global/home/users/makman/paloemix_outs/smartpca_2dom.out
#SBATCH -e /global/home/users/makman/paloemix_outs/smartpca_2dom.err
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
# bcftools view dom_angsd_capture.bcf > dom_angsd_capture.vcf
# 
# sed -i s/HanXRQChr//g dom_angsd_capture.vcf 
# sed -i s/additional_data\///g dom_angsd_capture.vcf 
# sed -i s/.realigned.bam//g dom_angsd_capture.vcf 
# sed -i s/_markdup_readGroup.bam//g dom_angsd_capture.vcf 
# sed -i "s/\/global\/scratch\/makman\/GATK\/sams\/bams\///g" dom_angsd_capture.vcf 
# 
# sh ../../aDNA/convertVCFtoEigenstrat.sh dom_angsd_capture.vcf 
# 
# touch dom_angsd_capture.parameter
# vi dom_angsd_capture.parameter
# genotypename: dom_angsd_capture.eigenstratgeno
# snpname:      dom_angsd_capture.snp
# indivname:    dom_angsd_capture.ind
# evecoutname:  dom_angsd_capture.eigenvector
# evaloutname:  dom_angsd_capture.eigenvalues
# ldregress:    200
# outlieroutname: dom_angsd_capture_smartpca.outliers
# ldlimit:      0.001
# ldposlimit:   100000
# outliermode:  1
# 
# ../../EIG/bin/smartpca -p dom_angsd_capture.parameter > dom_angsd_capture_smartpca.out
# 
##all Snps with initial analyses, then capture samples projected.

# bcftools view dom_angsd_capture.bcf > dom_angsd_capture.vcf
# 
# 
# cd /global/scratch/users/makman/GATK/final/
# vcf-concat chr01_SNP.vcf.gz chr02_SNP.vcf.gz chr03_SNP.vcf.gz chr04_SNP.vcf.gz chr05_SNP.vcf.gz chr06_SNP.vcf.gz chr07_SNP.vcf.gz chr08_SNP.vcf.gz chr09_SNP.vcf.gz chr10_SNP.vcf.gz chr11_SNP.vcf.gz chr12_SNP.vcf.gz chr13_SNP.vcf.gz chr14_SNP.vcf.gz chr15_SNP.vcf.gz chr16_SNP.vcf.gz chr17_SNP.vcf.gz > ../../aDNA/smartpca/all_SNP.vcf
# cd /global/scratch/users/makman/aDNA/smartpca/
# sed -i s/HanXRQChr//g all_SNP.vcf 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c all_SNP.vcf > all_SNP.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf all_SNP.vcf.gz
# 
# bcftools view dom_angsd_capture.bcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > dom_angsd_capture.vcf.gz
# bcftools view ../dom_angsd/dom_angsd.bcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../dom_angsd/dom_angsd.vcf.gz
# bcftools sort dom_angsd_capture.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > dom_angsd_capture_sorted.vcf.gz
# bcftools sort ../dom_angsd/dom_angsd.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../dom_angsd/dom_angsd_sorted.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf dom_angsd_capture_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf ../dom_angsd/dom_angsd_sorted.vcf.gz
# bcftools concat dom_angsd_capture_capture_sorted.vcf.gz ../dom_angsd/dom_angsd_sorted.vcf.gz > dom_dom_angsd_capture_capture_sorted.vcf
# sed -i s/HanXRQChr//g dom_angsd_capture_capture_sorted.vcf
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c dom_dom_angsd_capture_capture_sorted.vcf > dom_dom_angsd_capture_capture_sorted.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf dom_dom_angsd_capture_capture_sorted.vcf.gz
# bcftools +fixref dom_dom_angsd_capture_capture_sorted.vcf.gz -- -f ref.fa
# bcftools merge all_SNP.vcf.gz dom_dom_angsd_capture_capture_sorted.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > all_dom_dom_angsd_capture_capture.vcf.gz
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
# cd allSNP_PCA/
# bcftools view -S lr_wd.txt all_SNP.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > all_SNP_lr_wd.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf all_SNP_lr_wd.vcf.gz
## 

cd ../Sunflower_angsd/new/random_sampling/dom_angsd_capture/
# bcftools view dom_angsd_capture.bcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > dom_angsd_capture.vcf.gz
# bcftools sort dom_angsd_capture.vcf.gz > dom_angsd_capture_sorted.vcf
# 
# sed -i s/HanXRQChr//g dom_angsd_capture_sorted.vcf
# 

# bcftools reheader -s new_sample_names.txt dom_angsd_capture_sorted.vcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > dom_angsd_capture_sorted_renamed.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf dom_angsd_capture_sorted_renamed.vcf.gz
# bcftools merge dom_angsd_capture_sorted_renamed.vcf.gz /global/scratch/users/makman/aDNA/smartpca/allSNP_PCA/all_SNP_lr_wd.vcf.gz -o all_SNP_lr_wd_dom_capture.vcf
# 
# sh ../../../../convertVCFtoEigenstrat.sh all_SNP_lr_wd_dom_capture.vcf
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c all_SNP_lr_wd_dom_capture.vcf > all_SNP_lr_wd_dom_capture.vcf.gz

# cd ../neut_angsd_capture/
# bcftools view neut_angsd_capture.bcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > neut_angsd_capture.vcf.gz
# bcftools sort neut_angsd_capture.vcf.gz > neut_angsd_capture_sorted.vcf
# 
# sed -i s/HanXRQChr//g neut_angsd_capture_sorted.vcf


# bcftools reheader -s ../dom_angsd_capture/new_sample_names.txt neut_angsd_capture_sorted.vcf | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > neut_angsd_capture_sorted_renamed.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf neut_angsd_capture_sorted_renamed.vcf.gz
# bcftools merge neut_angsd_capture_sorted_renamed.vcf.gz /global/scratch/users/makman/aDNA/smartpca/allSNP_PCA/all_SNP_lr_wd.vcf.gz -o all_SNP_lr_wd_neut_capture.vcf
# sh ../../../../convertVCFtoEigenstrat.sh all_SNP_lr_wd_neut_capture.vcf

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c all_SNP_lr_wd_neut_capture.vcf > all_SNP_lr_wd_neut_capture.vcf.gz
# 
# touch all_SNP_lr_wd_neut_capture.parameter
# vi touch all_SNP_lr_wd_neut_capture.parameter.parameter
# 
# genotypename: all_SNP_lr_wd_dom_capture.eigenstratgeno
# snpname:      all_SNP_lr_wd_dom_capture.snp
# indivname:    all_SNP_lr_wd_dom_capture.ind
# evecoutname:  all_SNP_lr_wd_dom_capture.eigenvector
# evaloutname:  all_SNP_lr_wd_dom_capture.eigenvalues
# ldregress:    200
# outlieroutname: all_SNP_lr_wd_dom_capture.outliers
# ldlimit:      0.001
# ldposlimit:   100000
# outliermode:  1
# poplistname: 	landrace_wd.txt
# 
/global/scratch/users/makman/EIG/bin/smartpca -p all_SNP_lr_wd_dom_capture.parameter > all_SNP_lr_wd_dom_capture.out
