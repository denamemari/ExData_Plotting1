## getting the Data:

setwd("C:/Program Files/RStudio/R")  
New <- file("household_power_consumption.txt")
NEW  <- read.table(text = grep("^[1,2]/2/2007", readLines(New), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";")
## Plot3: 


with(DataSet, {
  plot(Sub_metering_1 ~ DataTime, type = "l", 
  ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(Sub_metering_2 ~ DataTime, col = 'Red')
  lines(Sub_metering_3 ~ DataTime, col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

png("plot3.png", width=480, height=480)
