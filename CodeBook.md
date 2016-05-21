Code Book
=========

This code book describes the variables, the data, and any transformations or work that was performed to clean up the data.

The data:
=========
The data used for this project came from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ of the Samsung Galaxy S smartphone. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

Mean()	: Mean value
Std()	: Standard deviation

The variables list in "meanstd_tidydata.csv":
=============================================
1 subject					: Identifies the Subject involved in the test/measurement activity
2 activity					: Describes the Activity performed by the subject during test/measurement

The below Mean() and Std() data is obtained by averaging the mean of the above signals listed above:

3 tBodyAcc-Mean()-X
4 tBodyAcc-Mean()-Y
5 tBodyAcc-Mean()-Z
6 tBodyAcc-Std()-X
7 tBodyAcc-Std()-Y
8 tBodyAcc-Std()-Z
9 tGravityAcc-Mean()-X
10 tGravityAcc-Mean()-Y
11 tGravityAcc-Mean()-Z
12 tGravityAcc-Std()-X
13 tGravityAcc-Std()-Y
14 tGravityAcc-Std()-Z
15 tBodyAccJerk-Mean()-X
16 tBodyAccJerk-Mean()-Y
17 tBodyAccJerk-Mean()-Z
18 tBodyAccJerk-Std()-X
19 tBodyAccJerk-Std()-Y
20 tBodyAccJerk-Std()-Z
21 tBodyGyro-Mean()-X
22 tBodyGyro-Mean()-Y
23 tBodyGyro-Mean()-Z
24 tBodyGyro-Std()-X
25 tBodyGyro-Std()-Y
26 tBodyGyro-Std()-Z
27 tBodyGyroJerk-Mean()-X
28 tBodyGyroJerk-Mean()-Y
29 tBodyGyroJerk-Mean()-Z
30 tBodyGyroJerk-Std()-X
31 tBodyGyroJerk-Std()-Y
32 tBodyGyroJerk-Std()-Z
33 tBodyAccMag-Mean()
34 tBodyAccMag-Std()
35 tGravityAccMag-Mean()
36 tGravityAccMag-Std()
37 tBodyAccJerkMag-Mean()
38 tBodyAccJerkMag-Std()
39 tBodyGyroMag-Mean()
40 tBodyGyroMag-Std()
41 tBodyGyroJerkMag-Mean()
42 tBodyGyroJerkMag-Std()
43 fBodyAcc-Mean()-X
44 fBodyAcc-Mean()-Y
45 fBodyAcc-Mean()-Z
46 fBodyAcc-Std()-X
47 fBodyAcc-Std()-Y
48 fBodyAcc-Std()-Z
49 fBodyAccJerk-Mean()-X
50 fBodyAccJerk-Mean()-Y
51 fBodyAccJerk-Mean()-Z
52 fBodyAccJerk-Std()-X
53 fBodyAccJerk-Std()-Y
54 fBodyAccJerk-Std()-Z
55 fBodyGyro-Mean()-X
56 fBodyGyro-Mean()-Y
57 fBodyGyro-Mean()-Z
58 fBodyGyro-Std()-X
59 fBodyGyro-Std()-Y
60 fBodyGyro-Std()-Z
61 fBodyAccMag-Mean()
62 fBodyAccMag-Std()
63 fBodyBodyAccJerkMag-Mean()
64 fBodyBodyAccJerkMag-Std()
65 fBodyBodyGyroMag-Mean()
66 fBodyBodyGyroMag-Std()
67 fBodyBodyGyroJerkMag-Mean()
68 fBodyBodyGyroJerkMag-Std()
