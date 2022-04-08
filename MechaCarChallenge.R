
#
install.packages("tidyverse")
library(dplyr)
#Deliverable 1
#Import and read in the MechaCar_mpg.csv file as a table.
MPG_df <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F) 
#create linear model 
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MPG_df) 
#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MPG_df))

#Deliverable 2
#Import and read in the Suspension_Coil_df file as a table.
Suspension_Coil_df <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors = F) 

#Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <-Suspension_Coil_df  %>% summarize(Mean=mean(PSI), Median= median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot 
lot_summary <-Suspension_Coil_df %>% group_by(Manufacturing_Lot)  %>% summarize(Mean=mean(PSI), Median= median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Deliverable 3
?t.test()
 t.test(Suspension_Coil_df$PSI,mu=1500) #compare sample versus population means

SuspensionCoilLot1 <- subset(Suspension_Coil_df, Manufacturing_Lot=="Lot1")
                 
t.test(SuspensionCoilLot1$PSI,mu=1500)                   


SuspensionCoilLot2 <- subset(Suspension_Coil_df, Manufacturing_Lot=="Lot2")
                   
t.test(SuspensionCoilLot2$PSI,mu=1500) 


SuspensionCoilLot3 <- subset(Suspension_Coil_df, Manufacturing_Lot=="Lot3")
                   
t.test(SuspensionCoilLot3$PSI,mu=1500)
                   
 ?subset                  
