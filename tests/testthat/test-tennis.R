# Testing that both arguments are numeric
test_that("args are numeric", {
  # arguments should be numeric
  expect_true(tennis_predict(is.numeric(player1_aces), is.numeric(player2_aces)))
})

