% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_workhours.R
\name{get_workhours_weekly}
\alias{get_workhours_weekly}
\title{Calculate the number of weekly work hours for a given work pattern}
\usage{
get_workhours_weekly(workhours_per_day = 7.5, workdays_per_week = 5)
}
\arguments{
\item{workhours_per_day}{The number of hours worked each day}

\item{workdays_per_week}{The number of days worked each week}
}
\value{
The number of work hours in one week
}
\description{
Calculate the number of weekly work hours for a given work pattern
}
\examples{
get_workhours_weekly(workhours_per_day = 7.5,
workdays_per_week = 4)
}
