data = read.delim("clipboard")
View(data)

mean(data$Tinggi.Badan)
str(data)

data = read.csv("D:/data.csv")
View(data)

install.packages("xlsx")
library(xlsx)

data = read.xlsx('D:/data.xlsx',1)
View(data)