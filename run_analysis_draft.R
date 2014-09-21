# This performs the data merging as well as extract
# the essential information needed for processing.

library(data.table)

# Specify directory for the file
setwd("./UCI HAR Dataset")


# Read the descriptive data
activity.labels<-read.table(file="activity_labels.txt")
features<-read.table(file="features.txt")

# Read the training data
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
subject.train<-read.table("./train/subject_train.txt")

b.acc.x.train<-read.table("./train/Inertial Signals/body_acc_x_train.txt")
b.acc.y.train<-read.table("./train/Inertial Signals/body_acc_y_train.txt")
b.acc.z.train<-read.table("./train/Inertial Signals/body_acc_z_train.txt")

b.gyr.x.train<-read.table("./train/Inertial Signals/body_gyro_x_train.txt")
b.gyr.y.train<-read.table("./train/Inertial Signals/body_gyro_y_train.txt")
b.gyr.z.train<-read.table("./train/Inertial Signals/body_gyro_z_train.txt")

t.acc.x.train<-read.table("./train/total_acc_x_train.txt")
t.acc.y.train<-read.table("./train/total_acc_y_train.txt")
t.acc.z.train<-read.table("./train/total_acc_z_train.txt")



# Read the test data
xtest<-read.table("./test/X_test.txt") # table of data
ytest<-read.table("./test/y_test.txt") # activity label
subject.test<-read.table("./test/subject_test.txt") # Subject ID

b.acc.x.test<-read.table("./test/Inertial Signals/body_acc_x_test.txt")
b.acc.y.test<-read.table("./test/Inertial Signals/body_acc_y_test.txt")
b.acc.z.test<-read.table("./test/Inertial Signals/body_acc_z_test.txt")

b.gyr.x.test<-read.table("./test/Inertial Signals/body_gyro_x_test.txt")
b.gyr.y.test<-read.table("./test/Inertial Signals/body_gyro_y_test.txt")
b.gyr.z.test<-read.table("./test/Inertial Signals/body_gyro_z_test.txt")

t.acc.x.test<-read.table("./test/total_acc_x_test.txt")
t.acc.y.test<-read.table("./test/total_acc_y_test.txt")
t.acc.z.test<-read.table("./test/total_acc_z_test.txt")


# Merge the training and test data
x.merged<-rbind(xtrain, xtest)
y.merged<-rbind(ytrain, ytest)
subject.merged<-rbind(subject.train, subject.test)

b.acc.x.merged<-rbind(b.acc.x.train ,b.acc.x.test)
b.acc.y.merged<-rbind(b.acc.y.train ,b.acc.y.test)
b.acc.z.merged<-rbind(b.acc.z.train ,b.acc.z.test)

b.gyr.x.merged<-rbind(b.gyr.x.train, b.gyr.x.test)
b.gyr.y.merged<-rbind(b.gyr.y.train, b.gyr.y.test)
b.gyr.z.merged<-rbind(b.gyr.z.train, b.gyr.z.test)

t.acc.x.merged<-rbind(t.acc.x.train, t.acc.x.test)
t.acc.y.merged<-rbind(t.acc.y.train, t.acc.y.test)
t.acc.z.merged<-rbind(t.acc.z.train, t.acc.z.test)



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
extracted.subject<-cbind(extracted, subject.merged)

# final<-data.frame()
# for(i in 2:ncol(extracted.subject) - 1){
#   mean.data<-tapply(extracted.subject[,i], extracted.subject$Subject, mean)
#   
#   final<-cbind(final, data.frame(mean.data))
# }

extracted.subject.aggregated<-aggregate(extracted.subject[,1:86], by = list(extracted.subject$Subject), mean)



### X is the raw data 
### y is the activity label (i.e. waling, standing, etc)
### features is the colnames for xtrain, xtest
