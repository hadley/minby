
<!-- README.md is generated from README.Rmd. Please edit that file -->

# minby

<!-- badges: start -->
<!-- badges: end -->

The goal of minby is to solve the common problem of finding the minimum
of a variable broken down by a group. To save you even more time, it
includes a precomputed dataset giving the answer to one of the most
important data science questions of 2022: what is the minimum of mpg by
cyl?

## Installation

You can install the development version of minby like so:

``` r
remotes::install_github("hadley/minby")
```

## Example

``` r
library(minby)
min_mpg_by_cyl
#>   cyl  mpg
#> 1   4 21.4
#> 2   6 17.8
#> 3   8 10.4

mtcars |> min_by(cyl, c(vs, am))
#> # A tibble: 4 × 3
#> # Groups:   vs [2]
#>      vs    am   cyl
#>   <dbl> <dbl> <dbl>
#> 1     0     0     8
#> 2     0     1     4
#> 3     1     0     4
#> 4     1     1     4
mtcars |> min_by(where(is.numeric), cyl)
#> # A tibble: 3 × 11
#>     cyl   mpg  disp    hp  drat    wt  qsec    vs    am  gear  carb
#>   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1     4  21.4  71.1    52  3.69  1.51  16.7     0     0     3     1
#> 2     6  17.8 145     105  2.76  2.62  15.5     0     0     3     1
#> 3     8  10.4 276.    150  2.76  3.17  14.5     0     0     3     2
```
