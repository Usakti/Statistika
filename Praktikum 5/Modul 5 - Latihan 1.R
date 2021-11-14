install.packages('gsheet')
install.packages('devtools')

devtools::install_github("maxconway/gsheet")
#jika muncul pilihan, pilih no 1 (All)

library(gsheet)

url <- "https://docs.google.com/spreadsheets/d/1Rjq_jGamDJ7dssqOoSYwmAf5r66d7KA13I9jai-iUS0/edit?usp=sharing"
data_azhar = gsheet2tbl(url)
View(data_azhar)