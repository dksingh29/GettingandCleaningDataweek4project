# Code Book - Getting and Cleaning Data Science Course Project
Version 1.0
________________________________________________________________
L. Ferguson
________________________________________________________________

## Items in run_analysis.R Script

Item            | Description                                                         
--------------- | ----------
url             | Url address for zip file location                                   
test_data_x     | Import of test data from url                                        
test_data_y     | Import of activity labels for test data from ur                     
subject_test    | Import of subject labels for test data from url                     
test_data       | Combined data frame of test_data_x, test_data_y and subject_test    
train_data_x    | Import of train data from url                                       
train_data_y    | Import of activity labels for train data from url                   
subject_train   | Import of subject labels for train data from url                    
train_data      | Combined data frame of train_data_x, train_data_y and subject_train   
all_data        | Row Bind of the test_data and train_data data frames                
features        | Char vector of features.txt file from url, this is the column names for the test_data_x and train_data_x data frames                    |
mean_std_data   | Data frame of the subject, activity and any column that is a mean or standard deviation measurement 
activity_labels | Data frame of the activity code(number) and corresponding activity description (character)
summary_data    | Data frame of the average values in the mean_std_data data frame for each activity and each subject

## Variables

The below variable description has been pulled from the features_info.txt file provided by the originators of the data sest.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'xyz' is used to denote 3-axial signals in the X, Y and Z directions.

tbodyaccxyz
tgravityaccxyz
tbodyaccjerkxyz
tbodygyroxyz
tbodygyrojerkxyz
tbodyaccmag
tgravityaccmag
tbodyaccjerkmag
tbodygyromag
tbodygyrojerkmag
fbodyaccxyz
fbodyaccjerkxyz
fbodygyroxyz
fbodyaccmag
fbodyaccjerkmag
fbodygyromag
fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanfreq(): Weighted average of the frequency components to obtain a mean frequency
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravitymean
tbodyaccmean
tbodyaccjerkmean
tbodygyromean
tbodygyrojerkmean

The complete list of variables of variables in the summary_data data frame is available below

1. subject - subject performing the activity
2. activity - activity the subject was performing when the measurements were taken
3. tbodyaccmeanx
4. tbodyaccmeany 
5. tbodyaccmeanz 
6. tbodyaccstdx 
7. tbodyaccstdy
8. tbodyaccstdz
9. tgravityaccmeanx 
10. tgravityaccmeany
11. tgravityaccmeanz
12. tgravityaccstdx
13. tgravityaccstdy 
14. tgravityaccstdz
15. tbodyaccjerkmeanx
16. tbodyaccjerkmeany 
17. tbodyaccjerkmeanz 
18. tbodyaccjerkstdx 
19. tbodyaccjerkstdy 
20. tbodyaccjerkstdz 
21. tbodygyromeanx 
22. tbodygyromeany
23. tbodygyromeanz
24. tbodygyrostdx
25. tbodygyrostdy
26. tbodygyrostdz
27. tbodygyrojerkmeanx
28. tbodygyrojerkmeany
29. tbodygyrojerkmeanz
30. tbodygyrojerkstdx
31. tbodygyrojerkstdy
32. tbodygyrojerkstdz
33. tbodyaccmagmean
34. tbodyaccmagstd
35. tgravityaccmagmean
36. tgravityaccmagstd
37. tbodyaccjerkmagmean
38. tbodyaccjerkmagstd
39. tbodygyromagmean
40. tbodygyromagstd
41. tbodygyrojerkmagmean
42. tbodygyrojerkmagstd
43. fbodyaccmeanx
44. fbodyaccmeany
45. fbodyaccmeanz
46. fbodyaccstdx
47. fbodyaccstdy
48. fbodyaccstdz
49. fbodyaccmeanfreqx
50. fbodyaccmeanfreqy
51. fbodyaccmeanfreqz
52. fbodyaccjerkmeanx
53. fbodyaccjerkmeany
54. fbodyaccjerkmeanz
55. fbodyaccjerkstdx
56. fbodyaccjerkstdy
57. fbodyaccjerkstdz
58. fbodyaccjerkmeanfreqx
59. fbodyaccjerkmeanfreqy
60. fbodyaccjerkmeanfreqz
61. fbodygyromeanx
62. fbodygyromeany
63. fbodygyromeanz
64. fbodygyrostdx
65. fbodygyrostdy
66. fbodygyrostdz
67. fbodygyromeanfreqx
68. fbodygyromeanfreqy
69. fbodygyromeanfreqz
70. fbodyaccmagmean
71. fbodyaccmagstd
72. fbodyaccmagmeanfreq
73. fbodybodyaccjerkmagmean
74. fbodybodyaccjerkmagstd
75. fbodybodyaccjerkmagmeanfreq
76. fbodybodygyromagmean
77. fbodybodygyromagstd
78. fbodybodygyromagmeanfreq
79. fbodybodygyrojerkmagmean
80. fbodybodygyrojerkmagstd
81. fbodybodygyrojerkmagmeanfreq
82. angle(tbodyaccmeangravity)
83. angle(tbodyaccjerkmean)gravitymean)
84. angle(tbodygyromeangravitymean)
85. angle(tbodygyrojerkmeangravitymean)
86. angle(xgravitymean)
87. angle(ygravitymean)
88. angle(zgravitymean)

## Instruction List

1. Open run_analysis.R file in R Studio.
2. Set your working directory by changing the text "insert your wd location" to your working directory.
3. Run the script in the R file
4. The summary data is written into a .csv files that is saved into the workign directory specified by the user called "Run_Analysis_Tidy_Data.csv"

