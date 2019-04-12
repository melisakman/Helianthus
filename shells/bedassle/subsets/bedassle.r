library(BEDASSLE, lib = "/global/home/users/makman/R/")

count = read.table("allsamples_5K_allele_counts.txt", h=F)
dim(count)
count = as.matrix(count[1:2081])
dim(count)
sample = read.table("allsamples_5K_sample_size.txt", h=F)
sample = as.matrix(sample[1:2081])
dim(sample)
climate = load("all_envi_small.RData")

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
MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
  aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
  printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_5",
  continue = FALSE, continuing.params = NULL)
