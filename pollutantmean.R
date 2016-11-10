pollutantmean <- function(directory, pollutant, id = 1:332){
  pollutantmeanresult.subset <- data.frame()
  files <- list.files(directory, full.names = TRUE)
  meandf<- data.frame()
  values <- as.numeric(0)
  for(i in id){
    df <-read.csv(files[i])
    meandf <- rbind.data.frame(meandf, df)
  }
  values <- c(meandf[[pollutant]])
  mean(values, na.rm = TRUE)
 
}