# Getting and Cleaning data course project - README

This repository is the course project for Getting and Cleaning data course in COursera.
Repository contains following files:

- README.md
    - This document
    
- Codebook.md
    - Codebook describing the resulting dataset
    
- run_analysis.R
    - RScript for reading and modifying source data and creating a tidy dataset 
    
- Tidy_Dataset.txt
    - Clean dataset created as a result of run_analysis.R
    
## Analysis functionality

run_analysis.R does the following steps:

- Downloads and unzips the destination files
- Reads data to variables and merges it to one dataset
- Sets correct names
- Reads and sets activity labels
- Extracts mean and std values from dataset
- Corrects measurement names in dataset
- Outputs tidied dataset
