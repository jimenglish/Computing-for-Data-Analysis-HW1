corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
	## the location of the CSV files

	## 'threshold' is a numeric vector of length 1 indicating the
	## number of completely observed observations (on all
	## variables) required to compute the correlation between
	## nitrate and sulfate; the default is 0

	## Return a numeric vector of correlations
	
	source("getmonitor.R") ## load up the getmonitor function
	corr_vector <- as.vector(matrix(NA,ncol=1,nrow=332))
	
	for (i in 1:332) {
		data <- getmonitor(i, directory) ## open the appropriate file
		good <- complete.cases(data$sulfate,data$nitrate) ## strip out NA examples
		if (length(data$sulfate[good]) > threshold) {
			corr_vector[i] <- cor(data$sulfate[good],data$nitrate[good])
		}
	}
	bad <- is.na(corr_vector)
	as.numeric(corr_vector[!bad])
	
}
