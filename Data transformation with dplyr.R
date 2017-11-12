library(tidyverse)
library(nycflight13)

# 1a
(a<-filter(flights,arr_delay>=120))

# 1b
(a<-filter(flights,dest=='IAH'|dest=='HOU'))
View(a)

(points <- data.frame(label=c("Low", "Mid", "High"), val1=c(    0, 0.67,   1.64),
txt1=c("AB", "AB",   "CC")))

points

(by_txt1<-group_by(points,txt1))
summarize(by_txt1, val1=mean(val1,na.rm='true'))

group_by(points,txt1) %>% summarize(val1=mean(val1,na.rm='true'))

group_by(flights,carrier) %>% summarize(val1=mean(dep_delay,na.rm='true'))

# 1c
filter(flights,carrier=='DL'|carrier=='UA'|carrier=='AA')

# 1d
View(filter(flights,month=='7'|month=='8'|month=='9'))
