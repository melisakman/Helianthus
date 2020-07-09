#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/SIFT/VCMA_June2018
#SBATCH -J siftInfo
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_sift_extractInfo.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_sift_extractInfo.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gunzip chr01_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr02_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr03_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr04_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr05_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr06_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr07_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr08_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr09_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr10_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr11_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr12_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr13_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr14_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr15_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr16_intersect_snpeff_SIFTpredictions.vcf.gz
# gunzip chr17_intersect_snpeff_SIFTpredictions.vcf.gz

python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr01_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr01_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr02_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr02_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr03_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr03_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr04_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr04_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr05_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr05_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr06_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr06_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr07_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr07_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr08_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr08_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr09_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr09_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr10_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr10_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr11_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr11_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr12_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr12_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr13_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr13_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr14_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr14_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr15_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr15_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr16_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr16_G12all_fst_pi_tajD_siftInfo.txt
python /global/home/users/makman/git/Helianthus/shells/sift/VCMA/latest/extract_info_candidates_VCMA.py chr17_intersect_snpeff_SIFTpredictions.vcf G12all_pi_tajD_fst_geneNames.txt chr17_G12all_fst_pi_tajD_siftInfo.txt
