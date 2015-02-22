# ggplot learning script
# Saurabh Siroya - February 22nd 2015

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

library(MASS)
library(RColorBrewer)

head(iris)

iris[1:2, ]


df <- melt(iris, id.vars ="Species")
df


ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 3)
summary(myplot)

myplot


d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]


dim(diamonds)

head (d2)
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

ggplot(d2, aes(carat, price, color = color)) + geom_point(size=3)


myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()

summary(myplot)



ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point() +
  facet_grid(.~Species)


ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point() +
  facet_wrap( ~Species)


df <- melt(iris, id.vars="Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette="Set2")