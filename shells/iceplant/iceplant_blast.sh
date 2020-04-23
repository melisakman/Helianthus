#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant/rawdata
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


# srun blastn -query ExpICEPY3_D5_S34_R1_subsample.fasta -db nt -remote –outfmt 7 -out ExpICEPY3_D5_S34_R1_subsample.out
srun blastn -query ExpICEPY3_E1_S22_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_E1_S22_R1_subsample.out
srun blastn -query ExpICEPY3_G4_S42_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_G4_S42_R1_subsample.out
srun blastn -query ExpICEPY3_B3_S23_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_B3_S23_R1_subsample.out
srun blastn -query ExpICEPY3_D4_S28_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_D4_S28_R1_subsample.out
srun blastn -query ExpICEPY3_H6_S25_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_H6_S25_R1_subsample.out
srun blastn -query ExpICEPY3_H2_S27_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_H2_S27_R1_subsample.out
srun blastn -query ExpICEPY3_G1_S32_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_G1_S32_R1_subsample.out
srun blastn -query ExpICEPY3_H1_S20_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_H1_S20_R1_subsample.out
srun blastn -query ExpICEPY3_F2_S33_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_F2_S33_R1_subsample.out
srun blastn -query ExpICEPY3_B2_S24_R1_subsample.fasta -db nt -remote -outfmt 7 -out ExpICEPY3_B2_S24_R1_subsample.out




