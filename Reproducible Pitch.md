Reproducible Pitch
========================================================
author: Li Liu
date: 04/05/2020
autosize: true

Slide 2 Overview
========================================================

This is the final project of DevelopDataProducts course.

It contains:

- Shiny Application
- Reproducible Pitch


Slide 3 Source Code
========================================================

R source code:

library(plotly)

set.seed(2020-04-05)

x <- rnorm(100, mean = 30, sd = 5)

y <- rnorm(100)

z <- 1:200

plot_ly(x = ~x, y = ~y, z = ~z,
        type = "scatter3d", mode="markers", color = ~x)


Slide 4 Plot
========================================================




```
Error in file(con, "rb") : cannot open the connection
```
