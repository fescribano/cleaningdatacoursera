library(dplyr)

## read feature names
features <- read.table("dataset/features.txt", stringsAsFactors = FALSE)
activities <- read.table("dataset/activity_labels.txt", stringsAsFactors = FALSE)
features.names <- append(features$V2, c("activity", "subject_id"))

## read test data
test.x <- read.table("dataset/test/X_test.txt")
test.y <- read.table("dataset/test/y_test.txt")
test.subject <- read.table("dataset/test/subject_test.txt")
test.all <- cbind(test.x, test.y, test.subject)

## read train data
train.x <- read.table("dataset/train/X_train.txt")
train.y <- read.table("dataset/train/y_train.txt")
train.subject <- read.table("dataset/train/subject_train.txt")
train.all <- cbind(train.x, train.y, train.subject)

## merge data and set column names
data <- rbind(test.all, train.all)
colnames(data) <- features.names

## filter only mean and std columns
data <- data[,grep("std\\(\\)|mean\\(\\)|activity|subject_id", features.names)]

## set activity names
data <- mutate(data, activity=activities[activity,2])

## summarise data for each user and each activity
final.data <- data %>% group_by(subject_id, activity) %>% summarise_each(funs(mean))

## write data
write.table(final.data, "finaldata.csv", row.name=FALSE)
