---
title: "Using the DensPlotR Package"
author: "Michał Daniluk"
date: "`r Sys.Date()`"
output: html_document
---

# Introduction

This document provides a comprehensive guide on how to utilize the `DensPlotR` package for performing statistical analysis and visualization.

## Overview

`DensPlotR` is designed to assist researchers and data analysts in exploring data distributions and summarizing statistical characteristics. For more details, visit the [DensPlotR GitHub repository](https://github.com/mdaniluk/DensPlotR).

# Installation

To install the `DensPlotR` package, use the following R command:

```{r installation, eval=FALSE}
# install.packages("devtools")
devtools::install_github("mdaniluk/DensPlotR")
```

## Loading the Package

Once installed, you can load the package into R like this:

```{r loading}
library(DensPlotR)
```

# Features and Functions

## Plotting Density

Below is an example of how to calculate and plot density estimates using `DensPlotR`:

```{r plot-density, echo=TRUE, fig.cap="Density Plot of Random Data"}
set.seed(123)
data <- rnorm(100)
density_result <- calculate_density(data)
plot_density(density_result)
```

## Summarizing Data

`DensPlotR` also provides functionality to summarize datasets. Here’s how to use it:

```{r summarize-data, results='asis'}
summary_data <- summarize_data(data.frame(x = data))
knitr::kable(summary_data, caption = "Summary Statistics of the Data")
```

# Conclusion

Thank you for using `DensPlotR`. We hope it assists you in your data analysis endeavors. Feel free to contribute to the [project on GitHub](https://github.com/mdaniluk/DensPlotR).
