library(BEDASSLE, lib = "/global/home/users/makman/R/")

count = read.table("allsamples_5K_allele_counts.txt", h=F)
dim(count)
count = as.matrix(count[1:2081])
dim(count)
sample = read.table("allsamples_5K_sample_size.txt", h=F)
sample = as.matrix(sample[1:2081])
dim(sample)
climate = load("all_envi_small.RData")

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1000, 
#     printfreq=1000, savefreq=100, samplefreq=5, prefix = "all_final_",
#     continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1000000, 
#     printfreq=100000, savefreq=100000, samplefreq=5, prefix = "all_final_v2_",
#     continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 100000, 
#     printfreq=10000, savefreq=10000, samplefreq=5, prefix = "all_final_v3_",
#     continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 10000, 
#     printfreq=1000, savefreq=1000, samplefreq=5, prefix = "all_final_v4_",
#     continue = FALSE, continuing.params = NULL)
     
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 5000, 
#   printfreq=100, savefreq=100, samplefreq=5, prefix = "all_final_v5_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.001, mu_stp = 1.5, ngen = 5000, 
#   printfreq=100, savefreq=100, samplefreq=5, prefix = "all_final_v6_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 5000, 
#   printfreq=100, savefreq=100, samplefreq=5, prefix = "all_final_v7_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 5000, 
#   printfreq=100, savefreq=100, samplefreq=5, prefix = "all_final_v8_",
#   continue = FALSE, continuing.params = NULL)
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 5000, 
#   printfreq=100, savefreq=100, samplefreq=5, prefix = "all_final_v9_",
#   continue = FALSE, continuing.params = NULL)
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.01, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 5000, 
#   printfreq=100, savefreq=100, samplefreq=5, prefix = "all_final_v10_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 2500, 
#   printfreq=100, savefreq=100, samplefreq=5, prefix = "all_final_v5a_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 2500, 
#   printfreq=250, savefreq=250, samplefreq=5, prefix = "all_final_v5b_",
#   continue = FALSE, continuing.params = NULL)
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 2500, 
#   printfreq=100, savefreq=100, samplefreq=100, prefix = "all_final_v5c_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v11_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.1, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v12_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.001, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v13_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00001,
#   aD_stp = 0.01, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v14_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.001,
#   aD_stp = 0.01, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v15_",
#   continue = FALSE, continuing.params = NULL)
#
#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v16_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.5, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v17_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.05, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v18_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#   aD_stp = 0.01, aE_stp = 0.005, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v19_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.005,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v20_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.01,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v21_",
#   continue = FALSE, continuing.params = NULL)

#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0005,
#   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
#   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v22_",
#   continue = FALSE, continuing.params = NULL)

MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.00005,
   aD_stp = 0.01, aE_stp = 0.01, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.01, mu_stp = 1.5, ngen = 3000, 
   printfreq=15, savefreq=15, samplefreq=15, prefix = "all_final_v23_",
   continue = FALSE, continuing.params = NULL)
