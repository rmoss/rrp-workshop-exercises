#!/bin/bash

# Set up error handling for script
set -euo pipefail

# Set up variables: paths and filenames
FASTQ="NC16_S1_L004_R1_001.fastq.gz"
URL="https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/$FASTQ"

DEST_DIR="../data/raw/SRR11518889/"
mkdir -p $DEST_DIR

# Download R1 reads fastq.gz file
curl -O $URL

# Move the fastq file into data/raw
mv $FASTQ $DEST_DIR
