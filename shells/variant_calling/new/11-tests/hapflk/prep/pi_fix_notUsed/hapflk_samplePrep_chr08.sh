#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J hfchr08
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/hapflk_chr08.out
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_chr08.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
module load bio/vcftools/0.1.15
module load hapflk/1.4
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/



/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr08_final_fixed_forPi.vcf > chr08_final_fixed_forPi.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr08_final_fixed_forPi.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V chr08_final_fixed_forPi.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr08_SNP_INDEL_fixed_forPi.vcf.gz

gunzip chr08_SNP_INDEL_fixed_forPi.vcf.gz

sed 's/HanXRQChr//g' chr08_SNP_INDEL_fixed_forPi.vcf > chr08_SNP_INDEL_fixed_forPi_noHanXRQ.vcf

vcftools --vcf chr08_SNP_INDEL_fixed_forPi_noHanXRQ.vcf --out hapflk/chr08_plink_fixed_forPi --plink

python /global/home/users/makman/hapflk-1.4/scripts_Hannah/plink_ped_fixer.py hapflk/lr_mex_ethno_list.txt hapflk/chr08_plink_fixed_forPi.ped hapflk/chr08_plink_fixed_forPi_lr_mex_ethno_fixed.ped

cp hapflk/chr08_plink_fixed_forPi.map hapflk/chr08_plink_fixed_forPi_lr_mex_ethno_fixed.map


cd hapflk

hapflk --file chr08_plink_fixed_forPi_lr_mex_ethno_fixed --outgroup=Wild --miss_pheno 0 -p kinship/chr08_tree_lr_mex_ethno_kinship --ncpu 20