
pay_pension <- function(monthly_pay, pension_rate = 0.098) {
  #' Calculate the amount of pay put into your pension
  #'
  #' @param monthly_pay Monthly pay amount in pounds.
  #' @param pension_rate The pension rate, which defaults to 9.8%.
  #'
  #' @return The amount to pay into your pension in pounds.
  #' @export
  #'
  #' @examples pay_pension(3833)

  pension_amount <- monthly_pay * pension_rate

  return(pension_amount)

}
