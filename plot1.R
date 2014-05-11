source("loaddata.R")

data <- loaddata()
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()