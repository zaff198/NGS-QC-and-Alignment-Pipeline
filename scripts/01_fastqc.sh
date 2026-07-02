#!/bin/bash

# ==========================================================
# NGS QC Pipeline
# Step 1: Quality Assessment using FastQC
# Author: Zafir
# ==========================================================

set -e

echo "========================================="
echo "Running FastQC..."
echo "========================================="

# Check if FastQC is installed
if ! command -v fastqc &> /dev/null
then
    echo "ERROR: FastQC is not installed."
    exit 1
fi

mkdir -p results/fastqc

fastqc \
data/mycoplasma_pneumoniae_F_100K.fastq \
data/mycoplasma_pneumoniae_R_100K.fastq \
-o results/fastqc

echo ""
echo "FastQC completed successfully."
echo "Reports are available in results/fastqc/"
