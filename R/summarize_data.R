#' Summarize Data
#'
#' Provides summary statistics such as mean, median, max, and min for a given data frame.
#'
#' @param data Data frame to summarize.
#' @return A data frame containing summary statistics.
#' @importFrom dplyr summarise
#' @examples
#' data <- data.frame(x = rnorm(100))
#' summarize_data(data)
#' @export
summarize_data <- function(data) {
  # Ensure that the data is a dataframe and contains the column 'x'
  if (!is.data.frame(data)) {
    stop("The provided data must be a data frame", call. = FALSE)
  }
  if (!"x" %in% names(data)) {
    stop("The data frame must contain an 'x' column", call. = FALSE)
  }

  # Use dplyr to summarize the data
  dplyr::summarise(data,
                   mean = mean(x, na.rm = TRUE),
                   median = median(x, na.rm = TRUE),
                   max = max(x, na.rm = TRUE),
                   min = min(x, na.rm = TRUE)
  )
}
