README
========================================================

This repository contains the required files for the submission of the Peer Assessment Exercise for the

[Data and Cleaning Data Coursera course](https://class.coursera.org/getdata-002).

Included is an R script that combines and filters the training and testing data related to

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The file run_analysis.R downloads and unzips the zip file from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

to the current R working directory, the zip location is the folder 'UCI HAR Dataset'.

Then reads in the datasets:

* X_test.txt
* X_train.txt
* y_text.txt
* t_train.txt
* subject_test.txt
* subject_train.txt

The scripts also reads in the following metadata files:

* features.txt
* activity_labels.txt

The datasets are then combined together with the features.txt being used to generate the column names for the X_test and X_train files

The activity_labels.txt file is then used to display the Activity Names instead of the activity codes.

The combined dataset is then filtered to only included features on the mean and standard deviation for each measurement.

The average of each of the measurement by activity and subject is then taken.

Two data sets are created and written out to files in the working directory:

**tidyDataMeanAndStd.txt** contains only the mean and std features for the subjects and activities
	
**averageTidyDataMeanAndStd.txt** contains the average for each of the features in data set 1 by activity and subject


Requirements
========================================================

The following requirements were supplied as part of the project.

The requirements for the R script were listed as follows:

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


Assumptions
========================================================

It is assumed that the mean frequencies are meant to be included as part of requirement 2.


Pre-requisites
========================================================

The script requires that the following R Packages be be installed. 

* reshape2
* plyr


Execution
========================================================

To execute the script in your own workspace type

    source("run_analysis.R")

