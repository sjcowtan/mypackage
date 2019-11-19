#' Calculate the standard error for a sample
#'
#' returns the standard error of
#' a numeric vector
#'
#' @param v numeric vector
#'
#' @return number
#' @export
#'
#' @examples
#' std_err(rnorm(50))
std_err <- function(v) {
  sd(v)/sqrt(length(v))
}
