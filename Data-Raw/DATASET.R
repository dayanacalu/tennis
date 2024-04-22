library(readr)
US_Open_Finals_ <- read_csv("Data-Raw/US Open Finals .csv")
View(US_Open_Finals_)

# Cleaning
tennis <- US_Open_Finals_[c(1:14), c(1:8)]
tennis <-tennis[, -4]
## code to prepare `DATASET` dataset goes here
usethis::use_data(tennis, overwrite = TRUE)

