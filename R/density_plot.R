#' Density plot
#'
#' Plots a density plot of the data
#'
#' @param v numeric vector
#'
#' @return ggplot object
#' @export
#'
#' @examples
#' density_plot(rnorm(50))
#'
density_plot <- function(v) {
  stopifnot(is.numeric(v))

  data.frame(values = v) %>%
    ggplot(aes(x = values)) +
    geom_density()
}

