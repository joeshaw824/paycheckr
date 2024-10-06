pay_paye <- function(taxable_annual_income,
                     personal_allowance = 12570,
                     basic_rate_upper = 50270,
                     higher_rate_upper = 125140,
                     initial_rate = 0.2,
                     higher_rate = 0.4,
                     additional_rate = 0.45) {
  #' Calculate income tax on Pay As You Earn (PAYE)
  #'
  #' This function uses deafult values from the PAYE [government website](https://www.gov.uk/income-tax-rates)
  #'
  #' @param taxable_annual_income Taxable annual income in pounds
  #' @param personal_allowance The personal allowance you don't pay income tax on
  #' @param basic_rate_upper The upper limit for paying the basic rate of income tax
  #' @param higher_rate_upper The upper limit for paying the higher rate of income tax
  #' @param initial_rate The initial rate of income tax
  #' @param higher_rate The higher rate of income tax
  #' @param additional_rate The "additional" (i.e. higher than the higher rate) of income tax
  #'
  #' @return The annual amount of income tax to pay in pounds
  #' @export
  #'
  #' @examples pay_paye(12570)

  paye_annual <- dplyr::case_when(
    taxable_annual_income <= personal_allowance ~0,

    (taxable_annual_income > personal_allowance &
        taxable_annual_income <= basic_rate_upper) ~(taxable_annual_income -
                                                    personal_allowance) * initial_rate,

  (taxable_annual_income > basic_rate_upper &
          taxable_annual_income <= higher_rate_upper) ~((basic_rate_upper - personal_allowance) * initial_rate) +
      ((taxable_annual_income - basic_rate_upper) * higher_rate),

  taxable_annual_income > higher_rate_upper ~((basic_rate_upper - personal_allowance) * initial_rate) +
      ((higher_rate_upper - basic_rate_upper) * higher_rate) +
      ((taxable_annual_income - higher_rate_upper) * additional_rate)

  )

  return(paye_annual)

}
