test_vec <- rnorm(20, mean = 5, sd = 1.2)

### Standard case
# Expect a floating point result from a numeric input
test_that("Output is type \"double\" when input is numeric", {
  expect_type(sum_squares(test_vec), "double")
})
# Expect that the result is not negative
test_that("Output is non-negative", {
  expect_gte(sum_squares(test_vec), 0)
})

### Special cases
# Identical values should result in zero
test_that("Identical values give a sum of squares of zero", {
  expect_equal(sum_squares(rep(1, 10)), 0)
})

### Expected failures
# Missing values should result in a missing value
test_that("Missing values give a result of NA", {
  expect_equal(sum_squares(c(test_vec, NA)), NA_real_)
})
# Character input throws both an error(from sd) and a warning(from mean)
# so use expect_condition() not expect_error() or expect_warning()
test_that("Non-numeric input gives errors and/or warnings", {
  expect_condition(sum_squares(c("cat", "dog")))
})
# Supplying an empty vector should result in a missing value
#test_that("An empty vector gives a result of NA", {
#  expect_equal(sum_squares(c()), NA_real_)
#})
