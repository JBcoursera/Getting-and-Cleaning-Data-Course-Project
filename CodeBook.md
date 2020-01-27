# Code Book
This code book explains the data fields obtained in "summarizedData.txt".  
Please see the `README.md` file for more information regarding the project and how the R script `run_analysis.R` works.  

## Data
`summarizedData.txt` is a text file containing the summarized data set, the different values are separated by one space character.  
The names of the activities performed, in the second column, are letter characters framed by `"`. Otherwise all the data are numbers without any frame.  

## Variables
* `trainingSubjects`,`trainingActivity`,`trainingValues`,`testSubjects`,`testActivity` and `testValues` are data sets containing the measurements of the downloaded files.  
* `trainingSet`,`testSet` and `globalSet` are the previous data sets binded together.  
* `features` contains the names of trainingValues and testValues, while `activityLabels` contains the names of the activities performed.  
* `filteredGlobalSet` is the data set `globalSet` with only the chosen columns, stored in `chosenColumns`.  
* `summarizedGlobalSet` is the final result, summarizing the previous `filteredGlobalSet`.  

## Identifiers
* `Subject` - The ID of the test subject, from 1 to 30  
* `Activity` - The type of activity performed while the corresponding measurements were recorded  
	*  `WALKING`: subject was walking during the test
	*  `WALKING_UPSTAIRS`: subject was walking up a staircase during the test
	*  `WALKING_DOWNSTAIRS`: subject was walking down a staircase during the test
	*  `SITTING`: subject was sitting during the test
	*  `STANDING`: subject was standing during the test
	*  `LAYING`: subject was laying down during the test

## Measurements and averages
Each row of the data set contains the subject ID, the type of activity and 79 averaged signal measurements.

The measurements are all normalized between [-1;1] with no unit.  

Before this, accelerometer unit of measure is m/s^2 and gyroscope unit of measure is rad/s.  

The *timeDomain* records are measurements of raw signals, while the *frequencyDomain* records are Fast Fourier Transform processing of raw signals.

Here are the recorded and summarized signals:  
```
timeDomainBodyAccelerometerMeanX  
timeDomainBodyAccelerometerMeanY  
timeDomainBodyAccelerometerMeanZ  
timeDomainBodyAccelerometerstandardDeviationX  
timeDomainBodyAccelerometerstandardDeviationY  
timeDomainBodyAccelerometerstandardDeviationZ  
timeDomainGravityAccelerometerMeanX  
timeDomainGravityAccelerometerMeanY  
timeDomainGravityAccelerometerMeanZ  
timeDomainGravityAccelerometerstandardDeviationX  
timeDomainGravityAccelerometerstandardDeviationY  
timeDomainGravityAccelerometerstandardDeviationZ  
timeDomainBodyAccelerometerJerkMeanX  
timeDomainBodyAccelerometerJerkMeanY  
timeDomainBodyAccelerometerJerkMeanZ  
timeDomainBodyAccelerometerJerkstandardDeviationX  
timeDomainBodyAccelerometerJerkstandardDeviationY  
timeDomainBodyAccelerometerJerkstandardDeviationZ  
timeDomainBodyGyroscopeMeanX  
timeDomainBodyGyroscopeMeanY  
timeDomainBodyGyroscopeMeanZ  
timeDomainBodyGyroscopestandardDeviationX  
timeDomainBodyGyroscopestandardDeviationY  
timeDomainBodyGyroscopestandardDeviationZ  
timeDomainBodyGyroscopeJerkMeanX  
timeDomainBodyGyroscopeJerkMeanY  
timeDomainBodyGyroscopeJerkMeanZ  
timeDomainBodyGyroscopeJerkstandardDeviationX  
timeDomainBodyGyroscopeJerkstandardDeviationY  
timeDomainBodyGyroscopeJerkstandardDeviationZ  
timeDomainBodyAccelerometerMagnitudeMean  
timeDomainBodyAccelerometerMagnitudestandardDeviation  
timeDomainGravityAccelerometerMagnitudeMean  
timeDomainGravityAccelerometerMagnitudestandardDeviation  
timeDomainBodyAccelerometerJerkMagnitudeMean  
timeDomainBodyAccelerometerJerkMagnitudestandardDeviation  
timeDomainBodyGyroscopeMagnitudeMean  
timeDomainBodyGyroscopeMagnitudestandardDeviation  
timeDomainBodyGyroscopeJerkMagnitudeMean  
timeDomainBodyGyroscopeJerkMagnitudestandardDeviation  
frequencyDomainBodyAccelerometerMeanX  
frequencyDomainBodyAccelerometerMeanY  
frequencyDomainBodyAccelerometerMeanZ  
frequencyDomainBodyAccelerometerstandardDeviationX  
frequencyDomainBodyAccelerometerstandardDeviationY  
frequencyDomainBodyAccelerometerstandardDeviationZ  
frequencyDomainBodyAccelerometerMeanFrequencyX  
frequencyDomainBodyAccelerometerMeanFrequencyY  
frequencyDomainBodyAccelerometerMeanFrequencyZ  
frequencyDomainBodyAccelerometerJerkMeanX  
frequencyDomainBodyAccelerometerJerkMeanY  
frequencyDomainBodyAccelerometerJerkMeanZ  
frequencyDomainBodyAccelerometerJerkstandardDeviationX  
frequencyDomainBodyAccelerometerJerkstandardDeviationY  
frequencyDomainBodyAccelerometerJerkstandardDeviationZ  
frequencyDomainBodyAccelerometerJerkMeanFrequencyX  
frequencyDomainBodyAccelerometerJerkMeanFrequencyY  
frequencyDomainBodyAccelerometerJerkMeanFrequencyZ  
frequencyDomainBodyGyroscopeMeanX  
frequencyDomainBodyGyroscopeMeanY  
frequencyDomainBodyGyroscopeMeanZ  
frequencyDomainBodyGyroscopestandardDeviationX  
frequencyDomainBodyGyroscopestandardDeviationY  
frequencyDomainBodyGyroscopestandardDeviationZ  
frequencyDomainBodyGyroscopeMeanFrequencyX  
frequencyDomainBodyGyroscopeMeanFrequencyY  
frequencyDomainBodyGyroscopeMeanFrequencyZ  
frequencyDomainBodyAccelerometerMagnitudeMean  
frequencyDomainBodyAccelerometerMagnitudestandardDeviation  
frequencyDomainBodyAccelerometerMagnitudeMeanFrequency  
frequencyDomainBodyAccelerometerJerkMagnitudeMean  
frequencyDomainBodyAccelerometerJerkMagnitudestandardDeviation  
frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency  
frequencyDomainBodyGyroscopeMagnitudeMean  
frequencyDomainBodyGyroscopeMagnitudestandardDeviation  
frequencyDomainBodyGyroscopeMagnitudeMeanFrequency  
frequencyDomainBodyGyroscopeJerkMagnitudeMean  
frequencyDomainBodyGyroscopeJerkMagnitudestandardDeviation  
frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency  
```