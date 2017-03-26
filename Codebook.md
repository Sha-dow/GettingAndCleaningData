# Code book for Getting and Cleaning Data course project

This codebook describes the dataset produced as a result of Getting and Cleaning data course project.

## Dataset <a name="dataset"></a>

Dataset described in this document is stored to `Tidy_Dataset.txt` file. File is a text file with space separated values.
First row contains the header information.


## Variables <a name="variables"></a>

Variables are described below. 

- `Subject`
    Identifier, values between 1-30
    
- `Activity`
    	Activity type. Options:
        - WALKING
        - WALKING_UPSTAIRS
    	- WALKING_DOWNSTAIRS
    	- SITTING
    	- STANDING
    	- LAYING
	    
Following values are measurements for different signals. Names are quite self descriptive. Values are floating point numbers between -1 and 1.
Measurements consist of Time and Frequency based data containing mean and std -values.

Time based measurements:

- `TimeBodyAccelerometer-mean()-X`
- `TimeBodyAccelerometer-mean()-Y`
- `TimeBodyAccelerometer-mean()-Z`
- `TimeBodyAccelerometer-std()-X`
- `TimeBodyAccelerometer-std()-Y`
- `TimeBodyAccelerometer-std()-Z`

- `TimeGravityAccelerometer-mean()-X`
- `TimeGravityAccelerometer-mean()-Y`
- `TimeGravityAccelerometer-mean()-Z`
- `TimeGravityAccelerometer-std()-X`
- `TimeGravityAccelerometer-std()-Y`
- `TimeGravityAccelerometer-std()-Z`

- `TimeBodyAccelerometerJerk-mean()-X`
- `TimeBodyAccelerometerJerk-mean()-Y`
- `TimeBodyAccelerometerJerk-mean()-Z`
- `TimeBodyAccelerometerJerk-std()-X`
- `TimeBodyAccelerometerJerk-std()-Y`
- `TimeBodyAccelerometerJerk-std()-Z`

- `TimeBodyGyroscope-mean()-X`
- `TimeBodyGyroscope-mean()-Y`
- `TimeBodyGyroscope-mean()-Z`
- `TimeBodyGyroscope-std()-X`
- `TimeBodyGyroscope-std()-Y`
- `TimeBodyGyroscope-std()-Z`

- `TimeBodyGyroscopeJerk-mean()-X`
- `TimeBodyGyroscopeJerk-mean()-Y`
- `TimeBodyGyroscopeJerk-mean()-Z`
- `TimeBodyGyroscopeJerk-std()-X`
- `TimeBodyGyroscopeJerk-std()-Y`
- `TimeBodyGyroscopeJerk-std()-Z`

- `TimeBodyAccelerometerMagnitude-mean()`
- `TimeBodyAccelerometerMagnitude-std()`

- `TimeGravityAccelerometerMagnitude-mean()`
- `TimeGravityAccelerometerMagnitude-std()`

- `TimeBodyAccelerometerJerkMagnitude-mean()`
- `TimeBodyAccelerometerJerkMagnitude-std()`

- `TimeBodyGyroscopeMagnitude-mean()`
- `TimeBodyGyroscopeMagnitude-std()`

- `TimeBodyGyroscopeJerkMagnitude-mean()`
- `TimeBodyGyroscopeJerkMagnitude-std()`

Frequency based measurements:

- `FrequencyBodyAccelerometer-mean()-X`
- `FrequencyBodyAccelerometer-mean()-Y`
- `FrequencyBodyAccelerometer-mean()-Z`
- `FrequencyBodyAccelerometer-std()-X`
- `FrequencyBodyAccelerometer-std()-Y`
- `FrequencyBodyAccelerometer-std()-Z`

- `FrequencyBodyAccelerometerJerk-mean()-X`
- `FrequencyBodyAccelerometerJerk-mean()-Y`
- `FrequencyBodyAccelerometerJerk-mean()-Z`
- `FrequencyBodyAccelerometerJerk-std()-X`
- `FrequencyBodyAccelerometerJerk-std()-Y`
- `FrequencyBodyAccelerometerJerk-std()-Z`

- `FrequencyBodyGyroscope-mean()-X`
- `FrequencyBodyGyroscope-mean()-Y`
- `FrequencyBodyGyroscope-mean()-Z`
- `FrequencyBodyGyroscope-std()-X`
- `FrequencyBodyGyroscope-std()-Y`
- `FrequencyBodyGyroscope-std()-Z`

- `FrequencyBodyAccelerometerMagnitude-mean()`
- `FrequencyBodyAccelerometerMagnitude-std()`

- `FrequencyBodyAccelerometerJerkMagnitude-mean()`
- `FrequencyBodyAccelerometerJerkMagnitude-std()`

- `FrequencyBodyGyroscopeMagnitude-mean()`
- `FrequencyBodyGyroscopeMagnitude-std()`

- `FrequencyBodyGyroscopeJerkMagnitude-mean()`
- `FrequencyBodyGyroscopeJerkMagnitude-std()`

## Applied Transformations <a name="transformations"></a>

Original source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Following transformations were applied to source data:

- Merged the training and the test sets to create one data set.
- Extracted only the measurements on the mean and standard deviation for each measurement.
- Used descriptive activity names to name the activities in the data set
- Appropriately labeled the data set with descriptive variable names.

