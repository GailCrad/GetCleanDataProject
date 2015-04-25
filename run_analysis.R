#Programmer: SG Craddock
#Purpose   : Data Cleaning Project
#Date due  : 26-Apr-2015

library(dplyr)
library(reshape2)


## Download file (run once)
#url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(url1,destfile="project.zip")
#dateDownloaded <- date()

#Unzip the files (run once)
#unzip('project')

#---- Column name & activity file Processing-------------------------------
# COLUMN name data:  read, transpose, get list of column numbers that are "mean" or "std"
colnams      <- read.table("./UCI HAR Dataset/features.txt",row.names=NULL)
colnams2     <- colnams$V2
colnams2     <- t(colnams2)
colnams3     <- make.names(colnams2,unique=TRUE,allow_=TRUE)
colnams4     <- gsub("\\.+", ".", colnams3)
keeplst      <- grep("mean|std",colnams2)
rm(colnams,colnams2,colnams3)  
  
#ACTIVITY level data: read & add var names 
actlabs        <- read.table("./UCI HAR Dataset/activity_labels.txt",row.names=NULL)
names(actlabs)[1] <- "actcode"
names(actlabs)[2] <- "activity"

#----- TEST file processing -------------------------------------------------
#TEST files: read data, subject, and activity data 
xtest          <- read.table("./UCI HAR Dataset/test/X_test.txt",row.names=NULL)
ytest          <- read.table("./UCI HAR Dataset/test/y_test.txt",row.names=NULL)
subjtest       <- read.table("./UCI HAR Dataset/test/subject_test.txt",row.names=NULL)

#TEST files: set up column names before combining */
names(ytest)    <- "actcode"
names(subjtest) <- "subject"
names(xtest)    <- colnams4

#TEST files: keep variables of interest (mean,std)
xtest2          <- xtest[,c(keeplst)]


#TEST files: add subject column, activity column, & data columns together
testdata        <- cbind(subjtest,ytest,xtest2)
rm(ytest,xtest,xtest2)

#--- TRAINING file processing ---------------------------------------------------
#TRAINING files: read
xtrain         <- read.table("./UCI HAR Dataset/train/X_train.txt",row.names=NULL)
ytrain         <- read.table("./UCI HAR Dataset/train/y_train.txt",row.names=NULL)
subjtrain      <- read.table("./UCI HAR Dataset/train/subject_train.txt",row.names=NULL)

#TRAINING files: set up names, labels before combining 
names(ytrain)    <- "actcode"
names(subjtrain) <- "subject"
names(xtrain)    <- colnams4

#TRAINING files: keep only columns desired
xtrain2       <- xtrain[,c(keeplst)]

#TRAINING files: add subject column, activity column, & data columns together
traindata     <- cbind(subjtrain,ytrain,xtrain2)
rm(xtrain,xtrain2,ytrain)

#---- COMBINE TEST & TRAINING files -----------------------------------------------
#Concatenate train & test data,add activity name, re-order variables
traintest       <- rbind(traindata,testdata)
traintest2      <- cbind(traintest,actlabs$activity[traintest$actcode])
traintest3      <- traintest2[c(1,82,3:81)]
names(traintest3)[2]="activity"

#Clean up workspace
rm(traindata,traintest,testdata,traintest2,subjtest,subjtrain,actlabs)

#--Summarize, Restructure, and Output data ---------------------------------------------------
#Summarize data (means) by subject and activity 
sumry     <- traintest3 %>%
          group_by(subject,activity) %>%
          summarise_each(funs(mean),3:81) 

#Reshape data from wide to narrow format and write out file
sumry2    <- melt(sumry,id=(c("subject","activity")))
write.table(sumry2,"project_final.txt",row.name=FALSE)

