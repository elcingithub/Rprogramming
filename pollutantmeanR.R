pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- list.files(directory, full.names = TRUE)
  
  if (length(files[id])==1){
    mean(read.csv(files[id])[,pollutant], na.rm=1)
  }
  
  else {
    data <- data.frame()
    for (i in 1:length(files[id])){
      datas <- rbind(data, read.csv(files[i]))
    }
    mean(data[,pollutant], na.rm=1)
  }
}