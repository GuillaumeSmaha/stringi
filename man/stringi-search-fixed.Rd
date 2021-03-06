% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{stringi-search-fixed}
\alias{stringi-search-fixed}
\title{Locale-Insensitive Fixed Pattern Matching in \pkg{stringi}}
\description{
String searching facilities described in this very man page
provide a way to locate a specific sequence of bytes in a string.
Fixed pattern search engine's settings may be tuned up (for example
to perform case-insensitive search), see the
\code{\link{stri_opts_fixed}} function for more details.
}
\section{Byte Compare}{


The Knuth-Morris-Pratt search algorithm, with worst time complexity of
O(n+p) (\code{n == length(str)}, \code{p == length(pattern)})
is utilized (with some tweaks for very short search patterns).
For natural language processing, however, this is not what
you probably want. It is because a bitwise match will
not give correct results in cases of:
\enumerate{
\item accented letters;
\item conjoined letters;
\item ignorable punctuation;
\item ignorable case,
}
see also \link{stringi-search-coll}.

Note that the conversion of input data
to Unicode is done as usual.
}
\seealso{
Other search_fixed: \code{\link{stri_opts_fixed}},
  \code{\link{stringi-search}}

Other stringi_general_topics: \code{\link{stringi-arguments}},
  \code{\link{stringi-encoding}},
  \code{\link{stringi-locale}},
  \code{\link{stringi-package}},
  \code{\link{stringi-search-boundaries}},
  \code{\link{stringi-search-charclass}},
  \code{\link{stringi-search-coll}},
  \code{\link{stringi-search-regex}},
  \code{\link{stringi-search}}
}

