
#Load plyr package
 require(plyr)

#Load Data from current Directory
tab_features <- read.table("features.txt", colClasses = c("character"))
tab_activity_labels <- read.table("activity_labels.txt", col.names = c("ActivityId", "Activity"))
tab_x_train <- read.table("x_train.txt")
tab_y_train <- read.table("y_train.txt")
tab_subject_train <- read.table("subject_train.txt")
tab_x_test <- read.table("x_test.txt")
tab_y_test <- read.table("y_test.txt")
tab_subject_test <- read.table("subject_test.txt")

#Merging Data

#Column Binding Train data X and Y 
training_data <- cbind(cbind(tab_x_train, tab_subject_train), tab_y_train)

#Binding Test Data X and Y
test_data <- cbind(cbind(tab_x_test, tab_subject_test), tab_y_test)

#Row binding Training and Test Data
sensor_data <- rbind(training_data, test_data)


# correctly labeling columns 
sensor_labels <- rbind(rbind(tab_features, c(562, "Subject")), c(563, "ActivityId"))[,2]
names(sensor_data) <- sensor_labels



# Extracting Mean and SD for each measurement
sensor_data_mean_std <- sensor_data[,grepl("mean|std|Subject|ActivityId", names(sensor_data))]
sensor_data_mean_std <- sensor_data_mean_std[,-1]


#correcting Names
names(sensor_data_mean_std) <- make.names(names(sensor_data_mean_std))

#Creating a Neat dataset before final file creation
neat_sensor = ddply(sensor_data_mean_std, c("Subject","ActivityId"), numcolwise(mean))

#Writing to final output file 
write.table(neat_sensor, file = "sensor.txt",row.name=FALSE)




