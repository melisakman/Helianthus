#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/XPCLR/helianthus
#SBATCH -J XPCLR
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=48:00:00
#SBATCH -o /global/home/users/makman/XPCLR/outs/data_structure.out
#SBATCH -e /global/home/users/makman/XPCLR/outs/data_structure.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
python vcf_modify_for_XPCLR.py XRQ_fil_01_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr01.txt lr_genotype_Chr01.txt cv_genotype_Chr01.txt
python vcf_modify_for_XPCLR.py XRQ_fil_02_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr02.txt lr_genotype_Chr02.txt cv_genotype_Chr02.txt
python vcf_modify_for_XPCLR.py XRQ_fil_03_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr03.txt lr_genotype_Chr03.txt cv_genotype_Chr03.txt
python vcf_modify_for_XPCLR.py XRQ_fil_04_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr04.txt lr_genotype_Chr04.txt cv_genotype_Chr04.txt
python vcf_modify_for_XPCLR.py XRQ_fil_05_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr05.txt lr_genotype_Chr05.txt cv_genotype_Chr05.txt
python vcf_modify_for_XPCLR.py XRQ_fil_06_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr06.txt lr_genotype_Chr06.txt cv_genotype_Chr06.txt
python vcf_modify_for_XPCLR.py XRQ_fil_07_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr07.txt lr_genotype_Chr07.txt cv_genotype_Chr07.txt
python vcf_modify_for_XPCLR.py XRQ_fil_08_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr08.txt lr_genotype_Chr08.txt cv_genotype_Chr08.txt
python vcf_modify_for_XPCLR.py XRQ_fil_09_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr09.txt lr_genotype_Chr09.txt cv_genotype_Chr09.txt
python vcf_modify_for_XPCLR.py XRQ_fil_10_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr10.txt lr_genotype_Chr10.txt cv_genotype_Chr10.txt
python vcf_modify_for_XPCLR.py XRQ_fil_11_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr11.txt lr_genotype_Chr11.txt cv_genotype_Chr11.txt
python vcf_modify_for_XPCLR.py XRQ_fil_12_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr12.txt lr_genotype_Chr12.txt cv_genotype_Chr12.txt
python vcf_modify_for_XPCLR.py XRQ_fil_13_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr13.txt lr_genotype_Chr13.txt cv_genotype_Chr13.txt
python vcf_modify_for_XPCLR.py XRQ_fil_14_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr14.txt lr_genotype_Chr14.txt cv_genotype_Chr14.txt
python vcf_modify_for_XPCLR.py XRQ_fil_15_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr15.txt lr_genotype_Chr15.txt cv_genotype_Chr15.txt
python vcf_modify_for_XPCLR.py XRQ_fil_16_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr16.txt lr_genotype_Chr16.txt cv_genotype_Chr16.txt
python vcf_modify_for_XPCLR.py XRQ_fil_17_ordered.vcf wilds.txt landraces.txt cultivars.txt wd_genotype_Chr17.txt lr_genotype_Chr17.txt cv_genotype_Chr17.txt

sed 's/,$//' wd_genotype_Chr01.txt > wd_genotype_Chr01_comma.txt
sed 's/,$//' wd_genotype_Chr02.txt > wd_genotype_Chr02_comma.txt
sed 's/,$//' wd_genotype_Chr03.txt > wd_genotype_Chr03_comma.txt
sed 's/,$//' wd_genotype_Chr04.txt > wd_genotype_Chr04_comma.txt
sed 's/,$//' wd_genotype_Chr05.txt > wd_genotype_Chr05_comma.txt
sed 's/,$//' wd_genotype_Chr06.txt > wd_genotype_Chr06_comma.txt
sed 's/,$//' wd_genotype_Chr07.txt > wd_genotype_Chr07_comma.txt
sed 's/,$//' wd_genotype_Chr08.txt > wd_genotype_Chr08_comma.txt
sed 's/,$//' wd_genotype_Chr09.txt > wd_genotype_Chr09_comma.txt
sed 's/,$//' wd_genotype_Chr10.txt > wd_genotype_Chr10_comma.txt
sed 's/,$//' wd_genotype_Chr11.txt > wd_genotype_Chr11_comma.txt
sed 's/,$//' wd_genotype_Chr12.txt > wd_genotype_Chr12_comma.txt
sed 's/,$//' wd_genotype_Chr13.txt > wd_genotype_Chr13_comma.txt
sed 's/,$//' wd_genotype_Chr14.txt > wd_genotype_Chr14_comma.txt
sed 's/,$//' wd_genotype_Chr15.txt > wd_genotype_Chr15_comma.txt
sed 's/,$//' wd_genotype_Chr16.txt > wd_genotype_Chr16_comma.txt
sed 's/,$//' wd_genotype_Chr17.txt > wd_genotype_Chr17_comma.txt

mv wd_genotype_Chr01_comma.txt wd_genotype_Chr01.txt
mv wd_genotype_Chr02_comma.txt wd_genotype_Chr02.txt
mv wd_genotype_Chr03_comma.txt wd_genotype_Chr03.txt
mv wd_genotype_Chr04_comma.txt wd_genotype_Chr04.txt
mv wd_genotype_Chr05_comma.txt wd_genotype_Chr05.txt
mv wd_genotype_Chr06_comma.txt wd_genotype_Chr06.txt
mv wd_genotype_Chr07_comma.txt wd_genotype_Chr07.txt
mv wd_genotype_Chr08_comma.txt wd_genotype_Chr08.txt
mv wd_genotype_Chr09_comma.txt wd_genotype_Chr09.txt
mv wd_genotype_Chr10_comma.txt wd_genotype_Chr10.txt
mv wd_genotype_Chr11_comma.txt wd_genotype_Chr11.txt
mv wd_genotype_Chr12_comma.txt wd_genotype_Chr12.txt
mv wd_genotype_Chr13_comma.txt wd_genotype_Chr13.txt
mv wd_genotype_Chr14_comma.txt wd_genotype_Chr14.txt
mv wd_genotype_Chr15_comma.txt wd_genotype_Chr15.txt
mv wd_genotype_Chr16_comma.txt wd_genotype_Chr16.txt
mv wd_genotype_Chr17_comma.txt wd_genotype_Chr17.txt

sed 's/,$//' lr_genotype_Chr01.txt > lr_genotype_Chr01_comma.txt
sed 's/,$//' lr_genotype_Chr02.txt > lr_genotype_Chr02_comma.txt
sed 's/,$//' lr_genotype_Chr03.txt > lr_genotype_Chr03_comma.txt
sed 's/,$//' lr_genotype_Chr04.txt > lr_genotype_Chr04_comma.txt
sed 's/,$//' lr_genotype_Chr05.txt > lr_genotype_Chr05_comma.txt
sed 's/,$//' lr_genotype_Chr06.txt > lr_genotype_Chr06_comma.txt
sed 's/,$//' lr_genotype_Chr07.txt > lr_genotype_Chr07_comma.txt
sed 's/,$//' lr_genotype_Chr08.txt > lr_genotype_Chr08_comma.txt
sed 's/,$//' lr_genotype_Chr09.txt > lr_genotype_Chr09_comma.txt
sed 's/,$//' lr_genotype_Chr10.txt > lr_genotype_Chr10_comma.txt
sed 's/,$//' lr_genotype_Chr11.txt > lr_genotype_Chr11_comma.txt
sed 's/,$//' lr_genotype_Chr12.txt > lr_genotype_Chr12_comma.txt
sed 's/,$//' lr_genotype_Chr13.txt > lr_genotype_Chr13_comma.txt
sed 's/,$//' lr_genotype_Chr14.txt > lr_genotype_Chr14_comma.txt
sed 's/,$//' lr_genotype_Chr15.txt > lr_genotype_Chr15_comma.txt
sed 's/,$//' lr_genotype_Chr16.txt > lr_genotype_Chr16_comma.txt
sed 's/,$//' lr_genotype_Chr17.txt > lr_genotype_Chr17_comma.txt

mv lr_genotype_Chr01_comma.txt lr_genotype_Chr01.txt
mv lr_genotype_Chr02_comma.txt lr_genotype_Chr02.txt
mv lr_genotype_Chr03_comma.txt lr_genotype_Chr03.txt
mv lr_genotype_Chr04_comma.txt lr_genotype_Chr04.txt
mv lr_genotype_Chr05_comma.txt lr_genotype_Chr05.txt
mv lr_genotype_Chr06_comma.txt lr_genotype_Chr06.txt
mv lr_genotype_Chr07_comma.txt lr_genotype_Chr07.txt
mv lr_genotype_Chr08_comma.txt lr_genotype_Chr08.txt
mv lr_genotype_Chr09_comma.txt lr_genotype_Chr09.txt
mv lr_genotype_Chr10_comma.txt lr_genotype_Chr10.txt
mv lr_genotype_Chr11_comma.txt lr_genotype_Chr11.txt
mv lr_genotype_Chr12_comma.txt lr_genotype_Chr12.txt
mv lr_genotype_Chr13_comma.txt lr_genotype_Chr13.txt
mv lr_genotype_Chr14_comma.txt lr_genotype_Chr14.txt
mv lr_genotype_Chr15_comma.txt lr_genotype_Chr15.txt
mv lr_genotype_Chr16_comma.txt lr_genotype_Chr16.txt
mv lr_genotype_Chr17_comma.txt lr_genotype_Chr17.txt

sed 's/,$//' cv_genotype_Chr01.txt > cv_genotype_Chr01_comma.txt
sed 's/,$//' cv_genotype_Chr02.txt > cv_genotype_Chr02_comma.txt
sed 's/,$//' cv_genotype_Chr03.txt > cv_genotype_Chr03_comma.txt
sed 's/,$//' cv_genotype_Chr04.txt > cv_genotype_Chr04_comma.txt
sed 's/,$//' cv_genotype_Chr05.txt > cv_genotype_Chr05_comma.txt
sed 's/,$//' cv_genotype_Chr06.txt > cv_genotype_Chr06_comma.txt
sed 's/,$//' cv_genotype_Chr07.txt > cv_genotype_Chr07_comma.txt
sed 's/,$//' cv_genotype_Chr08.txt > cv_genotype_Chr08_comma.txt
sed 's/,$//' cv_genotype_Chr09.txt > cv_genotype_Chr09_comma.txt
sed 's/,$//' cv_genotype_Chr10.txt > cv_genotype_Chr10_comma.txt
sed 's/,$//' cv_genotype_Chr11.txt > cv_genotype_Chr11_comma.txt
sed 's/,$//' cv_genotype_Chr12.txt > cv_genotype_Chr12_comma.txt
sed 's/,$//' cv_genotype_Chr13.txt > cv_genotype_Chr13_comma.txt
sed 's/,$//' cv_genotype_Chr14.txt > cv_genotype_Chr14_comma.txt
sed 's/,$//' cv_genotype_Chr15.txt > cv_genotype_Chr15_comma.txt
sed 's/,$//' cv_genotype_Chr16.txt > cv_genotype_Chr16_comma.txt
sed 's/,$//' cv_genotype_Chr17.txt > cv_genotype_Chr17_comma.txt

mv cv_genotype_Chr01_comma.txt cv_genotype_Chr01.txt
mv cv_genotype_Chr02_comma.txt cv_genotype_Chr02.txt
mv cv_genotype_Chr03_comma.txt cv_genotype_Chr03.txt
mv cv_genotype_Chr04_comma.txt cv_genotype_Chr04.txt
mv cv_genotype_Chr05_comma.txt cv_genotype_Chr05.txt
mv cv_genotype_Chr06_comma.txt cv_genotype_Chr06.txt
mv cv_genotype_Chr07_comma.txt cv_genotype_Chr07.txt
mv cv_genotype_Chr08_comma.txt cv_genotype_Chr08.txt
mv cv_genotype_Chr09_comma.txt cv_genotype_Chr09.txt
mv cv_genotype_Chr10_comma.txt cv_genotype_Chr10.txt
mv cv_genotype_Chr11_comma.txt cv_genotype_Chr11.txt
mv cv_genotype_Chr12_comma.txt cv_genotype_Chr12.txt
mv cv_genotype_Chr13_comma.txt cv_genotype_Chr13.txt
mv cv_genotype_Chr14_comma.txt cv_genotype_Chr14.txt
mv cv_genotype_Chr15_comma.txt cv_genotype_Chr15.txt
mv cv_genotype_Chr16_comma.txt cv_genotype_Chr16.txt
mv cv_genotype_Chr17_comma.txt cv_genotype_Chr17.txt

