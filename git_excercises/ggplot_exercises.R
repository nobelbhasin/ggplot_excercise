# Afternoon ggplot excercise at Tulane
#Install Libraries

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

# Load libraries

library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2") 

head(iris)

iris[1:2, ]
df <- melt(iris, id.vars = "Species")
df[1:2, ]
myplot <- ggplot(data = diamonds, aes(x = Carat, y = Price)) 
summary(myplot)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point()
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point()
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size = 3)

#make a small sample of diamond dataset
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
myplot <- ggplot(data = d2, aes(x = Carat, y = Price))
ggplot(d2, aes(x = carat, y = price, color = color)) + 
  geom_point(aes (size = 1))
#learning Boxplots 
library(MASS) 
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
 
  # Faceting single column, multiple rows
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species))+
  geom_point()+
  facet_wrap(. ~ Species) 
###

df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = "Set1")
#####
h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth = 8, colour = "black", fill = "steelblue")
#####
ggplot(iris, aes(Species, Sepal.Length)) +
  geom_bar(stat = "identity")

#####

df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity",) +
  scale_fill_brewer(palette = "Set1")

###

d2melt <- melt(d2, id.vars = "clarity")

# dx<- melt(d2, id.vars = "clarity")

ggplot(d2, aes(clarity, fill = cut)) +
  geom_bar(position="dodge")
#DENSITY PLOTS

ggplot(faithful, aes(waiting)) +
  geom_line(stat = density)

ggplot(iris, aes(Sepal.Length))