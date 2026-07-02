# 🧬 NGS Quality Control and Alignment Pipeline

![Linux](https://img.shields.io/badge/Linux-Ubuntu-orange)
![Bash](https://img.shields.io/badge/Bash-Scripting-blue)
![Bioinformatics](https://img.shields.io/badge/Bioinformatics-NGS-success)
![License](https://img.shields.io/badge/License-MIT-green)

A reproducible bioinformatics workflow for quality control, trimming, and alignment of paired-end Next-Generation Sequencing (NGS) data using FastQC, Trimmomatic, BWA, and Samtools.

---

## Project Overview

This project demonstrates a complete NGS preprocessing pipeline using paired-end sequencing reads from *Mycoplasma pneumoniae*.

The pipeline includes:

- Quality assessment
- Adapter trimming
- Read alignment
- BAM processing
- Alignment statistics

The objective is to provide a reproducible workflow that beginners can follow to learn fundamental NGS data analysis.

---

## Workflow

```
Raw FASTQ
     │
     ▼
FastQC
     │
     ▼
Trimmomatic
     │
     ▼
FastQC
     │
     ▼
BWA MEM
     │
     ▼
SAM
     │
     ▼
BAM
     │
     ▼
Sorted BAM
     │
     ▼
Indexed BAM
     │
     ▼
Flagstat
```

---

## Tools Used

| Tool | Purpose |
|------|---------|
| FastQC | Sequence quality assessment |
| Trimmomatic | Adapter and quality trimming |
| BWA-MEM | Sequence alignment |
| Samtools | BAM processing and statistics || Ubuntu (WSL) | Linux environment |

---

## Dataset

This project uses paired-end sequencing reads of *Mycoplasma pneumoniae*.

Input files:

- mycoplasma_pneumoniae_F_100K.fastq
- mycoplasma_pneumoniae_R_100K.fastq
- mycoplasma_pneumoniae_strain_11-1384.fna
- all_adapters.fa

---

## Directory Structure

```
NGS-QC-and-Alignment-Pipeline
│
├── adapters/
├── data/
├── reference/
├── scripts/
## Dataset

The sequencing dataset used in this project is available on **Zenodo**.

**DOI:** https://doi.org/10.5281/zenodo.21139442

### Download Instructions

1. Download the dataset from the Zenodo link above.
2. Extract the ZIP archive.
3. Copy the paired-end FASTQ files into the `data/` directory.

Your project should look like this:

```text
NGS-QC-and-Alignment-Pipeline/
├── data/
│   ├── mycoplasma_pneumoniae_F_100K.fastq
│   └── mycoplasma_pneumoniae_R_100K.fastq
├── reference/
│   └── mycoplasma_pneumoniae_strain_11-1384.fna
└── adapters/
    └── all_adapters.fa
```├── results/
├── images/
├── docs/
├── README.md
└── LICENSE
```

---

## Pipeline

### 1. Quality Control

FastQC evaluates sequencing quality before trimming.

### 2. Adapter Trimming

Trimmomatic removes adapters and low-quality bases.

### 3. Alignment

Reads are aligned to the reference genome using BWA-MEM.

### 4. BAM Processing

Samtools converts, sorts, and indexes BAM files.

### 5. Alignment Statistics

Mapping quality is evaluated using `samtools flagstat`.

---

## Results

Alignment Summary

| Metric | Result |
|---------|---------|
| Total Reads | 190,014 |
| Mapped Reads | 189,865 (99.92%) |
| Properly Paired | 186,126 (98.60%) |
| Duplicates | 0 |

These results indicate high-quality sequencing reads and successful alignment to the reference genome.

---

## Future Improvements

- Variant Calling (BCFtools)
- Coverage Analysis
- IGV Visualization
- Workflow Automation
- Nextflow/Snakemake Version

---

## Author

**Zafir**

Aspiring Bioinformatician

Learning Linux • NGS • Computational Biology

---

## License

This project is licensed under the MIT License.
