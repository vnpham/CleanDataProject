Code Book for TidyData.txt
========================================================
- The features in this database come from measurements using the accelerometer and gyroscope of the Samsung Galaxy S smartphone.
- Each record in the tidy data table contains values for 81 variables
- Variables in the files **TidyData.txt** can be divided into 2 groups: partition variables and mean values of various measurements for each partition

### Partition Variables
Identifying the partition under which the value of variables in the second group are calculated.
- Subject : ID of the subject who performed the activity under measurement.  Range is from 1 to 30.
- Activity_Label : the activity under measurement.  Activity range is:
   + LAYING
   + SITTING
   + STANDING
   + WALKING
   + WALKING_DOWNSTAIRS
   + WALKING_UPSTAIRS

### Mean values of various measurements for each partition
- All of the following variables are average of multiple measurement in each partition (subject & activity).
- All values are normalized and bounded within [-1,1].
- The meaning of each variable can be understood by decomposing various parts of the name of the variable
   + first character of the variable names ('t' or 'f'): 't' means time domain signal, 'f' is frequency domain signal
   + "Body" or "Gravity" part: accelleration signals are separated into body or gravity acceleration
   + "Acc" or "Gyro": "Acc" stands for signals measured by acclerometer.  "Gyro" stands for signals measured by gyroscope
   + statistics done to the original signal:
      * mean(): Mean value
      * std(): Standard deviation
      * meanFreq(): Weighted average of the frequency components to obtain a mean frequency
   Note again that the value reported in this file is the average of these statistics in each partition of subject & activity.
   + Direction: (-X, -Y, or -Z) spatial direction of the measurement
- Finally, here's the list of variable names:
   + tBodyAcc-mean()-X
	+ tBodyAcc-mean()-Y
	+ tBodyAcc-mean()-Z
	+ tBodyAcc-std()-X
	+ tBodyAcc-std()-Y
	+ tBodyAcc-std()-Z
	+ tGravityAcc-mean()-X
	+ tGravityAcc-mean()-Y
	+ tGravityAcc-mean()-Z
	+ tGravityAcc-std()-X
	+ tGravityAcc-std()-Y
	+ tGravityAcc-std()-Z
	+ tBodyAccJerk-mean()-X
	+ tBodyAccJerk-mean()-Y
	+ tBodyAccJerk-mean()-Z
	+ tBodyAccJerk-std()-X
	+ tBodyAccJerk-std()-Y
	+ tBodyAccJerk-std()-Z
	+ tBodyGyro-mean()-X
	+ tBodyGyro-mean()-Y
	+ tBodyGyro-mean()-Z
	+ tBodyGyro-std()-X
	+ tBodyGyro-std()-Y
	+ tBodyGyro-std()-Z
	+ tBodyGyroJerk-mean()-X
	+ tBodyGyroJerk-mean()-Y
	+ tBodyGyroJerk-mean()-Z
	+ tBodyGyroJerk-std()-X
	+ tBodyGyroJerk-std()-Y
	+ tBodyGyroJerk-std()-Z
	+ tBodyAccMag-mean()
	+ tBodyAccMag-std()
	+ tGravityAccMag-mean()
	+ tGravityAccMag-std()
	+ tBodyAccJerkMag-mean()
	+ tBodyAccJerkMag-std()
	+ tBodyGyroMag-mean()
	+ tBodyGyroMag-std()
	+ tBodyGyroJerkMag-mean()
	+ tBodyGyroJerkMag-std()
	+ fBodyAcc-mean()-X
	+ fBodyAcc-mean()-Y
	+ fBodyAcc-mean()-Z
	+ fBodyAcc-std()-X
	+ fBodyAcc-std()-Y
	+ fBodyAcc-std()-Z
	+ fBodyAcc-meanFreq()-X
	+ fBodyAcc-meanFreq()-Y
	+ fBodyAcc-meanFreq()-Z
	+ fBodyAccJerk-mean()-X
	+ fBodyAccJerk-mean()-Y
	+ fBodyAccJerk-mean()-Z
	+ fBodyAccJerk-std()-X
	+ fBodyAccJerk-std()-Y
	+ fBodyAccJerk-std()-Z
	+ fBodyAccJerk-meanFreq()-X
	+ fBodyAccJerk-meanFreq()-Y
	+ fBodyAccJerk-meanFreq()-Z
	+ fBodyGyro-mean()-X
	+ fBodyGyro-mean()-Y
	+ fBodyGyro-mean()-Z
	+ fBodyGyro-std()-X
	+ fBodyGyro-std()-Y
	+ fBodyGyro-std()-Z
	+ fBodyGyro-meanFreq()-X
	+ fBodyGyro-meanFreq()-Y
	+ fBodyGyro-meanFreq()-Z
	+ fBodyAccMag-mean()
	+ fBodyAccMag-std()
	+ fBodyAccMag-meanFreq()
	+ fBodyBodyAccJerkMag-mean()
	+ fBodyBodyAccJerkMag-std()
	+ fBodyBodyAccJerkMag-meanFreq()
	+ fBodyBodyGyroMag-mean()
	+ fBodyBodyGyroMag-std()
	+ fBodyBodyGyroMag-meanFreq()
	+ fBodyBodyGyroJerkMag-mean()
	+ fBodyBodyGyroJerkMag-std()
	+ fBodyBodyGyroJerkMag-meanFreq()
