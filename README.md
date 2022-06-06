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

## Summary Statistics on Suspension Coils
The output in the console after statistical analysis indicates that the design specifications for the MechaCar suspension coils was met in total when all manufacturing lots was considered. 
However it also shows that individually, only 2 lots conform to the specifications, Lot3 had a variance of 170 which exceeded the 100 PSI or less stated in the specification.


![](https://github.com/emmanuelbrim/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.PNG)

![](https://github.com/emmanuelbrim/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.PNG)


## T-Tests on Suspension Coils
One sample T-Test was performed on the PSI of suspension coils from all lots and each invidual lot to determine if there was a statistical difference in their mean and the mean of the PSI of  population(1500).

In the first test which considered all the lots, the results was to help reject the null hypothesis or fail to do so.

Null Hypothesis: There is no significant difference between the mean PSI of all manufacturing lots and the population mean of 1500 PSI.

Alternate Hypothesis: There is significant difference between the mean PSI of all manufacturing lots and population mean of 1500 PSI.
 
With a significance level of 0.05, the generated p-value from the results which stood at 0.06 was above the significance level, hence there was not enough grounds to reject the null hypthesis.  
![](https://github.com/emmanuelbrim/MechaCar_Statistical_Analysis/blob/main/Resources/all_lots.PNG)

The next t-test looked at the difference in the mean PSI of each lot to that of the population mean of 1500 PSI.
The results showed a p-value of 1 for Lot1, 0.06 for Lot2 and 0.04 for Lot3.
It therefore indicates that with a significance level of 0.05, we will fail to reject the null hypothesis in all lots except Lot3 which showed a difference in mean value to that of the population.
Below is the console results of all the t-test from each Lot. 
![](https://github.com/emmanuelbrim/MechaCar_Statistical_Analysis/blob/main/Resources/lot1.PNG)
![](https://github.com/emmanuelbrim/MechaCar_Statistical_Analysis/blob/main/Resources/lot2.PNG)
![](https://github.com/emmanuelbrim/MechaCar_Statistical_Analysis/blob/main/Resources/lot3.PNG)

## Study Design: MechaCar vs Competition

According to Statista's Global Consumer Survey of 2018, fuel efficiency was the second highest factor to safety on the checklist of prospective car buyers.
It would be vital to know if there is a siginificant difference in the fuel efficiency of MechaCar compared to other brands from other manufacturers.

Null Hypothesis: The is no statistical difference in the mpg of MechaCar and the mpg of vehicles of competitors.

Alternative Hypothesis: The is statistical difference in the mpg of MechaCar and the mpg of vehicles of competitors

To test the hypothesis wil require a t-test on a good sample from each population to determine if the null hypthesis holds or can be rejected. 
Data from consumer reports and or from competitors websites can be organized into a dataframe to make the analysis. 
