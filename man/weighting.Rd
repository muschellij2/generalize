% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weighting.R
\name{weighting}
\alias{weighting}
\title{Estimate weights for generalizing ATE by predicting probability of trial participation}
\usage{
weighting(
  outcome,
  treatment,
  trial,
  selection_covariates,
  data,
  selection_method = "lr",
  is_data_disjoint = TRUE,
  seed
)
}
\arguments{
\item{outcome}{variable name denoting outcome}

\item{treatment}{variable name denoting binary treatment assignment (ok if only available in trial, not population)}

\item{trial}{variable name denoting binary trial participation (1 = trial participant, 0 = not trial participant)}

\item{selection_covariates}{vector of covariate names in data set that predict trial participation}

\item{data}{data frame comprised of "stacked" trial and target population data}

\item{selection_method}{method to estimate the probability of trial participation.  Default is logistic regression ("lr").  Other methods supported are Random Forests ("rf") and Lasso ("lasso")}

\item{is_data_disjoint}{logical. If TRUE, then trial and population data are considered independent.  This affects calculation of the weights - see details for more information.}

\item{seed}{numeric. By default, the seed is set to 13783, otherwise can be specified (such as for simulation purposes).}
}
\description{
Estimate weights for generalizing ATE by predicting probability of trial participation
}
