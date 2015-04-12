
## getting the Data:
setwd("C:/Program Files/RStudio/R")  
New <- file("household_power_consumption.txt")
NEW  <- read.table(text = grep("^[1,2]/2/2007", readLines(New), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";")

## Getting and sub setting dataset: 
FullDataSet <- read.csv("household_power_consumption.txt", header = T, sep = ';'
na.strings = "?", nrows = 2075259, check.names = F, 
stringsAsFactors = F, comment.char = "", quote = '\"')
FullDataSet $Date <- as.Date(FullDataSet$Date, format = "%d/%m/%Y")
DataSet <- subset(FullDataSet, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(FullDataSet)

## Converting dates
DataTime <- paste(as.Date(DataSet$Date), DataSet$Time)
DataSet$DataTime <- as.POSIXct(DataTime)

## Plot 2
plot(DataSet$Global_active_power ~ DataSet$DataTime, type = "l",
ylab = "Global Active Power (kilowatts)", xlab = "")

png("plot2.png", width=480, height=480)
