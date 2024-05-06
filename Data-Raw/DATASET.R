library(readr)
us_open_finals_ <- read_csv("Data-Raw/US Open Finals .csv")
View(US_Open_Finals_)

# Cleaning
tennis <- US_Open_Finals_[c(1:14), c(1:8)]
tennis <- tennis[, -4]
## code to prepare `DATASET` dataset goes here
usethis::use_data(tennis, overwrite = TRUE)

# Adding Model to data raw
tennis_lm <- lm(`Difference in Ace` ~ `Player 1 Wins`, data = tennis)
summary(tennis_lm)
usethis::use_data(tennis_lm, internal = TRUE)


# Rewriting player 1 wins as binary indicator
tennis$`Player 1 Wins` <- ifelse(tennis$`Player 1 Wins` == "Yes", 1, 0)
# ReEstimating the model
tennis_glm <- glm(`Player 1 Wins` ~ `Difference in Ace`, data = tennis, family = "binomial")
summary(tennis_glm)
