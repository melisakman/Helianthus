library(BEDASSLE, lib = "/global/home/users/makman/R/")
setwd("/clusterfs/rosalind/users/makman/Arabidopsis/bedassle/final")
count = read.table("allsamples_5K_allele_counts.txt", h=F)
dim(count)
count = as.matrix(count[1:2081])
dim(count)
sample = read.table("allsamples_5K_sample_size.txt", h=F)
sample = as.matrix(sample[1:2081])
dim(sample)
climate = load("all_envi_small.RData")
head(Climate$Temp_Mean)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_1",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_2",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_3",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_4",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_5",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=250, prefix = "all_final_v22_6",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=250, prefix = "all_final_v22_7",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Temp_Mean, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_temp_mean_1",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Temp_Mean, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_temp_mean_2",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Temp_Mean, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_temp_mean_3",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Temp_SSD, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_temp_ssd_1",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Temp_SSD, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_temp_ssd_2",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Temp_SSD, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_temp_ssd_3",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Precip_Summer, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_summer_precip_1",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Precip_Summer, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_summer_precip_2",
#  continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate$Precip_Summer, k=nrow(count), loci=ncol(count), delta = 0.0005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_summer_precip_3",
#  continue = FALSE, continuing.params = NULL)

#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_8",
#  continue = FALSE, continuing.params = NULL)

#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_9",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.001, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_10",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.1, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_11",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.001, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_12",
#  continue = FALSE, continuing.params = NULL)
#
MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
  aD_stp = 0.01, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_13",
  continue = FALSE, continuing.params = NULL)

#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.0001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_14",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.01, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_15",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.0001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_16",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_17",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.001, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_18",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.1, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_19",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 0.15, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_20",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 10.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_21",
#  continue = FALSE, continuing.params = NULL)
#
#MCMC(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
#  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1e6, 
#  printfreq=10000, savefreq=1e5, samplefreq=10000, prefix = "all_final_v22_8",
#  continue = FALSE, continuing.params = NULL)
#