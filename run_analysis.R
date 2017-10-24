
library(dplyr)

#set working directory and download the Smartphone data from the provided url

setwd("/Users/lindsayferguson/Documents/Coursera Data Science/Course 3_Getting and Cleaning Data")
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "smartphone_activity_data.zip")

#unzip the file
unzip("smartphone_activity_data.zip", exdir="smartphone_activity_data")

#pull together the separate test data text files into one data frame called test_data
test_data_x <- read.table("smartphone_activity_data/UCI HAR Dataset/test/X_test.txt")
test_data_y <- read.table("smartphone_activity_data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("smartphone_activity_data/UCI HAR Dataset/test/subject_test.txt")
test_data <- cbind(subject_test, test_data_y, test_data_x)
colnames(test_data)[1] <- "subject"
colnames(test_data)[2] <- "activity"

#pull together the separate train data text files into one data frame called train_data
train_data_x <- read.table("smartphone_activity_data/UCI HAR Dataset/train/X_train.txt")
train_data_y <- read.table("smartphone_activity_data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("smartphone_activity_data/UCI HAR Dataset/train/subject_train.txt")
train_data <- cbind(subject_train, train_data_y, train_data_x)
colnames(train_data)[1] <- "subject"
colnames(train_data)[2] <- "activity"

#merge the test data and train data into one data frame
all_data <- rbind(test_data, train_data)

#pull in the features text file, this is the column names for columns 3:563 in the
#test_data, train_data and all_data data.frames
features <- read.table("smartphone_activity_data/UCI HAR Dataset/features.txt")
features <- as.vector(features[,2])

#change col names for all_data
for(i in 1:length(features)){
  colnames(all_data)[i+2] <- features[i]
}

#select only the columns in all_data that are mean or standard deviations measurements
mean_std_data <- all_data[,grep("[Mm]ean|[Ss]td|activity|subject", colnames(all_data))]

#pull in the activity labels
activity_labels <- features <- read.table("smartphone_activity_data/UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels)[1] <- "activity"
colnames(activity_labels)[2] <- "description"

#change the values in the activity column to match the description in the 
#activity_labels data frame
mean_std_data$activity <- activity_labels[match(mean_std_data$activity,activity_labels$activity),2]

#Add descriptive variable names
colnames(mean_std_data) <- tolower(colnames(mean_std_data))
colnames(mean_std_data) <- sub("()-", "", colnames(mean_std_data), fixed=TRUE)
colnames(mean_std_data) <- sub("-", "", colnames(mean_std_data), fixed=TRUE)
colnames(mean_std_data) <- sub("()", "", colnames(mean_std_data), fixed=TRUE)
colnames(mean_std_data) <- sub(",", "", colnames(mean_std_data), fixed=TRUE)

#summarise the data with the average of each variable for each activity and each subject
summary_data <- mean_std_data %>%
  group_by(subject, activity) %>%
     summarise_all(funs(mean))

write.csv(summary_data, file="Run_Analysis_Tidy_Data.csv")