

# Downloaded file "Data for peer assessment" from link given at coursera

# Set "exdata_data_NEI_data" as working directory

NEI <- readRDS("~/summarySCC_PM25.rds")             #PM2.5 Emissions Data

SCC <- readRDS("~/Source_Classification_Code.rds") #Source Classification Code

library(ggplot2)

ggplot(data=baltimore, aes(x=year, y=Emissions, fill=type)) +
  
  geom_bar(stat="identity", position="dodge")+
  
  ggtitle("Baltimore, MD Emission by Type: 1999-2008")