run_analysis <- function(){
        install.packages("plyr")
        install.packages("dplyr")
        library(plyr)
        library(dplyr)
       
         # Read files into R from working directory
        X_test <- read.table("X_test.txt")
        X_train <- read.table("X_train.txt")
        sub_test <- read.table("sub_test.txt")
        sub_train <- read.table("sub_train.txt")
        y_test <- read.table("y_test.txt")
        y_train <- read.table("y_train.txt")
        features <- read.table("feature.txt")
        activity_labels <- read.table("activity_labels.txt")
        
        #Merges the training and the test sets to create one data set.
        exp_data <- rbind(X_test, X_train)
        subject_data <-rbind(sub_test,sub_train)
        y_data <- rbind(y_test, y_train)
        names(subject_data)<- "subject_id"
        names(y_data) <- "activity_name"
        names(exp_data) <- features$V2
        newcols <- cbind(subject_data,y_data)
        merged_data <- cbind(exp_data, newcols)
        
        #Extracts only the measurements on the mean and standard deviation for each measurement.
        extr_datamean <- features$V2[grep("mean\\(\\)", features$V2)]
        extr_datastd <- features$V2[grep("std\\(\\)", features$V2)]
        
        extr_std <- as.character(extr_datastd)
        extr_chr <- as.character(extr_datamean)
        
        extr_data <- c(extr_chr,extr_std,"subject_id","activity_name")
        
        select_data <- merged_data[,which(colnames(merged_data) %in% extr_data)]
        
        #Factorize activity name :Use descriptive activity names to name the activities in the data set
        select_data$activity_name <- factor(select_data$activity_name, labels = activity_labels$V2)
        
        #Appropriately label the data set with descriptive variable names
        names(select_data) <-gsub("^t", "time", names(select_data))
        names(select_data) <-gsub("^f", "frequency", names(select_data))
        names(select_data) <-gsub("Acc", "Accelerometer", names(select_data))
        names(select_data) <-gsub("Gyro", "Gyroscope", names(select_data))
        names(select_data) <-gsub("Mag", "Magnitude", names(select_data))
        names(select_data) <-gsub("BodyBody", "Body", names(select_data))
        
        #tidy data set with the average of each variable for each activity and each subject
        
        tidydata <- aggregate(. ~subject_id + activity_name, select_data, mean)
        tidydata <- tidydata[order(tidydata$subject_id, tidydata$activity_name),]
        tidaydata
        
}