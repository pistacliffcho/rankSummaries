\name{rankAnalysis}
\alias{rankAnalysis}
\title{Analysis of Longitudinal Data by Rank Summaries}
\usage{
  rankAnalysis(formula, data, orderedScoreNames, w = NULL) 
}
\arguments{
  \item{formula}{formula for fitting rankScores. See details. }
  \item{data}{dataset}
  \item{orderedScoreNames}{ordered names of longitudinal outcomes}
  \item{w}{weights to use. If left = NULL, flat weights are used}
}
\description{
 	Fits a rank summary model for longitudinal data. 
 	
 }
 
\details{
	In regards to the \code{formula} argument, this should be a one sided argument, such as \code{~ group + gender}, in which we would modeling both \code{group} and \code{gender}. Formula *can* be a two sided formula, i.e. \code{y ~ group + gender}, but the response variable will be ignored (replaced with rank scores).

} 
  
\examples{
  data(MWM_data)
  outcomeNames <- paste0('LATENCY_', 1:12)    #creating names of outcomes in data
  fit <- rankAnalysis(formula = ~ hAPP + cohort,
                      data = MWM_data,
                      orderedScoreNames = outcomeNames,
                      w = 1:12)
  
  summary(fit)
}
\author{
  Clifford Anderson-Bergman
}