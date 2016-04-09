hpcf<-"/Users/Thakur24/Desktop/Exploratory data analysis/household_power_consumption.txt"
hpc<-read.table(hpcf, header=TRUE , sep=";" , stringsAsFactors=FALSE , dec=".")
head(hpc)
reqhpcdata<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
Global_Active_Power<-as.numeric(reqhpcdata$Global_active_power)
png("plot1.png",width=480,height=480)
hist(Global_Active_Power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
 