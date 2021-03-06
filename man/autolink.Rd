% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/link.R
\name{autolink}
\alias{autolink}
\alias{autolink_url}
\title{Automatically link inline code}
\usage{
autolink(text)

autolink_url(text)
}
\arguments{
\item{text}{String of code to highlight and link.}
}
\value{
If \code{text} is linkable, an HTML link for \code{autolink()}, and or just
the URL for \code{autolink_url()}. Both return \code{NA} if the text is not
linkable.
}
\description{
Automatically link inline code
}
\section{Options}{
downlit provides a number of options to control the details of the linking.
They are particularly important if you want to generate "local" links.
\itemize{
\item \code{downlit.package}: name of the current package. Determines when
\code{topic_index} and \code{article_index}
\item \code{downlit.topic_index} and \code{downlit.article_index}: named character
vector that maps from topic/article name to path.
\item \code{downlit.rdname}: name of current Rd file being documented (if any);
used to avoid self-links.
\item \code{downlit.attached}: character vector of currently attached R packages.
\item \code{downlit.local_packages}: named character vector providing relative
paths (value) to packages (name) that can be reached with relative links
from the target HTML document.
\item \code{downlit.topic_path} and \code{downlit.article_path}: paths to reference
topics and articles/vignettes relative to the "current" file.
}
}

\examples{
autolink("stats::median()")
autolink("vignette('grid', package = 'grid')")

autolink_url("stats::median()")
}
