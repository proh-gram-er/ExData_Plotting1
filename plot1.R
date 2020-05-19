source("readData.R")

dev.new(width = 480, height = 480, unit = "px")
png(filename="plots/plot1.png")
par(mar = c(5,5,4,2))

hist(powerConsumptionDf$Global_active_power, 
     col = "red", 
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power",
)

dev.off()
