#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/XPCLR/XPCLR/bin
#SBATCH -J XPCLR_Sa
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=48000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/XPCLR/outs/Sariel_map.out
#SBATCH -e /global/home/users/makman/XPCLR/outs/Sariel_map.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
./XPCLR -xpclr ../helianthus/wd_genotype_Chr01.txt ../helianthus/lr_genotype_Chr01.txt ../helianthus/HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt ../helianthus/Sariel_map/wd_lr_Chr01_xpclr.txt -w1 0.005 200 2000 1 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr02.txt lr_genotype_Chr02.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr02_xpclr.txt -w1 0.005 200 2000 2 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr03.txt lr_genotype_Chr03.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr03_xpclr.txt -w1 0.005 200 2000 3 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr04.txt lr_genotype_Chr04.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr04_xpclr.txt -w1 0.005 200 2000 4 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr05.txt lr_genotype_Chr05.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr05_xpclr.txt -w1 0.005 200 2000 5 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr06.txt lr_genotype_Chr06.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr06_xpclr.txt -w1 0.005 200 2000 6 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr07.txt lr_genotype_Chr07.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr07_xpclr.txt -w1 0.005 200 2000 7 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr08.txt lr_genotype_Chr08.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr08_xpclr.txt -w1 0.005 200 2000 8 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr09.txt lr_genotype_Chr09.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr09_xpclr.txt -w1 0.005 200 2000 9 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr10.txt lr_genotype_Chr10.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr10_xpclr.txt -w1 0.005 200 2000 10 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr11.txt lr_genotype_Chr11.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr11_xpclr.txt -w1 0.005 200 2000 11 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr12.txt lr_genotype_Chr12.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr12_xpclr.txt -w1 0.005 200 2000 12 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr13.txt lr_genotype_Chr13.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr13_xpclr.txt -w1 0.005 200 2000 13 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr14.txt lr_genotype_Chr14.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr14_xpclr.txt -w1 0.005 200 2000 14 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr15.txt lr_genotype_Chr15.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr15_xpclr.txt -w1 0.005 200 2000 15 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr16.txt lr_genotype_Chr16.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr16_xpclr.txt -w1 0.005 200 2000 16 -p0 0.95
# ../bin/XPCLR -xpclr wd_genotype_Chr17.txt lr_genotype_Chr17.txt HanXRQr1.0-20151230.bp_to_cM.280x801_modified_XPCLR.txt Sariel_map/wd_lr_Chr17_xpclr.txt -w1 0.005 200 2000 17 -p0 0.95