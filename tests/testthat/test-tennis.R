library(testthat)

#Function #1

# Test 1: Check if Player 1 wins when player1_aces > player2_aces
test_that("Player 1 wins when player1_aces > player2_aces", {
  result <- tennis_predict(10, 8)
  expect_equal(result, "Player 1 wins")
})

# Test 2: Check if Player 2 wins when player1_aces < player2_aces
test_that("Player 2 wins when player1_aces < player2_aces", {
  result <- tennis_predict(5, 7)
  expect_equal(result, "Player 2 wins")
})

#Function #2

# Test 1: Check if the function prints the predicted probabilities for Player 1 and Player 2
test_that("Function prints predicted probabilities", {
  expect_output(tennis_predict2(10, 8), "Predicted Probability Player 1 Winning is:")
  expect_output(tennis_predict2(10, 8), "Predicted Probability Player 2 Winning is:")
})

# Test 2: Check if the function handles negative differences in aces correctly
test_that("Function handles negative differences in aces", {
  expect_output(tennis_predict2(8, 10), "Predicted Probability Player 1 Winning is:")
  expect_output(tennis_predict2(8, 10), "Predicted Probability Player 2 Winning is:")
})
