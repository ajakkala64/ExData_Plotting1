## Usage
## setwd("C:/TOOLS/DataScienceCourceWork/ExData_Plotting1")
## source("plot3.R")
## plot3()
##
plot3 <- function ()
{
  # read table
  pwr <-read.table("../data/household_power_consumption.txt",na.strings="?",
                   stringsAsFactors = FALSE, skip=1,sep=";")
  # filter data
  fpwr <- subset(pwr, as.Date(pwr$V1,"%d/%m/%Y") >= "2007-02-01" & as.Date(pwr$V1,"%d/%m/%Y") <= "2007-02-02")
  # create new cloumn date+time 
  fpwr$time <- paste(fpwr$V1,fpwr$V2)
  # plot metering1
  plot(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(fpwr$V7)), 
                type = "l", xlab = "", ylab = "Energy sub metering")
  # add line graph for metering 2
  lines(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(fpwr$V8)), 
       type = "l", xlab = "", col="red")
  # add line graph for metering 3
  lines(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(fpwr$V9)), 
        type = "l", xlab = "", col="blue")
  # create legend
  legend("topright", lty= 1, col = c("Black", "red", "blue"), 
         legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))  
  
}