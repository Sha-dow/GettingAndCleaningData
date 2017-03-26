library(plyr)

# Set variables
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destination <- "UCI_HAR_dataset.zip"
file <- "UCI_HAR_dataset"
outputfile <- "Tidy_Dataset.txt"

# Check if files exists. If not, download files
if (!file.exists(file)) {
    download.file(url, destfile = destination)
    unzip(destination)
    file.remove(destination)
}

#Read data
activityTest <- read.table("UCI HAR Dataset/test/Y_test.txt")
activityTrain <- read.table("UCI HAR Dataset/train/Y_train.txt")

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt")
featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt")

#combine datasets
Activity<- rbind(activityTrain, activityTest)
Subject <- rbind(subjectTrain, subjectTest)
Features<- rbind(featuresTrain, featuresTest)

#set names
names(Subject) <- c("Subject")
names(Activity) <- c("Activity")
FeatureNames <- read.table("UCI HAR Dataset/features.txt")
names(Features) <- FeatureNames$V2


#read activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
Activity[, 1] <- activityLabels[Activity[, 1], 2]

#merge data
Combined <- cbind(Subject, Activity)
Data <- cbind(Features, Combined)

#extract only measurements for mean and std deviation
subNames <- FeatureNames$V2[grep("mean\\(\\)|std\\(\\)", FeatureNames$V2)]
Names <- c(as.character(subNames), "Subject", "Activity" )
Data <- subset(Data,select=Names)

#correct names
names(Data) <- gsub("^t", "Time", names(Data))
names(Data) <- gsub("^f", "Frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))

#correct typing error
names(Data) <- gsub("BodyBody", "Body", names(Data))

#create independent tidy data set with the average of each variable for each activity and each subject
Tidy <- ddply(Data, .(Subject, Activity), function(x) colMeans(x[, 1:66]))
write.table(Tidy, outputfile, row.name=FALSE)

