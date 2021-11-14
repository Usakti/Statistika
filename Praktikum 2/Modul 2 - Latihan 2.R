# Koneksi ke DB
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from table_namaku;"
df <- dbGetQuery(con, myQuery)

# Filter Data
library(dplyr)
df1<-filter(df,Gender=="P")
print(df1)

df2<-filter(df,Gender=="L" | Tinggi.Badan==175)
print(df2)