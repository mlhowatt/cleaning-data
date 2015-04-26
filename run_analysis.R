#Script to merge testing and training sets and produce a tidy data set

#Part 1: clean and merge raw data
#read in main measurements into r
testing<-read.table("test//X_test.txt")
training<-read.table("train//X_train.txt")

#read in subject data
subject_test<-read.table("test//subject_test.txt")
#add descriptive variable name
colnames(subject_test) <- "subject"

subject_train<-read.table("train//subject_train.txt")
#add descriptive variable name
colnames(subject_train) <- "subject"

#read in activity data
activity_test<-read.table("test//y_test.txt")
#add descriptive variable name
colnames(activity_test) <- "activity"

activity_train<-read.table("train//y_train.txt")
#add descriptive variable name
colnames(activity_train) <- "activity"

#read in variable names
features<-read.table("features.txt")
variablenames <-as.character(features[,2])



#read in activity labels
labels<-read.table("activity_labels.txt")


#change column names to variable names from features.txt
colnames(testing) <- c(variablenames)
colnames(training) <- c(variablenames)


#extract only std or mean variables
#get mean and std columns only
testing<-testing[,grep ("mean\\(|std\\(", colnames(testing))]
training<-training[,grep ("mean\\(|std\\(", colnames(training))]

#add activity data
testing<-cbind(testing,activity_test)
training<-cbind(training,activity_train)

#add subject data
testing<-cbind(testing,subject_test)
training<-cbind(training,subject_train)

#merge testing and training data
complete_data<-rbind(testing,training)

#clean up column names
clean_col_names<-gsub("[[:punct:]]", "", colnames(complete_data))
colnames(complete_data) <- c(clean_col_names)

#change activity numbers to activity labels
my_labels<-data.frame(labels)
my_vec<-as.numeric(complete_data$activity)
complete_data$activity<-my_labels$V2[my_vec]

#Part 2: create new data set (wide format) by calculating mean grouped by subject and activity
tidy<-complete_data %>% group_by(subject,activity) %>% summarise_each(funs(mean))

#writes tidy to a text file
write.table(tidy, file = "tidy.txt", row.names=FALSE, col.names=TRUE)

#to view tidy.txt
#View(read.table("tidy.txt", header=TRUE))


