calculate_income <- function(hourly_income,
                             interval,
                             workhours_weekly = 37.5,
                             workhours_monthly = 162.95,
                             workhours_annual = 162.95*12) {

  stopifnot(interval %in% c("week", "month", "annual"))

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
