downloadData <- function () {
    
    ###########################################################################
    ###########################################################################
    ####### Download and uncompress the zip file.
    
    # Set the URL of the file to be downloaded.
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    
    # Download the file to the current directory.
    download.file(fileUrl, destfile = "Dataset.zip")
    
    # Read in the file.
    unzip("Dataset.zip")
}