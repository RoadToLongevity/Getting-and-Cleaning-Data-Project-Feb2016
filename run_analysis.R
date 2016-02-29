# -----------------------------------------------
# The purpose of this project is to demonstrate your ability to collect, work 
# with, and clean a data set. The goal is to prepare tidy data that can be used 
# for later analysis. You will be graded by your peers on a series of yes/no 
# questions related to the project. You will be required to submit: 1) a tidy 
# data set as described below, 2) a link to a Github repository with your script
# for performing the analysis, and 3) a code book that describes the variables, 
# the data, and any transformations or work that you performed to clean up the 
# data called CodeBook.md. You should also include a README.md in the repo with 
# your scripts. This repo explains how all of the scripts work and how they are 
# connected.
# 
# One of the most exciting areas in all of data science right now is wearable 
# computing - see for example this article . Companies like Fitbit, Nike, and 
# Jawbone Up are racing to develop the most advanced algorithms to attract new 
# users. The data linked to from the course website represent data collected 
# from the accelerometers from the Samsung Galaxy S smartphone. A full 
# description is available at the site where the data was obtained: 
#     
#     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# 
# Here are the data for the project: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# You should create one R script called run_analysis.R that does the following.
# done 1. Merges the training and the test sets to create one data set.
# done 2. Extracts only the measurements on the mean and standard deviation for 
#         each measurement.
# done 3. Uses descriptive activity names to name the activities in the data set
# done 4. Appropriately labels the data set with descriptive variable names.
# done 5. From the data set in step 4, creates a second, independent tidy data 
#         set with the average of each variable for each activity and each
#         subject.
# 
# Good luck!
# -----------------------------------------------

# set working directory to the script directory (which should also contain the 
# data)
script.dir <- dirname(sys.frame(1)$ofile)
setwd(script.dir)

# read in features and activities
features <- read.table("features.txt", col.names = c("index", "feature"))
activity_labels <- read.table("activity_labels.txt", 
                              col.names = c("num", "activity"))

# clean column names from features.txt
col_names <- gsub("-|,", ".", features$feature)
col_names <- gsub("\\(|\\)", "", col_names)

# read in x_test and y_test
x_test <- read.table("test/X_test.txt", col.names=col_names)
y_test <- read.table("test/y_test.txt")
x_train <- read.table("train/X_train.txt", col.names=col_names)
y_train <- read.table("train/y_train.txt")
subject_test <- read.table("test/subject_test.txt", col.names = c("subject"))
subject_train <- read.table("train/subject_train.txt", col.names = c("subject"))

# make activity label vector and attach to train and test sets
get_activity <- function(num) {
    if (num == 1) {
        return("WALKING")
    }
    if (num == 2) {
        return("WALKING_UPSTAIRS")
    }
    if (num == 3) {
        return("WALKING_DOWNSTAIRS")
    }
    if (num == 4) {
        return("SITTING")
    }
    if (num == 5) {
        return("STANDING")
    }
    if (num == 6) {
        return("LAYING")
    }
}

test_activities <- sapply(y_test[, 1], get_activity)
train_activities <- sapply(y_train[, 1], get_activity)
x_test$activity <- test_activities
x_train$activity <- train_activities

# add subjects to train and test datasets
x_test <- cbind(subject_test, x_test)
x_train <- cbind(subject_train, x_train)

# add subject and activity to col_names
col_names <- c("subject", col_names, "activity")

# merge labelled test and train data frames
df_total <- rbind(x_train, x_test)

# extract the mean and standard deviation variables from merged dataset
index_mean_std <- grep("mean|std|activity|subject", col_names)
df_ms <- df_total[, index_mean_std]

#write.table(x_test, "x_test.csv", sep=",")

df_ms <- df_ms[order(df_ms$activity, df_ms$subject), ]

# order activity_labels
activity_labels <- activity_labels[order(activity_labels$activity), ]

# loop over subjects and activites extracting averages:
# initialize results
mean_results <- data.frame()

# make df_ms numeric by removing subject and activity
end <- length(colnames(df_ms)) - 1
df_ms_num <- df_ms[, 2:end]

# loop
for (a in activity_labels$activity) {
    for (s in 1:30) {
        temp_df <- df_ms[(df_ms$subject==s & df_ms$activity==a), ]
        temp_df <- temp_df[, 2:end]
        temp_m <- data.frame()
        temp_m <- rbind(temp_m, colMeans(temp_df))
        temp_m <- cbind(a, s, temp_m)
        colnames(temp_m) <- c("activity", "subject", colnames(temp_df))
        mean_results <- rbind(mean_results, temp_m)
    }
}

# write tidy mean_results dataset to file
write.table(mean_results, file="tidy_averages.txt", row.names=FALSE)
