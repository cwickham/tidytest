#' Average over each cylinder
#'
#' @param x Column to be averaged
#'
#' @return tibble
#' @export
#'
#' @examples
#' cyl_sum(wt)
cyl_sum <- function(x){
  mtcars %>%
    group_by(.data$cyl) %>%
    summarise(n = n(), avg = mean({{ x }}))
}
