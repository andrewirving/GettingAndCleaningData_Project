##

# Load Required Libraries
library(plyr)
library(reshape2)

# Download and upzip required files
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
              , destfile = "getdata-projectfiles-UCI HAR Dataset.zip", mode = "wb")
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

# Read in Test data
xTest <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
yTest <- read.table(".\\UCI HAR Dataset\\test\\Y_test.txt")
subjectTest <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")

# Read in Train data
xTrain <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
yTrain <- read.table(".\\UCI HAR Dataset\\train\\Y_train.txt")
subjectTrain <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")

# Read in Features data
features <- read.table(".\\UCI HAR Dataset\\features.txt", stringsAsFactors = F)

# Read in Activies data
activities <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")
names(activities) <- c("activityID", "activityName")

        
# Combine X data and assign feature names based on features data
x <- rbind(xTrain, xTest)
names(x) <- features[, 2]

# Combine Y data and assign name
y <- rbind(yTrain, yTest)
names(y) <- c("activityID")

# Combine Subject data and assign name
subject <- rbind(subjectTrain, subjectTest)
names(subject) <- c("subjectID")

# Adds new column to y which contains the Activity Name as factor based on 
# the Activity Data read in above
y$activityName <- mapvalues(as.character(y$activityID), as.character(activities$activityID)
                            , as.character(activities$activityName))
y$activityName <- as.factor(y$activityName)

# Create a vector of the columns that are a mean (including mean freq) and std
selectedFeatures <- features[grep("mean|std()", features[, 2]), 1]

# Combine Subject data, Activity Name and only the columns that are a 
# mean (including mean freq) and std, rename 'y$activityName' to 'activityName'
tidyDataMeanAndStd <- cbind(subject, y$activityName, x[, selectedFeatures])
names(tidyDataMeanAndStd)[2] <- c("activityName")

# Export results into a tab delimited file 'tidyDataMeanAndStd.txt'
write.table(tidyDataMeanAndStd, file=".\\tidyDataMeanAndStd.txt", sep="\t", row.names=FALSE)

# Create a data set for the 
meltTidyDataMeanAndStd <- melt(tidyDataMeanAndStd, id = c("activityName", "subjectID"))
averageTidyDataMeanAndStd <- dcast(meltTidyDataMeanAndStd, activityName + subjectID ~ variable, mean)
names(averageTidyDataMeanAndStd) = c(names(averageTidyDataMeanAndStd)[1:2]
                                         , paste("mean(", names(x[, selectedFeatures]), ")", sep = ""))

# Export results into a tab delimited file 'tidyDataMeanAndStd.txt'
write.table(averageTidyDataMeanAndStd, file=".\\averageTidyDataMeanAndStd.txt", sep="\t", row.names=FALSE)
