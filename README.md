
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tennis

The `tennis` package provides tools for tennis data analysis and
prediction. It includes functions for fitting models, making
predictions, and visualizing tennis-related data.

## Installation

You can install the development version of `tennis` from
[GitHub](https://github.com/) with:

install.packages(“devtools”)
devtools::install_github(“dayanacalu/tennis”)

## Example

Here’s a simple example demonstrating how to use the tennis package to
predict the outcome of a tennis match based on the number of aces served
by each player:

``` r
library(tennis)

# Predict the outcome of a tennis match
tennis_predict(player1_aces = 10, player2_aces = 8)
```

    ## [1] "Player 1 wins"

The player who wins is Player 1. Our function did its job correctly by
comparing how many aces each player served and predicting the winner
based on that. If the difference is positive, it predicts that Player 1
wins. If the difference is negative, it predicts that Player 2 wins. If
the difference is zero, it cannot predict the winner.
