## code to prepare `min_mpg_by_cyl` dataset goes here

min_mpg_by_cyl <- mtcars |> min_by(mpg, cyl)

usethis::use_data(min_mpg_by_cyl, overwrite = TRUE)
