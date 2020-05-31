library(tidyverse)

# 3.2.4 


# 3.3.1 
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


#5
?geom_point

# For shapes that have a border (like 21), you can colour the inside and
# outside separately. Use the stroke aesthetic to modify the width of the
# border
ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 21, colour = "yellow", fill = "blue", size = 5, stroke = 5)

#6
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color=displ < 5))
