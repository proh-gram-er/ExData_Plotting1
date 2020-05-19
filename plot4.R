source("readData.R")

dev.new(width = 480, height = 480, unit = "px")

png(filename="plots/plot4.png")
par(mar = c(5,5,4,2),
    mfrow = c(2,2)
)

datetime <- with(powerConsumptionDf, 
                 strptime(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S"))

with(powerConsumptionDf, 
     plot(datetime, Global_active_power,
          type = "l",
          ylab = "Global Active Power",
          xlab = ""
     )
)

with(powerConsumptionDf, 
     plot(datetime, Voltage,
          type = "l",
          ylab = "Voltage",
          xlab = "datetime"
     )
)

with(powerConsumptionDf, plot(datetime, Sub_metering_1,
                              type = "n",
                              ylab = "Energy sub metering",
                              xlab = ""
))

points(datetime, powerConsumptionDf$Sub_metering_1, type = "l")
points(datetime, powerConsumptionDf$Sub_metering_2, type = "l", col = "red")
points(datetime, powerConsumptionDf$Sub_metering_3, type = "l", col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), 
       lty = 1,
       bty = "n")


with(powerConsumptionDf, plot(datetime, Global_reactive_power,
                              type = "l",
))


dev.off()