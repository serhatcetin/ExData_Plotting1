setwd("~/R/Exploratory Data Analysis")

file1 <- "household_power_consumption.txt"
data1 <- read.table(file1, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".") 
subdata1 <- data1[data1$Date %in% c("1/2/2007","2/2/2017") ,]

globalActivePower <- as.numeric(subdata1$Global_active_power)

png("plot1.png", width = 480, height = 480)

hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power")
dev.off()

