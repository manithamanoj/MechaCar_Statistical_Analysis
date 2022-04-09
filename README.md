# MechaCar_Statistical_Analysis
# Introduction
In this challenge we and the data analytics team is going to review the production data of  Mecha car, which is suffering from production troubles and are blocking the manufacturing team’s progress, to discover insights that may help the manufacturing team. For that we are going to

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Results

## Linear Regression to Predict MPG

<img width="644" alt="Screen Shot 2022-04-08 at 10 19 01 AM" src="https://user-images.githubusercontent.com/72629108/162497415-67c7a900-6ddc-4030-87a9-70a919c609f1.png">
<img width="666" alt="Screen Shot 2022-04-08 at 10 19 52 AM" src="https://user-images.githubusercontent.com/72629108/162497454-6a869d18-cbb6-40fc-a08c-086c2335fa08.png">


  * To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values.According to our results, vehicle length and ground clearance as well as intercept are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on MPG. When an intercept is statistically significant, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent variables are equal to zero.
Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle length and ground clearance) may need scaling or transforming to help improve the predictive power of the model.Also it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model.
 
 * This multiple linear regression model has a p-value: 5.35e-11 which is much smaller than our assumed significance level of 0.05%. Hence we reject our null hypothesis, which means that the slope of our linear model is not zero.

* By combining the p-value: 5.35e-11 of our hypothesis test with the r-squared value 0.7149 , the   multiple regression model does predict MPG effectively


## Summary Statistics on Suspension Coils
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 
* The suspension coil’s PSI continuous variable across all manufacturing lots

<img width="340" alt="Screen Shot 2022-04-08 at 11 47 37 AM" src="https://user-images.githubusercontent.com/72629108/162556543-bbb874e1-a9c8-4e1a-af53-c64754b3eb6e.png">


* The following PSI metrics for each lot: mean, median, variance, and standard deviation.

<img width="499" alt="Screen Shot 2022-04-08 at 11 59 35 AM" src="https://user-images.githubusercontent.com/72629108/162556552-e486f329-877f-4933-ae3a-fb6c44420459.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.When we look at the total_summary statistics across all manufacturing lots  the  variance is 	62.29356, which is less than 100 pounds per square inch.
But from the PSI metrics for each lot (lot_summary) Lot 3 has larger variance (170.29) in PSI


# T-Tests on Suspension Coils 
We are going to perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch using R

We write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. The t-test gives us a  p-value = 0.06028>0.05 and failed to reject the null hypothesis, which means that there is no statistical difference between the observed sample mean and the presumed population mean

<img width="641" alt="Screen Shot 2022-04-09 at 1 42 17 AM" src="https://user-images.githubusercontent.com/72629108/162564146-8091e78b-12a2-47ed-b7c9-0eb16de7bc6a.png">
Next we administer t.test() to determine if the PSI across manufacturing lot1 is statistically different from the population mean of 1,500 pounds per square inch.The t-test gives us a  p-value =1>0.05 and failed to reject the null hypothesis, which means that there is no statistical difference between the observed sample mean and the presumed population mean

<img width="641" alt="Screen Shot 2022-04-09 at 1 40 49 AM" src="https://user-images.githubusercontent.com/72629108/162564662-4cb4cba1-285e-4bb9-8fcc-714b3607c8cc.png">

Next we administer t.test() to determine if the PSI across manufacturing lot2 is statistically different from the population mean of 1,500 pounds per square inch.The t-test gives us a  p-value = 0.6072>0.05 and failed to reject the null hypothesis, which means that there is no statistical difference between the observed sample mean and the presumed population mean

<img width="641" alt="Screen Shot 2022-04-09 at 1 40 58 AM" src="https://user-images.githubusercontent.com/72629108/162564667-42179340-7863-4b77-bd89-bf42917b006b.png">


Finally we administer t.test() to determine if the PSI across manufacturing lot3 is statistically different from the population mean of 1,500 pounds per square inch.The t-test gives us a  p-value = 0.04168<0.05 and we reject the null hypothesis, which means that there is a significant statistical difference between the observed sample mean and the presumed population mean

<img width="641" alt="Screen Shot 2022-04-09 at 1 41 18 AM" src="https://user-images.githubusercontent.com/72629108/162564680-d17b0047-6920-402f-b762-8bbe564502b9.png">


## Study Design: MechaCar vs Competition
We design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from the competitioner.In this study we collect City fuel efficiency data  of MechaCar and its competitioner for 3 years

* Metric
   * City fuel efficiency

* Hypothesis: Null and Alternative

H0 : The difference between our paired observations (the true mean difference, or "μd") is equal to zero.

Ha : The difference between our paired observations (the true mean difference, or "μd") is not equal to zero.

* Statistical Tests
Here  we are comparing different methods of measurement,city fuel efficiency of cars of two different makes.So we choose a paired two sample t-test.
A paired two-sample t-Test is used to determine if there is a statistical difference in overall city fuel efficiency between MechaCar and its competitioner  assuming a significance level of 0.05 percent.
