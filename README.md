# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
The image below is a screen shot of the summary results from the linear regression to test the relationship between mpg and other variables in the MechaCar dataset.

![](https://github.com/emmanuelbrim/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar.PNG)

The statistical information from this results helped answer the questions that follows.

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
From the summary results, vehicle_length and ground_clearance provide a non random amount of variance to the mpg values in MechaCar_data.
With p-values of 2.60e-12 and 5.21e-8 respectively, these two variables indicates strong positive relationship with mpg.

- Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model cannot be considered to be zero.
All other variables had coefficients of value zero or less except vehicle_length and ground_clearance with 6.27 and 3.55 respectively. 
This shows that the line was not flat to have a slope eqaul to zero. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
With a r-squared of 0.7149 and overall p-value of 5.35e-11, this might seem ok to use as a prediction of mpg. 
However, using only 2 out of the 5 variables is not enough grounds for affirming our prediction and therefore additional datapoints is required to avoid bias.  
