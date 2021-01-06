library(BEDASSLE, lib = "/global/home/users/makman/R/")

count = read.table("subset5_5K_allele_counts.txt", h=F)
dim(count)
count = as.matrix(count[1:2081])
dim(count)
sample = read.table("subset5_5K_sample_size.txt", h=F)
sample = as.matrix(sample[1:2081])
dim(sample)
climate = load("subset5_envi_small.RData")

MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.01, phi_stp = 0.01, thetas_stp = 0.01, mu_stp = 1.5, ngen = 1000, 
     printfreq=1000, savefreq=1000, samplefreq=5, prefix = "subset5_final_",
     continue = FALSE, continuing.params = NULL)


