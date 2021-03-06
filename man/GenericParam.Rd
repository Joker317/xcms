% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataClasses.R, R/functions-Params.R,
%   R/methods-Params.R
\docType{class}
\name{GenericParam-class}
\alias{GenericParam-class}
\alias{GenericParam}
\alias{show,GenericParam-method}
\title{Generic parameter class}
\usage{
GenericParam(fun = character(), args = list())

\S4method{show}{GenericParam}(object)
}
\arguments{
\item{fun}{\code{character} representing the name of the function.}

\item{args}{\code{list} (ideally named) with the arguments to the function.}

\item{object}{\code{GenericParam} object.}
}
\value{
The \code{GenericParam} function returns a \code{GenericParam}
    object.
}
\description{
The \code{GenericParam} class allows to store generic parameter
    information such as the name of the function that was/has to be called
    (slot \code{fun}) and its arguments (slot \code{args}). This object is
    used to track the process history of the data processings of an
    \code{\link{XCMSnExp}} object. This is in contrast to e.g. the
    \code{\link{CentWaveParam}} object that is passed to the actual
    processing method.
}
\section{Slots}{

\describe{
\item{\code{fun}}{\code{character} specifying the function name.}

\item{\code{args}}{\code{list} (ideally named) with the arguments to the
function.}

\item{\code{.__classVersion__}}{the version of the class.}
}}

\examples{
prm <- GenericParam(fun = "mean")

prm <- GenericParam(fun = "mean", args = list(na.rm = TRUE))
}
\seealso{
\code{\link{processHistory}} for how to access the process history
    of an \code{\link{XCMSnExp}} object.
}
\author{
Johannes Rainer
}
