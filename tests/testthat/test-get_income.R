test_that("get_income works", {
  expect_equal(round(get_income(hourly_income = 23.5231,
                          interval = "annual",
                          workhours_weekly = 37.5,
                          workhours_monthly = 162.95,
                          workhours_annual = 162.95*12), 0),
               45997)
})

test_that("get_income gives error when wrong interval given", {

  expect_error(object = get_income(hourly_income = 23.5231,
                          interval = "yearly"),
               regexp = "interval must be `week`, `month` or `annual`")

  ?expect_error()

})

test_that("get_income gives error when hourly income is negative", {

  expect_error(object = get_income(hourly_income = -1,
                                   interval = "annual"),
               regexp = "hourly income cannot be 0 or less than 0")

})

