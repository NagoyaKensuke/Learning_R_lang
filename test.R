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

#二項分布
dbinom(4,4,0.8)

# ポアソン分布 事象の発生確率
dpois(0,2)

#ポアソン分布 n回以下となる確率
ppois(2,1)



mean <- 50;sd <- 10;x1 <- 40

y1 <- dnorm(x1,mean=mean,sd=sd)

ggplot(data=data.frame(x=c(0,100)), aes(x=x)) +
stat_function(fun=dnorm, args=c(mean=mean,sd=sd) ) +
geom_area(stat = "function", fun = dnorm, args=c(mean=mean,sd=sd),fill = "red", xlim = c(0, x1))
