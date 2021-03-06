setwd("/Users/adaniel/Documents/personal/2014/Coursera/eda_proj1/")
data1 <- read.table(file="/Users/adaniel/Documents/personal/2014/Coursera/eda_proj1/household_power_consumption.txt", sep=";", na.strings = "?", header=TRUE )
data2 <- subset(data1, (data1[,1]=="2/2/2007" | data1[,1]=="1/2/2007"))
data2[,3] <- as.numeric(as.character(data2[,3])) 
png(file = "plot1.png", width = 480 , height = 480)
with( data2, hist(data2[,3] , col = "red" , main = " Global Active Power " , xlab = "Global Active Power (kilowatts)" ))
dev.off()
graphics.off()