# Downloaded file "Data for peer assessment" from link given at coursera
# Set "exdata_data_NEI_data" as working directory

 NEI <- readRDS("~/summarySCC_PM25.rds")             #PM2.5 Emissions Data
 SCC <- readRDS("~/Source_Classification_Code.rds") #Source Classification Code

 totalNEI<-tapply(NEI$Emissions, INDEX=NEI$year, sum)  #Sum emissions per year
 
 
 barplot(totalNEI, main = "Total Emissions by Year", xlab="Year", ylab="Emissions")
 
 
 