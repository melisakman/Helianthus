#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 3isehr01
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH --exclude=n0000.savio2,n0013.cortex0,n0021.savio2,n0030.savio1,n0042.savio2,n0048.savio2,n0050.savio1,n0096.savio2,n0097.savio1,n0107.savio2,n0109.savio2,n0113.savio2,n0114.savio2,n0133.savio1,n0166.savio2,n0182.savio2,n0218.savio2,n0234.savio2,n0281.savio2
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ./fastq/invariants/VCMA_chr01.vcf > ./fastq/invariants/VCMA_chr01.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf > freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/old/samtools_invariant_chr01_combined.vcf > samtools_VC/old/samtools_invariant_chr01_combined.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./fastq/invariants/VCMA_chr01.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./samtools_VC/old/samtools_invariant_chr01_combined.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/chr01_3 ./fastq/invariants/VCMA_chr01.vcf.gz \
./freebayes/final_combined/old/freebayes_invariant_chr01_all.vcf.gz \
./samtools_VC/old/samtools_invariant_chr01_combined.vcf.gz

