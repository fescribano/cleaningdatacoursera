Getting and Cleaning Data (Coursera)
========================
## Introduction
This repository contains the project for the Getting and Cleaning Data course

## Files in this repository
- run_analysis.R: R script used to obtain a tidy dataset from the original data
- finaldata.csv: Tidy dataset produced by the script
- Codebook.md: File describing the final dataset and the process used to obtain it
- Readme.md: this file

## How to run the script
1. download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. extract the files in your working directory
3. rename to dataset
4. download run_analysis.R in your working directory
5. source(run_analysis.R)
6. the resulting file **finaldata.csv** will appear in you working directory

## How the script works
- read feature names
- read and merge test data from 3 files
- read and merge train data from 3 files
- merge train and test data
- Extract only the measurements on the mean and standard deviation for each measurement
- set activity names instead of ids
- use dplyr functions to find the average of each measurement grouped by user and activity
- write data to a file

