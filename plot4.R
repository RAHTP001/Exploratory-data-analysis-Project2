


# Downloaded file "Data for peer assessment" from link given at coursera

# Set "exdata_data_NEI_data" as working directory

NEI <- readRDS("~/summarySCC_PM25.rds")             #PM2.5 Emissions Data

SCC <- readRDS("~/Source_Classification_Code.rds") #Source Classification Code

greps1<-unique(grep("coal", SCC$EI.Sector, ignore.case=TRUE, value=TRUE))  
#Isolate instances of "coal" in SCC column EI.Sector

data1<-subset(SCC, EI.Sector %in% greps1)    #Subset SCC by coal labels
coal<-subset(NEI, SCC %in% data1$SCC)        #Subset NEI by data1 overlaps

ggplot(data=coal, aes(x=year, y=Emissions, fill = type)) + 
  geom_bar(stat="identity", position=position_dodge()) + 
  ggtitle("U.S. Coal Combustion-Related Emissions: 1999-2008")