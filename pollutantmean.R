pollutantmean <- function(directory, pollutant, id = 1:223){
     files <- list.files(directory, full.names = TRUE)
     
     pollutantData <- data.frame()
     
     for (i in id) {
           pollutantData <- rbind(pollutantData, read.csv(files[i]))
     }
     
     
     if (pollutant == 'sulfate') {
           mean(pollutantData$sulfate, na.rm = TRUE)
     } else if (pollutant == 'nitrate') {
           mean(pollutantData$nitrate, na.rm = TRUE)
     }
}