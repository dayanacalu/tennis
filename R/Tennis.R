# Fitting model:
tennis_lm <- lm(`Difference in Ace` ~ `Player 1 Wins`, data = tennis)
summary(tennis_lm)