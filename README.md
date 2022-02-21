# Shiny App Assignment for exploring the average arrival time of data files

This README file is the supporting documentation accompagning the Shiny application availble [Here](https://rpubs.com/kapoorpunit/DataProduct_ShinyApp)

In this repository it is possibile to see the source code of that application.

* LoadCSVFile.R
* server.R
* ui.R
* punit.csv

For the associated Slidify presentation, click [Here](https://rpubs.com/kapoorpunit/DataProduct_ShinyApp)

### Description of the Application

In a  system that load data from heterogeneous external sources to do complex computation, the arrival time of data files is critical to show updated information for the users of that system. Also is important to know when a data file is in late.

To monitor that input files has been built, [on this platform](https://github.com/kapoorpunit/Developing-Data-Products), an application that:

- First, collecting the arrival time of each and every file
- Second, calculating the mean arrival time and standard deviation per file per week
- Finally, sending a report every hour to the maintenance team about what is out of 2 standard deviation over the mean

With the collected arrival time has been wrote a simple shiny application useful to explore the mean arrival time of every file.

This small application shows a plot with the indication of the mean and the critical arrival time per every file.
Instead of drawing an histogram with the arrival time groupped in bins, the plots are drawed using the calculated mean and standard deviation, under the assumption that the underlying data are iid Gaussian.

We have different files and different averages for weekdays and sunday, so in the application it is possibile to select with a combo if there are available data for sunday.