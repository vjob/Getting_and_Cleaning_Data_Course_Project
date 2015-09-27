---
title: "CodeBook"
author: "Vaughn Job"
date: "September 27, 2015"
output: html_document
---
The tidydataset.txt contains 180 obervations and 68 varibles.  

Transformations:
1. The orginal data was transfomed to use descriptive activity names in the data set via code after "#Factorize activity name :Use descriptive activity names to name the activities in the data set" comment in run_analysis.R script.
2. The data set was labeled with descriptive varable names via code after "#Appropriately label the data set with descriptive variable names" comment in run_analysis.R script.
3. The orginal data was merged via the "rbind" and "cbind" R functions.
4. Varibles with measureements on the mean and standard deviation were obtained via the "grep" and "subset" R functions.

Discription of Variables:
 [1] "subject_id"  - The ID of 30 subjects oberved                                  
 [2] "activity_name"  - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 
The variables 3 - 68 come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
 
 [3] "timeBodyAccelerometer-mean()-X"                
 [4] "timeBodyAccelerometer-mean()-Y"                
 [5] "timeBodyAccelerometer-mean()-Z"                
 [6] "timeBodyAccelerometer-std()-X"                 
 [7] "timeBodyAccelerometer-std()-Y"                 
 [8] "timeBodyAccelerometer-std()-Z"                 
 [9] "timeGravityAccelerometer-mean()-X"             
[10] "timeGravityAccelerometer-mean()-Y"             
[11] "timeGravityAccelerometer-mean()-Z"             
[12] "timeGravityAccelerometer-std()-X"              
[13] "timeGravityAccelerometer-std()-Y"              
[14] "timeGravityAccelerometer-std()-Z"              
[15] "timeBodyAccelerometerJerk-mean()-X"            
[16] "timeBodyAccelerometerJerk-mean()-Y"            
[17] "timeBodyAccelerometerJerk-mean()-Z"            
[18] "timeBodyAccelerometerJerk-std()-X"             
[19] "timeBodyAccelerometerJerk-std()-Y"             
[20] "timeBodyAccelerometerJerk-std()-Z"             
[21] "timeBodyGyroscope-mean()-X"                    
[22] "timeBodyGyroscope-mean()-Y"                    
[23] "timeBodyGyroscope-mean()-Z"                    
[24] "timeBodyGyroscope-std()-X"                     
[25] "timeBodyGyroscope-std()-Y"                     
[26] "timeBodyGyroscope-std()-Z"                     
[27] "timeBodyGyroscopeJerk-mean()-X"                
[28] "timeBodyGyroscopeJerk-mean()-Y"                
[29] "timeBodyGyroscopeJerk-mean()-Z"                
[30] "timeBodyGyroscopeJerk-std()-X"                 
[31] "timeBodyGyroscopeJerk-std()-Y"                 
[32] "timeBodyGyroscopeJerk-std()-Z"                 
[33] "timeBodyAccelerometerMagnitude-mean()"         
[34] "timeBodyAccelerometerMagnitude-std()"          
[35] "timeGravityAccelerometerMagnitude-mean()"      
[36] "timeGravityAccelerometerMagnitude-std()"       
[37] "timeBodyAccelerometerJerkMagnitude-mean()"     
[38] "timeBodyAccelerometerJerkMagnitude-std()"      
[39] "timeBodyGyroscopeMagnitude-mean()"             
[40] "timeBodyGyroscopeMagnitude-std()"              
[41] "timeBodyGyroscopeJerkMagnitude-mean()"         
[42] "timeBodyGyroscopeJerkMagnitude-std()"          
[43] "frequencyBodyAccelerometer-mean()-X"           
[44] "frequencyBodyAccelerometer-mean()-Y"           
[45] "frequencyBodyAccelerometer-mean()-Z"           
[46] "frequencyBodyAccelerometer-std()-X"            
[47] "frequencyBodyAccelerometer-std()-Y"            
[48] "frequencyBodyAccelerometer-std()-Z"            
[49] "frequencyBodyAccelerometerJerk-mean()-X"       
[50] "frequencyBodyAccelerometerJerk-mean()-Y"       
[51] "frequencyBodyAccelerometerJerk-mean()-Z"       
[52] "frequencyBodyAccelerometerJerk-std()-X"        
[53] "frequencyBodyAccelerometerJerk-std()-Y"        
[54] "frequencyBodyAccelerometerJerk-std()-Z"        
[55] "frequencyBodyGyroscope-mean()-X"               
[56] "frequencyBodyGyroscope-mean()-Y"               
[57] "frequencyBodyGyroscope-mean()-Z"               
[58] "frequencyBodyGyroscope-std()-X"                
[59] "frequencyBodyGyroscope-std()-Y"                
[60] "frequencyBodyGyroscope-std()-Z"                
[61] "frequencyBodyAccelerometerMagnitude-mean()"    
[62] "frequencyBodyAccelerometerMagnitude-std()"     
[63] "frequencyBodyAccelerometerJerkMagnitude-mean()"
[64] "frequencyBodyAccelerometerJerkMagnitude-std()" 
[65] "frequencyBodyGyroscopeMagnitude-mean()"        
[66] "frequencyBodyGyroscopeMagnitude-std()"         
[67] "frequencyBodyGyroscopeJerkMagnitude-mean()"    
[68] "frequencyBodyGyroscopeJerkMagnitude-std()" 
