hpcf<-"/Users/Thakur24/Desktop/Exploratory data analysis/household_power_consumption.txt"
hpc<-read.table(hpcf, header=TRUE , sep=";" , stringsAsFactors=FALSE , dec=".")
head(hpc)
reqhpcdata<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
Date_Time<-strptime(paste(reqhpcdata$Date,reqhpcdata$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
Global_Active_Power<-as.numeric(reqhpcdata$Global_active_power)
png("plot2.png",width=480,height=480)
plot(Date_Time,Global_Active_Power,type="l",ylab="Global Active Power (kilowatts)")
dev.off()