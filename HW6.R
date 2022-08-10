library(ggplot2)
library(dplyr)
library(tidyr)
library(colorspace)
library(cowplot)

load("C:/Users/Owner/Documents/Kettering/4_Senior/UM/Class/Rscripts/house_prices.rda")
house_prices

ggplot(house_prices, aes(factor(date),house_price_index, group = 1)) +geom_line()+
  facet_wrap(~state)+
  scale_x_discrete(breaks =c("1980","2000","2020"),labels=c("'80","'00","'20"))+
  xlab("Date")

house_reshaped <-gather(house_prices, key = "measure", value ="value","house_price_index":"unemploy_perc",)

ggplot(house_reshaped, aes(x=factor(date),y=value,color= measure,group = 1)) +geom_line()+
  facet_wrap(~state)+
  scale_x_discrete(breaks =c("1980","2000","2020"),labels=c("'80","'00","'20"))+
  xlab("Date")

rmarkdown::render("C:/Users/Owner/Documents/Kettering/4_Senior/UM/Class/Rscripts/hw6_1.R")
