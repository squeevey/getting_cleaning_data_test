##  0. Add dplyr library and Read data files
## Add dplyr
library(dplyr)

## Read Features
features <- read.table("data/UCI HAR Dataset/features.txt")

## Read Activity Labels
activity_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt")
names(activity_labels)<-c("activity_id","activity")

## Read, Label, & Combine Test Data
x_test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
names(x_test)<-features$V2

y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")
names(y_test)<-"activity_id"

subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
names(subject_test)<-"subject_id"

testData<-cbind(subject_test,y_test,x_test)

##Dedup column names (deleting them cause we won't need them) since you get
## the Error: Can't transform a data frame with duplicate names.
testData<-testData[,!duplicated(names(testData))]

## add an origin identifier to this data differentiate the rows
testData<-mutate(testData, data_origin="test")


## Read, Label, & Combine Training Data
x_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
names(x_train)<-features$V2

y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")
names(y_train)<-"activity_id"

subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
names(subject_train)<-"subject_id"

trainingData<-cbind(subject_train,y_train,x_train)

##Dedup column names (deleting them cause we won't need them) since you get
## the Error: Can't transform a data frame with duplicate names.
trainingData<-trainingData[,!duplicated(names(trainingData))]

## add an origin identifier to this data differentiate the rows
trainingData<-mutate(trainingData, data_origin="training")


##  1. Merges the training and the test sets to create one data set.
combinedData<-rbind(testData,trainingData)

##  2. Extracts only the measurements on the mean and standard deviation for each 
##  measurement. 
combinedMeanStd<-select(combinedData,data_origin,subject_id,activity_id, contains("mean"),contains("std"))


##  3. Uses descriptive activity names to name the activities in the data set
combinedMeanStd <- merge(combinedMeanStd,activity_labels, by='activity_id')

##reorder data set
combinedMeanStd <- select(combinedMeanStd,data_origin,subject_id,activity_id,activity,everything())

##  4. Appropriately labels the data set with descriptive variable names. 
tempNames<-names(combinedMeanStd)

tempNames<-gsub("tBody", "Time-Body", tempNames,ignore.case = FALSE)
tempNames<-gsub("fBody", "FFT-Body", tempNames,ignore.case = FALSE)
tempNames<-gsub("tGravity", "Time-Gravity", tempNames,ignore.case=FALSE)
tempNames<-gsub("Acc", "Accelerometer",tempNames,ignore.case=FALSE)
tempNames<-gsub("Mag","Magnitude",tempNames,ignore.case=FALSE)
tempNames<-gsub("Gyro", "Gyroscope", tempNames,ignore.case = FALSE)
tempNames<-gsub("Freq","Frequency",tempNames,ignore.case = FALSE)
tempNames<-gsub("BodyBody","Body",tempNames,ignore.case = FALSE)

names(combinedMeanStd)<-tempNames

##  5. From the data set in step 4, creates a second, independent tidy data set 
##  with the average of each variable for each activity and each subject.
avgData<-combinedMeanStd %>% 
  select(-data_origin,-activity_id) %>% 
  group_by(activity,subject_id) %>% 
  summarise(across(everything(),mean))

## Since We're averaging the data - label it accordingly.
names(avgData)<-c(names(avgData)[1:2],paste("Averaged",names(avgData)[3:ncol(avgData)],sep="_"))

## write it to a file.
write.table(avgData, file="AveragedData.txt", row.names = FALSE, col.names = TRUE)