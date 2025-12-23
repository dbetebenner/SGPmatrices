\name{addBaselineMatrices}
\alias{addBaselineMatrices}
\title{Function for adding baseline matrices in SGPmatrices to SGPstateData in SGP package.}
\description{
The function addBaselineMatrices adds baseline matrices contained in the SGPmatrices package to the SGPstateData object embedded in the SGP package so baseline SGP analyses can be conducted.
}

\usage{
addBaselineMatrices(
    state,
    year,
    add.matrices.to.which.state=NULL,
    SGPt = FALSE)
}

\arguments{
  \item{state}{A character string for the state/assessment abbreviation for the baseline matrices to be used. Must match value to be used in SGPstateData.
  }
  \item{year}{Year associated with the matrices.
  }
  \item{add.matrices.to.which.state}{A character string for the state/assessment abbreviation where the baseline matrices will be placed in SGPstateData. If not argument is supplied the default is to use the state/assessment abbreviation supplied via the argument \code{state}.
  }
  \item{SGPt}{A logical value indicating whether to add SGPt baseline matrices. If not argument is supplied the default is to use the value of \code{SGPt} embedded in the SGPstateData object.
    If \code{SGPt} is \code{TRUE}, the function will add SGPt baseline matrices to the SGPstateData object.
    If \code{SGPt} is \code{FALSE}, the function will add baseline matrices to the SGPstateData object.
  }
}

\value{Returns SGPstateData with the matrices associated with argument \code{state} embedded in the position associated with the argument \code{add.matrices.to.state} (defaults to \code{state}).
}

\author{Damian W. Betebenner \email{dbetebenner@nciea.org}}

\keyword{documentation}
