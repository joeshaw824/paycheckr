pay_pension <- function(monthly_pay, pension_rate = 0.098) {

  pension_amount <- monthly_pay * pension_rate

  return(pension_amount)

}
