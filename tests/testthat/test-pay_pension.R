test_that("pay_pension calculates pension correctly", {
  expect_equal(pay_pension(3833), 375.634)
})
