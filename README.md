README
==========================================

# Overview
This repository contains information on how the raw data obtained on wearable computing is used and processed to 

## run_analysis.R
1. The script (run_analysis.R) will first read in the test dataset and training
datasets which contains some processed data collected from the wearable 
device. 

2. The script then proceeds to merge them into a single dataset. The activity 
performed by the subject is also merged into the same dataset. At the same time,
the column names are also modified to reflect the actual column labels

3. The columns that contain information on the mean and standard deviation
were then extracted using the command grep for the two keywords "mean" and
"std". The subject ID and activity information for the corresponding row
was also extracted. Together, these information were used to build a new
table.

4. The average of each variable for each subject and each activity was
then calculated using the aggregate and mean function in R. 

5. The new tidy dataset was then written into file and labelled "tidy.subject_activity_mean.txt"


## tidy.subject_activity_mean.txt

This file refers to the tidy dataset that has been generated by the run_analysis.R script mentioned above.


## codebook.md

This is a codebook descrbing each of the variables that are present in the tidy.subject_activity_mean.txt tidy dataset. It provides further information on how to interpret each of the variable.