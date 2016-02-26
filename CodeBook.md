
#Cleaning Data - Coursera

#Thomas Matthew Hughes

##Raw Data

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


##Transformation

The activity descriptions are joined to the activity label data (y).
The corresponding training and test datasets are concatenated, and then columns for subject and activitylabel (description) are appended (by row number) to the data.
This result is output as result_combinedDataSet.csv.

The data is further subsetted to only include the activity, subject, and the mean() features. Again these are determined by looking for “-mean()” in the feature name.
The data is then reduced with ddply() to (activity,subject) -> colMeans()
As it was not specified, missing combinations of activity and subject are output, with value NA.
The column names are tidied by removing the “mean()” string, etc.
This result is output as result_meanByActivityAndSubject.csv

