#' Calculate the sums of squares for a sample
#'
#' returns the sum of the squared deviations
#' from mean, SS(x) of a numeric vector
#'
#' @param v numeric vector
#'
#' @return number
#' @export
#'
#' @examples
#' sum_squares(rnorm(50))
sum_squares <- function(v) {
  sum((v - mean(v))^2)
}
