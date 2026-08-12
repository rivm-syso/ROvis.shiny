#' Responsive DataTables CSS for Shiny Apps
#'
#' @description
#' Provides CSS to make DataTables responsive in Shiny apps.
#' Enables horizontal scrolling for tables on small screens, ensuring
#' tables remain usable on mobile devices and narrow viewports.
#'
#' @return A \code{shiny.tags} object (HTML <head> tag) to be included at the top of your Shiny UI.
#'
#' @seealso \code{\link{ro_shiny_skip_link}},
#' \code{\link{ro_shiny_skip_link_style}}, \code{\link{ro_shiny_focus_style}},
#' \code{\link{ro_shiny_button_theme}},
#' \code{\link{ro_shiny_dt_ui}}
#' @family DT
#' @family shiny
#' @examples
#' if (interactive()) {
#'   ui <- fluidPage(
#'     ro_shiny_screenreader(),
#'     ro_shiny_skip_link(),
#'     ro_shiny_skip_link_style(),
#'     ro_shiny_focus_style(),
#'     ro_shiny_button_theme(),
#'     ro_shiny_dt_responsive(),
#'     # ... your app UI ...
#'   )
#'   server <- function(input, output, session) {}
#'   shinyApp(ui, server)
#' }
ro_shiny_dt_responsive <- function() {
  tags$head(
    tags$style(HTML(
      "
      /* Make the table responsive with a horizontal scrollbar on small screens */
      .dataTables_wrapper {
      overflow-x: auto !important;
      }
      table.dataTable {
        width: 100% !important;
      }
  "
    ))
  )
}
