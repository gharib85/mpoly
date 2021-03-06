% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mpoly-equal.R
\name{mpoly-equal}
\alias{mpoly-equal}
\alias{==.mpoly}
\alias{==}
\alias{!=.mpoly}
\title{Determine whether two multivariate polynomials are equal.}
\usage{
\method{==}{mpoly}(e1, e2)

\method{!=}{mpoly}(e1, e2)
}
\arguments{
\item{e1}{an object of class mpoly}

\item{e2}{an object of class mpoly}
}
\value{
A logical value.
}
\description{
Determine whether two multivariate polynomials are equal.
}
\examples{

p1 <- mp("x + y + 2 z")
p1 == p1

p2 <- reorder(p1, order = "lex", varorder = c("z","y","x"))
p1 == p2
p2 <- reorder(p1, order = "lex", varorder = c("z","w","y","x"))
p1 == p2
p1 == ( 2 * p2 )

p1 <- mp("x + 1")
p2 <- mp("x + 1")
identical(p1, p2)
p1 == p2

mp("x + 1") == mp("y + 1")
mp("2") == mp("1")
mp("1") == mp("1")
mp("0") == mp("-0")


}
