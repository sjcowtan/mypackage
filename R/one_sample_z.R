#' One sample z test
#'
#' Tests whether the mean of a sample differs significantly
#' from a hypothesised value, mu.
#'
#' @param v a numeric vector representing a sample
#' @param mu the hypothesised mean
#'
#' @return a single element list of two strings. The first gives the
#' z and p values, the second indicates whether the sample mean is
#' signifcantly different from the hypothesised values
#' @export
#'
#' @examples
#' samplex <- rnorm(50, 20, 3)
#' one_sample_z(samplex, 20)
one_sample_z <- function(v, mu) {
  xbar <- mean(v)
  z <- abs((xbar - mu) /std_err(v))
  prob <- pnorm(z, lower.tail = FALSE) * 2
  if (prob < 0.05){
    sig <- "significantly"
  } else sig <- "not significantly"

  result <- paste0("z = ", round(z, 4),
                   "; p = ", round(prob, 4),
                   "\nThe sample mean of ",
                   xbar,
                   " is ",
                   sig,
                   " different from ",
                   mu)
  noquote(strsplit(result, "\n"))
}
