
# Downloaded file "Data for peer assessment" from link given at coursera

# Set "exdata_data_NEI_data" as working directory

NEI <- readRDS("~/summarySCC_PM25.rds")             #PM2.5 Emissions Data

SCC <- readRDS("~/Source_Classification_Code.rds") #Source Classification Code

baltimore<-subset(NEI, NEI$fips==24510)           #Subset Baltimore area

totalBaltimore<-tapply(baltimore$Emissions, INDEX=baltimore$year, sum)   #Sum emissions per year

barplot(totalBaltimore, main="Total Emissions in Baltimore, MD by Year", xlab="Year", ylab="Emissions")