# Leibniz's notation for computing the curvic length on inverse linear model
#
# Leibniz's notation for computing the curvic length on inverse linear model
#
# expression : sqrt(1+(1/Slope)^2)*input^0
#
# @param input numeric vector of data values
# @param parms numeric vector, parameters with given names: "Intercept",
# "Slope"
# @keywords math
# @examples
#
# x <-  seq(0.1,1,length=20)
# parms <- c(Intercept = 0.2, Slope = 0.3)
# integrate(function(x) { dsdx_linear_inverse(input = x, parms = parms ) }, lower = 0.1, upper = 0.5)
#
#' @importFrom stats integrate
dsdx_linear_inverse <- function(input, parms) {
  .value <- sqrt(1+(1/parms['Slope'])^2)*input^0
  .value
}
