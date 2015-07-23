
## Johns Hopkins Coursera Course - Getting and Cleaning Data
## Course Project
## July 21, 2015


library(dplyr)

# Create Table of Labels and Features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)


# Select only the data on mean and standard deviation
Selfeatures <- grep(".*mean.*|.*std.*", features[,2])
SelfeaturesNames <- features[Selfeatures,2]
SelfeaturesNames <- gsub('[-()]', '', SelfeaturesNames)
SelfeaturesNames = gsub('mean', 'MEAN_', SelfeaturesNames)
SelfeaturesNames = gsub('std', 'STD_', SelfeaturesNames)



# Load datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[Selfeatures]
trainAct <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSub, trainAct, train)
rm(trainAct)
rm(trainSub)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[Selfeatures]
testAct <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSub, testAct, test)
rm(testSub)
rm(testAct)


# Merge datasets and add labels
all.Data <- rbind(train, test)
colnames(all.Data) <- c("Subject", "Activity", SelfeaturesNames)
rm(train)
rm(test)

# Convert Activities & Subjects into factors and replace Acitivty codes with Descriptive Names
all.Data$Activity <- factor(all.Data$Activity, levels = activityLabels[,1], labels = activityLabels[,2])
all.Data$Subject <- as.factor(all.Data$Subject)

# Compute mean of data by Subject and Activity
sum.data <- all.Data %>%  group_by(Subject, Activity) %>%  summarise_each(funs(mean))


# Write table out to text file
write.table(sum.data, "tidy.txt", row.names = FALSE, quote = FALSE)


