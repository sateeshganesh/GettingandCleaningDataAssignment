========================================================================================================================================
Getting and Cleaning Data Course Project on wearable computing data analysis from the accelerometers of the Samsung Galaxy S smartphone
========================================================================================================================================

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data analyzed here is the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data source for this project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Here are the steps performed for this project:
==============================================

1. Include all the R libraries needed for this project.
2. Download the data file from the url above.
3. Unzip the file and extract the files inside.
4. Read all the necessary files from the unzipped folder:
	a. activity_labels.txt
	b. features.txt
	c. subject_test.txt
	d. subject_train.txt
	e. X_train.txt
	f. X_test.txt
	g. y_train.txt
	h. y_test.txt

5. Merge the training and the test sets to create one data set.
6. Extract only the measurements on the mean and standard deviation for each measurement.
7. Use descriptive activity names to name the activities in the data set
8. Label the data set with descriptive variable names.
9. From the data set in step 4, creates a tidy data set with the average of each variable for each activity and each subject.

The project includes the following files:
=========================================

- 'README.md'			: Explains how all of the scripts work and how they are connected.

- 'run_analysis.R'		: Has the R script to perform all the steps mentioned above for this project.  

- 'CodeBook.md'			: Describes the variables, the data, and any transformations or work that is performed to clean up the data for this project.

- 'meanstd_tidydata.csv': A tidy data set with the average of each measurements on the mean and standard deviation for each activity and each subject.

