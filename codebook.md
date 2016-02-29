This codebook contains explanations of the data file “tidy_averages.txt” output by the script “run_analysis.R”.  For details of the data that is consumed by this script, see “features_info.txt” and “README.txt” which can be found with the data that is consumed by this script.

The variables in the output database come from a smartphone’s accelerometer and gyroscope.  The signals were captured at 50 Hz and were filtered as described in “features_info.txt”.

The below variables appear in the output dataset.  The data are normalized to +/- 1.  A prefix of “t” denotes a time domain signal (units are seconds) and a prefix of “f” denotes a frequency domain signal (units are Hz).  A suffix of “-XYZ” denotes that data was collected for the X, Y and Z axes.  A suffix of “Mag” denotes magnitude.

tBodyAcc-XYZ: body acceleration XYZ  
tGravityAcc-XYZ: gravity acceleration XYZ  
tBodyAccJerk-XYZ: body jerk acceleration XYZ  
tBodyGyro-XYZ: body gyroscope XYZ  
tBodyGyroJerk-XYZ: body gyroscope jerk XYZ  
tBodyAccMag: body acceleration magnitude  
tGravityAccMag: gravity acceleration magnitude  
tBodyAccJerkMag: body acceleration jerk magnitude  
tBodyGyroMag: body gyroscope magnitude  
tBodyGyroJerkMag: body gyroscope jerk magnitude  
fBodyAcc-XYZ: body acceleration XYZ  
fBodyAccJerk-XYZ: body acceleration jerk XYZ  
fBodyGyro-XYZ: body gyroscope XYZ  
fBodyAccMag: body acceleration magnitude  
fBodyAccJerkMag: body acceleration jerk magnitude  
fBodyGyroMag: body gyroscope magnitude  
fBodyGyroJerkMag: body gyroscope jerk magnitude  

The below mean values were calculated by averaging the related signals in a signal window sample and are also included in the dataset:  
gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

For each of the above values, both the mean (denoted by “mean”) and the standard deviation (denoted by “std) were extracted on a per activity per subject basis.  This gives 79 columns of numeric data plus one column to indicated subject and one column activity for a total of 81 columns of data in the output dataset.

The activities labeled in the dataset are:
 
1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  

There were 30 volunteer subjects that contributed to the data.  With 6 activities, this yields 180 rows in the final dataset (the header row denoting column names is excluded from this calculation).

The full list of column names in the output dataset is below:

activity  
subject  
tBodyAcc.mean.X  
tBodyAcc.mean.Y  
tBodyAcc.mean.Z  
tBodyAcc.std.X  
tBodyAcc.std.Y  
tBodyAcc.std.Z  
tGravityAcc.mean.X  
tGravityAcc.mean.Y  
tGravityAcc.mean.Z  
tGravityAcc.std.X  
tGravityAcc.std.Y  
tGravityAcc.std.Z  
tBodyAccJerk.mean.X  
tBodyAccJerk.mean.Y  
tBodyAccJerk.mean.Z  
tBodyAccJerk.std.X  
tBodyAccJerk.std.Y  
tBodyAccJerk.std.Z  
tBodyGyro.mean.X  
tBodyGyro.mean.Y  
tBodyGyro.mean.Z  
tBodyGyro.std.X  
tBodyGyro.std.Y  
tBodyGyro.std.Z  
tBodyGyroJerk.mean.X  
tBodyGyroJerk.mean.Y  
tBodyGyroJerk.mean.Z  
tBodyGyroJerk.std.X  
tBodyGyroJerk.std.Y  
tBodyGyroJerk.std.Z  
tBodyAccMag.mean  
tBodyAccMag.std  
tGravityAccMag.mean  
tGravityAccMag.std  
tBodyAccJerkMag.mean  
tBodyAccJerkMag.std  
tBodyGyroMag.mean  
tBodyGyroMag.std  
tBodyGyroJerkMag.mean  
tBodyGyroJerkMag.std  
fBodyAcc.mean.X  
fBodyAcc.mean.Y  
fBodyAcc.mean.Z  
fBodyAcc.std.X  
fBodyAcc.std.Y  
fBodyAcc.std.Z  
fBodyAcc.meanFreq.X  
fBodyAcc.meanFreq.Y  
fBodyAcc.meanFreq.Z  
fBodyAccJerk.mean.X  
fBodyAccJerk.mean.Y  
fBodyAccJerk.mean.Z  
fBodyAccJerk.std.X  
fBodyAccJerk.std.Y  
fBodyAccJerk.std.Z  
fBodyAccJerk.meanFreq.X  
fBodyAccJerk.meanFreq.Y  
fBodyAccJerk.meanFreq.Z  
fBodyGyro.mean.X  
fBodyGyro.mean.Y  
fBodyGyro.mean.Z  
fBodyGyro.std.X  
fBodyGyro.std.Y  
fBodyGyro.std.Z  
fBodyGyro.meanFreq.X  
fBodyGyro.meanFreq.Y  
fBodyGyro.meanFreq.Z  
fBodyAccMag.mean  
fBodyAccMag.std  
fBodyAccMag.meanFreq  
fBodyBodyAccJerkMag.mean  
fBodyBodyAccJerkMag.std  
fBodyBodyAccJerkMag.meanFreq  
fBodyBodyGyroMag.mean  
fBodyBodyGyroMag.std  
fBodyBodyGyroMag.meanFreq  
fBodyBodyGyroJerkMag.mean  
fBodyBodyGyroJerkMag.std  
fBodyBodyGyroJerkMag.meanFreq  

