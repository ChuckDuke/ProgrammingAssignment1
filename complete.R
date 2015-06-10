complete <- function(directory, id = 1:332) {
      files <- list.files(directory, full.names = TRUE)
      
      data <- data.frame()
      completeCases <- data.frame()
      rows <- data.frame()
      
      for (i in id) { 
            data <- (read.csv(files[i],header=TRUE))
            rows <- sum(complete.cases(data))
            completeCases <- rbind(completeCases, data.frame(i,rows))
      }
      names(completeCases) <- c("id", "nobs")
      completeCases
}