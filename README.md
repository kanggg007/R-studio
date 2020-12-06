# R-studio
Project Overview
In this project, statistics and hypothesis testing is used to analyze a series of datasets from the automotive industry using R programming language.

##Linear Regression to Predict MPG
•	Using multiple linear regression, designed a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset.
Regression model : Y = mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD data = MechaCar_table

•	Equation is as follow: y = b1x1 + b2x2 + b3x3 + b4x4 +b5x5 + b0
mpg = (6.267e+00)vehicle.length + (1.245e-03)vehicle.weight + (6.877e-02)spoiler.angle + (3.546e+00)ground.clearance + (-3.411e+00)AWD + (-1.040e+02)

•	According to the result , vehicle.length ,  spoiler.angle and intercept have provided a non-random amount of variance to the mpg values in the dataset. Here the intercept is statistically significant therefore there are other varibales or factors that are significant contribute to this model that have not been included 
•	The p-value of this linear model is 5.35e-11, which is much smaller than the assumed significance level of 0.05%. Therefore, it can be stated that there is sufficient evident to reject null hypothesis, which means that the slope of the linear regression is not zero

•	Based on the coefficient of determination , as known as R squared, us 0.7149. it means more than 70 perencet of y can be explained by x. So it can be stated that this linear model predicts mpg of MechaCar prototypes effectively.


## Summary Statistics on Suspension Coils

•	As per the summary table named "summary_coil", the metrics are: Mean = 1498.78 Median = 1500 Variance = 62.29356 Standard deviation = 7.892627

•	The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. As per the above statistics, the variance is about 62 pounds per inch which is below the specified value. Hence the current manufacturing data meet this design specification.

## T-Tests on Suspension Coils

•	Based on the t test results as follow below


 

•	In this case, one-sample t -test used and assuming the significance level of 0.05 percent. the p-value (0.06028) is above our significance level. The data is considered to have normal distribution. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.


## Study Design: MechaCar vs Competition

•	In my opinion, the metrics which would be of interest to a consumer are the fuel efficiency, cost of ownership, color options, reliability . 
•	For each of variable, we can use ANOVA tests for this purpose which is used to compare the means of a continuous numerical variable across a number of groups. A one-way ANOVA is used to test the means of a single dependent variable across a single independent variable with multiple groups (e.g.fuel efficiency(mpg) of different cars based on vehicle class)
•	For conducting null hypothesis, we set null hypothesis that the means of mpg of all groups are equal. And the alternate hypotheses is that at least one of the means is different from all other groups.
•	In order to figure out there is no multicollinearity between these variables, we also need to do a F test and adjust R squared 
