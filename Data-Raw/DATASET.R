library(readr)
US_Open_Finals_ <- read_csv("Data-Raw/US Open Finals .csv")
View(US_Open_Finals_)

# Cleaning
tennis <- US_Open_Finals_[c(1:14), c(1:8)]
tennis <-tennis[, -4]
## code to prepare `DATASET` dataset goes here
usethis::use_data(tennis, overwrite = TRUE)

# Adding Model to data raw
tennis_lm <- lm(`Difference in Ace` ~ `Player 1 Wins`, data = tennis)
summary(tennis_lm)
usethis::use_data(tennis_lm, internal = TRUE)
