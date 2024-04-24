#' @title Predict the winner of a tennis match based on the number of aces each player serves.
#' @description This function compares the number of aces served by two players and predicts the winner
#'based on the difference in aces. If the difference is positive, it predicts that Player 1 wins.
#'If the difference is negative, it predicts that Player 2 wins. If the difference is zero, it
#'cannot predict the winner.
#
#' @param player1_aces Number of aces served by Player 1.
#' @param player2_aces Number of aces served by Player 2.
#' @return A character string indicating the predicted winner: "Player 1 wins", "Player 2 wins", or "We can't predict who wins".
#' @examples
#' tennis_predict(10, 8)
#' tennis_predict(5, 7)
#
#' @export

# Fitting model:
tennis_lm <- lm(`Difference in Ace` ~ `Player 1 Wins`, data = tennis)
summary(tennis_lm)


#Prediction:
install.packages("broom")
library(broom)
predictions <- augment(tennis_lm, interval = "prediction")


# Function DRAFT

#' @title Predcit match outcomes using aces
#' @description Given the aces of two player the function finds the differences in aces and uses the difference to compute the

tennis_predict <- function(player1_aces, player2_aces){
  difference_aces <- player1_aces - player2_aces
  if (difference_aces > 0){
    return ("Player 1 wins")
  } else if (difference_aces < 0){
    return ("Player 2 wins")
  } else {
    return ("We can't predict who wins")
  }
}

# Fitting model:
#tennis_lm <- lm(`Difference in Ace` ~ `Player 1 Wins`, data = tennis)
#summary(tennis_lm)

# Prediction:
#install.packages("broom")
#library(broom)
#predictions <- augment(tennis_lm, interval = "prediction")
