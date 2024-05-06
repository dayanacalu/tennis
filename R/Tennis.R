#' @title Predict the winner of a tennis match based on the number of aces each
#'   player serves.
#'@description This function compares the number of aces served by two players
#'  and predicts the winner based on the difference in aces. If the difference
#'  is positive, it predicts that Player 1 wins. If the difference is negative,
#'  it predicts that Player 2 wins. If the difference is zero, it cannot predict
#'  the winner.
#
#' @param player1_aces Number of aces served by Player 1.
#' @param player2_aces Number of aces served by Player 2.
#' @return A character string indicating the predicted winner: "Player 1 wins",
#'   "Player 2 wins", or "We can't predict who wins".
#' @examples
#' tennis_predict(10, 8)
#' tennis_predict(5, 7)
#
#' @export
#'
tennis_predict <- function(player1_aces, player2_aces) {
  difference_aces <- player1_aces - player2_aces
  if (difference_aces > 0) {
    return("Player 1 wins")
  } else if (difference_aces < 0) {
    return("Player 2 wins")
  } else {
    return("We can't predict who wins")
  }
}

#' @title Predict the winner of a tennis match based on the number of aces each
#'   player serves using a probabilistic approach.
#' @description This function predicts the winner of a tennis match based on the
#'   number of aces served by each player using a probabilistic approach. It
#'   calculates the difference in aces served and then computes the predicted
#'   probabilities of each player winning. The predicted probabilities are
#'   displayed for each player.
#'
#' @param p1_aces Number of aces served by Player 1.
#' @param p2_aces Number of aces served by Player 2.
#' @return None. Predicted probabilities for each player are printed.
#' @examples
#' tennis_predict2(10, 8)
#' tennis_predict2(5, 7)
#'
#' @export
#'
tennis_predict2 <- function(p1_aces, p2_aces) {
  diff_aces <- p1_aces - p2_aces
  log_odds <- diff_aces * -0.01290
  pred_prob_p1 <- plogis(log_odds) * 100
  pred_prob_p2 <- 100 - pred_prob_p1
  cat("Predicted Probability Player 1 Winning is:", pred_prob_p1, "\n")
  cat("Predicted Probability Player 2 Winning is:", pred_prob_p2, "\n")
}
