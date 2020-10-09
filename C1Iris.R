

# file: djfd
#Project: bdfojfnd
#wrangling and visualizing data

# Install and load  packages #################################

#load packages
library(datasets) #importing datasets

#LOAD AND PREPARE DATA ################################
?iris #help about iris datasets
df <- iris #create a var called df and assign iris dataset
head(df) #print first elements
df

# ANALYZE DATA ############################
hist(df$Petal.Width,
     main="european Uiversity - Histogram of Petal, Width",
     xlab="Petal Width (in cm)")

# EXERCISE (Petal Lenght) and (Species)

# CLEAN UP ###########################

# Clear enviroments
rm(list = ls())

# Clear packages
detach("package:datasets", unload=TRUE) #for base

# Clear plots
graphics.off() #clear plots, closes all graphic devices

#clear console
cat("\014") # ctrl+L

#iufh