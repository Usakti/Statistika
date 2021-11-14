data_azhar=read.csv("D:/houseprices.csv")
View(data_azhar)

azhar <- data_azhar[data_azhar$Bedrooms==2,] 
View(azhar)

azhar$Bathrooms <- ifelse(azhar$Bathrooms > 2, c("large"), c("small"))
View(azhar)

azhar$newvariable <- ifelse(azhar $Offers > 2, c("large"), c("small"))
View(azhar)

azhar$newvariable <- azhar$Price / azhar$SqFt

View(azhar)
azhar$newvariable<-NULL

data_azhar.kolom1dan2 <- data_azhar[,1:2]
View(data_azhar.kolom1dan2)
data_azhar.kolom3dan4 <- data_azhar[,3:4]
View(data_azhar.kolom3dan4)
data_azhar.kolom1sd4<-cbind(data_azhar.kolom1dan2, data_azhar.kolom3dan4)
View(data_azhar.kolom1sd4)

data_azhar.baris1sd3<- data_azhar[1:3,]
data_azhar.baris4sd6<- data_azhar[4:6,]
data_azhar.baris1sd6<-rbind(data_azhar.baris1sd3,data_azhar.baris4sd6)
View(data_azhar.baris1sd6)

data_azhar.sort<-data_azhar[order(data_azhar$Price),]
View(data_azhar.sort)