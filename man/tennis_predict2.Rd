% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Tennis.R
\name{tennis_predict2}
\alias{tennis_predict2}
\title{Predict the winner of a tennis match based on the number of aces each
player serves using a probabilistic approach.}
\usage{
tennis_predict2(p1_aces, p2_aces)
}
\arguments{
\item{p1_aces}{Number of aces served by Player 1.}

\item{p2_aces}{Number of aces served by Player 2.}
}
\value{
None. Predicted probabilities for each player are printed.
}
\description{
This function predicts the winner of a tennis match based on the
number of aces served by each player using a probabilistic approach. It
calculates the difference in aces served and then computes the predicted
probabilities of each player winning. The predicted probabilities are
displayed for each player.
}
\examples{
tennis_predict2(10, 8)
tennis_predict2(5, 7)

}
