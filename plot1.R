# Exploratory-Data-Analysis, plot1
setwd("C:/Users/Asus A450/Desktop/desktop/household_power_consumption.txt")
getwd()
[1] "C:/Users/Asus A450/Desktop/desktop/household_power_consumption.txt"
> data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",
nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
>#subsetting the data and converting dates:
> data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
> rm(data_full)
> datetime <- paste(as.Date(data$Date), data$Time)
> data$Datetime <- as.POSIXct(datetime)

> # Plot 1:
> hist(data$Global_active_power, main="Global Active Power", 
xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
> 
> dev.copy(png, file="plot1.png", height=480, width=480)
> dev.off()


