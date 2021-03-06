% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap_test.R
\name{bootstrap_test}
\alias{bootstrap_test}
\title{Bootstrap test for the equivalence of dose response curves via the maximum absolute deviation}
\usage{
bootstrap_test(data1, data2, m1, m2, epsilon, B = 2000, bnds1 = NULL,
  bnds2 = NULL, plot = FALSE, scal = NULL, off = NULL)
}
\arguments{
\item{data1, data2}{data frame for each of the two groups containing the variables referenced in dose and resp}

\item{m1, m2}{model types. Built-in models are "linlog",  "linear",  "quadratic",  "emax",  "exponential",  "sigEmax",  "betaMod" and "logistic"}

\item{epsilon}{positive argument specifying the hypotheses of the test}

\item{B}{number of bootstrap replications. If missing, default value of B is 5000}

\item{bnds1, bnds2}{bounds for the non-linear model parameters. If not specified, they will be generated automatically}

\item{plot}{if TRUE, a plot of the absolute difference curve of the two estimated models will be given}

\item{scal, off}{fixed dose scaling/offset parameter for the Beta/ Linear in log model. If not specified, they are 1.2*max(dose) and 1 respectively}
}
\value{
A list containing the p.value, the maximum absolute difference of the models, the estimated model parameters and the number of bootstrap replications. Furthermore plots of the two models are given.
}
\description{
Function for testing whether two dose response curves can be assumed as equal concerning the
hypotheses \deqn{H_0: \max_{d\in\mathcal{D}} |m_1(d,\beta_1)-m_2(d,\beta_2)|\geq \epsilon\ vs.\ 
H_1: \max_{d\in\mathcal{D}} |m_1(d,\beta_1)-m_2(d,\beta_2)|< \epsilon,}
where \deqn{\mathcal{D}} denotes the dose range.
See \url{https://doi.org/10.1080/01621459.2017.1281813} for details.
}
\examples{
data(IBScovars)
male<-IBScovars[1:118,]
female<-IBScovars[119:369,]
bootstrap_test(male,female,"linear","emax",epsilon=0.35,B=300) 
}
\references{
\url{https://doi.org/10.1080/01621459.2017.1281813}
}
