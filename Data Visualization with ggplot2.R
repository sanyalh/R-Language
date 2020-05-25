library(tidyverse)

#1
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#2
?mpg

#3
