run_analysis <- function () {
    
    ###########################################################################
    ###########################################################################
    ####### Read and combine train and test data keeping only mean and std.
    
    # Read in the train and test data and combine them:
    # Process X.
    trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
    testData <- read.table("UCI HAR Dataset/test/X_test.txt")
    X <- rbind(trainData, testData)
    # Process y.
    trainData <- read.table("UCI HAR Dataset/train/y_train.txt")
    testData <- read.table("UCI HAR Dataset/test/y_test.txt")
    activity <- rbind(trainData, testData)
    # Process subjects.
    trainData <- read.table("UCI HAR Dataset/train/subject_train.txt")
    testData <- read.table("UCI HAR Dataset/test/subject_test.txt")
    subject <- rbind(trainData, testData)
    
    # Get the indices of the columns that hold mean or standard deviation.
    # To this end, read the file holding the variable names and collect those 
    # with "mean" or "std" in the name.
    featureNames <- read.table("UCI HAR Dataset/features.txt")
    meanAndStdIndices <- grep("mean\\(\\)|std\\(\\)", featureNames[, 2])
    meanAndStdX <- X[, meanAndStdIndices]
    
    # Combine mean and standard deviation X, activity, and subject data.
    meanAndStdData <- cbind(meanAndStdX, activity, subject)
    
    
    ###########################################################################
    ###########################################################################
    ####### Clean the feature variable names and assign them to the columns.
    
    # Clean the feature variable names and assign them to the columns.
    meanAndStdNames <- featureNames[meanAndStdIndices, 2]
    # Remove underscores, dashes, and parentheses.
    meanAndStdNames <- gsub("_|-|\\(|\\)", "", meanAndStdNames)
    # Convert to lower case.
    meanAndStdNames <- tolower(meanAndStdNames)
    # Remove one of the copies of "body" when repeated in the name.
    meanAndStdNames <- gsub("bodybody", "body", meanAndStdNames)
    
    # Label the columns.
    names(meanAndStdData) <- c(meanAndStdNames, "activity", "subject")
    
    
    ###########################################################################
    ###########################################################################
    ####### Clean the activity names and use them as factors.
    
    # Read in the activity labels.
    activityNames <- read.table("UCI HAR Dataset/activity_labels.txt")
    # Clean the names by converting all letters to lower case and removing 
    # underscores.
    activityNames <- tolower(activityNames[, 2])
    activityNames <- gsub("_", "", activityNames)
    # Write a new file with the cleaner activity names.
    write(rbind(seq(1:length(activityNames)), activityNames), 
          "activityNames.txt", ncolumns = 2)
    
    # Replace the activity codes with activity names.
    meanAndStdData$activity <- activityNames[meanAndStdData$activity]
    
    
    ###########################################################################
    ###########################################################################
    ####### Tidy the data.
    varsInd <- names(meanAndStdData) %in% c("activity", "subject")
    tidyData <- aggregate(meanAndStdData[!varsInd], 
                          by = meanAndStdData[c("activity", "subject")], FUN=mean)
    
    # Write the tidy set to a text file.
    write.table(tidyData, "tidyRunAnalysisData.txt", row.name = FALSE)
    
    # Write a new file with the cleaner variable names.
    varNames <- names(tidyData)
    paste0(as.character(seq(1:length(varNames))), ".")
    write(rbind(paste0(as.character(seq(1:length(varNames))), "."), varNames), 
          "variableNames.txt", ncolumns = 2)
}