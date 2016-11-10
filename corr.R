corr <- function(directory, threshold = 0){
  files <- list.files(directory, full.names = TRUE, pattern = ".csv")
  values <- as.numeric()
  i <- as.integer()
  for (i in 1:332){
    df <-read.csv(files[i])
    if(sum(complete.cases(df)) > threshold){
      corris <- cor(df$sulfate, df$nitrate, use = "complete.obs")
      values <- c(values, corris)
    }
  }
  values
}