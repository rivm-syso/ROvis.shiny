#' SVG path for download icon
#'
#' @return A character string with the SVG path data for a download icon.
#' @seealso \code{\link{ro_create_custom_button}}, \code{\link{ro_icon_table}},
#' \code{\link{ro_shiny_graph_panel_server}}, \code{\link{ro_shiny_graph_panel_ui}}
#' @family DT
#' @examples
#' \dontrun{
#' download_button <- ro_icon_download()
#' }
ro_icon_download <- function() {
  button_download <- "M8 2 L8 10 M5 7 L8 10 L11 7 M1 12 L1 14 L15 14 L15 12"
  return(button_download)
}
