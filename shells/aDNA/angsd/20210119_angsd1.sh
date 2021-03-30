#!/bin/bash 
#SBATCH -D /global/scratch/makman/Sunflower_paleomix/analyses/
#SBATCH -J angsd1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/angsd_1.out
#SBATCH -e /global/home/users/makman/paloemix_outs/angsd_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

export PATH=/global/scratch/makman/angsd/angsd:$PATH

### Parameter choices:
# GL samtools model, for GATK 2
# doGlf 2 (beagle geno likelihood)
# doMajorMinor 1: major and minor are inferred from GL with maximum likelihood approach
# doMaf 1 is known or inferred major minor based on GL
# dodepth 1 output depth distribution
# doCounts 1 output count distribution??
# doIBS 1 sample single base at each position (random sampled read); 2 consensus base
# doCov 1 covariance matrix for PCA
# doHaploCall 2 sample at most frequent base
# doplink 2 tfam/tped format
# 1 (major and minor) + 
# 2 (called genotype encoded as -1,0,1,2, -1=not called) + 
# 4 (called genotype directly: eg AA,AC etc ) +
# 16 (posterior probability of called genotype) + 
# 32 (posterior probabilities of the 3 gentypes as binary)
# Doing the aDNA and all samples used in sweep analyses
# GLF of 2 is for a beagle file. Used for ngsAdmix, PCAngsd, ngsLD (either)
# GLF of 3 is for binary file. Used for ngsRelate, ngsLD (either)
# Haplo is for RAxML (maybe IBS is better?)
# Plink is useful for LD corrections, and it based on geno calls
# doPOst 2 using uniform prior; 1 using frequency as prior; 3 using SFS as prior

# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/angsd/angsd \
# -GL 2 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1



# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/angsd_pvalue/all_angsd \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/dom_angsd/dom_angsd \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/dom_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/neut_angsd/neut_angsd \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/neut_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1


# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/dom_angsd_trans/dom_angsd_trans \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/dom_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 0 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/neut_angsd_trans/neut_angsd_trans \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/neut_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 0 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1

# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_only_capture.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/dom_angsd_capture/dom_angsd_capture \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/dom_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_only_capture.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/neut_angsd_capture/neut_angsd_capture \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/neut_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_capture_shotgun_ethno.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/dom_angsd_capture_shotgun_ethno/dom_angsd_capture_shotgun_ethno \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/dom_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_capture_shotgun_ethno.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/neut_angsd_capture_shotgun_ethno/neut_angsd_capture_shotgun_ethno \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/neut_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_capture_shotgun_ethno_wd_lr.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/neut_angsd_capture_shotgun_ethno_wd_lr/neut_angsd_capture_shotgun_ethno_wd_lr \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/neut_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_capture_shotgun_ethno_wd_lr.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/dom_angsd_capture_shotgun_ethno_wd_lr/dom_angsd_capture_shotgun_ethno_wd_lr \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/dom_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_captureDepth_shotgun_ethno_wd_lr.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/neut_angsd_captureDepth_shotgun_ethno_wd_lr/neut_angsd_captureDepth_shotgun_ethno_wd_lr \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/neut_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
# 
# angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_captureDepth_shotgun_ethno_wd_lr.txt -nThreads ${SLURM_CPUS_PER_TASK} \
# -out /global/scratch/makman/Sunflower_angsd/dom_angsd_captureDepth_shotgun_ethno_wd_lr/dom_angsd_captureDepth_shotgun_ethno_wd_lr \
# -GL 2 -doGlf 2 -SNP_pval 1e-6 \
# -checkBamHeaders 0 \
# -rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/dom_regions_file.txt \
# -doMajorMinor 1 \
# -doMaf 1 -minMaf 0.01 \
# -minMapQ 30 -minQ 20 -doDepth 1 \
# -doCounts 1 -dumpCounts 2 -rmTrans 1 \
# -doIBS 1 -makeMatrix 1 -doCov 1 \
# -doHaploCall 2 \
# -doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1



angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_capture_wd_lr.txt -nThreads ${SLURM_CPUS_PER_TASK} \
-out /global/scratch/makman/Sunflower_angsd/neut_angsd_capture_wd_lr/neut_angsd_capture_wd_lr \
-GL 2 -doGlf 2 -SNP_pval 1e-6 \
-checkBamHeaders 0 \
-rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/neut_regions_file.txt \
-doMajorMinor 1 \
-doMaf 1 -minMaf 0.01 \
-minMapQ 30 -minQ 20 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -rmTrans 1 \
-doIBS 1 -makeMatrix 1 -doCov 1 \
-doHaploCall 2 \
-doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1

angsd -bam /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/bams_file_capture_wd_lr.txt -nThreads ${SLURM_CPUS_PER_TASK} \
-out /global/scratch/makman/Sunflower_angsd/dom_angsd_capture_wd_lr/dom_angsd_capture_wd_lr \
-GL 2 -doGlf 2 -SNP_pval 1e-6 \
-checkBamHeaders 0 \
-rf /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/dom_regions_file.txt \
-doMajorMinor 1 \
-doMaf 1 -minMaf 0.01 \
-minMapQ 30 -minQ 20 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -rmTrans 1 \
-doIBS 1 -makeMatrix 1 -doCov 1 \
-doHaploCall 2 \
-doPlink 2 -doGeno 55 -geno_minDepth -1 -postCutoff 0.95 -doPost 1 -doVcf 1
