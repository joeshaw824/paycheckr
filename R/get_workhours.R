get_workhours_weekly <- function(workhours_per_day = 7.5,
                                 workdays_per_week = 5) {

  output <- workhours_per_day * workdays_per_week

  return(output)

}

get_workhours_annual <- function(workhours_weekly,
                                 workweeks_annual = 365 / 7) {

  workhours_annual <- workhours_weekly * workweeks_annual

  return(workhours_annual)

}

get_workhours_monthly <- function(workhours_annual,
                                  workmonths_annual = 12) {

  workhours_monthly <- round(workhours_annual / workmonths_annual, 2)

  return(workhours_monthly)

}
