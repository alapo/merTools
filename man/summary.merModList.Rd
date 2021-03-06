% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merList.R
\name{summary.merModList}
\alias{summary.merModList}
\title{Print the results of a merMod list}
\usage{
\method{summary}{merModList}(object, ...)
}
\arguments{
\item{object}{a modList of class merModList}

\item{...}{additional arguments}
}
\value{
summary content printed to console
}
\description{
Print the results of a merMod list
}
\examples{
sim_list <- replicate(n = 10,
        expr = sleepstudy[sample(row.names(sleepstudy), 180),],
        simplify=FALSE)
fml <- "Reaction ~ Days + (Days | Subject)"
mod <- lmerModList(fml, data = sim_list)
print(mod)
}
