#!/bin/bash
#
#SBATCH --job-name=Angsd_ethno_all_data
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=122GB
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/0_scripts/
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/0_scripts/genome_1_ethno_all_data.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/0_scripts/genome_1_ethno_all_data.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037


### Parameter choices:
# Unpublished wilds are included. Bad Hopi (repeat) and annHA89 removed
# Might not use VCF. Use Plink for LD correction. Haplo for ML tree
# Looks like PCAngsd needs GL type 2, so might have to rerun. 


angsd -bam /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/1_data/Bam_list_2018-04-14_ethno_all_data.txt \
-GL 2 # model for genotype likelihoods 1=samtools, 2=gatk, 3=SOAPsnp, 4=SYK model
-doGlf 2 # GL output file 1= binary, 2=beagle, 3=beagle binary , 4=text
-out /global/scratch/nwales/Sunflower_paleomix/Analysis_genome/2_angsd/name \
-nThreads 12 \
-doMajorMinor 1 #infer major and minor alleles, 1=from GL, 2=from allele counts, 3=reference as major, 5=ancestral as major
-SNP_pval 1e-6 \
-doMaf 1 #estimates allele frequency
-doGeno 32 # creates genotype file, 
-doPost 1 \ #estimate posterior genotype probability based on 1=allele freq, 2=uniform prior
-minMapQ 30 
-minQ 20 
-minInd 1 
-doDepth 1 \
-doCounts 1 
-dumpCounts 2 
-geno_minDepth 1 # call if depth is int
-geno_maxDepth 100 
-postCutoff 0.6 \ #posterior above this threshold
-doIBS 2 #identity by state
-doCov 1 # PC
-doPlink 2 #1=binary fam/bi/bed, 2=tfam/tped
-doVcf 1 \
-dosmartcounts 1 \
-doHaploCall 2 # 1=random base, 2=most frequent base
-minMaf 0.01
