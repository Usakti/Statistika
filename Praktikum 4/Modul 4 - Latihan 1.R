# tanpa pemulihan (without replacement)
sample (c(1:10), size=3, replace =F)

# dengan pemulihan (with replacement)
sample (c(1:10), size=3, replace=T)

set.seed(1)
sample(1:6, 10, replace=TRUE)
set.seed(1)
sample(1:10, 6, replace=FALSE)

data()
View(iris)
dim(iris)

set.seed(123)
azhar <- sample(1:nrow(iris), 5)
azhar
iris[azhar, ]

library(dplyr)
set.seed(1)
sample_iris <- iris %>% group_by(Species) %>% sample_n(10)
print (sample_iris)

sample_iris

