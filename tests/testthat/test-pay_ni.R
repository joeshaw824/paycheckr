test_that("pay_ni works for income below standard bracket", {
  expect_equal(pay_ni(weekly_income = 150,
                      standard_bracket_lower = 242,
                      standard_bracket_higher = 967,
                      standard_ni_rate = 0.08,
                      upper_ni_rate = 0.02),
  0)
})

test_that("pay_ni works for income in standard bracket", {
  expect_equal(pay_ni(weekly_income = 500,
                      standard_bracket_lower = 242,
                      standard_bracket_higher = 967,
                      standard_ni_rate = 0.08,
                      upper_ni_rate = 0.02),
               20.64)
})

test_that("pay_ni works for income above standard bracket", {
  expect_equal(pay_ni(weekly_income = 1500,
                      standard_bracket_lower = 242,
                      standard_bracket_higher = 967,
                      standard_ni_rate = 0.08,
                      upper_ni_rate = 0.02),
               68.66)
})
