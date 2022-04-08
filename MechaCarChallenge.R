
#
install.packages("tidyverse")
library(dplyr)
#Read in the MechaCar_mpg.csv file.
MPG_df <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F) 

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MPG_df) #create linear model 
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MPG_df))




