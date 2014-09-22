
# Downloads data for project; data was collected from accelerometers from Samsung Galaxy S smartphone.

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl, destfile="UCI_HAR_data.zip")

# For complete documentation, time and date stamp the download. Will comment out for the present.
#dateDownloaded <- date()
#dateDownloaded

# I've commented out the initial steps of downloading; will assume that the zipped Samsung accelerometer data file has been saved into the R working directory. We'll begin with unzipping this file. 

unzip("UCI_HAR_data.zip")

# Input files do not have header of column names; read in with header=FALSE and apply variable names to the columns. Variable names provided in features.txt file.

varNames <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "")

# To retain the variable names as provided in the published dataset, use check.names=FALSE so that parentheses are retained.

testData <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", col.names = varNames$V2, check.names = FALSE)

# Add activity codes to accelemrometer dataset.

activityData <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = c("ActivityCode") )

testData <- cbind(testData, activityData)

# Complete the dataset by adding subject ID to the test dataset. 

subjectData <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = c("Subject_ID") )

testData <- cbind(testData, subjectData)

# Follow the same steps for the training data - adding variable names, adding activity cides, adding subject IDs.

trainData <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", col.names = varNames$V2, check.names = FALSE)

activTrData <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = c("ActivityCode") )

trainData <- cbind(trainData, activTrData)

subjectTrData <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = c("Subject_ID") )

trainData <- cbind(trainData, subjectTrData)

# Merge the training dataset and the test dataset.

mergedData <- rbind(testData, trainData)

# Extract the columns that contain mean and stdev for each measurement.

MeanStdDevSub <- mergedData[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543, 562:563)]

activityString <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("ActivityCode", "Activity") )

# Add descriptive activity labels to the merged dataset, use "ActivityCode" as join column. 

MeanStdDevSub <- merge(MeanStdDevSub, activityString, sort = FALSE)

# Check for missing values. Output included below. Had this included NAs, would have had to directly address what to do with the NAs when the means are computed in the next step.

#> all(colSums(is.na(MeanStdDevSub))==0)
#[1] TRUE

# Consolidate dataset to compute means of all measurement variables by each unique Subject_ID + Activity combination.

MeansDataAgg <- aggregate(. ~ Subject_ID+Activity, data = MeanStdDevSub, FUN=mean)

# Output tidy dataset as space-delimited text file.

write.table(MeansDataAgg, file="Accelerometer_Tidy_Dataset.txt", row.names=FALSE)
