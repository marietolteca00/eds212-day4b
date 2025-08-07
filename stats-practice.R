# load libraries ----
library(GGally)
library(skimr)
library(palmerpenguins)
library(tidyverse)

# Always look at it ----
#take a look at penguins data as a sheet
View(penguins)

# Check the column names ----
names(penguins) 

# Check dimensions of data frame
dim(penguins) # 8 columns

# Get a summary of the data
summary(penguins)

# Get a summary with {skimr}
skimr::skim(penguins)

# Print the first 6 rows
head(penguins)

# Print the last 6 rows
tail(penguins)

# Make a pairplot
GGally::ggpairs(penguins)

# Make a pairplot with a select number of columns by species
GGally::ggpairs(penguins,
                columns = 3:6,
                ggplot2::aes(colour = species))
# Make a histogram of penguin flipper lengths
ggplot(data = penguins, aes(x=flipper_length_mm)) + geom_histogram()
                
# Make a histogram of penguin flipper lengths- Adding more details
ggplot(data = penguins, aes(x=flipper_length_mm, fill = species)) + geom_histogram()
