test_that("pay_paye works for pay below first bracket", {
  expect_equal(pay_paye(annual_pay_taxable = 500,
                        personal_allowance = 12570,
                        basic_rate_upper = 50270,
                        higher_rate_upper = 125140,
                        initial_rate = 0.2,
                        higher_rate = 0.4,
                        additional_rate = 0.45),
               0)
})

test_that("pay_paye works for pay at first bracket threshold", {
  expect_equal(pay_paye(annual_pay_taxable = 12570,
                        personal_allowance = 12570,
                        basic_rate_upper = 50270,
                        higher_rate_upper = 125140,
                        initial_rate = 0.2,
                        higher_rate = 0.4,
                        additional_rate = 0.45),
               0)
})

test_that("pay_paye works for pay in the first bracket", {
  expect_equal(pay_paye(annual_pay_taxable = 15000,
                        personal_allowance = 12570,
                        basic_rate_upper = 50270,
                        higher_rate_upper = 125140,
                        initial_rate = 0.2,
                        higher_rate = 0.4,
                        additional_rate = 0.45),
               486)
})

test_that("pay_paye works for pay in the second bracket", {
  expect_equal(pay_paye(annual_pay_taxable = 60000,
                        personal_allowance = 12570,
                        basic_rate_upper = 50270,
                        higher_rate_upper = 125140,
                        initial_rate = 0.2,
                        higher_rate = 0.4,
                        additional_rate = 0.45),
               11432)
})

test_that("pay_paye works for pay in the second bracket", {
  expect_equal(pay_paye(annual_pay_taxable = 150000,
                        personal_allowance = 12570,
                        basic_rate_upper = 50270,
                        higher_rate_upper = 125140,
                        initial_rate = 0.2,
                        higher_rate = 0.4,
                        additional_rate = 0.45),
               48675)
})
