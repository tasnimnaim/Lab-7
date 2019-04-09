#plot2
setwd ("C:/Users/course009.FSKTM/Desktop/Lab7")
library(data.table)

DT <-fread ("C:/Users/course009.FSKTM/Desktop/Lab7/exdata_data_household_power_consumption/household_power_consumption.txt",na.strings="?")

DT$Date <- as.Date(DT$Date, format="%d/%m/%Y")

DT.filter <- subset(DT, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(DT)

datetime <- paste(as.Date(DT.filter$Date), DT.filter$Time)
DT.filter$Datetime <- as.POSIXct(datetime)

png(filename="Plot2.png", width=480, height=480)
plot(DT.filter$Global_active_power~DT.filter$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")


dev.off()
