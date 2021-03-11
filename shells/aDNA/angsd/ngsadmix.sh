#!/bin/bash 
#SBATCH -D /global/scratch/makman/Sunflower_angsd
#SBATCH -J ngsadmix
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/ngsadmix_1.out
#SBATCH -e /global/home/users/makman/paloemix_outs/ngsadmix_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.919-50-gc558037

# NGSadmix -likes dom_angsd.beagle.gz -K 1 -P ${SLURM_CPUS_PER_TASK} -o dom_K1_ngsadmix -minMaf 0.01 -printInfo 1

# NGSadmix -likes dom_angsd.beagle.gz -K 2 -P ${SLURM_CPUS_PER_TASK} -o dom_K2_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd.beagle.gz -K 3 -P ${SLURM_CPUS_PER_TASK} -o dom_K3_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd.beagle.gz -K 4 -P ${SLURM_CPUS_PER_TASK} -o dom_K4_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd.beagle.gz -K 5 -P ${SLURM_CPUS_PER_TASK} -o dom_K5_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd.beagle.gz -K 6 -P ${SLURM_CPUS_PER_TASK} -o dom_K6_ngsadmix -minMaf 0.01 -printInfo 1
# 
# NGSadmix -likes neut_angsd.beagle.gz -K 1 -P ${SLURM_CPUS_PER_TASK} -o neut_K1_ngsadmix -minMaf 0.01 -printInfo 1

# NGSadmix -likes neut_angsd.beagle.gz -K 2 -P ${SLURM_CPUS_PER_TASK} -o neut_K2_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd.beagle.gz -K 3 -P ${SLURM_CPUS_PER_TASK} -o neut_K3_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd.beagle.gz -K 4 -P ${SLURM_CPUS_PER_TASK} -o neut_K4_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd.beagle.gz -K 5 -P ${SLURM_CPUS_PER_TASK} -o neut_K5_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd.beagle.gz -K 6 -P ${SLURM_CPUS_PER_TASK} -o neut_K6_ngsadmix -minMaf 0.01 -printInfo 1

# NGSadmix -likes dom_angsd_capture.beagle.gz -K 1 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_K1_ngsadmix -minMaf 0.01 -printInfo 1

# NGSadmix -likes dom_angsd_capture.beagle.gz -K 2 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_K2_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture.beagle.gz -K 3 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_K3_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture.beagle.gz -K 4 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_K4_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture.beagle.gz -K 5 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_K5_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture.beagle.gz -K 6 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_K6_ngsadmix -minMaf 0.01 -printInfo 1
# 
# NGSadmix -likes neut_angsd_capture.beagle.gz -K 1 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_K1_ngsadmix -minMaf 0.01 -printInfo 1

# NGSadmix -likes neut_angsd_capture.beagle.gz -K 2 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_K2_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture.beagle.gz -K 3 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_K3_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture.beagle.gz -K 4 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_K4_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture.beagle.gz -K 5 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_K5_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture.beagle.gz -K 6 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_K6_ngsadmix -minMaf 0.01 -printInfo 1
# 
# NGSadmix -likes dom_angsd_capture_shotgun_ethno.beagle.gz -K 1 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_shotgun_ethno_K1_ngsadmix -minMaf 0.01 -printInfo 1

# NGSadmix -likes dom_angsd_capture_shotgun_ethno.beagle.gz -K 2 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_shotgun_ethno_K2_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture_shotgun_ethno.beagle.gz -K 3 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_shotgun_ethno_K3_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture_shotgun_ethno.beagle.gz -K 4 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_shotgun_ethno_K4_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture_shotgun_ethno.beagle.gz -K 5 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_shotgun_ethno_K5_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes dom_angsd_capture_shotgun_ethno.beagle.gz -K 6 -P ${SLURM_CPUS_PER_TASK} -o dom_capture_shotgun_ethno_K6_ngsadmix -minMaf 0.01 -printInfo 1
# 
# NGSadmix -likes neut_angsd_capture.beagle_shotgun_ethno.gz -K 1 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_shotgun_ethno_K1_ngsadmix -minMaf 0.01 -printInfo 1
# 
# NGSadmix -likes neut_angsd_capture_shotgun_ethno.beagle.gz -K 2 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_shotgun_ethno_K2_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture_shotgun_ethno.beagle.gz -K 3 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_shotgun_ethno_K3_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture_shotgun_ethno.beagle.gz -K 4 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_shotgun_ethno_K4_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture_shotgun_ethno.beagle.gz -K 5 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_shotgun_ethno_K5_ngsadmix -minMaf 0.01 -printInfo 1
# NGSadmix -likes neut_angsd_capture_shotgun_ethno.beagle.gz -K 6 -P ${SLURM_CPUS_PER_TASK} -o neut_capture_shotgun_ethno_K6_ngsadmix -minMaf 0.01 -printInfo 1



# for j in {1..10}; do
# 	# run it K=i
# 	for k in {6..10}; do
# 		echo "Run #" $j "K:" $k
# 		x=NGSAdmix_Run_$j/K_$k
# 		echo $x
# 		NGSadmix -likes dom_angsd_capture.beagle.gz -K $k -P ${SLURM_CPUS_PER_TASK} -o dom_K"$k"_Run$j -minMaf 0.01 -printInfo 1
# 	done
# done
# 
# 
# for j in {1..10}; do
# 	# run it K=i
# 	for k in {6..10}; do
# 		echo "Run #" $j "K:" $k
# 		x=NGSAdmix_Run_$j/K_$k
# 		echo $x
# 		NGSadmix -likes neut_angsd_capture.beagle.gz -K $k -P ${SLURM_CPUS_PER_TASK} -o neut_K"$k"_Run$j -minMaf 0.01 -printInfo 1
# 	done
# done
# 
# (for log in `ls dom_K*Run*.log`; do grep -Po 'like=\K[^ ]+' $log; done) > dom_logfile.txt
# 
# 
# (for log in `ls neut_K*Run*.log`; do grep -Po 'like=\K[^ ]+' $log; done) > neut_logfile.txt

for j in {2..10}; do
	# run it K=i
	for k in {9..12}; do
		echo "Run #" $j "K:" $k
		x=NGSAdmix_Run_$j/K_$k
		echo $x
		NGSadmix -likes dom_angsd.beagle.gz -K $k -P ${SLURM_CPUS_PER_TASK} -o all_dom_K"$k"_Run$j -minMaf 0.01 -printInfo 1
	done
done


for j in {1..10}; do
	# run it K=i
	for k in {9..12}; do
		echo "Run #" $j "K:" $k
		x=NGSAdmix_Run_$j/K_$k
		echo $x
		NGSadmix -likes neut_angsd.beagle.gz -K $k -P ${SLURM_CPUS_PER_TASK} -o all_neut_K"$k"_Run$j -minMaf 0.01 -printInfo 1
	done
done

(for log in `ls all_dom_K*Run*.log`; do grep -Po 'like=\K[^ ]+' $log; done) > all_dom_logfile.txt


(for log in `ls all_neut_K*Run*.log`; do grep -Po 'like=\K[^ ]+' $log; done) > all_neut_logfile.txt
