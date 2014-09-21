# This performs the data merging as well as extract
# the essential information needed for processing.

# Specify directory for the file
setwd("./UCI HAR Dataset")

# Read the descriptive data
activity.labels<-read.table(file="activity_labels.txt")
features<-read.table(file="features.txt")

# Read the training data
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
subject.train<-read.table("./train/subject_train.txt")

# Read the test data
xtest<-read.table("./test/X_test.txt") # table of data
ytest<-read.table("./test/y_test.txt") # activity label
subject.test<-read.table("./test/subject_test.txt") # Subject ID

# Merge the training and test data
x.merged<-rbind(xtrain, xtest)
y.merged<-rbind(ytrain, ytest)
subject.merged<-rbind(subject.train, subject.test)

# Convert the activity code to the actual label
y.merged.activity<-y.merged
for(i in 1:nrow(activity.labels)){
  y.merged.activity[y.merged.activity == activity.labels$V1[i]] <- as.character(activity.labels$V2[i])
}

# Change column labels to the actual labels based on the "features" file
names(x.merged)<-features$V2
x.merged<-cbind(x.merged, y.merged.activity)


# Extract the columns for the means, and std.dev
mean.columns<-grep("mean", features$V2, ignore.case=T)
stddev.columns<-grep("std", features$V2, ignore.case=T)
required.columns<-c(mean.columns, stddev.columns)
required.columns<-sort(required.columns)

# Note that there are more columns with mean info than 
# columns with standard deviation


# Extract and change column labels
extracted<-x.merged[,required.columns]
names(extracted)<-features[required.columns,2]


# You might note that stddev are negative in some cases
# because they have been normalized to between [-1,1]

names(subject.merged)<-"Subject"
names(y.merged.activity)<-"Activity"
extracted.subject<-cbind(extracted, subject.merged, y.merged.activity)


# Create the tidy data set with the average of each variable
# for each activity and each subject.

extracted.subject.aggregated<-aggregate(extracted.subject[,1:86], by = list(extracted.subject$Subject, extracted.subject$Activity), mean)
names(extracted.subject.aggregated)[1:2]<-c("Subject.ID","Activity")
names(extracted.subject.aggregated)[3:88]<-paste0(names(extracted.subject.aggregated)[3:88], ".Subject.Activity.mean")


# Write out the Table for Step 5
write.table(extracted.subject.aggregated, "tidy.subject_activity_mean.txt", sep="\t", row.names=FALSE)
