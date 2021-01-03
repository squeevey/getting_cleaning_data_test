# CodeBook for Getting & Cleaning Data Quiz
This codebook describes the data found in the file "AveragedData.txt" in this directory.
It is based of the data found here: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
* (for futher data set details read the README.txt in the data set - also included at the footer of this document)

### The data was transformed into it's current format using the following steps
1. Read, Label, and Combine testing & training data.
2. Extract only the mean and standard deviation measurements of each measurement. 
3. Apply the activity label instead of an unclear id.
4. Label columns with appropriate fields.
5. Average the data for each data variable grouped by the Activity and the Subject Id.


Below is the list of column variables and comment found in the associated AveragedData.txt

|  Variable Name | Comment |
|---|---|
| activity| Name of activity (WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING, LAYING) |
| subject_id| Id of subject |
| Averaged_Time-BodyAccelerometer-mean()-X | mean of tBodyAcc-mean()-X|
| Averaged_Time-BodyAccelerometer-mean()-Y | mean of tBodyAcc-mean()-Y|
| Averaged_Time-BodyAccelerometer-mean()-Z | mean of tBodyAcc-mean()-Z|
| Averaged_Time-GravityAccelerometer-mean()-X | mean of tGravityAcc-mean()-X|
| Averaged_Time-GravityAccelerometer-mean()-Y | mean of tGravityAcc-mean()-Y|
| Averaged_Time-GravityAccelerometer-mean()-Z | mean of tGravityAcc-mean()-Z|
| Averaged_Time-BodyAccelerometerJerk-mean()-X | mean of tBodyAccJerk-mean()-X|
| Averaged_Time-BodyAccelerometerJerk-mean()-Y | mean of tBodyAccJerk-mean()-Y|
| Averaged_Time-BodyAccelerometerJerk-mean()-Z | mean of tBodyAccJerk-mean()-Z|
| Averaged_Time-BodyGyroscope-mean()-X | mean of tBodyGyro-mean()-X|
| Averaged_Time-BodyGyroscope-mean()-Y | mean of tBodyGyro-mean()-Y|
| Averaged_Time-BodyGyroscope-mean()-Z | mean of tBodyGyro-mean()-Z|
| Averaged_Time-BodyGyroscopeJerk-mean()-X | mean of tBodyGyroJerk-mean()-X|
| Averaged_Time-BodyGyroscopeJerk-mean()-Y | mean of tBodyGyroJerk-mean()-Y|
| Averaged_Time-BodyGyroscopeJerk-mean()-Z | mean of tBodyGyroJerk-mean()-Z|
| Averaged_Time-BodyAccelerometerMagnitude-mean( )| mean of tBodyAccMag-mean()|
| Averaged_Time-GravityAccelerometerMagnitude-mean( )| mean of tGravityAccMag-mean()|
| Averaged_Time-BodyAccelerometerJerkMagnitude-mean( )| mean of tBodyAccJerkMag-mean()|
| Averaged_Time-BodyGyroscopeMagnitude-mean( )| mean of tBodyGyroMag-mean()|
| Averaged_Time-BodyGyroscopeJerkMagnitude-mean( )| mean of tBodyGyroJerkMag-mean()|
| Averaged_FFT-BodyAccelerometer-mean()-X | mean of fBodyAcc-mean()-X|
| Averaged_FFT-BodyAccelerometer-mean()-Y | mean of fBodyAcc-mean()-Y|
| Averaged_FFT-BodyAccelerometer-mean()-Z | mean of fBodyAcc-mean()-Z|
| Averaged_FFT-BodyAccelerometer-meanFrequency()-X | mean of fBodyAcc-meanFreq()-X|
| Averaged_FFT-BodyAccelerometer-meanFrequency()-Y | mean of fBodyAcc-meanFreq()-Y|
| Averaged_FFT-BodyAccelerometer-meanFrequency()-Z | mean of fBodyAcc-meanFreq()-Z|
| Averaged_FFT-BodyAccelerometerJerk-mean()-X | mean of fBodyAccJerk-mean()-X|
| Averaged_FFT-BodyAccelerometerJerk-mean()-Y | mean of fBodyAccJerk-mean()-Y|
| Averaged_FFT-BodyAccelerometerJerk-mean()-Z | mean of fBodyAccJerk-mean()-Z|
| Averaged_FFT-BodyAccelerometerJerk-meanFrequency()-X | mean of fBodyAccJerk-meanFreq()-X|
| Averaged_FFT-BodyAccelerometerJerk-meanFrequency()-Y | mean of fBodyAccJerk-meanFreq()-Y|
| Averaged_FFT-BodyAccelerometerJerk-meanFrequency()-Z | mean of fBodyAccJerk-meanFreq()-Z|
| Averaged_FFT-BodyGyroscope-mean()-X | mean of fBodyGyro-mean()-X|
| Averaged_FFT-BodyGyroscope-mean()-Y | mean of fBodyGyro-mean()-Y|
| Averaged_FFT-BodyGyroscope-mean()-Z | mean of fBodyGyro-mean()-Z|
| Averaged_FFT-BodyGyroscope-meanFrequency()-X | mean of fBodyGyro-meanFreq()-X|
| Averaged_FFT-BodyGyroscope-meanFrequency()-Y | mean of fBodyGyro-meanFreq()-Y|
| Averaged_FFT-BodyGyroscope-meanFrequency()-Z | mean of fBodyGyro-meanFreq()-Z|
| Averaged_FFT-BodyAccelerometerMagnitude-mean( )| mean of fBodyAccMag-mean()|
| Averaged_FFT-BodyAccelerometerMagnitude-meanFrequency( )| mean of fBodyAccMag-meanFreq()|
| Averaged_FFT-BodyAccelerometerJerkMagnitude-mean( )| mean of fBodyBodyAccJerkMag-mean()|
| Averaged_FFT-BodyAccelerometerJerkMagnitude-meanFrequency( )| mean of fBodyBodyAccJerkMag-meanFreq()|
| Averaged_FFT-BodyGyroscopeMagnitude-mean( )| mean of fBodyBodyGyroMag-mean()|
| Averaged_FFT-BodyGyroscopeMagnitude-meanFrequency( )| mean of fBodyBodyGyroMag-meanFreq()|
| Averaged_FFT-BodyGyroscopeJerkMagnitude-mean( )| mean of fBodyBodyGyroJerkMag-mean()|
| Averaged_FFT-BodyGyroscopeJerkMagnitude-meanFrequency( )| mean of fBodyBodyGyroJerkMag-meanFreq()|
| Averaged_angle(Time-BodyAccelerometerMean,gravity )| mean of angle(tBodyAccMean,gravity)|
| Averaged_angle(Time-BodyAccelerometerJerkMean),gravityMean )| mean of angle(tBodyAccJerkMean),gravityMean)|
| Averaged_angle(Time-BodyGyroscopeMean,gravityMean )| mean of angle(tBodyGyroMean,gravityMean)|
| Averaged_angle(Time-BodyGyroscopeJerkMean,gravityMean )| mean of angle(tBodyGyroJerkMean,gravityMean)|
| Averaged_angle(X,gravityMean )| mean of angle(X,gravityMean)|
| Averaged_angle(Y,gravityMean )| mean of angle(Y,gravityMean)|
| Averaged_angle(Z,gravityMean )| mean of angle(Z,gravityMean)|
| Averaged_Time-BodyAccelerometer-std()-X | mean of tBodyAcc-std()-X|
| Averaged_Time-BodyAccelerometer-std()-Y | mean of tBodyAcc-std()-Y|
| Averaged_Time-BodyAccelerometer-std()-Z | mean of tBodyAcc-std()-Z|
| Averaged_Time-GravityAccelerometer-std()-X | mean of tGravityAcc-std()-X|
| Averaged_Time-GravityAccelerometer-std()-Y | mean of tGravityAcc-std()-Y|
| Averaged_Time-GravityAccelerometer-std()-Z | mean of tGravityAcc-std()-Z|
| Averaged_Time-BodyAccelerometerJerk-std()-X | mean of tBodyAccJerk-std()-X|
| Averaged_Time-BodyAccelerometerJerk-std()-Y | mean of tBodyAccJerk-std()-Y|
| Averaged_Time-BodyAccelerometerJerk-std()-Z | mean of tBodyAccJerk-std()-Z|
| Averaged_Time-BodyGyroscope-std()-X | mean of tBodyGyro-std()-X|
| Averaged_Time-BodyGyroscope-std()-Y | mean of tBodyGyro-std()-Y|
| Averaged_Time-BodyGyroscope-std()-Z | mean of tBodyGyro-std()-Z|
| Averaged_Time-BodyGyroscopeJerk-std()-X | mean of tBodyGyroJerk-std()-X|
| Averaged_Time-BodyGyroscopeJerk-std()-Y | mean of tBodyGyroJerk-std()-Y|
| Averaged_Time-BodyGyroscopeJerk-std()-Z | mean of tBodyGyroJerk-std()-Z|
| Averaged_Time-BodyAccelerometerMagnitude-std( )| mean of tBodyAccMag-std()|
| Averaged_Time-GravityAccelerometerMagnitude-std( )| mean of tGravityAccMag-std()|
| Averaged_Time-BodyAccelerometerJerkMagnitude-std( )| mean of tBodyAccJerkMag-std()|
| Averaged_Time-BodyGyroscopeMagnitude-std( )| mean of tBodyGyroMag-std()|
| Averaged_Time-BodyGyroscopeJerkMagnitude-std( )| mean of tBodyGyroJerkMag-std()|
| Averaged_FFT-BodyAccelerometer-std()-X | mean of fBodyAcc-std()-X|
| Averaged_FFT-BodyAccelerometer-std()-Y | mean of fBodyAcc-std()-Y|
| Averaged_FFT-BodyAccelerometer-std()-Z | mean of fBodyAcc-std()-Z|
| Averaged_FFT-BodyAccelerometerJerk-std()-X | mean of fBodyAccJerk-std()-X|
| Averaged_FFT-BodyAccelerometerJerk-std()-Y | mean of fBodyAccJerk-std()-Y|
| Averaged_FFT-BodyAccelerometerJerk-std()-Z | mean of fBodyAccJerk-std()-Z|
| Averaged_FFT-BodyGyroscope-std()-X | mean of fBodyGyro-std()-X|
| Averaged_FFT-BodyGyroscope-std()-Y | mean of fBodyGyro-std()-Y|
| Averaged_FFT-BodyGyroscope-std()-Z | mean of fBodyGyro-std()-Z|
| Averaged_FFT-BodyAccelerometerMagnitude-std( )| mean of fBodyAccMag-std()|
| Averaged_FFT-BodyAccelerometerJerkMagnitude-std( )| mean of fBodyBodyAccJerkMag-std()|
| Averaged_FFT-BodyGyroscopeMagnitude-std( )| mean of fBodyBodyGyroMag-std()|
| Averaged_FFT-BodyGyroscopeJerkMagnitude-std( )| mean of fBodyBodyGyroJerkMag-std()|

***
Below is the README.txt found in the original data set.

> ==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
>
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
>
For each record it is provided:
======================================
>
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
>
The dataset includes the following files:
=========================================
>
- 'README.txt'
>
- 'features_info.txt': Shows information about the variables used on the feature vector.
>
- 'features.txt': List of all features.
>
- 'activity_labels.txt': Links the class labels with their activity name.
>
- 'train/X_train.txt': Training set.
>
- 'train/y_train.txt': Training labels.
>
- 'test/X_test.txt': Test set.
>
- 'test/y_test.txt': Test labels.
>
The following files are available for the train and test data. Their descriptions are equivalent. 
>
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
>
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
>
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
>
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
>
Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
>
For more information about this dataset contact: activityrecognition@smartlab.ws
>
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
>
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
>
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
>
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

