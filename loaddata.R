loaddata <- function(){
  data <-read.table( "household_power_consumption.txt", header=T, 
                     sep=';', na.strings="?",stringsAsFactors = F)
  data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
  data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  return(data)
}