################################################################################
#' Implementation of absolute difference function
#'
#' Function calculating the absolute difference of two dose response models: \deqn{dff(d,\beta_1,\beta_2)=|m_1(d,\beta_1)-m_2(d,\beta_2)|}
#' 
#' @export
#' @param d real-valued argument to the function (dose variable)
#' @param beta1,beta2 model parameters (real vectors)
#' @param m1,m2 model types. Built-in models are "linlog",  "linear",  "quadratic",  "emax",  "exponential",  "sigEmax",  "betaMod" and "logistic" 
#' @return Response value for the absolute difference of two models.
################################################################################  
dff <- function(d,beta1,beta2,m1,m2){
  abs(m1(d,beta1)-m2(d,beta2))
}