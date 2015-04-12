


##Getting the Data: 
  
setwd("C:/Program Files/RStudio/R")  
New <- file("household_power_consumption.txt")
NEW  <- read.table(text = grep("^[1,2]/2/2007", readLines(New), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";")
# Plot 1
Plot1<- hist(NEW$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")

png("plot1.png", width=480, height=480)
