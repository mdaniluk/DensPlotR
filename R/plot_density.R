#' Plot Density Data
#'
#' This function plots the density of data calculated by `calculate_density`.
#'
#' @param density_data List containing the results of `calculate_density`.
#' @param main Title for the plot.
#' @return Plot of the density data.
#' @export
#' @examples
#' data <- rnorm(100)
#' density_result <- calculate_density(data)
#' plot_density(density_result)
plot_density <- function(density_data, main = "Density Plot") {
  stopifnot("densityCalculation" %in% class(density_data))  # Validate class

  with(density_data, {
    plot(x, values, type = 'l', main = main)
  })
}
