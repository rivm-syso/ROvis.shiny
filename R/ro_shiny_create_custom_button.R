#' Create a Custom Button for Shiny UI
#'
#' @description
#' Generates a Shiny action button with an SVG icon and custom label text.
#'
#' @param input_id Character. The input ID for the action button.
#' @param label_text Character. The label to display next to the icon.
#' @param svg_path Character. SVG path data for the icon.
#'
#' @return A Shiny tag list representing the action button UI element.
#' @seealso \code{\link{ro_icon_download}}, \code{\link{ro_icon_table}}
#' @family DT
#' @examples
#' \dontrun{
#' ro_create_custom_button(
#'   input_id = "download_btn",
#'   label_text = "Download",
#'   svg_path = ro_icon_download()
#' )
#' }
ro_create_custom_button <- function(input_id, label_text, svg_path) {
  actionButton(
    inputId = input_id,
    label = span(
      tags$svg(
        width = 19,
        height = 19,
        viewBox = "0 0 16 16",
        class = "custom-icon",
        tags$path(d = svg_path)
      ),
      label_text
    ),
    class = "custom-icon-btn"
  )
}
