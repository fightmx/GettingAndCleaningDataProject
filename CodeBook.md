Original Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

New Feature Selection 
=================

The features selected for this new database extracts only the measurements on the mean and standard deviation for each measurement. It's been also added descriptive activity names instead of the less descriptive numeric ones. Better descriptive variable names are part of this database.

The dataset represents the average of each variable for each activity and each subject.

The list of the variable names:

 [1] "Subject"                                  
 [2] "Activity"                                 
 [3] "TimeBodyAccelerometer.Mean...X"           
 [4] "TimeBodyAccelerometer.Mean...Y"           
 [5] "TimeBodyAccelerometer.Mean...Z"           
 [6] "TimeBodyAccelerometer.Std...X"            
 [7] "TimeBodyAccelerometer.Std...Y"            
 [8] "TimeBodyAccelerometer.Std...Z"            
 [9] "TimeGravityAccelerometer.Mean...X"        
[10] "TimeGravityAccelerometer.Mean...Y"        
[11] "TimeGravityAccelerometer.Mean...Z"        
[12] "TimeGravityAccelerometer.Std...X"         
[13] "TimeGravityAccelerometer.Std...Y"         
[14] "TimeGravityAccelerometer.Std...Z"         
[15] "TimeBodyAccelerometerJerk.Mean...X"       
[16] "TimeBodyAccelerometerJerk.Mean...Y"       
[17] "TimeBodyAccelerometerJerk.Mean...Z"       
[18] "TimeBodyAccelerometerJerk.Std...X"        
[19] "TimeBodyAccelerometerJerk.Std...Y"        
[20] "TimeBodyAccelerometerJerk.Std...Z"        
[21] "TimeBodyGyroscope.Mean...X"               
[22] "TimeBodyGyroscope.Mean...Y"               
[23] "TimeBodyGyroscope.Mean...Z"               
[24] "TimeBodyGyroscope.Std...X"                
[25] "TimeBodyGyroscope.Std...Y"                
[26] "TimeBodyGyroscope.Std...Z"                
[27] "TimeBodyGyroscopeJerk.Mean...X"           
[28] "TimeBodyGyroscopeJerk.Mean...Y"           
[29] "TimeBodyGyroscopeJerk.Mean...Z"           
[30] "TimeBodyGyroscopeJerk.Std...X"            
[31] "TimeBodyGyroscopeJerk.Std...Y"            
[32] "TimeBodyGyroscopeJerk.Std...Z"            
[33] "TimeBodyAccelerometerMagnitude.Mean.."    
[34] "TimeBodyAccelerometerMagnitude.Std.."     
[35] "TimeGravityAccelerometerMagnitude.Mean.." 
[36] "TimeGravityAccelerometerMagnitude.Std.."  
[37] "TimeBodyAccelerometerJerkMagnitude.Mean.."
[38] "TimeBodyAccelerometerJerkMagnitude.Std.." 
[39] "TimeBodyGyroscopeMagnitude.Mean.."        
[40] "TimeBodyGyroscopeMagnitude.Std.."         
[41] "TimeBodyGyroscopeJerkMagnitude.Mean.."    
[42] "TimeBodyGyroscopeJerkMagnitude.Std.."     
[43] "FreqBodyAccelerometer.Mean...X"           
[44] "FreqBodyAccelerometer.Mean...Y"           
[45] "FreqBodyAccelerometer.Mean...Z"           
[46] "FreqBodyAccelerometer.Std...X"            
[47] "FreqBodyAccelerometer.Std...Y"            
[48] "FreqBodyAccelerometer.Std...Z"            
[49] "FreqBodyAccelerometerJerk.Mean...X"       
[50] "FreqBodyAccelerometerJerk.Mean...Y"       
[51] "FreqBodyAccelerometerJerk.Mean...Z"       
[52] "FreqBodyAccelerometerJerk.Std...X"        
[53] "FreqBodyAccelerometerJerk.Std...Y"        
[54] "FreqBodyAccelerometerJerk.Std...Z"        
[55] "FreqBodyGyroscope.Mean...X"               
[56] "FreqBodyGyroscope.Mean...Y"               
[57] "FreqBodyGyroscope.Mean...Z"               
[58] "FreqBodyGyroscope.Std...X"                
[59] "FreqBodyGyroscope.Std...Y"                
[60] "FreqBodyGyroscope.Std...Z"                
[61] "FreqBodyAccelerometerMagnitude.Mean.."    
[62] "FreqBodyAccelerometerMagnitude.Std.."     
[63] "FreqBodyAccelerometerJerkMagnitude.Mean.."
[64] "FreqBodyAccelerometerJerkMagnitude.Std.." 
[65] "FreqBodyGyroscopeMagnitude.Mean.."        
[66] "FreqBodyGyroscopeMagnitude.Std.."         
[67] "FreqBodyGyroscopeJerkMagnitude.Mean.."    
[68] "FreqBodyGyroscopeJerkMagnitude.Std.." 