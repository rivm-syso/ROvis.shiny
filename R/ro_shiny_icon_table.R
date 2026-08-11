#' SVG path for table icon
#'
#' @return A character string with the SVG path data for a table icon.
#' @seealso \code{\link{ro_create_custom_button}}, \code{\link{ro_icon_download}}
#' @family DT
#' @examples
#' \dontrun{
#' icon_table <- ro_icon_table()
#' }
ro_icon_table <- function() {
  icon_table  <- "M1 2 L15 2 L15 14 L1 14 Z M1 5 L15 5 M1 8 L15 8 M1 11 L15 11 M5.7 5 L5.7 14 M10.3 5 L10.3 14"
  return(icon_table)
}
