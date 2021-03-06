% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/door_norm.R
\name{door_norm}
\alias{DoORnorm}
\alias{door_norm}
\title{rescale the data values from 0 to 1}
\usage{
door_norm(x)
}
\arguments{
\item{x}{a numeric vector}
}
\description{
\code{door_norm} is used to normalize the data in values from 0 to 1.
}
\examples{
# create example data
x <- rnorm(10)

# run door_norm on it
door_norm(x)

}
\author{
Shouwen Ma <\email{shouwen.ma@uni-konstanz.de}>

Daniel Münch <\email{daniel.muench@uni-konstanz.de}>
}
\keyword{math}

