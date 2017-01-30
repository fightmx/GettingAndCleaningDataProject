
library(plyr)


# getting data files

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
suppressWarnings(res <- download.file(fileUrl,destfile="./dataset.zip", method="curl")) 
if(res != 0){
     #try again in case windows don't support curl
     res <- download.file(fileUrl,destfile="./dataset.zip")
}
unzip(zipfile="./dataset.zip")

# merging both data sets, using rbind to avoid merge reorders
dataTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
dataTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
data <- rbind(dataTest, dataTrain)
  
# adding variable names and filtering by "mean" and "std" types
dataFeatures <- read.table("./UCI HAR Dataset/features.txt")
names(data) <- dataFeatures$V2
filter <- dataFeatures$V2[grep("mean\\(\\)|std\\(\\)", dataFeatures$V2)]
data <- subset(data, select = as.character(filter))

# giving more meaning to the variable names
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("^f", "Freq", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("mean", "Mean", names(data))
names(data) <- gsub("std", "Std", names(data))

# linking the "subject" and "activity" data sets
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testLabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainLabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
dataSubjects <- rbind(testSubjects, trainSubjects)
dataLabels <- rbind(testLabels, trainLabels)
dataSubjectAndActivity <- cbind(dataSubjects, dataLabels)
names(dataSubjectAndActivity) <- c("Subject", "Activity")
data <- cbind(dataSubjectAndActivity, data)
    
# labeling the "activity" data
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
data$Activity <- factor(data$Activity, labels = as.character(activityLabels$V2)) 

# Exporting data
result <- aggregate(. ~Subject + Activity, data, mean)
result <- result[order(result$Subject, result$Activity), ]
write.table(result, file = "./tidydata.txt", row.name = FALSE)
