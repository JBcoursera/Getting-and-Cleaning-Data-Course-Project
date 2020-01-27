# The R script needs the "dplyr" package
library(dplyr)


# Read the training sets and bind them together
trainingSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainingActivity <- read.table("UCI HAR Dataset/train/y_train.txt")
trainingValues <- read.table("UCI HAR Dataset/train/X_train.txt")

trainingSet <- cbind(trainingSubjects, trainingActivity, trainingValues)


# Read the test sets and bind them together
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
testValues <- read.table("UCI HAR Dataset/test/X_test.txt")

testSet <- cbind(testSubjects, testActivity, testValues)


# Create a global set with the binded training and test sets
globalSet <- rbind(trainingSet,testSet)


# Read features and assign column names to "globalSet"
features <- read.table("UCI HAR Dataset/features.txt")

colnames(globalSet) <- c("Subject", "Activity", as.character(features[, 2]))


# Extract columns of "globalSet" based on chosen words in their names
chosenColumns <- grepl("Subject|Activity|mean|std", colnames(globalSet))

filteredGlobalSet <- globalSet[, chosenColumns]


# Read "activity_labels.txt" and replace activity values in "filteredGlobalSet"
# by descriptive names
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

filteredGlobalSet$Activity <- factor(filteredGlobalSet$Activity,
                                     levels = activityLabels[, 1],
                                     labels = activityLabels[, 2])


# Improve column names of "filteredGlobalSet" with descriptive variable names
pattern <- c("^f","^t","Acc","Gyro","Mag","Freq","mean","std","BodyBody",
             "[\\(\\)-]")
replacement <- c("frequencyDomain","timeDomain","Accelerometer","Gyroscope",
                 "Magnitude", "Frequency","Mean","standardDeviation","Body","")
for (i in 1:10) {
        colnames(filteredGlobalSet) <- gsub(pattern[i],replacement[i],
                                            colnames(filteredGlobalSet))
}


# Sort "filteredGlobalSet" by "Subject" and "Activity" and summarise the averages
summarizedGlobalSet <- summarize_all(group_by(filteredGlobalSet,Subject,Activity),mean)


# Create the file "summarizedData.txt" in the current R working directory
write.table(summarizedGlobalSet, "summarizedData.txt", row.names = FALSE)