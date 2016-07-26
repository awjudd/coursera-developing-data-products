Tooth Growth in Guinea Pigs Data Explorer
========================================================
author: Andrew Judd
date: July 25, 2016
autosize: true

About the Application
========================================================

This application is used in order to display information related to the "Tooth Growth" data set which is provided in the `datasets` package in **R**.

This data set is a test to see how the length of the teeth in 60 guinea pigs reacted when being given vitamin C by one of two delivery methods, orange juice or ascorbic acid.

Click [here](https://judda.shinyapps.io/data-products-assignment/) to access the application.

Filters
========================================================

On the left hand side of the application, you will notice on the **Explore the Data** tab.  On the left hand side of the application there are a list of 3 parameters which you are able to use in order to explore the data.

The three parameters are as follows:

 * Supplement - ALL, OJ, VC
 * Dosage (milligrams/day) - 0.5 to 2
 * Tooth Length - 4 to 34

Summary of the Data
========================================================


```r
summary(ToothGrowth)
```

```
      len        supp         dose      
 Min.   : 4.20   OJ:30   Min.   :0.500  
 1st Qu.:13.07   VC:30   1st Qu.:0.500  
 Median :19.25           Median :1.000  
 Mean   :18.81           Mean   :1.167  
 3rd Qu.:25.27           3rd Qu.:2.000  
 Max.   :33.90           Max.   :2.000  
```

More Information
========================================================

 * GitHub: [Repository](https://github.com/awjudd/coursera-developing-data-products)
 * Application: [ShinyApps](https://judda.shinyapps.io/data-products-assignment/)
 * Learn More: [Coursera](https://www.coursera.org/learn/data-products)
 * Author: [Andrew Judd](http://www.andrewjudd.ca)
