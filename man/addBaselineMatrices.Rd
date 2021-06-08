\name{addBaselineMatrices}
\alias{addBaselineMatrices}
\title{Function for adding baseline matrices in SGPmatrices to SGPstateData in SGP package.}
\description{
The function addBaselineMatrices adds baseline matrices contained in the SGPmatrices package to the SGPstateData object embedded in the SGP package so baseline SGP analyses can be conducted.
}

\usage{
addBaselineMatrices(
    state,
    add.matrices.to.which.state=NULL,
    year)
}

\arguments{
  \item{state}{A character string for the state/assessment abbreviation for the baseline matrices to be used. Must match value to be used in SGPstateData.
  }
  \item{add.matrices.to.which.state}{A character string for the state/assessment abbreviation where the baseline matrices will be placed in SGPstateData. If not argument is supplied the default is to use the state/assessment abbreviation supplied via the argument \code{state}.
  }
  \item{year}{Year associated with the matrices.
  }
}

\value{Returns SGPstateData with the matrices associated with argument \code{state} embedded in the position associated with the argument \code{add.matrices.to.state} (defaults to \code{state}).
}

\author{Damian W. Betebenner \email{dbetebenner@nciea.org}}

\keyword{documentation}
