  ---
  title: "CodeBook"
output: word_document
---
  
  This document describes the variable, data and the clean up processes on the activities data

## DATA

## Identifiers

* subject - each value denotes a person<br>
  * Activity - the activity performed by the subject while taking the measurement.

## variables

The final data contains the below variables

* tBody-Accelerometer-elerometerMean-X
* tBody-Accelerometer-elerometerMean-Y
* tBody-Accelerometer-elerometerMean-Z 
* tBody-Accelerometer-elerometerStd-X 
* tBody-Accelerometer-elerometerStd-Y 
* tBody-Accelerometer-elerometerStd-Z 
* tGravity-Accelerometer-elerometerMean-X 
* tGravity-Accelerometer-elerometerMean-Y 
* tGravity-Accelerometer-elerometerMean-Z 
* tGravity-Accelerometer-elerometerStd-X 
* tGravity-Accelerometer-elerometerStd-Y 
* tGravity-Accelerometer-elerometerStd-Z 
* tBody-Accelerometer-elerometerJerkMean-X 
* tBody-Accelerometer-elerometerJerkMean-Y 
* tBody-Accelerometer-elerometerJerkMean-Z 
* tBody-Accelerometer-elerometerJerkStd-X 
* tBody-Accelerometer-elerometerJerkStd-Y 
* tBody-Accelerometer-elerometerJerkStd-Z 
* tBody-Gyroscope-Mean-X 
* tBody-Gyroscope-Mean-Y 
* tBody-Gyroscope-Mean-Z 
* tBody-Gyroscope-Std-X 
* tBody-Gyroscope-Std-Y 
* tBody-Gyroscope-Std-Z 
* tBody-Gyroscope-JerkMean-X 
* tBody-Gyroscope-JerkMean-Y 
* tBody-Gyroscope-JerkMean-Z 
* tBody-Gyroscope-JerkStd-X 
* tBody-Gyroscope-JerkStd-Y 
* tBody-Gyroscope-JerkStd-Z 
* tBody-Acelerometer-elerometerMagMean 
* tBody-Accelerometer-elerometerMagStd 
* tGravity-Accelerometer-elerometerMagMean 
* tGravity-Accelerometer-elerometerMagStd 
* tBody-Accelerometer-elerometerJerkMagMean 
* tBody-Accelerometer-elerometerJerkMagStd 
* tBody-Gyroscope-MagMean 
* tBody-Gyroscope-MagStd 
* tBody-Gyroscope-JerkMagMean 
* tBody-Gyroscope-JerkMagStd 
* fBody-Accelerometer-elerometerMean-X 
* fBody-Accelerometer-elerometerMean-Y 
* fBody-Accelerometer-elerometerMean-Z 
* fBody-Accelerometer-elerometerStd-X 
* fBody-Accelerometer-elerometerStd-Y 
* fBody-Accelerometer-elerometerStd-Z 
* fBody-Accelerometer-elerometer-meanFreq()-X 
* fBody-Accelerometer-elerometer-meanFreq()-Y 
* fBody-Accelerometer-elerometer-meanFreq()-Z 
* fBody-Accelerometer-elerometerJerkMean-X 
* fBody-Accelerometer-elerometerJerkMean-Y 
* fBody-Accelerometer-elerometerJerkMean-Z 
* fBody-Accelerometer-elerometerJerkStd-X 
* fBody-Accelerometer-elerometerJerkStd-Y 
* fBody-Accelerometer-elerometerJerkStd-Z 
* fBody-Accelerometer-elerometerJerk-meanFreq()-X 
* fBody-Accelerometer-elerometerJerk-meanFreq()-Y 
* fBody-Accelerometer-elerometerJerk-meanFreq()-Z 
* fBody-Gyroscope-Mean-X 
* fBody-Gyroscope-Mean-Y 
* fBody-Gyroscope-Mean-Z 
* fBody-Gyroscope-Std-X 
* fBody-Gyroscope-Std-Y 
* fBody-Gyroscope-Std-Z 
* fBody-Gyroscope--meanFreq()-X 
* fBody-Gyroscope--meanFreq()-Y 
* fBody-Gyroscope--meanFreq()-Z 
* fBody-Accelerometer-elerometerMagMean 
* fBody-Accelerometer-elerometerMagStd 
* fBody-Accelerometer-elerometerMag-meanFreq() 
* fBodyBody-Accelerometer-elerometerJerkMagMean 
* fBodyBody-Accelerometer-elerometerJerkMagStd 
* fBodyBody-Accelerometer-elerometerJerkMag-meanFreq() 
* fBodyBody-Gyroscope-MagMean 
* fBodyBody-Gyroscope-MagStd 
* fBodyBody-Gyroscope-Mag-meanFreq() 
* fBodyBody-Gyroscope-JerkMagMean 
* fBodyBody-Gyroscope-JerkMagStd 
* fBodyBody-Gyroscope-JerkMag-meanFreq()

## Activity Labels
* LAYING
* SITTING
* STANDING
* WALKING
* WALKING DOWNSTAIRS
* WALKING UPSTAIRS

## Steps to arrive at the Final Data
* downloaded the file from the url
* unzipped the data
* merged the train and test data
* subsetted the data for the columns which has mean/std information
* formatted the column names
* Added the subject and the activity labels to the data.


