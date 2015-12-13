## Usage
## setwd("C:/TOOLS/DataScienceCourceWork/ExData_Plotting1")
## source("plot1.R")
## plot1()
##
plot1 <- function ()
{
  # read data
  pwr <-read.table("../data/household_power_consumption.txt",na.strings="?",
                 stringsAsFactors = FALSE, skip=1,sep=";")
  # filter data
  fpwr <- subset(pwr, as.Date(pwr$V1,"%d/%m/%Y") >= "2007-02-01" & as.Date(pwr$V1,"%d/%m/%Y") <= "2007-02-02")
  # plot historgram
  hist(as.numeric(as.character(fpwr$V3)), main="Global Active Power",
      xlab="Global Active Power (kilowatts)", col="red")
}