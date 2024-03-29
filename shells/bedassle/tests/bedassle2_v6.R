library(BEDASSLE, lib = "/global/home/users/makman/R/")

count = read.table("subset2_5K_allele_counts.txt", h=F)
dim(count)
count = as.matrix(count[1:2081])
dim(count)
sample = read.table("subset2_5K_sample_size.txt", h=F)
sample = as.matrix(sample[1:2081])
dim(sample)
climate = load("subset2_envi.RData")



#MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
#     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.02, phi_stp = 0.2, thetas_stp = 0.2, mu_stp = 0.35, ngen = 1000, 
#     printfreq=1000, savefreq=1000, samplefreq=5, prefix = "subset2_v6_",
#     continue = FALSE, continuing.params = NULL)

MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.001, phi_stp = 0.001, thetas_stp = 0.001, mu_stp = 0.001, ngen = 1000, 
     printfreq=1000, savefreq=1000, samplefreq=5, prefix = "subset2_v6_3_",
     continue = FALSE, continuing.params = NULL)
