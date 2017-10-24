# Getting and Cleaning Data Science Course Project
Version 1.0
_____________________________________________________
L. Ferguson
_____________________________________________________

In this project, data cleaning has been carried out on the Samsung Galaxy S II smartphone data
that was collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and
Luca Oneto at Smartlab.  Details on the experiments performed and data collected by
Smartlab can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The full data set used for this project can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In the run_analysis.R file, the data sets for the test data set is imported from three files, subject_test.txt, X_test.txt and y_test.txt.  The X_test.txt file contains all the measurements collected and analyzed by Smartlab.  Each row in this file corresponds to one subject doing a specific activity.  The subject_test.txt file contains the number of the subject that the data in X_test.txt corresponds to and the y_test.txt file has a number (from 1 to 6) that indicates the type of activity the subject was doing when the data was collected and analyzed.  All three sets of data were column bound into one data frame called test_data.  The same explanation goes for the subject_train.txt, X_train.txt and y_train.txt files and the corresponding train_data data frame.

The variables in both the test_data and train_data are identical so the data frames are row binded and 
combined into one data set (all_data).  From here, all variables (columns) that are either a mean or standard deviation are pulled out into a separate data from called mean_std_data along with the subject number and activity codes.  The activity codes (1 through 6) are then matached to the appropriate description that is pulled in from the activity_labels.txt file into activity_labels data frame.  The last bit data tidying that is done is adjusting the varible names (column names).  The column names are converted to all lower case and any special characters ((), _, ., etc.) are removed.

The final step in the R script is summarizing the data for each subject and each subject.  The summary_data data frame includes the mean for each variable measured for each subject and each activity level they performend.  This data frame is written into a .txt file at the end of the script and saved into the working directory specified by the user.

