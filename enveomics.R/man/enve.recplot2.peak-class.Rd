\name{enve.RecPlot2.Peak-class}
\Rdversion{1.1}
\docType{class}
\alias{enve.RecPlot2.Peak-class}
\alias{enve.RecPlot2.Peak}
%% \alias{$}

\title{enve.RecPlot2.Peak S4 class}
\description{Enve-omics representation of a peak in the sequencing depth histogram
of a Recruitment plot (see `enve.recplot2.findPeaks`).}
\section{Objects from the Class}{Objects can be created by calls of the form \code{new(enve.RecPlot2.Peak ...)}}
\section{Slots}{
  \describe{
    \item{\code{dist}:}{(\code{character}) Distribution of the peak. Currently supported: 'norm' (normal) and 'sn'
(skew-normal).}
    \item{\code{values}:}{(\code{numeric}) Sequencing depth values predicted to conform the peak.}
    \item{\code{values.res}:}{(\code{numeric}) Sequencing depth values not explained by this or previously identified
peaks.}
    \item{\code{mode}:}{(\code{numeric}) Seed-value of mode anchoring the peak.}
    \item{\code{param.hat}:}{(\code{list}) Parameters of the distribution. A list of two values if dist='norm' (sd
and mean), or three values if dist='sn' (omega=scale, alpha=shape, and
xi=location). Note that the "dispersion" parameter is always first and
the "location" parameter is always last.}
    \item{\code{n.hat}:}{(\code{numeric}) Number of bins estimated to be explained by this peak. This should
ideally be equal to the length of `values`, but it's not and integer.}
    \item{\code{n.total}:}{(\code{numeric}) Total number of bins from which the peak was extracted. I.e., total
number of position bins with non-zero sequencing depth in the recruitment
plot (regardless of peak count).}
    \item{\code{err.res}:}{(\code{numeric}) Error left after adding the peak (mower) or log-likelihood (em or emauto).}
    \item{\code{merge.logdist}:}{(\code{numeric}) Attempted `merge.logdist` parameter.}
    \item{\code{seq.depth}:}{(\code{numeric}) Best estimate available for the sequencing depth of the peak (centrality).}
    \item{\code{log}:}{(\code{logical}) Indicates if the estimation was performed in natural logarithm space}
  }
}
\section{Methods}{
  \describe{
    \item{$}{\code{signature(x = "enve.RecPlot2.Peak")}: ... }
	 }
}

\author{Luis M. Rodriguez-R [aut, cre]}





