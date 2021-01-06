#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J G8
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQRG8_99_apply.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQRG8_99_apply.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load gatk/4.0.1.2


# /clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk ApplyVQSR \
# --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
# -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
# -V allChr_2plus_annot.vcf.gz \
# -O allChr_2plus_annot_G8_VQSR99.vcf.gz \
# -ts-filter-level 99.0 \
# --tranches-file G8_unfiltered_all_tranches.tranches \
# --recal-file G8_unfiltered_all_tranches.recal \
# --exclude-filtered \
# -mode SNP


/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk ApplyVQSR \
--java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01.vcf.gz \
-O ../JS/vqsr_50.00-70.00-90.00-99.00-100.00_HanXRQChr01_VQSR99.vcf.gz \
-ts-filter-level 99.0 \
--tranches-file G8_unfiltered_all_tranches.tranches \
--recal-file G8_unfiltered_all_tranches.recal \
--exclude-filtered \
-mode SNP
