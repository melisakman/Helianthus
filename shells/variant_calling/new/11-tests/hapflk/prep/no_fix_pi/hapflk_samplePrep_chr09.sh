#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J hfchr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_chr09.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
module load bio/vcftools/0.1.15
module load hapflk/1.4
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

# gunzip chr09_final.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_final.vcf > chr09_final.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr09_final.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V chr09_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr09_SNP_INDEL.vcf.gz

gunzip chr09_SNP_INDEL.vcf.gz

sed 's/HanXRQChr//g' chr09_SNP_INDEL.vcf > chr09_SNP_INDEL_noHanXRQ.vcf

vcftools --vcf chr09_SNP_INDEL_noHanXRQ.vcf --out hapflk/chr09_final_plink  --plink

python /global/home/users/makman/hapflk-1.4/scripts_Hannah/plink_ped_fixer.py hapflk/lr_mex_ethno_list.txt hapflk/chr09_final_plink.ped hapflk/chr09_final_plink_lr_mex_ethno_fixed.ped

cp hapflk/chr09_final_plink.map hapflk/chr09_final_plink_lr_mex_ethno_fixed.map


cd hapflk

hapflk --file chr09_final_plink_lr_mex_ethno_fixed --outgroup=Wild --miss_pheno 0 -p kinship/chr09_tree_lr_mex_ethno_kinship --ncpu 20