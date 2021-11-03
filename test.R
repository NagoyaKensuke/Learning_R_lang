#Change Working Directory
setwd("C:/Users/nagoy/Data/Data")



x01 <- c(117,119,120,121,123)
x02 <- c(58,59,60,61,62)
x03 <- data.frame(height=x01, weight=x02)
library(tidyverse)

x21 <- read_csv("test.csv")
x22 <- table(x21$study,x21$result)
x23 <- prop.table(x22)
x24 <- addmargins(x23)

dbinom(4,4,0.8)
