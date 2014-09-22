
This script, run_analysis.R, downloads the Human Acivity Recognition Using Smartphones Dataset Version 1.0 [1], then unzips,  merges, and simplifies the dataset to meet the goals of the Coursera Getting and Cleaning Data Course Project.

From the original documentation (UCI HAR Dataset/README.txt) describing this dataset: 

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

The original dataset was split into a training and test datasets, each with associated files identifying subjects, variable labels, and activities.

This script downloads the data from the web, unzips the data, and then follows the same procedure for the test data and training data:

1) Apply meaningful variable names to the columns
2) Add in activity codes to the dataset   
3) Add subject IDs to the dataset

The test and training datasets are then merged. 

The dataset is then reduced to contain Subject_ID, ActivityCode, and only those feature variables that contain mean and standard deviation measurements; see codebook.md for full list. 

Descriptive activity labels (e.g. "WALKING") are added to the dataset.

Although commented out in the current script, a check for missing values was performed at this juncture. No missing values were found. 

(This code was run: all(colSums(is.na(MeanStdDevSub))==0); returned [1] TRUE)

Finally, the dataset was consolidated via the aggregate function to compute means of all measurement variables by each unique Subject_ID-Activity combination, and output to a space-delimited text file.

References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


