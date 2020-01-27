# Getting and Cleaning Data Course Project

## Important
* In order to run the R script called `run_analysis.R`, you need first to download [this archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it in your R working directory.
* The `dplyr` package is needed.

## Files belongig to this project
`README.md`:  this very file, describing the project.
`CodeBook.md`:  the code book describing the content of the data set.
`run_analysis.R`:  the R script used to obtain de summarized data set.
`summarizedData.txt`:  the file containing the summarized data set.

## How does it work?
* The R script `run_analysis.R` reads the training and the test sets contained in `UCI HAR Dataset` before merging them together.
* Once done it extracts only the measurements on the mean and standard deviation for each measurement.
* The obtained data are labeled with descriptive variable names.
* Finally it creates an independant tidy data set called `summarizedData.txt` in your current R working directory.

## Where do the data come from?
One of the most exciting areas in all of data science right now is wearable computing.  
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.  
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.  
A full description is available at [the site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.