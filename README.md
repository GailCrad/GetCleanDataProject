# GetCleanDataProject
##Coursera Getting and Cleaning Data Course Project
## Programmer: SG Craddock
## Date project due: 26-Apr-2015


#Instructions for the Project assignment were as follows:

Create one R script called *run_analysis.R* that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#-------------------------------------------------------------------------------------

When these data are downloaded and unzipped they appear in a file folder UCI HAR Dataset. The structure and location of the R code and data
are as follows:

working directory                (top level with R code)
./UCI HAR Dataset/               (main data folder)
./UCI HAR Dataset/test/          (test subfolder)
./UCI HAR Dataset/train/         (train subfolder)

There are documentation files in the main folder and 3 datasets in each subfolder. The code references them in this fashion. 

My code is self-documenting and is named
      run_analysis.R



#-------------------------------------------------------------------------------------------