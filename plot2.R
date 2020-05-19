source("readData.R")
dev.new(width = 480, height = 480, unit = "px")

png(filename="plots/plot2.png")
par(mar = c(5,5,4,2))

datetime <- with(powerConsumptionDf, 
                 strptime(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S"))

with(powerConsumptionDf, plot(datetime, Global_active_power,
                              type = "l",
                              ylab = "Global Active Power (kilowatts)",
                              xlab = ""
))

dev.off()