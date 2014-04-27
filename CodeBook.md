#Codebook
=====================================================

## Background Information
--------------------

From the information provided in the file

>"The features in this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
>These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered 
>using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
>Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
>(tBodyAcc-XYZ and tGravityAcc-XYZ) using another >low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
>(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using 
>the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
>fBodyGyro-XYZ, >fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

Refer to (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) for further details about the raw data.


Raw data used

* test/X_test.txt
* train/X_train.txt
* test/y_test.txt
* train/y_train.txt
* test/subject_test.txt
* train/subject_train.txt

Metadata files

* features.txt
* activity_labels.txt

Output data files

* tidyDataMeanAndStd.txt
* averageTidyDataMeanAndStd.txt


- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


## Transformations
-----------------------

The activityID codes in 
* y_text.txt
* y_train.txt
were translated in to the verbatim descriptions using the activity_labels.txt file.

The subject_train.txt, y_train.txt, X_train.txt files were appended together laterally (i.e. the columns in the first file were appended to the second etc.)
The subject_test.txt, y_test.txt, X_test.txt files were appended together laterally as above then vertically to the above file (i.e. 


## Output data files
------------------------------------------

All output files are tab delimited text files

### tidyDataMeanAndStd.txt

There are 2 identify features in this data set

1. subjectID - A unique identifier for the subject performing the task
2. activityName - The task the subject is undertaking (one of six possible activities:
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING

10,299 observations of 79 features by subject and activity

This dataset contains only the features which are either a mean or a standard deviation.
* mean(): Mean value
* std(): Standard deviation
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency

####Features

    "subjectID"
	"activityName"
	"tBodyAcc-mean()-X"
	"tBodyAcc-mean()-Y"
	"tBodyAcc-mean()-Z"
	"tBodyAcc-std()-X"
	"tBodyAcc-std()-Y"
	"tBodyAcc-std()-Z"
	"tGravityAcc-mean()-X"
	"tGravityAcc-mean()-Y"
	"tGravityAcc-mean()-Z"
	"tGravityAcc-std()-X"
	"tGravityAcc-std()-Y"
	"tGravityAcc-std()-Z"
	"tBodyAccJerk-mean()-X"
	"tBodyAccJerk-mean()-Y"
	"tBodyAccJerk-mean()-Z"
	"tBodyAccJerk-std()-X"
	"tBodyAccJerk-std()-Y"
	"tBodyAccJerk-std()-Z"
	"tBodyGyro-mean()-X"
	"tBodyGyro-mean()-Y"
	"tBodyGyro-mean()-Z"
	"tBodyGyro-std()-X"
	"tBodyGyro-std()-Y"
	"tBodyGyro-std()-Z"
	"tBodyGyroJerk-mean()-X"
	"tBodyGyroJerk-mean()-Y"
	"tBodyGyroJerk-mean()-Z"
	"tBodyGyroJerk-std()-X"
	"tBodyGyroJerk-std()-Y"
	"tBodyGyroJerk-std()-Z"
	"tBodyAccMag-mean()"
	"tBodyAccMag-std()"
	"tGravityAccMag-mean()"
	"tGravityAccMag-std()"
	"tBodyAccJerkMag-mean()"
	"tBodyAccJerkMag-std()"
	"tBodyGyroMag-mean()"
	"tBodyGyroMag-std()"
	"tBodyGyroJerkMag-mean()"
	"tBodyGyroJerkMag-std()"
	"fBodyAcc-mean()-X"
	"fBodyAcc-mean()-Y"
	"fBodyAcc-mean()-Z"
	"fBodyAcc-std()-X"
	"fBodyAcc-std()-Y"
	"fBodyAcc-std()-Z"
	"fBodyAcc-meanFreq()-X"
	"fBodyAcc-meanFreq()-Y"
	"fBodyAcc-meanFreq()-Z"
	"fBodyAccJerk-mean()-X"
	"fBodyAccJerk-mean()-Y"
	"fBodyAccJerk-mean()-Z"
	"fBodyAccJerk-std()-X"
	"fBodyAccJerk-std()-Y"
	"fBodyAccJerk-std()-Z"
	"fBodyAccJerk-meanFreq()-X"
	"fBodyAccJerk-meanFreq()-Y"
	"fBodyAccJerk-meanFreq()-Z"
	"fBodyGyro-mean()-X"
	"fBodyGyro-mean()-Y"
	"fBodyGyro-mean()-Z"
	"fBodyGyro-std()-X"
	"fBodyGyro-std()-Y"
	"fBodyGyro-std()-Z"
	"fBodyGyro-meanFreq()-X"
	"fBodyGyro-meanFreq()-Y"
	"fBodyGyro-meanFreq()-Z"
	"fBodyAccMag-mean()"
	"fBodyAccMag-std()"
	"fBodyAccMag-meanFreq()"
	"fBodyBodyAccJerkMag-mean()"
	"fBodyBodyAccJerkMag-std()"
	"fBodyBodyAccJerkMag-meanFreq()"
	"fBodyBodyGyroMag-mean()"
	"fBodyBodyGyroMag-std()"
	"fBodyBodyGyroMag-meanFreq()"
	"fBodyBodyGyroJerkMag-mean()"
	"fBodyBodyGyroJerkMag-std()"
	"fBodyBodyGyroJerkMag-meanFreq()"


### tidyDataMeanAndStd.txt

There are 2 identify features in this data set


1. activityName - The task the subject is undertaking (one of six possible activities):
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING
2. subjectID - A unique identifier for the subject performing the task
	
180 observations of 79 by subject and activity

Each observation contains the average of the selected features for a given subject and activity.

####Features

    "activityName"
	"subjectID"
	"mean(tBodyAcc-mean()-X)"
	"mean(tBodyAcc-mean()-Y)"
	"mean(tBodyAcc-mean()-Z)"
	"mean(tBodyAcc-std()-X)"
	"mean(tBodyAcc-std()-Y)"
	"mean(tBodyAcc-std()-Z)"
	"mean(tGravityAcc-mean()-X)"
	"mean(tGravityAcc-mean()-Y)"
	"mean(tGravityAcc-mean()-Z)"
	"mean(tGravityAcc-std()-X)"
	"mean(tGravityAcc-std()-Y)"
	"mean(tGravityAcc-std()-Z)"
	"mean(tBodyAccJerk-mean()-X)"
	"mean(tBodyAccJerk-mean()-Y)"
	"mean(tBodyAccJerk-mean()-Z)"
	"mean(tBodyAccJerk-std()-X)"
	"mean(tBodyAccJerk-std()-Y)"
	"mean(tBodyAccJerk-std()-Z)"
	"mean(tBodyGyro-mean()-X)"
	"mean(tBodyGyro-mean()-Y)"
	"mean(tBodyGyro-mean()-Z)"
	"mean(tBodyGyro-std()-X)"
	"mean(tBodyGyro-std()-Y)"
	"mean(tBodyGyro-std()-Z)"
	"mean(tBodyGyroJerk-mean()-X)"
	"mean(tBodyGyroJerk-mean()-Y)"
	"mean(tBodyGyroJerk-mean()-Z)"
	"mean(tBodyGyroJerk-std()-X)"
	"mean(tBodyGyroJerk-std()-Y)"
	"mean(tBodyGyroJerk-std()-Z)"
	"mean(tBodyAccMag-mean())"
	"mean(tBodyAccMag-std())"
	"mean(tGravityAccMag-mean())"
	"mean(tGravityAccMag-std())"
	"mean(tBodyAccJerkMag-mean())"
	"mean(tBodyAccJerkMag-std())"
	"mean(tBodyGyroMag-mean())"
	"mean(tBodyGyroMag-std())"
	"mean(tBodyGyroJerkMag-mean())"
	"mean(tBodyGyroJerkMag-std())"
	"mean(fBodyAcc-mean()-X)"
	"mean(fBodyAcc-mean()-Y)"
	"mean(fBodyAcc-mean()-Z)"
	"mean(fBodyAcc-std()-X)"
	"mean(fBodyAcc-std()-Y)"
	"mean(fBodyAcc-std()-Z)"
	"mean(fBodyAcc-meanFreq()-X)"
	"mean(fBodyAcc-meanFreq()-Y)"
	"mean(fBodyAcc-meanFreq()-Z)"
	"mean(fBodyAccJerk-mean()-X)"
	"mean(fBodyAccJerk-mean()-Y)"
	"mean(fBodyAccJerk-mean()-Z)"
	"mean(fBodyAccJerk-std()-X)"
	"mean(fBodyAccJerk-std()-Y)"
	"mean(fBodyAccJerk-std()-Z)"
	"mean(fBodyAccJerk-meanFreq()-X)"
	"mean(fBodyAccJerk-meanFreq()-Y)"
	"mean(fBodyAccJerk-meanFreq()-Z)"
	"mean(fBodyGyro-mean()-X)"
	"mean(fBodyGyro-mean()-Y)"
	"mean(fBodyGyro-mean()-Z)"
	"mean(fBodyGyro-std()-X)"
	"mean(fBodyGyro-std()-Y)"
	"mean(fBodyGyro-std()-Z)"
	"mean(fBodyGyro-meanFreq()-X)"
	"mean(fBodyGyro-meanFreq()-Y)"
	"mean(fBodyGyro-meanFreq()-Z)"
	"mean(fBodyAccMag-mean())"
	"mean(fBodyAccMag-std())"
	"mean(fBodyAccMag-meanFreq())"
	"mean(fBodyBodyAccJerkMag-mean())"
	"mean(fBodyBodyAccJerkMag-std())"
	"mean(fBodyBodyAccJerkMag-meanFreq())"
	"mean(fBodyBodyGyroMag-mean())"
	"mean(fBodyBodyGyroMag-std())"
	"mean(fBodyBodyGyroMag-meanFreq())"
	"mean(fBodyBodyGyroJerkMag-mean())"
	"mean(fBodyBodyGyroJerkMag-std())"
	"mean(fBodyBodyGyroJerkMag-meanFreq())"