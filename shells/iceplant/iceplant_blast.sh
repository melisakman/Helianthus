#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant/analyses/11good/
#SBATCH -J blast
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/iceplant_blast.out
#SBATCH -e /global/home/users/makman/paloemix_outs/iceplant_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All



module load blast


# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_HO2_subsample.fasta -db nt -remote -outfmt 7 -out Plant_HO2_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_HO4_subsample.fasta -db nt -remote -outfmt 7 -out Plant_HO4_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_SD11_subsample.fasta -db nt -remote -outfmt 7 -out Plant_SD11_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_SD12_subsample.fasta -db nt -remote -outfmt 7 -out Plant_SD12_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_SD13_subsample.fasta -db nt -remote -outfmt 7 -out Plant_SD13_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_SD14_subsample.fasta -db nt -remote -outfmt 7 -out Plant_SD14_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_SD4_subsample.fasta -db nt -remote -outfmt 7 -out Plant_SD4_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_SD7_subsample.fasta -db nt -remote -outfmt 7 -out Plant_SD7_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_SD9_subsample.fasta -db nt -remote -outfmt 7 -out Plant_SD9_subsample.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_UCD4_subsample.fasta -db nt -remote -outfmt 7 -out Plant_UCD4_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -query Plant_UCD5_subsample.fasta -db nt -remote -outfmt 7 -out Plant_UCD5_subsample.out




