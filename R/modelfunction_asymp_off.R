# Asymptotic Model with an Offset
# 
# Asymptotic Model with an Offset
# 
# expression : Asym*(1 - exp(-exp(lrc)*(input - c0)))
# 
# @param input numeric vector of data values
# @param parms numeric vector, parameters with given names: "Asym", "lrc",
# "c0"
# @seealso \code{\link{SSasympOff}}
# @references Jose Pinheiro and Douglas Bates
# @keywords math
# @examples
# 
# x <- rnorm(20)
# y <- modelfunction_asymp_off(input = x, parms = c(Asym = 0.1, lrc = 0.2, c0 = 0.3) )
# plot(x,y)
#' @importFrom stats SSasympOff

modelfunction_asymp_off <- function(input, parms) {
  return(SSasympOff(input, Asym = parms["Asym"], lrc = parms["lrc"], c0 = parms["c0"]))
}
