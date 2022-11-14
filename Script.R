## Upload the Dataset from Kaggle, 
## I Have uploadeded it manualy, But you still can upload it by using RCURL package

## to View The Dataset

View(iris)

## to check Iris Head column

colnames(iris)

## To check the first 5 row 

head(iris)
head(iris,5)
tail(iris,4)


## For summary of Dataset

summary(iris)
summary(iris$Petal.Length)


install.packages('skimr')

##is designed to provide summary statistics about variables in data frames, tibbles, 
##data tables and vectors.

library(skimr)


### to check for any missing data

sum(is.na(iris))



## to group by Sepices and skim


iris %>% 
  dplyr::group_by(Species) %>% 
  skim()


#############################
####Visulization
##########################


# Panel Plot

plot(iris)
plot(iris, col="violet")

# Scatter Plot

plot(iris$Sepal.Length,iris$Sepal.Width, col = "Purple")

# to change labels 

plot(iris$Sepal.Length,iris$Sepal.Width, col = "Purple", 
     xlab = "Sepal Length", ylab ="Sepal Width" )


# Histogram
hist(iris$Sepal.Length)
hist(iris$Sepal.Length, col = "lightgray", border = NULL,xlab = "Sepal Length")


# FeaturePlots

featurePlot(x = iris[, 1:4], 
            y = iris$Species,
            plot = "density", 
            ## Pass in options to xyplot() to 
            ## make it prettier
            scales = list(x = list(relation="free"), 
                          y = list(relation="free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(4, 1), 
            auto.key = list(columns = 3))


featurePlot(x = iris[, 1:4], 
            y = iris$Species, 
            plot = "box", 
            ## Pass in options to bwplot() 
            scales = list(y = list(relation="free"),
                          x = list(rot = 90)),  
            layout = c(4,1 ), 
            auto.key = list(columns = 2))

library(AppliedPredictiveModeling)
transparentTheme(trans = .4)
library(caret)
featurePlot(x = iris[, 1:4], 
            y = iris$Species, 
            plot = "pairs",
            ## Add a key at the top
            auto.key = list(columns = 3))

