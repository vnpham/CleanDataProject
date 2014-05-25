TIDY DATA PROJECT
========================================================

Overall description
----------------------
This project download data collected from the accelerometers and gyroscope of the Samsung Galaxy S smartphone from the [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and create a tidy data subset from this data.  Requirements for the project is described as followed:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

File structure in this project
-------------------------------
- **README.md** : this file
- **run_analysis.R** : the script to create tidy data from begining to end.
- **TidyData.txt** : the final output tidy data in table format
- **CodeBook.md** : code book describing variables in *TidyData.txt*
- **UCI HAR Dataset** : unziped data directory

Assumptions and explanations
--------------------------------------------
Even though comments are provided in the script itself, certain overall assumptions and explanations are provided here

- The script **run_analysis.R** download the data file if not already in the directory and create the tidy data final output in the file **TidyData.txt**.
- file **UCI HAR Dataset/features.txt** is read to provide the meaningful column label for the tidy data.  Even though some of these names contain the parentheses "()" characters, I assume that this is the exact names that should be used so I do not remove them.
- I do not consider measurements similar to "angle(X,gravityMean)" mean or std measurements
- In the **run_analysis.R** script, variable *tidyData1* satisfies steps 1,3, and 4, and variable *tidyData2* satisfies steps 1, 2, 3, and 4.  Variable *finalTidyData* satisfies all requirement steps.

Tests & Result
------------------------------
- Tests of the script have been done in various conditions and results are compared.  The script successfully create tidy data as described by the requirements.
- Test of Markdown files have been done in RStudio to make sure they are in valid syntax and generate valid html files