Computing-for-Data-Analysis-HW1
===============================

Programming which was completed for the 1st assignment in the Johns Hopkins "Computing for Data Analysis" course

Introduction
For this first programming assignment, you will write three functions that are meant
to interact with dataset that accompanies this assignment. The dataset is contained in 
a zip file specdata.zip. The zip file contains 332 comma-separated-value (CSV) files containing
pollution monitoring data for fine particulate matter (PM) air pollution at 332 locations in 
the United States. Each file contains data from a single monitor and the ID number for each 
monitor is contained in the file name. For example, data for monitor 200 is contained in the 
file "200. csv". Each file contains three variables: Date: the date of the observation 
in YYYY-MM-DD format ( yearmonth-day) sulfate: the level of sulfate PM in the air on that
date (measured in micrograms per cubic meter) nitrate: the level of nitrate PM in the air 
on that date (measured in micrograms per cubic meter) For this programming assignment you 
will need to unzip this file and create the directory ' specdata' . Once you have unzipped 
the zip file, do not make any modifications to the files in the ' specdata' directory. In 
each file you' ll notice that there are many days where either sulfate or nitrate (or both)
are missing ( coded as NA) . This is common with air pollution monitoring data in the United States. 

Part 1
Write a function named ' getmonitor' that takes three arguments: 'id' , 'directory' , and 
'summarize'. Given a monitor ID number, ' getmonitor' reads that monitor' s particulate 
matter data from the directory specified in the ' directory' argument and returns a data 
frame containing that monitor' s data. I f ' summarize = TRUE' , then ' getmonitor' produces 
a summary of the data frame with the ' summary' function and prints it to the console.

Part 2
Write a function that reads a directory full of files and reports the number of completely 
observed cases in each data file. The function should return a data frame where the first 
olumn is the name of the file and the second column is the number of complete cases. 

Part 3
Write a function that takes a directory of data files and a threshold for complete cases 
and calculates the correlation between sulfate and nitrate for monitor locations where the 
number of completely observed cases ( on all variables) is greater than the threshold. The 
function should return a vector of correlations for the monitors that meet the threshold requirement. 
If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0.
