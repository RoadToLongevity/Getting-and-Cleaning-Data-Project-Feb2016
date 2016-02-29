==================================================================
Analysis of Human Activity Recognition Using Smartphones Dataset
==================================================================

Purpose:
==================================================================
The script "run_analysis.R" in this repo analyzes the dataset for Human Activity Recognition Using Smartphones available from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This dataset contains measured values from the accelerometers and gyroscope in a smartphone which are labelled for specific user-related tasks such as walking, standing, etc.  Details about how the data was collected and specifics about the data can be found in the readme file included with the data or at the below link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


How To Use:
==================================================================
The "run_analysis.R" script outputs a tidy dataset of averages for the mean and standard deviations of each activity for each subject contained in the input dataset.  To use the script, simply copy it to the same root directory of the input dataset (i.e. the “UCI HAR Dataset” folder) and run it.  The file it outputs will be in the same folder that the script was run from.  The file will be labelled “tidy_averages.txt”.


Codebook:
==================================================================
The codebook detailing the values in the output dataset, “codebook.md”, is also contained in this repo.


Script:
==================================================================
The script performs the following steps to generate the tidy output dataset:

1.	Loads both the training and test data from the original dataset.
2.	Attaches labels to the training and test datasets.
3.	Renames labels with character strings that better describe each label.
4.	Merges the training and test datasets.
5.	Extracts only the measurements for means and standard deviations from the combined dataset.
6.	Calculates the average of the mean and standard deviation on a per activity per subject basis.  The subject is the specific volunteer (i.e. user) who generated the data.
7.	Writes the averages calculated in the previous step to “tidy_averages.txt”.


Files:
==================================================================
This repo includes the following files:

- 'readme.md': this file

- 'run_analysis.R': Script which performs the data analysis.

- 'codebook.md': explains values in output dataset


Notes: 
==================================================================
This script was generated for the Coursera course entitled "Getting and Cleaning Data" led by professor Jeff Leek.  Details of the course can be found on Coursera's website.
