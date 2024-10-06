pay_ni <- function(weekly_income,
                   standard_bracket_lower = 242,
                   standard_bracket_higher = 967,
                   standard_ni_rate = 0.08,
                   upper_ni_rate = 0.02){

  #' Calculate national insurance payments
  #'
  #' The default values for this function are taken from the
  #' [government website](https://www.gov.uk/national-insurance/how-much-you-pay).
  #'
  #' @param weekly_income Weekly income in pounds
  #' @param standard_bracket_lower The lower income threshold for the standard bracket
  #' @param standard_bracket_higher The higher income threshold for the standard bracket
  #' @param standard_ni_rate The standard rate of national insurance
  #' @param upper_ni_rate The upper rate of national insurance
  #'
  #' @return The amount of national insurance to pay weekly in pounds.
  #' @export
  #'
  #' @examples pay_ni(350)

  weekly_ni <- dplyr::case_when(

    # Income lower than standard bracket
    weekly_income < standard_bracket_lower ~0,

    # Income within the standard bracket
    (weekly_income >= standard_bracket_lower &
       weekly_income <= standard_bracket_higher)

    ~(weekly_income - standard_bracket_lower) * standard_ni_rate,

    # Income above the standard bracket
    weekly_income > standard_bracket_higher ~((
      standard_bracket_higher - standard_bracket_lower) *
        standard_ni_rate) +
      ((weekly_income - standard_bracket_higher) * upper_ni_rate))

  return(weekly_ni)

}
