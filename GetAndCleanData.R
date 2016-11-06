
#go to directory
setwd("C:\\datasciencecoursera")


#read files
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
x_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
features <- read.table(".\\UCI HAR Dataset\\features.txt")
activity_labels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")

#Assigning Column Names
colnames(x_train) <- features[, 2]
colnames(y_train) <- "activityId"
colnames(subject_train) <- "subjectId"
colnames(x_test) <- features[, 2]
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

#joining and unioning data
train <- cbind(subject_train, x_train, y_train)
test <- cbind(subject_test, x_test, y_test)
unioned <- rbind(train, test)

#joining in descriptive activity name
colnames(activity_labels) <- c("activityId", "activity")
joined <- merge(activity_labels, unioned, by = "activityId", all.x = TRUE)
columns <- colnames(joined)

#filtering out unrequired columns
filteredColumns <- grepl("(^subjectId$)|(^activity$)|([mM][eE][aA][nN][(][)])|([sS][tT][dD][(][)])", columns)
filtered <- joined[, filteredColumns]

#write result to file
write.csv(filtered, "dataSet.csv")

#get the mean
meanByActivity <- aggregate(filtered[, which(!(names(filtered) %in% c("activity", "subjectId")))], list(filtered$activity, filtered$subjectId), mean)

#write mean result to file
write.csv(meanByActivity, "meanByActivityDataSet.csv")

