Human Activity Recognition Using Smartphones Data Set
=====================================================

Original data can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More info about the data can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Transformations:
======================

- Step 1 - load dplyr
- Step 2 - read feature names and activity names
- Step 3 - read test and train data
- Step 4 - merge the measurements for the test and training dataset
- Step 5 - Extract the measurements on the mean and standard deviation
- Step 6 - change activity ids for descriptive names
- Step 7 - find the average of each variable for each activity and each subject
- Step 8 - save the data into a file called finaldata.csv

Variables in finaldata.csv:
===========================

180 observations (30 subjects * 6 activities)
68 variables observed
 - #1: subject_id
	- uniquely identifies the subject
	- values: integer from 1 to 30
 - #2: activity
	- identifies the activity
	- values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 - #3- #68
	- average of measurements from sensors while performing the activity for that user

