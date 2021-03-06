% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auto.R
\name{auto_issue_comment}
\alias{auto_issue_comment}
\title{Create a Github Action that Comments a Reminder on an Issue}
\usage{
auto_issue_comment(issue_number, remindee, action)
}
\arguments{
\item{issue_number}{The Github Issue Number for the repo}

\item{remindee}{The person to be reminded}

\item{action}{What the person needs to be reminded about}
}
\description{
Create a Github Action that Comments a Reminder on an Issue
}
\examples{

\dontrun{
auto_issue_comment(issue_number = 1, remindee = "you", action = "keep making great #rstats packages!")
}
}
