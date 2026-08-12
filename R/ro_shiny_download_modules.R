#' Download Button Module UI
#'
#' @description
#' Creates a Shiny UI element for a download button with a custom SVG icon and label.
#'
#' @param id Character. The module namespace ID.
#' @param label_text Character. The label to display on the button. Default is "Export".
#' @param svg_path Character. SVG path data for the icon.
#' @family DT
#' @return A Shiny UI element (action button) for use in a module UI.
#' @seealso \code{\link{ro_shiny_download_server}}, \code{\link{ro_shiny_graph_panel_ui}}
#'
#' @examples
#' if (interactive()) {
#' ro_shiny_download_ui(
#'   id = "download1",
#'   label_text = "Export",
#'   svg_path = ro_icon_download()
#' )
#' }
ro_shiny_download_ui <- function(id, label_text = "Export", svg_path) {
  ns <- NS(id)
  actionButton(
    ns("btn"),
    label = span(
      tags$svg(width = 19, height = 19, viewBox = "0 0 16 16", class = "custom-icon", tags$path(d = svg_path)),
      label_text
    ),
    class = "custom-icon-btn"
  )
}

#' Download Button Module Server
#'
#' @description
#' Server logic for a download button that exports data as a CSV file using a custom filename.
#'
#' @param id Character. The module namespace ID.
#' @param data_to_download Function. A function returning the data to be downloaded (as a data frame or tibble).
#' @param filename_prefix Character. Prefix for the downloaded file name. Default is "data".
#' @param svg_path Character. SVG path data for the icon (not used in server, but included for consistency).
#'
#' @return None. Sets up the server logic for the download button module.
#' @seealso \code{\link{ro_shiny_download_ui}}, \code{\link{ro_shiny_graph_panel_server}}
#' @family DT
#' @examples
#' # In server function:
#' if (interactive()) {
#' ro_shiny_download_server(
#'   id = "download1",
#'   data_to_download = function() mydata,
#'   filename_prefix = "cases",
#'   svg_path = ro_icon_download()
#' )
#' }
ro_shiny_download_server <- function(id, data_to_download, filename_prefix = "data", svg_path) {
  moduleServer(id, function(input, output, session) {
    observeEvent(input$btn, {
      csv_content <- data_to_download() |>
        write.csv2(row.names = FALSE) |>
        capture.output() |>
        paste(collapse = "\n")
      session$sendCustomMessage(
        "download_csv",
        list(
          filename = paste0(filename_prefix, "-", Sys.Date(), ".csv"),
          filepath = csv_content
        )
      )
    })
  })
}
