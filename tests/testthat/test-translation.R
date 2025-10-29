test_that("translation works", {
  expect_equal(translation(c("UUU", "UAU", "AAA")), "FYK")
  expect_equal(translation(c("GAU", "GGU")), "DG")
})

# Tests passed
