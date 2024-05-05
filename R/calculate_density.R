#' Calculate Density of Numeric Vector
#'
#' Computes the density of a given numeric vector using kernel density estimation.
#' The result includes the density values, summary statistics, and x-values for the plot.
#'
#' @param x Numeric vector.
#' @param bw Bandwidth for density calculation; default is "nrd0".
#' @param adjust Adjustment factor for the bandwidth; default is 1.
#' @return A list containing density values, input summary, and x values.
#' @importFrom stats density
#' @examples
#' x <- rnorm(100)
#' result <- calculate_density(x)
#' @export
calculate_density <- function(x, bw = "nrd0", adjust = 1) {
  stopifnot(is.numeric(x))  # Ensure input is numeric

  density_result <- density(x, bw = bw, adjust = adjust)
  result <- list(
    values = density_result$y,
    input_summary = summary(x),
    x = density_result$x
  )

  class(result) <- "densityCalculation"
  return(result)
}
