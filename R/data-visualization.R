#Chart #1: ridgeline plot : The ridgeline plot allows to study the distribution of a numeric variable for several groups
library(ggridges)
library(ggplot2)
ggplot(diamonds, aes(x = price, y = cut, fill = cut)) +
  geom_density_ridges() +
  theme_ridges() + 
  theme(legend.position = "none")



#Chart #2: Basic density chart: A density plot is a representation of the distribution of a numeric variable. It is a smoothed version of the histogram and is used in the same kind of situation. 
library(ggplot2)
library(dplyr)
# Load dataset from github
data <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/1_OneNum.csv", header=TRUE)
data %>%
  filter( price<300 ) %>%
  ggplot( aes(x=price)) +
  geom_density(fill="#69b3a2", color="#e9ecef", alpha=0.8)


#Chart 3: Heat Map : A heatmap is a graphical representation of data where the individual values contained in a matrix are represented as colors.
# The mtcars dataset:
data <- as.matrix(mtcars)
heatmap(data)
heatmap(data, scale="column")


#Chart #4: Connected scatterplot: connected scatterplot is basically an hybrid between a scatterplot and a lineplot.
library(ggplot2)
library(dplyr)
# Load dataset from github
data <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/3_TwoNumOrdered.csv", header=T)
data$date <- as.Date(data$date)
data %>%
  tail(10) %>%
  ggplot( aes(x=date, y=value)) +
  geom_line() +
  geom_point()


#Chart #5: Background map :It explains how to build static and interactive maps based on different input data, but does not explain how to plot data on it.
library(leaflet)
# Initialize the leaflet map with the leaflet() function
m <- leaflet()
m <- addTiles(m)
m
m <- leaflet() %>% 
  addTiles()
m
