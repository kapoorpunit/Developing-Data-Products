Shiny App Assignment for exploring the average arrival time of data files
========================================================
author: Punit Kapoor
date: Feb 21, 2022
autosize: true

Introduction
========================================================
<br>

1.  Loading the data to compute from the external source
2.  Data file arrival time
3.  Show when there is a delay in file arrival

Objective : Monitoring the arrival time of the external files
========================================================
<br>
This application has been built to do the following :
<br>
<ol>
<li> First, collecting the arrival time of each and every file
<li> Second, calculating the mean arrival time and standard deviation per file per week
<li> Finally, sending a report every hour to the maintenance team about what is out of 2 standard deviation over the mean
</ol>
With the collected arrival time has been wrote a simple shiny application useful to explore the mean arrival time of every file.

<a href="https://github.com/kapoorpunit/Developing-Data-Products"> Source Code Link </a></br>
<a href="https://rpubs.com/kapoorpunit/DataProduct_ShinyApp"> ShinyApp Link </a>


A Shiny application to expore the mean arrival time of every file
========================================================
<b>This small application shows a plot with the indication of the mean and the critical arrival time per every file. The plots are drawed using the calculated mean and standard deviation, under the assumption that the underlying data are iid Gaussian.</b>

Showing the calculated data record example -
## 'data.frame':    1 obs. of  7 variables:
##  $ COUNT  : num 3
##  $ DAYS   : Factor w/ 1 level "Mon;Tue;Wed;Thu;Fri;Sat": 1
##  $ ISSUN  : logi FALSE
##  $ LOADER : Factor w/ 1 level "CONTACT_STAT_3136": 1
##  $ MAXTIME: num 622
##  $ MEAN   : num 575
##  $ SD     : num 18.9

Example of the plot
========================================================
![plot of chunk unnamed-chunk-1](Punit_DP_Presentation-figure/unnamed-chunk-1-1.png)
