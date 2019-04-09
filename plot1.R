# Plot 1  
setwd ("C:/Users/course009.FSKTM/Desktop/Lab7")
library(data.table)

DT <-fread ("C:/Users/course009.FSKTM/Desktop/Lab7/exdata_data_household_power_consumption/household_power_consumption.txt")


#output histogram 
png(filename="Plot1.png", width=500, height=500)
hist(DT.filter$Global_active_power, 
     col="red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")


dev.off()
