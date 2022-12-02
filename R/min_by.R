#' Compute minimum by group
#'
#' Quickly and easily compute the minimum value by group
#'
#' @param df A data frame
#' @param var Variable(s) to compute minimum of.
#' @param by Variables to group by.
#' @return A data frame.
#' @export
#' @examples
#' mtcars |> min_by(mpg, cyl)
min_by <- function(df, var, by) {
  dplyr::summarise(dplyr::group_by(df, dplyr::across({{by}})), dplyr::across({{var}}, min))
}

