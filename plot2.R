## Usage
## setwd("C:/TOOLS/DataScienceCourceWork/ExData_Plotting1")
## source("plot2.R")
## plot2()
##
plot2 <- function ()
{
  # read data
  pwr <-read.table("../data/household_power_consumption.txt",na.strings="?",
                   stringsAsFactors = FALSE, skip=1,sep=";")
  # filter data
  fpwr <- subset(pwr, as.Date(pwr$V1,"%d/%m/%Y") >= "2007-02-01" & as.Date(pwr$V1,"%d/%m/%Y") <= "2007-02-02")
  # create new cloumn date+time 
  fpwr$time <- paste(fpwr$V1,fpwr$V2)
  # plot the graph 
  plot(strptime(fpwr$time, "%d/%m/%Y %H:%M:%S"), 
       as.numeric(as.character(fpwr$V3)), 
       type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
}