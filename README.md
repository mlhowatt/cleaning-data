---
title: "README"
author: "Mary Howatt"
date: "Sunday, April 26, 2015"
output: html_document
---

In brief, the script merges a set of  files from Human Activity Recognition Using Smartphones Data Set and outputs a tidy dataset(tidy.txt)
For more information on the original see 
See: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


use: source('run_analysis.R')

To view the output "tidy.txt", use:
View(read.table("tidy.txt", header=TRUE))


The input to run_analysis.R are the following files:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training dataset.

- 'train/y_train.txt': Training activity labels.

- 'test/X_test.txt': Test dataset.

- 'test/y_test.txt': Test activity labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
 

The script carries of the cleaning and merging as follows:


       - add feature names to columns to testing and training data sets
       - subset extract only std or mean variables using the following regular expression: 
         "mean\\(|std\\("
       - adds activity data to the testing and training data sets
       - adds subject data to the testing and training data sets
       - merge testing and training data
       - tidy the column names by removing non-alpha-numeric characters using the following expression: 
         gsub("[[:punct:]]", "", mydata)
       - replace the numbers indicating an activity with descriptive labels
       
The second part of the script creates a new dataset based on the merged data set that calculates the average of each subsetted variable for each activity and each subject and writes the resulting dataset in a wide format to tidy.txt



