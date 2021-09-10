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
export PATH="$PATH:/global/scratch/makman/EIG/bin"


# genome_path="//global/scratch/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta"
# SNP_db_path="/mnt/lustre/groups/arch-adna-2019/programs/Reich_genotypes_v42.4/"
# SNP_database="v42.4.1240K"
# input_bam_path="/global/scratch/makman/Sunflower_paleomix/analyses"
# Run_name="neut"
# 
# 
# 
# 
# list_of_sample_names=`cut -f1 neut_angsd_captureDepth_shotgun_ethno_wd_lr.ind`
# list_of_sample_names_commas=`echo $list_of_sample_names | sed 's/ /,/g'`
# list_of_bam_files=`cut -f1 ${sample_information_file} | sed 's/$/.updated_genome.bam/g' | sed "s|^|${input_bam_path}|g"`
# list_of_sex_information=`cut -f2 ${sample_information_file}`
# 
# 
# bcftools view neut_angsd_captureDepth_shotgun_ethno_wd_lr.bcf > neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf
# 
# sed -i s/HanXRQChr//g neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf 
# sed -i s/additional_data\///g neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf 
# sed -i s/.realigned.bam//g neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf 
# sed -i s/_markdup_readGroup.bam//g neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf 
# sed -i "s/\/global\/scratch\/makman\/GATK\/sams\/bams\///g" neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf 
# 
# sh ../../aDNA/convertVCFtoEigenstrat.sh neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf 
# 
# touch neut_angsd_captureDepth_shotgun_ethno_wd_lr.parameter
# vi neut_angsd_captureDepth_shotgun_ethno_wd_lr.parameter
# genotypename: neut_angsd_captureDepth_shotgun_ethno_wd_lr.eigenstratgeno
# snpname:      neut_angsd_captureDepth_shotgun_ethno_wd_lr.snp
# indivname:    neut_angsd_captureDepth_shotgun_ethno_wd_lr.ind
# evecoutname:  neut_angsd_captureDepth_shotgun_ethno_wd_lr.eigenvector
# evaloutname:  neut_angsd_captureDepth_shotgun_ethno_wd_lr.eigenvalues
# ldregress:    200
# outlieroutname: neut_angsd_captureDepth_shotgun_ethno_wd_lr_smartpca.outliers
# ldlimit:      0.001
# ldposlimit:   100000
# outliermode:  1
# 
# ../../EIG/bin/smartpca -p neut_angsd_captureDepth_shotgun_ethno_wd_lr.parameter > neut_angsd_captureDepth_shotgun_ethno_wd_lr_smartpca.out
# 
# ##all Snps with initial analyses, then capture samples projected.
# 
# bcftools view neut_angsd_captureDepth_shotgun_ethno_wd_lr.bcf > neut_angsd_captureDepth_shotgun_ethno_wd_lr.vcf
# 

cd /global/scratch/users/makman/GATK/final/
vcf-concat chr01_SNP.vcf.gz chr02_SNP.vcf.gz chr03_SNP.vcf.gz chr04_SNP.vcf.gz chr05_SNP.vcf.gz chr06_SNP.vcf.gz chr07_SNP.vcf.gz chr08_SNP.vcf.gz chr09_SNP.vcf.gz chr10_SNP.vcf.gz chr11_SNP.vcf.gz chr12_SNP.vcf.gz chr13_SNP.vcf.gz chr14_SNP.vcf.gz chr15_SNP.vcf.gz chr16_SNP.vcf.gz chr17_SNP.vcf.gz > ../../aDNA/smartpca/all_SNP.vcf
cd /global/scratch/users/makman/aDNA/smartpca/
sed -i s/HanXRQChr//g all_SNP.vcf 
sh ../convertVCFtoEigenstrat.sh all_SNP.vcf 

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