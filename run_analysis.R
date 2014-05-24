###########################################################
## Author: Vinh N. Pham
## 
###########################################################

# load package "plyr" if available
# if package "plyr" is not available, install and load
if (!require("plyr")) {
   message("Package plyr is needed for this script")
   message("Trying to install package plyr")
   install.packages("plyr")
   if (!require("plyr"))
      stop("Could not install plyr")
}

# common file locations
dataLocation <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataZip <- "getdata-projectfiles-UCI HAR Dataset.zip"
dataDir  <- "UCI HAR Dataset"
tidyDataFile  <- "TidyData.txt"

# Download and unzip data file if necessary
if (!file.exists(dataDir)) {
   if (!file.exists(dataZip))
      download.file(dataLocation, dataZip)      # Download data file
   else
      unzip(dataZip)   # unzip data file
}

# read activity label file
activityLabels <- read.table(paste(dataDir,"activity_labels.txt",sep="/"),colClasses=c("integer","character"))

# define function to translate from activity id to its label
actLabel  <- function(id) activityLabels[activityLabels$V1==id,2]

# read train data
subjectTrain <- read.table(paste(dataDir,"train","subject_train.txt",sep="/"))
XTrain <- read.table(paste(dataDir,"train","X_train.txt",sep="/"))
YTrain <- read.table(paste(dataDir,"train","Y_train.txt",sep="/"))

# read test data
subjectTest <- read.table(paste(dataDir,"test","subject_test.txt",sep="/"))
XTest <- read.table(paste(dataDir,"test","X_test.txt",sep="/"))
YTest <- read.table(paste(dataDir,"test","Y_test.txt",sep="/"))

# combine train and test data
subjectTotal <- rbind(subjectTrain,subjectTest)
XTotal <- rbind(XTrain,XTest)
YTotal <- rbind(YTrain,YTest)

# Convert activity id to meaningful activity label
YTotal <- sapply(YTotal$V1,actLabel)


# read features file for feature labels
featureLabels <- read.table(paste(dataDir,"features.txt",sep="/"),colClasses=c("integer","character"))
featureLabels <- featureLabels$V2

# construct first version of tidy data which contain all the values from the train and test data
# with meaningful feature labels
tidyData1 <- cbind(subjectTotal, YTotal, XTotal)
tidyLabels1 <- c("Subject", "Activity_Label", featureLabels)
names(tidyData1)  <- tidyLabels1

# construct second version of tidy data which contain only mean or std measurements
# Note: I do not consider measurements similar to "angle(X,gravityMean)" mean or std measurements
selectColumns <- c(1, 2, grep("mean|std", tidyLabels1))
tidyData2 <- tidyData1[,selectColumns]

# construct final version of tidy data that partition the data and compute the mean of various
# colums
finalTidyData <- ddply(tidyData2, .(Subject, Activity_Label), colwise(mean, is.numeric))

# write out final version of tidy data to a file
write.table(finalTidyData, tidyDataFile, row.names=FALSE)

