## getting the Data: 

setwd("C:/Program Files/RStudio/R")  
New <- file("household_power_consumption.txt")
NEW  <- read.table(text = grep("^[1,2]/2/2007", readLines(New), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";")

## Plot 4: 
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
with(DataSet, {
  plot(Global_active_power ~ DataTime, type = "l", 
  ylab = "Global Active Power", xlab = "")
  plot(Voltage ~ DataTime, type = "l", ylab = "Voltage", xlab = "DataTime")
  plot(Sub_metering_1 ~ DataTime, type = "l", ylab = "Energy sub metering",
  xlab = "")
  lines(Sub_metering_2 ~ DataTime, col = 'Red')
  lines(Sub_metering_3 ~ DataTime, col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
  bty = "n",
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power ~ DataTime, type = "l", 
  ylab = "Global_rective_power", xlab = "DataTime")
})

png("plot4.png", width=480, height=480)
