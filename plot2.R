setwd("~/R/Exploratory Data Analysis")

file2 <- "household_power_consumption.txt"
data2 <- read.table(file2, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subdata2 <- data2[data2$Date %in% c("1/2/2007","2/2/2017") ,]

datetime <- strptime(paste(subdata2$Date, subdata2$Time, sep = ""), "%d/%m/%Y %H:%M:%S")
globalActivePower2 <- as.numeric(subdata2$Global_active_power)

png("plot2.png", width = 480, height = 480)

plot(datetime, globalActivePower2, type = "1", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()