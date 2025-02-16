% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{llike_li}
\alias{llike_li}
\title{Objective function for \code{\link{em_li}()}}
\usage{
llike_li(B, lpivec)
}
\arguments{
\item{B}{The log-likelihood matrix. Rows are individuals columns are
genotypes.}

\item{lpivec}{The log prior vector.}
}
\value{
The log-likelihood of a vector of genotype frequencies when
using genotype likelihoods. This is from Li (2011).
}
\description{
Objective function for \code{\link{em_li}()}
}
\examples{
# Simulate some data
set.seed(1)
gl <- simgl(nvec = c(3, 2, 4, 1, 2))
# Log-likelihood at given log-priors
prob <- c(0.1, 0.2, 0.4, 0.2, 0.1)
lprob <- log(prob)
llike_li(B = gl, lpivec = lprob)

}
\references{
\itemize{
\item{Li, H. (2011). A statistical framework for SNP calling, mutation discovery, association mapping and population genetical parameter estimation from sequencing data. \emph{Bioinformatics}, 27(21), 2987-2993. \doi{10.1093/bioinformatics/btr509}}
}
}
\author{
David Gerard
}
