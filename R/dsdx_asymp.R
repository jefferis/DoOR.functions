# Leibniz's notation for computing the curvic length on Asymptotic Model
#
# Leibniz's notation for computing the curvic length on Asymptotic Model
#
# expression : sqrt(1+(-((R0 - Asym) * (exp(-exp(lrc) * input) *
# exp(lrc))))^2)
#
# @param input numeric vector of data values
# @param parms numeric vector, parameters with given names: "Asym", "lrc",
# "R0"
# @seealso \code{\link{SSasymp}}
# @references Jose Pinheiro and Douglas Bates
# @keywords math
# @examples
#
# x <-  seq(0.1,1,length=20)
# parms <- c(Asym = 0.1, lrc = 0.2, R0 = 0.3)
# integrate(function(x) { dsdx_asymp(input = x, parms = parms ) }, lower = 0, upper = 0.5)
#
#' @importFrom stats integrate
dsdx_asymp <- function(input, parms) {
  .value <- sqrt(1+(-((parms["R0"] - parms["Asym"]) * (exp(-exp(parms["lrc"]) * input) * exp(parms["lrc"]))))^2)
  .value
}
