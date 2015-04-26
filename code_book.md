---
title: "code_book"
author: "Mary Howatt"
date: "Sunday, April 26, 2015"
output: html_document
---

The tidy dataset produced for this project is a set of data that gives the mean for a subset of measurements for each subject and each activity in the original data set.

The variables for the tidy dataset are as follows:

subject: a subject id ranging from 1 - 30 (integer)

activity: a label denoting the activity measured (factor)
Note there are 6 activity labels: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS

The following variables were produced in the following way:

1.) Download and extract the original dataset from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2.) Run run_analysis.R script which
       2.1) Cleans and merges the datasets (see README for more info)
	2.2) Subsets the measures that are defined as std or mean measures by the following expression:
		"mean\\(|std\\("
	2.3) For each subject and each activity, calculates the mean of each subsetting measure


tBodyAccmeanX: mean (numeric)
tBodyAccmeanY: mean (numeric)
tBodyAccmeanZ: mean (numeric)
tBodyAccstdX: mean (numeric)
tBodyAccstdY: mean (numeric)
tBodyAccstdZ: mean (numeric)
tGravityAccmeanX: mean (numeric)
tGravityAccmeanY: mean (numeric)
tGravityAccmeanZ: mean (numeric)
tGravityAccstdX: mean (numeric)
tGravityAccstdY: mean (numeric)
tGravityAccstdZ: mean (numeric)
tBodyAccJerkmeanX: mean (numeric)
tBodyAccJerkmeanY: mean (numeric)
tBodyAccJerkmeanZ: mean (numeric)
tBodyAccJerkstdX: mean (numeric)
tBodyAccJerkstdY: mean (numeric)
tBodyAccJerkstdZ: mean (numeric)
tBodyGyromeanX: mean (numeric)
tBodyGyromeanY: mean (numeric)
tBodyGyromeanZ: mean (numeric)
tBodyGyrostdX: mean (numeric)
tBodyGyrostdY: mean (numeric)
tBodyGyrostdZ: mean (numeric)
tBodyGyroJerkmeanX: mean (numeric)
tBodyGyroJerkmeanY: mean (numeric)
tBodyGyroJerkmeanZ: mean (numeric)
tBodyGyroJerkstdX: mean (numeric)
tBodyGyroJerkstdY: mean (numeric)
tBodyGyroJerkstdZ: mean (numeric)
tBodyAccMagmean: mean (numeric)
tBodyAccMagstd: mean (numeric)
tGravityAccMagmean: mean (numeric)
tGravityAccMagstd: mean (numeric)
tBodyAccJerkMagmean: mean (numeric)
tBodyAccJerkMagstd: mean (numeric)
tBodyGyroMagmean: mean (numeric)
tBodyGyroMagstd: mean (numeric)
tBodyGyroJerkMagmean: mean (numeric)
tBodyGyroJerkMagstd: mean (numeric)
fBodyAccmeanX: mean (numeric)
fBodyAccmeanY: mean (numeric)
fBodyAccmeanZ: mean (numeric)
fBodyAccstdX: mean (numeric)
fBodyAccstdY: mean (numeric)
fBodyAccstdZ: mean (numeric)
fBodyAccJerkmeanX: mean (numeric)
fBodyAccJerkmeanY: mean (numeric)
fBodyAccJerkmeanZ: mean (numeric)
fBodyAccJerkstdX: mean (numeric)
fBodyAccJerkstdY: mean (numeric)
fBodyAccJerkstdZ: mean (numeric)
fBodyGyromeanX: mean (numeric)
fBodyGyromeanY: mean (numeric)
fBodyGyromeanZ: mean (numeric)
fBodyGyrostdX: mean (numeric)
fBodyGyrostdY: mean (numeric)
fBodyGyrostdZ: mean (numeric)
fBodyAccMagmean: mean (numeric)
fBodyAccMagstd: mean (numeric)
fBodyBodyAccJerkMagmean: mean (numeric)
fBodyBodyAccJerkMagstd: mean (numeric)
fBodyBodyGyroMagmean: mean (numeric)
fBodyBodyGyroMagstd: mean (numeric)
fBodyBodyGyroJerkMagmean: mean (numeric)
fBodyBodyGyroJerkMagstd mean (numeric)


For more information on the original variables, see features_info.txt
