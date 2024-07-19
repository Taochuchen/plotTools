#' Custom Scatter Plot
#'
#' This function generates a custom scatter plot, allowing users to specify the color and size of points.
#' @param df Data frame containing x and y columns.
#' @param x Column name as a string for the x-axis data.
#' @param y Column name as a string for the y-axis data.
#' @param color Column name as a string for the point colors.
#' @param size Column name as a string for the point sizes.
#' @return A ggplot object.
#' @examples
#' df <- data.frame(x = rnorm(100), y = rnorm(100), color = sample(c('red', 'blue'), 100, replace = TRUE), size = runif(100, 1, 5))
#' custom_scatter(df, 'x', 'y', 'color', 'size')
#' @export
custom_scatter <- function(df, x, y, color = NULL, size = NULL) {
  library(ggplot2)
  p <- ggplot(df, aes_string(x = x, y = y, color = color, size = size)) +
    geom_point() +
    theme_minimal()
  return(p)
}

