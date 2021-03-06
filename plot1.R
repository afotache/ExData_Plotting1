
#plot1 will display the Global Active Power in terms of frequency
source("get_data.R")

png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

hist(dt$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()