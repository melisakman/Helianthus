#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant/analyses/11good/
#SBATCH -J blast
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_bigmem
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/iceplant_blast.out
#SBATCH -e /global/home/users/makman/paloemix_outs/iceplant_blast.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All



module load blast


# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_HO2_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_HO2_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_HO4_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_HO4_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_SD11_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD11_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_SD12_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD12_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_SD13_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD13_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_SD14_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD14_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_SD4_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD4_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_SD7_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD7_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_SD9_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD9_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_UCD4_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_UCD4_subsample.out
# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -max_target_seqs 5 -num_threads 24 -query Plant_UCD5_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_UCD5_subsample.out



srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_HO2_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_HO2_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_HO4_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_HO4_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_SD11_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD11_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_SD12_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD12_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_SD13_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD13_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_SD14_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD14_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_SD4_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD4_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_SD7_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD7_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_SD9_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_SD9_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_UCD4_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_UCD4_subsample_num.out
srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_UCD5_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -outfmt 7 -out Plant_UCD5_subsample_num.out
