% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_features.R
\name{get_features}
\alias{get_features}
\title{Return summary features for the cohort.}
\usage{
get_features(x, patients = x$patients)
}
\arguments{
\item{x}{A \code{REVOLVER} cohort.}

\item{patients}{A vector of patient ids for which the features are extracted.}
}
\value{
A list of matrices.
}
\description{
Computes a set of summary features for the cohort, in the
form of a matrix. The fits must be available inside the cohort
to retrieve some of these features, which are:

\itemize{
  \item the matrix of driver events with mean CCF or binary value;
  \item the matrix of the drivers occurrence acrross all the cohort;
  \item the matrix of the clonal drivers occurrence acrross all the cohort;
  \item the matrix of the subclonal drivers occurrence acrross all the cohort;
  \item the matrix of the occurrence of all evolutionary trajectories across patients
}

The function returns a named list, so that names can be used
to access the matrices.
}
\examples{
# Data released in the 'evoverse.datasets'
data('TRACERx_NEJM_2017_REVOLVER', package = 'evoverse.datasets')

features = get_features(TRACERx_NEJM_2017_REVOLVER)

print(names(features))

print(features)
}
\seealso{
Other Getters: 
\code{\link{CCF_clusters}()},
\code{\link{CCF}()},
\code{\link{Clonal_cluster}()},
\code{\link{Data}()},
\code{\link{Drivers}()},
\code{\link{ITransfer}()},
\code{\link{Phylo}()},
\code{\link{Samples}()},
\code{\link{Subclonal}()},
\code{\link{Truncal}()}
}
\concept{Getters}
