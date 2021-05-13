\name{addBaselineMatrices}
\alias{addBaselineMatrices}
\title{Function for adding baseline matrices in SGPmatrices to SGPstateData in SGP package.}
\description{
The function addBaselineMatrices adds baseline matrices contained in the SGPmatrices package to the SGPstateData object embedded in the SGP package so baseline SGP analyses can be conducted.
}

\usage{
addBaselineMatrices(
    state,
    year)
}

\arguments{
  \item{state}{A character string for the state/assessment abbreviation. Must match value to be used in SGPstateData.
  }
  \item{year}{Year associated with the matrices.
  }
}

\value{Returns SGPstateData with the matrices embedded in the correct position.
}

\author{Damian W. Betebenner \email{dbetebenner@nciea.org}}

\keyword{documentation}
