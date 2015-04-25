#Codebook for Project Data:
## project_final.txt


subject  2   integer 
   Subject number that identifies a person participating in the study
   	1-30

activity 19  character
    Activity performed by Subject in the study in which basic measurements are collected
    
	WALKING

    	WALKING_UPSTAIRS
 
    	WALKING_DOWNSTAIRS
    
	SITTING

    	STANDING
    	LAYING 

variable character
    Name of the measurement taken for this experiment. Names were slightly modified from the original for readability and use as a variable name, if desired.
    The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
    These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 
    3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal 
    was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter 
    with a corner frequency of 0.3 Hz. 
    (for more complete information see the file feature.txt and feature_info.text)
     
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
	tBodyAccMag.mean.   
	tBodyAccMag.std.     
	tGravityAccMag.mean. 
	tGravityAccMag.std.    
	tBodyAccJerkMag.mean.     
	tBodyAccJerkMag.std. 
	tBodyGyroMag.mean.  
	tBodyGyroMag.std.   
	tBodyGyroJerkMag.mean. 
	tBodyGyroJerkMag.std.    
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
	fBodyAccMag.mean.   
	fBodyAccMag.std. 
	fBodyAccMag.meanFreq.
	fBodyBodyAccJerkMag.mean. 
	fBodyBodyAccJerkMag.std. 
	fBodyBodyAccJerkMag.meanFreq.   
	fBodyBodyGyroMag.mean.    
	fBodyBodyGyroMag.std. 
	fBodyBodyGyroMag.meanFreq.     
	fBodyBodyGyroJerkMag.mean.
	fBodyBodyGyroJerkMag.std. 
	fBodyBodyGyroJerkMag.meanFreq. 

value   numeric
    The value of the variable in column 3 is a mean of all the measurements taken for each subject and activity and variable named in the current row of data


    



