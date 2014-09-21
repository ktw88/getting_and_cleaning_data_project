Code Book
===============================

# Subject and Activities
* Subject.ID
  - Takes a range of values between 1-30 (30 subjects in total)
* Activity
  - LAYING
  - SITTING
  - STANDING
  - WALKING
  - WALKING_DOWNSTAIRS
  - WALKING_UPSTAIRS
  

# Mean of Measurement values
The mean of a series of variables corresponding to each subject and
each subject activity were calulated based on the original aggregated
data. Taking the mean allow us to average out the signal and remove some of the noise.

Some variables would also have a X,Y,Z term to indicate information for
each of the three dimensions. The terms may also have a term mean() to indicate that it is the mean of the raw data and std() to indicate that it is
the standard deviation.

All the variables have a suffix of ".Subject.Activity.mean" to indicate that
there are calculated means of the corresponding variable for each subject and each activity.

The following values are all floating point numbers.

* Total Body Acceleration
  - tBodyAcc-mean()-X.Subject.Activity.mean
	- tBodyAcc-mean()-Y.Subject.Activity.mean
	- tBodyAcc-mean()-Z.Subject.Activity.mean
	- tBodyAcc-std()-X.Subject.Activity.mean
	- tBodyAcc-std()-Y.Subject.Activity.mean
	- tBodyAcc-std()-Z.Subject.Activity.mean

* Total Gravity Acceleration
	- tGravityAcc-mean()-X.Subject.Activity.mean
	- tGravityAcc-mean()-Y.Subject.Activity.mean
	- tGravityAcc-mean()-Z.Subject.Activity.mean
	- tGravityAcc-std()-X.Subject.Activity.mean
	- tGravityAcc-std()-Y.Subject.Activity.mean
	- tGravityAcc-std()-Z.Subject.Activity.mean
  
* Total Body Acceleration Jerk
	- tBodyAccJerk-mean()-X.Subject.Activity.mean
	- tBodyAccJerk-mean()-Y.Subject.Activity.mean
	- tBodyAccJerk-mean()-Z.Subject.Activity.mean
	- tBodyAccJerk-std()-X.Subject.Activity.mean
	- tBodyAccJerk-std()-Y.Subject.Activity.mean
	- tBodyAccJerk-std()-Z.Subject.Activity.mean

* Total Body Gyro
	- tBodyGyro-mean()-X.Subject.Activity.mean
	- tBodyGyro-mean()-Y.Subject.Activity.mean
	- tBodyGyro-mean()-Z.Subject.Activity.mean
	- tBodyGyro-std()-X.Subject.Activity.mean
	- tBodyGyro-std()-Y.Subject.Activity.mean
	- tBodyGyro-std()-Z.Subject.Activity.mean

* Total Body Gyro Jerk
	- tBodyGyroJerk-mean()-X.Subject.Activity.mean
	- tBodyGyroJerk-mean()-Y.Subject.Activity.mean
	- tBodyGyroJerk-mean()-Z.Subject.Activity.mean
	- tBodyGyroJerk-std()-X.Subject.Activity.mean
	- tBodyGyroJerk-std()-Y.Subject.Activity.mean
	- tBodyGyroJerk-std()-Z.Subject.Activity.mean

* Total Body Acceleration Magnitude
	- tBodyAccMag-mean().Subject.Activity.mean
	- tBodyAccMag-std().Subject.Activity.mean

* Total Gravity Acceleration Magnitude
	- tGravityAccMag-mean().Subject.Activity.mean
	- tGravityAccMag-std().Subject.Activity.mean

* Total Body Acceleration Jerk Magnitude
	- tBodyAccJerkMag-mean().Subject.Activity.mean
	- tBodyAccJerkMag-std().Subject.Activity.mean

* Total Body Gyroscope Magnitude
	- tBodyGyroMag-mean().Subject.Activity.mean
	- tBodyGyroMag-std().Subject.Activity.mean

* Total Body Gyroscope Jerk Magnitude
	- tBodyGyroJerkMag-mean().Subject.Activity.mean
	- tBodyGyroJerkMag-std().Subject.Activity.mean

* Body Acceleration
	- fBodyAcc-mean()-X.Subject.Activity.mean
	- fBodyAcc-mean()-Y.Subject.Activity.mean
	- fBodyAcc-mean()-Z.Subject.Activity.mean
	- fBodyAcc-std()-X.Subject.Activity.mean
	- fBodyAcc-std()-Y.Subject.Activity.mean
	- fBodyAcc-std()-Z.Subject.Activity.mean

* Body Frequency
	- fBodyAcc-meanFreq()-X.Subject.Activity.mean
	- fBodyAcc-meanFreq()-Y.Subject.Activity.mean
	- fBodyAcc-meanFreq()-Z.Subject.Activity.mean

* Body Acceleration and Jerk
	- fBodyAccJerk-mean()-X.Subject.Activity.mean
	- fBodyAccJerk-mean()-Y.Subject.Activity.mean
	- fBodyAccJerk-mean()-Z.Subject.Activity.mean
	- fBodyAccJerk-std()-X.Subject.Activity.mean
	- fBodyAccJerk-std()-Y.Subject.Activity.mean
	- fBodyAccJerk-std()-Z.Subject.Activity.mean

* Body Mean Frequency
	- fBodyAccJerk-meanFreq()-X.Subject.Activity.mean
	- fBodyAccJerk-meanFreq()-Y.Subject.Activity.mean
	- fBodyAccJerk-meanFreq()-Z.Subject.Activity.mean

* Gyroscope Information
	- fBodyGyro-mean()-X.Subject.Activity.mean
	- fBodyGyro-mean()-Y.Subject.Activity.mean
	- fBodyGyro-mean()-Z.Subject.Activity.mean
	- fBodyGyro-std()-X.Subject.Activity.mean
	- fBodyGyro-std()-Y.Subject.Activity.mean
	- fBodyGyro-std()-Z.Subject.Activity.mean

* Gyroscope Frequency
	- fBodyGyro-meanFreq()-X.Subject.Activity.mean
	- fBodyGyro-meanFreq()-Y.Subject.Activity.mean
	- fBodyGyro-meanFreq()-Z.Subject.Activity.mean

* Body Acceleration and Jek
	- fBodyAccMag-mean().Subject.Activity.mean
	- fBodyAccMag-std().Subject.Activity.mean
	- fBodyAccMag-meanFreq().Subject.Activity.mean
	- fBodyBodyAccJerkMag-mean().Subject.Activity.mean
	- fBodyBodyAccJerkMag-std().Subject.Activity.mean
	- fBodyBodyAccJerkMag-meanFreq().Subject.Activity.mean
  
* Gyroscope Magnitude and Jerk
	- fBodyBodyGyroMag-mean().Subject.Activity.mean
	- fBodyBodyGyroMag-std().Subject.Activity.mean
	- fBodyBodyGyroMag-meanFreq().Subject.Activity.mean
	- fBodyBodyGyroJerkMag-mean().Subject.Activity.mean
	- fBodyBodyGyroJerkMag-std().Subject.Activity.mean
	- fBodyBodyGyroJerkMag-meanFreq().Subject.Activity.mean

* Angle Information
	- angle(tBodyAccMean,gravity).Subject.Activity.mean
	- angle(tBodyAccJerkMean),gravityMean).Subject.Activity.mean
	- angle(tBodyGyroMean,gravityMean).Subject.Activity.mean
	- angle(tBodyGyroJerkMean,gravityMean).Subject.Activity.mean
	- angle(X,gravityMean).Subject.Activity.mean
	- angle(Y,gravityMean).Subject.Activity.mean
	- angle(Z,gravityMean).Subject.Activity.mean
