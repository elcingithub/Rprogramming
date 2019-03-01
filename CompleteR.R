complete <- function(directory, id = 1:332)
  {
  listallfiles  <- list.files (path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  

  for (i in id) 
    
    {
    data <- read.csv(listallfiles[i])
    nobs <- c(nobs, sum(complete.cases(data))) }
  
  data.frame (id,nobs)
}

