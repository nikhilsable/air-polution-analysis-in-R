complete <- function(directory, id){
  files <- list.files(directory, full.names = TRUE, pattern = ".csv")
  nobs <- as.numeric()
  for(i in id){
    df <-read.csv(files[i])
    nobs <- c(nobs, sum(complete.cases(df)))
  }
  data.frame(id, nobs)
}