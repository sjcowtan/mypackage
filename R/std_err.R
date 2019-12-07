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
#' samplex <- rnorm(50)
#' std_err(samplex)
std_err <- function(v) {
  sd(v)/sqrt(length(v))
}
