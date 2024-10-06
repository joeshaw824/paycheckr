get_workhours_weekly <- function(workhours_per_day = 7.5,
                                 workdays_per_week = 5) {
  #' Calculate the number of weekly work hours for a given work pattern
  #'
  #' @param workhours_per_day The number of hours worked each day
  #' @param workdays_per_week The number of days worked each week
  #'
  #' @return The number of work hours in one week
  #' @export
  #'
  #' @examples get_workhours_weekly(workhours_per_day = 7.5,
  #' workdays_per_week = 4)

  workhours_weekly <- workhours_per_day * workdays_per_week

  return(workhours_weekly)

}

get_workhours_annual <- function(workhours_weekly,
                                 workweeks_annual = 365 / 7) {
  #' Calculate the number of annual work hours for a given work pattern
  #'
  #' `get_workhours_annual` can be used in with the output of [get_workhours_weekly]
  #' as input (see Examples).
  #'
  #' @param workhours_weekly The number of hours worked each week
  #' @param workweeks_annual The number of weeks worked each year
  #'
  #' @return The number of work hours in one year
  #' @export
  #'
  #' @examples get_workhours_annual(37.5)
  #'
  #' get_workhours_annual(workhours_weekly = get_workhours_weekly(6, 4))

  workhours_annual <- workhours_weekly * workweeks_annual

  return(workhours_annual)

}

get_workhours_monthly <- function(workhours_annual,
                                  workmonths_annual = 12) {
  #' Calculate the number of monthly work hours for a given work pattern
  #'
  #' Calculating using months as an interval can be confusing because months
  #' do not have equal lengths.
  #'
  #' In the NHS pay system, this complexity is removed by treating each
  #' month as having an identical length. The number of hours worked per month
  #' is calculated from the number of hours worked per year, and can
  #' be combined with [get_workhours_annual()] (see Examples).
  #'
  #' This means to calculate intervals it is easier to think in the order:
  #' - hours
  #' - days
  #' - weeks
  #' - years
  #' - months
  #'
  #' @param workhours_annual The number of hours worked each year
  #' @param workmonths_annual The number of months worked each year
  #'
  #' @return The number of work hours in one month
  #' @export
  #'
  #' @examples get_workhours_monthly(workhours_annual =
  #' get_workhours_annual(workhours_weekly = 37.5))

  workhours_monthly <- round(workhours_annual / workmonths_annual, 2)

  return(workhours_monthly)

}
