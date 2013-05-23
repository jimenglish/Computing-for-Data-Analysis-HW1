complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files

	## 'id' is an integer vector indicating the monitor ID numbers
	## to be used

	## Return a data frame of the form:
	## id nobs
	## 1  117
	## 2  1041
	## ...
	## where 'id' is the monitor ID number and 'nobs' is the
	## number of complete cases
	
	source("getmonitor.R") ## load up the getmonitor function
	m = data.frame(id=id,nobs=NA) ## define generic data frame with "id" and "nobs" titles; initialize "id" to id variable
	
	for (i in seq_along(id)) {
		data <- getmonitor(id[i], directory) ## open the appropriate file
		good <- complete.cases(data$sulfate,data$nitrate) ## strip out NA examples
		m[i,2] = length(data$sulfate[good]) ## countonly non-NA lines and record to data frame
	}
	print(m)  ## print data frame results
}
