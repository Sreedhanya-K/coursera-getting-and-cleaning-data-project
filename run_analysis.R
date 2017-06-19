#Project - Getting and cleaning data
library(data.table)

#load the zip file from the url and unzip the file.
path <- getwd()
download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
              , destfile = paste(path, "dataFiles.zip", sep = "/"))
unzip(zipfile = "dataFiles.zip")

#read the train data set
train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
#read the test data set 
test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
#merge the test and train data sets 
Totaldata <- rbind(train, test)

#read the features 
features <- read.table("UCI HAR Dataset\\features.txt")
features[,2] <- as.character(features[,2])

#clean the measurement names and select the measurement which are mean or standard deviation of a measurement
features1 <- grep("*mean*|*std*", features[,2])
feature_name <- features[features1,2]

#Subset data with the mean and std data
Totaldata1 <- Totaldata[,features1]

#Add the subject and activity labels
#read the sub and labels
trainlab <- read.table("UCI HAR Dataset\\train\\y_train.txt")
trainsubj <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
trainsubact <- cbind(trainsubj, trainlab)
testlab <- read.table("UCI HAR Dataset\\test\\y_test.txt")
testsubj <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
testsubact <- cbind(testsubj, testlab)
Totalsubact <- rbind(trainsubact, testsubact)
#bind it with the Totaldata1
Totaldata1 <- cbind(Totalsubact, Totaldata1)


#add activity names
activitylabels <- read.table("UCI HAR Dataset\\activity_labels.txt")
activitylabels[,2] <- as.character(activitylabels[,2])

#naming the descriptive activity labels
Totaldata1[2] <- activitylabels[,2][match(Totaldata1[,2], activitylabels[,1])]

#y_data[, 1] <- activitylabels[testlab[, 1], 2]
#heading for the columns
feature_name <- gsub("-mean?\\()", "Mean",feature_name)
feature_name <- gsub("-std?\\()", "Std",feature_name)
feature_name <- gsub("Acc", "-Accelerometer-", feature_name)
feature_name <- sub("Gyro", "-Gyroscope-", feature_name)
colnames(Totaldata1) <- c("subject", "activitylabel", feature_name)

#Tidy data set with the average of each variable for each activity and each subject.
tidydata <- aggregate(. ~subject + activitylabel, Totaldata1, mean)
tidydata <- tidydata[with(tidydata, order(subject, activitylabel)), ]

write.table(tidydata, "tidydata.txt",row.names = FALSE, quote = FALSE )



