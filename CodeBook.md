## Johns Hopkins Coursera Getting and Cleaning Data Course
###July 2015
###CODE BOOK

###PROCESS
* Data Labels and Activity Labels were read into r tables
* Data Labels were "cleaned" up
* Train and Test files were read into r selecting only the data with mean and standard
	deviation data
* Train and Test tables were combined into one file
* Combined table was then aggregated by Subject and Activity and mean of values derived
* The resulting "tidy" table was output to a text file format


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency



###VARIABLES

The "t" prefix denotes that the time domain signals were used.
The "f" prefix denotes that the Fast Fourier Transform (FFT) was applied to some of these signals.
The '-XYZ' suffix is used to denote 3-axial signals in the X, Y and Z directions.


Subject
Activity
tBodyAccMEAN_X
tBodyAccMEAN_Y
tBodyAccMEAN_Z
tBodyAccSTD_X
tBodyAccSTD_Y
tBodyAccSTD_Z
tGravityAccMEAN_X
tGravityAccMEAN_Y
tGravityAccMEAN_Z
tGravityAccSTD_X
tGravityAccSTD_Y
tGravityAccSTD_Z
tBodyAccJerkMEAN_X
tBodyAccJerkMEAN_Y
tBodyAccJerkMEAN_Z
tBodyAccJerkSTD_X
tBodyAccJerkSTD_Y
tBodyAccJerkSTD_Z
tBodyGyroMEAN_X
tBodyGyroMEAN_Y
tBodyGyroMEAN_Z
tBodyGyroSTD_X
tBodyGyroSTD_Y
tBodyGyroSTD_Z
tBodyGyroJerkMEAN_X
tBodyGyroJerkMEAN_Y
tBodyGyroJerkMEAN_Z
tBodyGyroJerkSTD_X
tBodyGyroJerkSTD_Y
tBodyGyroJerkSTD_Z
tBodyAccMagMEAN_
tBodyAccMagSTD_
tGravityAccMagMEAN_
tGravityAccMagSTD_
tBodyAccJerkMagMEAN_
tBodyAccJerkMagSTD_
tBodyGyroMagMEAN_
tBodyGyroMagSTD_
tBodyGyroJerkMagMEAN_
tBodyGyroJerkMagSTD_
fBodyAccMEAN_X
fBodyAccMEAN_Y
fBodyAccMEAN_Z
fBodyAccSTD_X
fBodyAccSTD_Y
fBodyAccSTD_Z
fBodyAccMEAN_FreqX
fBodyAccMEAN_FreqY
fBodyAccMEAN_FreqZ
fBodyAccJerkMEAN_X
fBodyAccJerkMEAN_Y
fBodyAccJerkMEAN_Z
fBodyAccJerkSTD_X
fBodyAccJerkSTD_Y
fBodyAccJerkSTD_Z
fBodyAccJerkMEAN_FreqX
fBodyAccJerkMEAN_FreqY
fBodyAccJerkMEAN_FreqZ
fBodyGyroMEAN_X
fBodyGyroMEAN_Y
fBodyGyroMEAN_Z
fBodyGyroSTD_X
fBodyGyroSTD_Y
fBodyGyroSTD_Z
fBodyGyroMEAN_FreqX
fBodyGyroMEAN_FreqY
fBodyGyroMEAN_FreqZ
fBodyAccMagMEAN_
fBodyAccMagSTD_
fBodyAccMagMEAN_Freq
fBodyBodyAccJerkMagMEAN_
fBodyBodyAccJerkMagSTD_
fBodyBodyAccJerkMagMEAN_Freq
fBodyBodyGyroMagMEAN_
fBodyBodyGyroMagSTD_
fBodyBodyGyroMagMEAN_Freq
fBodyBodyGyroJerkMagMEAN_
fBodyBodyGyroJerkMagSTD_
fBodyBodyGyroJerkMagMEAN_Freq


Activity Labels

    WALKING (value 1): subject was walking during the test
    WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
    WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
    SITTING (value 4): subject was sitting during the test
    STANDING (value 5): subject was standing during the test
    LAYING (value 6): subject was laying down during the test

