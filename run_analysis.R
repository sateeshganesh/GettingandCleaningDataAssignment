# Set the working directory
#setwd("C:/Users/saxga8/Documents/Personal/CourseraRProg")
setwd("/Users/sateeshganesh/Documents/DataScientistCourse-Coursera/GettingandCleaningDataAssignment")

# Include libraries for this project:
library(downloader) # Used to download and open a zip file
library(data.table)
library(plyr)           
library(dplyr)

# Download the file for Getting and Cleaning Data Course Project
download("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", dest = "UCI HAR Dataset.zip", mode = "wb")
unzip("UCI HAR Dataset.zip",exdir = "./")

# Step 1: Merges the training and the test sets to create one data set:

## Read the activity_labels.txt file into a data frame and add the column names as "actid" and "activity":
act_lab <- tbl_df(read.table("./UCI HAR Dataset/activity_labels.txt",sep = "",col.names = c("actid","activity")))

## Read the features.txt file into a data frame and add the column names as "featid" and "feature":
feat <- tbl_df(read.table("./UCI HAR Dataset/features.txt",sep = "",col.names = c("featid","feature")))

## Read the subject_test.txt file into a data frame:
sub_test <- tbl_df(read.table("./UCI HAR Dataset/test/subject_test.txt"))

## Read the X_test.txt file into a data frame:
x_test <- tbl_df(read.table("./UCI HAR Dataset/test/X_test.txt",sep = ""))

## Read the y_test.txt file into a data frame:
y_test <- tbl_df(read.table("./UCI HAR Dataset/test/y_test.txt",sep = ""))

## Read the subject_train.txt file into a data frame:
sub_train <- tbl_df(read.table("./UCI HAR Dataset/train/subject_train.txt"))

## Read the X_train.txt file into a data frame:
x_train <- tbl_df(read.table("./UCI HAR Dataset/train/X_train.txt",sep = ""))

## Read the y_train.txt file into a data frame:
y_train <- tbl_df(read.table("./UCI HAR Dataset/train/y_train.txt",sep = ""))

## Merge the test and the train datasets to create one dataset:
### Row merge the test and training subject data sets
subject <- rbind(sub_test, sub_train) 

### Row merge the test and training activity data sets
actid <- rbind(y_test, y_train) 

### Row merge the test and training measurements/readings data sets
testtrain <- rbind(x_test, x_train) 

### Column bind the subject, activity and measurements/readings data sets
testtrainmerged <- cbind(subject,actid,testtrain) 


# Step 2: Appropriately label the data set with descriptive variable names:
## Assign the column names to all the variables in the data set.
colnames(testtrainmerged) <- c("subject","actid",as.vector(feat$feature))

## Replace "mean" to "Mean" in the column names for easy readability.
names(testtrainmerged) <- gsub("mean","Mean",names(testtrainmerged))

## Replace "std" to "Std" in the column names for easy readability.
names(testtrainmerged) <- gsub("std","Std",names(testtrainmerged))


# Step 3: Use descriptive activity names to name the activities in the data set:
## Join and get the descriptive activity names from the activity labels file.
testtrainmergedact <- inner_join(testtrainmerged,act_lab,by = "actid") 

# Step 4: Extract only the measurements on the mean and standard deviation for each measurement:
## Remove duplicate and unwanted columns and select only the fields with "Mean" and "Std" in the column names and sort the data set by subject and activity.
onlymeanstd <- testtrainmergedact[,!duplicated(colnames(testtrainmergedact))] %>% select(subject,activity,matches("Mean|Std"),-matches("angle|MeanFreq")) %>% arrange(subject,activity)

# Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject:
## Convert the data frame to a data table to easily calculate the mean (Average) using lapply function.
onlymeanstd <- data.table(onlymeanstd) 

## Calculate the mean (Average) using lapply function:
avgmeanstd <- onlymeanstd[, lapply(.SD, mean),by = list(subject,activity)]
avgmeanstd <- tbl_df(avgmeanstd)

## Write the tidy data set in to a file:
write.csv(avgmeanstd, file = "./meanstd_tidydata.csv", row.names = FALSE)

