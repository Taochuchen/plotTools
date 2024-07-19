#' Custom Histogram
#'
#' This function generates a custom histogram, allowing users to specify the fill color and the number of bins.
#' @param df Data frame containing a single numeric column.
#' @param column Column name as a string for the data.
#' @param bins Integer specifying the number of bins.
#' @param fill_color String specifying the fill color of the histogram.
#' @return A ggplot object.
#' @examples
#' df <- data.frame(value = rnorm(100))
#' custom_histogram(df, 'value', 20, 'blue')
#' @export
custom_histogram <- function(df, column, bins = 30, fill_color = 'grey') {
  library(ggplot2)
  p <- ggplot(df, aes_string(x = column)) +
    geom_histogram(bins = bins, fill = fill_color) +
    theme_minimal()
  return(p)
}
