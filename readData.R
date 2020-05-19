if (!file.exists("household_power_consumption.txt")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                  "data.zip")
    
    unzip("data.zip")
    rm("data.zip")
}

if (!exists("powerConsumptionDf")) {
    powerConsumptionDf <- read.table(
        file = "household_power_consumption.txt",
        sep = ";",
        na.strings = "?",
        header = TRUE,
        dec = "."
        )
    
    powerConsumptionDf <- powerConsumptionDf[powerConsumptionDf$Date 
                                             %in% c("1/2/2007", "2/2/2007"),]

    powerConsumptionDf$Date <- strptime(powerConsumptionDf$Date, format = "%d/%m/%Y")
}
