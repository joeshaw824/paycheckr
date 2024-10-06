get_income <- function(hourly_income,
                             interval,
                             workhours_weekly = 37.5,
                             workhours_monthly = 162.95,
                             workhours_annual = 162.95*12) {

  #' Calculate income based on time and hourly wages
  #'
  #' @param hourly_income Hourly income in pounds
  #' @param interval The time interval to calculate income for, which must be
  #' "week", "month" or "annual".
  #' @param workhours_weekly The number of work hours in a week.
  #' @param workhours_monthly The number of work hours per month
  #' @param workhours_annual The number of work hours per year
  #'
  #' @return The value of income in pounds
  #' @export
  #'
  #' @examples get_income(hourly_income = 23, interval = "week",
  #' workhours_weekly = 28)

  if(!interval %in% c("week", "month", "annual")) {
    stop("interval must be `week`, `month` or `annual`")
  }

  if(hourly_income <= 0) {
    stop("hourly income cannot be 0 or less than 0")
  }

  if (interval == "week") {

    output <- hourly_income * workhours_weekly

  }

  if (interval == "month") {

    output <- hourly_income * workhours_monthly

  }

  if (interval == "annual") {

    output <- hourly_income * workhours_annual

  }

  return(output)

}
