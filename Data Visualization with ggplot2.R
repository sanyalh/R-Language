library(tidyverse)

#1
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#2
?mpg
#continuous - displ, year, cyl, city, hwy, 
# remaining are categorical

#3
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color=cyl, size=cty))

#4
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color=displ))
