Codebook for Accelerometer_Tidy_Dataset 

Subject_ID
	Integer ranging from 1-30 representing the subject who performed the activity for each window sample.	

Activity	
	String; one of the following 6 values
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

ActivityCode	
	Integer ranging from 1-6; UCI HAR Dataset/activity_labels.txt provided the lookup table linking Activity codes 		with their descriptive labels given in the Activity column. 		

The remainder of the variables - in columns 4 to 69 - are numeric, and range from -1 to 1. These variables represent the MEAN for each unique combination of subject ID and activity of the following variables from the original dataset.

tBodyAcc-mean()-X	
tBodyAcc-mean()-Y	
tBodyAcc-mean()-Z	

tBodyAcc-std()-X	
tBodyAcc-std()-Y	
tBodyAcc-std()-Z
	
tGravityAcc-mean()-X	
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z	

tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	

tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
tBodyAccJerk-mean()-Z	

tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y	
tBodyAccJerk-std()-Z	

tBodyGyro-mean()-X	
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z	

tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	

tBodyGyroJerk-mean()-X	
tBodyGyroJerk-mean()-Y	
tBodyGyroJerk-mean()-Z	

tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	

tBodyAccMag-mean()	
tBodyAccMag-std()	

tGravityAccMag-mean()	
tGravityAccMag-std()	

tBodyAccJerkMag-mean()	
tBodyAccJerkMag-std()	

tBodyGyroMag-mean()	
tBodyGyroMag-std()	

tBodyGyroJerkMag-mean()	
tBodyGyroJerkMag-std()	

fBodyAcc-mean()-X	
fBodyAcc-mean()-Y	
fBodyAcc-mean()-Z	

fBodyAcc-std()-X	
fBodyAcc-std()-Y	
fBodyAcc-std()-Z	

fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y	
fBodyAccJerk-mean()-Z	

fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	

fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z	

fBodyGyro-std()-X	
fBodyGyro-std()-Y	
fBodyGyro-std()-Z	

fBodyAccMag-mean()	
fBodyAccMag-std()	

fBodyBodyAccJerkMag-mean()	
fBodyBodyAccJerkMag-std()	

fBodyBodyGyroMag-mean()	
fBodyBodyGyroMag-std()	

fBodyBodyGyroJerkMag-mean()	
fBodyBodyGyroJerkMag-std()


From the orginal documentation file (UCI HAR Dataset/README.txt): 

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions." 	

