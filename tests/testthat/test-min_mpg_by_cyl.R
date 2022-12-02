test_that("min_mpg_by_cyl works", {
  expect_equal(min_mpg_by_cyl[1, 1] %>% dplyr::pull(), 4)

  expect_true (min_mpg_by_cyl$mpg[1] == 21.4)
  expect_false(min_mpg_by_cyl$mpg[1] != 21.4)

  error_if_not_right <- function() {if (min_mpg_by_cyl$mpg[2] == 17.8) stop("AHHH")}
  expect_error(error_if_not_right())

  expect_snapshot(min_mpg_by_cyl$cyl[2])

  count_cyls <- local({
    count <- 0
    function() {
      count <<- count + 1
      count
    }
  })

  for (i in 1:7) {
    count_cyls()
  }

  expect_equal(min_mpg_by_cyl$cyl[3], count_cyls(), ignore_attr = TRUE)

  suppressWarnings({
    expect_known_hash(min_mpg_by_cyl$mpg[3], "563f1a0d03")
  })

  expect_length(
    class(min_mpg_by_cyl)[!class(min_mpg_by_cyl) %in%
                          c("tbl_df", "tbl", "data.frame")],
    0
  )
})
