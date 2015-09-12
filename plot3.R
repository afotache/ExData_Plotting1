#this plot will display the Energy submetering for the 2 days

source("get_data.R")

## Open png device, create plot

png(filename = "plot3.png", width = 480, height = 480, units = "px")
columns = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(dt$DateTime, dt$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(dt$DateTime, dt$Sub_metering_2, type="l", col="red")
lines(dt$DateTime, dt$Sub_metering_3, type="l", col="blue")

legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=columns)

#close device
dev.off()