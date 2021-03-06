% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/identify_sensillum.R
\name{identify_sensillum}
\alias{identifySensillum}
\alias{identify_sensillum}
\title{identify_sensillum}
\usage{
identify_sensillum(recording,
  response_matrix = door_default_values("door_response_matrix"),
  odor_data = door_default_values("odor"),
  door_mappings = door_default_values("door_mappings"), tag = "Name",
  min.cor = 0.9, nshow = 10, method = "cor", sub, base_size = 12,
  plot = TRUE, use = "everything")
}
\arguments{
\item{recording}{data frame, a data frame with the following columns
"odorants" containing InChIKeys of the tested odorrant, and one column
called "unit1" etc. for each unit, containing responses (or estimates)
scaled between 0 and 1 (see examples)}

\item{response_matrix}{DoOR response matrix, the data to compair against}

\item{odor_data}{data frame, contains the odorant information.}

\item{door_mappings}{the data frame containing the mapping information}

\item{tag}{character, the chemical identifier to use in plots, one of
\code{colnames(odor)}}

\item{min.cor}{numeric, a minimum correlation value, the function will check
wether there is a higher correlation for all units within a single
sensillum}

\item{nshow}{numeric, the number of plots to nshow, plot e.g. only the top 10
matches}

\item{method}{character, the method for similarity calculations: correlation
("cor") or Euclidean distances ("dist")}

\item{sub}{character, if you know the class of sensillum you were recording
from you can restrict the search to this subset here ("ab", "ac", "at",
"pb", "sac")}

\item{base_size}{numeric, the base font size of the ggplot plots}

\item{plot}{logical, if TRUE returns the plot, else returns the data frame with the
correlations/distances}

\item{use}{character, the "use" option from the \code{cor} function, "all"
returns NA when pairs are incomplete, "na.or.complete" only uses complete
observations to calculate correlations; see \code{\link{cor}} for details}
}
\value{
eithe& Carolin G.(†27)r a plot (gtable) with responses sorted by highest correlations
  or lowest distances, or a data frame containing all calculated
  correlations or Euclidean distances
}
\description{
correlates the result from a SSR recording of several odorants against all
DoOR response profiles
}
\examples{
# load data
library(DoOR.data)

# create an example recording
recording <- data.frame(
   odorants = c(trans_id(c("BEDN", "ETAS"), "Code"),
   trans_id("carbon dioxide", "Name")),
   unit1 = c(.9,.1,.1),
   unit2 = c(0, .1, 1)
)

# run the identification
identify_sensillum(recording)
identify_sensillum(recording, method = "dist", nshow = 5)

}
\author{
Daniel Münch <\email{daniel.muench@uni-konstanz.de}>
}

