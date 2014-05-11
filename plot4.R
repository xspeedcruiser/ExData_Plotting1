source("loaddata.R")
data <- loaddata()
png('plot4.png')
par(mfrow=c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
cols <- c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
with(data,{
  plot(DateTime, Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power')
  plot(DateTime, Voltage, type = 'l')
  plot(DateTime, Sub_metering_1, col = c('black', 'red', 'blue'), 
       type = 'l', xlab = '', ylab = 'Energy sub metering')
  lines(DateTime, Sub_metering_2, col = 'red')
  lines(DateTime, Sub_metering_3, col = 'blue')
  legend('topright', bty = 'n', legend=cols, col=c('black', 'red', 'blue'), 
         lty = 1, lwd = 1, cex=0.95)
  plot(DateTime, Global_reactive_power, type = 'l')
}
)
dev.off()
