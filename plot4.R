## Usage
## setwd("C:/TOOLS/DataScienceCourceWork/ExData_Plotting1")
## source("plot4.R")
## plot4()
##
plot4 <- function ()
{
  #set 2x2 graph canvas
  par(mfcol = c(2,2))
  # read data
  pwr <-read.table("../data/household_power_consumption.txt",na.strings="?",
                   stringsAsFactors = FALSE, skip=1,sep=";")
  # filter by date
  fpwr <- subset(pwr, as.Date(pwr$V1,"%d/%m/%Y") >= "2007-02-01" & as.Date(pwr$V1,"%d/%m/%Y") <= "2007-02-02")
  fpwr$time <- paste(fpwr$V1,fpwr$V2)
  
  # plot 1
  plot(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"), 
       as.numeric(as.character(fpwr$V3)), 
       type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
  #plot2
  plot(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(fpwr$V7)), 
       type = "l", xlab = "", ylab = "Energy sub metering")
  lines(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(fpwr$V8)), 
        type = "l", xlab = "", col="red")
  
  lines(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(fpwr$V9)), 
        type = "l", xlab = "", col="blue")
  
  legend("topright", lty= 1, col = c("Black", "red", "blue"), bty="n",
         legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))  
  #plot3
  plot(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"), 
       as.numeric(as.character(fpwr$V5)), 
       type = "l", xlab = "datetime", ylab = "Voltage")
  
  #plot4
  plot(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"), 
       as.numeric(as.character(fpwr$V4)), 
       type = "l", xlab = "datetime", ylab = "Global_reactive_power")
  
  
}