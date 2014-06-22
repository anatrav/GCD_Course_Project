==================================================================
READ ME
==================================================================
In order to run the script, you first need to set the working directory like this:
setwd(".../UCI HAR Dataset")

Then the code will run steps 1, 4, 2 and 3, to:
- import the test and train data sets
- import their labels and subject ID
- import variable names
- merge all the information in one single data file
- select only measurement variables that contain "-mean()" or "-std()" in their names
- calculate the mean value of each variable per each subject (n=30) and activity (n=6) resulting in 180 observations

Finally in step 5 will save a file "tidy_data.txt" as requested.
It consists of 180 observations and 81 variables, with the mean value per subject and activity (label) for the following measurements:

"tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
"tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
"tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
"tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"           
"tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
"tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
"tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
"tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
"tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
"tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"             
"tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
"tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
"tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
"tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
"tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
"tBodyAccMag-mean()"              "tBodyAccMag-std()"              
"tGravityAccMag-mean()"           "tGravityAccMag-std()"           
"tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
"tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
"tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
"fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
"fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"               
"fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
"fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
"fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
"fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
"fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
"fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"      
"fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
"fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
"fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
"fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
"fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
"fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"             
"fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
"fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
"fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
"fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
"fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
"fBodyBodyGyroJerkMag-meanFreq()"
