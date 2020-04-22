#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant/analyses/fastqc/
#SBATCH -J fastqc
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/iceplant_fastqc.out
#SBATCH -e /global/home/users/makman/paloemix_outs/iceplant_fastqc.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All




module load fastqc/0.11.7

fastqc ../../rawdata/ExpICEPO3_A10_S92_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A10_S92_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A11_S104_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A11_S104_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A12_S68_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A12_S68_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A7_S74_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A7_S74_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A8_S113_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A8_S113_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A9_S111_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_A9_S111_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B10_S66_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B10_S66_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B11_S86_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B11_S86_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B12_S87_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B12_S87_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B7_S89_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B7_S89_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B8_S98_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B8_S98_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B9_S93_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_B9_S93_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C11_S62_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C11_S62_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C12_S65_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C12_S65_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C7_S83_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C7_S83_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C8_S101_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C8_S101_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C9_S85_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_C9_S85_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D10_S69_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D10_S69_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D11_S110_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D11_S110_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D12_S76_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D12_S76_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D7_S103_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D7_S103_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D8_S77_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D8_S77_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D9_S37_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_D9_S37_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E10_S90_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E10_S90_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E11_S100_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E11_S100_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E12_S107_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E12_S107_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E7_S79_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E7_S79_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E8_S112_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E8_S112_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E9_S82_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_E9_S82_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F10_S88_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F10_S88_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F11_S105_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F11_S105_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F12_S45_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F12_S45_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F7_S41_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F7_S41_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F8_S91_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F8_S91_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F9_S75_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_F9_S75_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G10_S63_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G10_S63_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G11_S94_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G11_S94_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G12_S58_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G12_S58_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G7_S109_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G7_S109_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G8_S81_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G8_S81_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G9_S64_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_G9_S64_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H10_S78_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H10_S78_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H11_S39_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H11_S39_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H12_S96_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H12_S96_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H7_S106_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H7_S106_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H8_S99_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H8_S99_R2.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H9_S44_R1.fastq.gz
fastqc ../../rawdata/ExpICEPO3_H9_S44_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A1_S61_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A1_S61_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A2_S38_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A2_S38_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A3_S108_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A3_S108_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A4_S48_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A4_S48_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A5_S52_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A5_S52_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A6_S36_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_A6_S36_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B1_S53_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B1_S53_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B2_S24_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B2_S24_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B3_S23_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B3_S23_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B4_S56_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B4_S56_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B5_S43_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B5_S43_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B6_S57_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_B6_S57_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C1_S95_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C1_S95_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C2_S97_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C2_S97_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C3_S19_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C3_S19_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C4_S49_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C4_S49_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C5_S70_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C5_S70_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C6_S80_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_C6_S80_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D1_S29_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D1_S29_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D2_S71_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D2_S71_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D3_S72_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D3_S72_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D4_S28_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D4_S28_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D5_S34_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D5_S34_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D6_S26_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_D6_S26_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E1_S22_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E1_S22_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E2_S84_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E2_S84_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E3_S60_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E3_S60_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E4_S51_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E4_S51_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E5_S40_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E5_S40_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E6_S31_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_E6_S31_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F1_S30_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F1_S30_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F2_S33_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F2_S33_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F3_S50_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F3_S50_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F4_S67_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F4_S67_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F5_S55_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F5_S55_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F6_S47_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_F6_S47_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G1_S32_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G1_S32_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G2_S59_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G2_S59_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G3_S102_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G3_S102_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G4_S42_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G4_S42_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G5_S46_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G5_S46_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G6_S54_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_G6_S54_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H1_S20_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H1_S20_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H2_S27_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H2_S27_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H3_S35_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H3_S35_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H4_S21_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H4_S21_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H5_S73_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H5_S73_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H6_S25_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY3_H6_S25_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P1_S6_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P1_S6_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P2_S7_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P2_S7_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P3_S8_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P3_S8_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P4_S9_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P4_S9_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P5_S1_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P5_S1_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P6_S10_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_P6_S10_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R10_S11_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R10_S11_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R1_S2_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R1_S2_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R2_S12_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R2_S12_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R3_S13_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R3_S13_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R4_S14_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R4_S14_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R5_S15_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R5_S15_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R6_S16_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R6_S16_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R7_S3_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R7_S3_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R8_S17_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R8_S17_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R9_S4_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_R9_S4_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_T1_S18_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_T1_S18_R2.fastq.gz
fastqc ../../rawdata/ExpICEPY4_T2_S5_R1.fastq.gz
fastqc ../../rawdata/ExpICEPY4_T2_S5_R2.fastq.gz
fastqc ../../rawdata/FastqSummaryF1L1.txt
fastqc ../../rawdata/ICEPO2sA1_S1_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA1_S1_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA2_S2_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA2_S2_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA3_S3_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA3_S3_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA4_S4_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA4_S4_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA5_S5_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA5_S5_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA6_S6_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sA6_S6_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB1_S7_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB1_S7_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB2_S8_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB2_S8_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB3_S9_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB3_S9_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB4_S10_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB4_S10_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB5_S11_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB5_S11_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB6_S12_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sB6_S12_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC1_S13_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC1_S13_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC2_S14_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC2_S14_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC3_S15_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC3_S15_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC4_S16_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC4_S16_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC5_S17_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC5_S17_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC6_S18_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sC6_S18_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD1_S19_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD1_S19_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD2_S20_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD2_S20_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD3_S21_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD3_S21_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD4_S22_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD4_S22_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD5_S23_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD5_S23_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD6_S24_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sD6_S24_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE1_S25_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE1_S25_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE2_S26_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE2_S26_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE3_S27_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE3_S27_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE4_S28_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE4_S28_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE5_S29_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE5_S29_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE6_S30_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sE6_S30_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF1_S31_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF1_S31_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF2_S32_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF2_S32_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF3_S33_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF3_S33_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF4_S34_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF4_S34_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF5_S35_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF5_S35_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF6_S36_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sF6_S36_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG1_S37_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG1_S37_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG2_S38_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG2_S38_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG3_S39_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG3_S39_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG4_S40_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG4_S40_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG5_S41_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG5_S41_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG6_S42_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sG6_S42_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH1_S43_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH1_S43_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH2_S44_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH2_S44_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH3_S45_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH3_S45_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH4_S46_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH4_S46_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH5_S47_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH5_S47_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH6_S48_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPO2sH6_S48_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA1_S49_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA1_S49_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA2_S50_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA2_S50_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA3_S51_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA3_S51_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA4_S52_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA4_S52_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA5_S53_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA5_S53_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA6_S54_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sA6_S54_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB1_S55_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB1_S55_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB2_S56_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB2_S56_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB3_S57_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB3_S57_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB4_S58_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB4_S58_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB5_S59_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB5_S59_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB6_S60_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sB6_S60_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC1_S61_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC1_S61_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC2_S62_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC2_S62_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC3_S63_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC3_S63_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC4_S64_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC4_S64_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC5_S65_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC5_S65_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC6_S66_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sC6_S66_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD1_S67_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD1_S67_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD2_S68_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD2_S68_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD3_S69_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD3_S69_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD4_S70_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD4_S70_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD5_S71_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD5_S71_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD6_S72_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sD6_S72_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE1_S73_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE1_S73_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE2_S74_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE2_S74_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE3_S75_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE3_S75_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE4_S76_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE4_S76_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE5_S77_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE5_S77_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE6_S78_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sE6_S78_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF1_S79_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF1_S79_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF2_S80_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF2_S80_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF3_S81_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF3_S81_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF4_S82_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF4_S82_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF5_S83_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF5_S83_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF6_S84_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sF6_S84_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG1_S85_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG1_S85_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG2_S86_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG2_S86_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG3_S87_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG3_S87_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG4_S88_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG4_S88_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG5_S89_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG5_S89_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG6_S90_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sG6_S90_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH1_S91_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH1_S91_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH2_S92_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH2_S92_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH3_S93_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH3_S93_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH4_S94_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH4_S94_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH5_S95_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH5_S95_L001_R2_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH6_S96_L001_R1_001.fastq.gz
fastqc ../../rawdata/ICEPY2sH6_S96_L001_R2_001.fastq.gz
fastqc ../../rawdata/Undetermined_S0_L001_R1_001.fastq.gz
fastqc ../../rawdata/Undetermined_S0_L001_R2_001.fastq.gz
fastqc ../../rawdata/