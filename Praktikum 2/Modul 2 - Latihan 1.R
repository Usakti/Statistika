a <- c(1,2,-5,0.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) #logical vector
print(a)
print(b)
print(c)

cells <- c(3,15,-27,38)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2") 
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames))
print(mymatrix)

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
dataku <- data.frame(d,e,f)
names(dataku) <- c("ID","Color","Passed") # variable names 
print(dataku)

dataku <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
print (dataku)

# Koneksi ke DB
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from table_namaku;"
df <- dbGetQuery(con, myQuery)

# Filter Data
library(dplyr)
df1<-filter(df,Brick=="No")
print(df1)

library(dplyr)
df2<-filter(df,Brick=="No" | Neighborhood=="East")
print(df2)