setwd("~/R/Exploratory Data Analysis")

file3 <- "household_power_consumption.txt"
data3 <- read.table(file3, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subdata3 <- data3[data3$Date %in% c("1/2/2007","2/2/2017") ,]

datetime <- strptime(paste(subdata3$Date, subdata3$Time, sep = ""), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subdata3$Global_active_power)
subMetering1 <- as.numeric(subdata3$Sub_metering_1)
subMetering2 <- as.numeric(subdata3$Sub_metering_2)
subMetering3 <- as.numeric(subdata3$Sub_metering_3)

png("plot3.png", width=480, height=480)

plot(datetime, subMetering1, type="1", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="1", col="red")
lines(datetime, subMetering3, type="1", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 