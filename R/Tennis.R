
# Fitting model:
tennis_lm <- lm(`Difference in Ace` ~ `Player 1 Wins`, data = tennis)
summary(tennis_lm)


#Prediction:
install.packages("broom")
library(broom)
predictions <- augment(tennis_lm, interval = "prediction")

# Function
tennis_predict <- function(player1_aces, player2_aces) {
  difference_aces <- player1_aces - player2_aces
  if ()
}
