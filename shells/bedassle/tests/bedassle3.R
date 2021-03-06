library(BEDASSLE, lib = "/global/home/users/makman/R/")

count = read.table("subset3_5K_allele_counts.txt", h=F)
dim(count)
count = as.matrix(count[1:2081])
dim(count)
sample = read.table("subset3_5K_sample_size.txt", h=F)
sample = as.matrix(sample[1:2081])
dim(sample)
climate = load("subset3_envi.RData")



MCMC_BB(counts=count, sample_sizes = sample, D=Euc_dist, E=Climate, k=nrow(count), loci=ncol(count), delta = 0.0001,
     aD_stp = 0.1, aE_stp = 0.1, a2_stp = 0.02, phi_stp = 0.2, thetas_stp = 0.2, mu_stp = 0.25, ngen = 1e6, 
     printfreq=100000, savefreq=1e5, samplefreq=250, prefix = "subset3_",
     continue = FALSE, continuing.params = NULL)