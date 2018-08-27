library(dplyr)
library(xlsx)

data1 = read.table("Data/1-ex1.txt", header = T)
data1
data1 = read.xlsx("Data/1-ex1.xlsx", 1)
data1

data1.summarise <- data1 %>% group_by(SEX) %>% summarise(n=n()
                             , dose_avr=mean(DOSE)
                             , dose_sd=sd(DOSE)
                             , bp_avr=mean(BP)
                             , bp_sd=sd(BP)
                             , age_avr=mean(AGE)
                             , age_sd=sd(AGE))
data1.summarise

library(ggplot2)
kk = data1 %>% select(SEX, DOSE)
boxplot(kk)
boxplot(data1$AGE~data1$SEX)