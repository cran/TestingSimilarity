% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DoseResponseModels.R
\name{emax}
\alias{emax}
\title{Implementation of EMAX models}
\usage{
emax(d, e)
}
\arguments{
\item{d}{real-valued argument to the function (dose variable)}

\item{e}{model parameter}
}
\value{
Response value.
}
\description{
Emax model: \deqn{m(d,\beta)=E_0+E_{max}\frac{d}{ED_{50}+d}}
}
