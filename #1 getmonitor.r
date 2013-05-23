getmonitor <- function(id, directory, summarize = FALSE) {

## 'id' is a vector of length 1 indicating the monitor ID
## number. The user can specify 'id' as either an integer, a
## character, or a numeric.
        
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files

## 'summarize' is a logical indicating whether a summary of
## the data should be printed to the console; the default is
## FALSE
        

  OriginalWorkingDir <- getwd() ## Take stock of the original working director
	setwd(directory) ## change working directory to the location of the CSV files
	

	if (as.numeric(id) < 10) {  ## define variable name with the format "number.csv" but make sure to add leading "0" or "00" if necessary
		FileName <- paste("00",id,".csv",sep="")
	} else if (as.numeric(id) < 100) {
		FileName <- paste("0",id,".csv",sep="")
	} else {
		FileName <- paste(id,".csv",sep="")
	}
	
	x <- read.csv(FileName) ## read in the file with the format "number.csv"
	setwd(OriginalWorkingDir) ## reset back to original working directory
	if (summarize) {
		print(summary(x))  ## print out summary of data
	}
	invisible(x)
}
