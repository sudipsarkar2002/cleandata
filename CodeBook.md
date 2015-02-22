Code Book
============
Raw Data Collection from source as per guidelines in the project work. 

"The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S 
smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The project data was downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##The Steps required to do the analysis is as follows
a) Load the plyr package
b) Load the following Data files - features.txt, activity_labels.txt, x_train.txt, y_train.txt, subject_train.txt, subject_train.txt, y_test.txt, subject_test.txt
c) Merge the Training Data set X and Y 
d) Merge the Testing Data set X and Y 
e) binding the Test and traingin data sets
f) Correctly label the columns
g) Extract only the Mean and Standard Deveation 
h) Correct names for the header
i) Create the output data set sensor.txt
