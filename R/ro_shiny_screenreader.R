#' Screen Reader Only CSS Classes for Shiny Apps
#'
#' @description
#' Provides general-purpose CSS classes that visually hide content while keeping it
#' accessible to screen readers. Includes `.sr-only` and `.visually-hidden` classes.
#' @return A \code{shiny.tags} object with a \code{<head>} tag containing screen reader only CSS classes.
#' @export
#' @seealso \code{\link{ro_shiny_skip_link}},
#' \code{\link{ro_shiny_skip_link_style}}, \code{\link{ro_shiny_dt_ui}},
#' \code{\link{ro_shiny_graph_panel_ui}}
#' @family DT
#' @family shiny
#' @examples
#' if (interactive()) {
#'   ui <- fluidPage(
#'     ro_dt_theme(sorting = FALSE),
#'     ro_shiny_screenreader(),
#'     DTOutput("mytable")
#'   )
#'   server <- function(input, output, session) {
#'     output$mytable <- renderDT(datatable(iris, options(list(ordering=FALSE))))
#'   }
#'   shinyApp(ui, server)
#' }
#'
ro_shiny_screenreader <- function() {
  tags$head(
    tags$style(
      HTML(
        "
        /* Screen reader only classes */
        .sr-only {
          position: absolute !important;
          width: 1px !important;
          height: 1px !important;
          padding: 0 !important;
          margin: -1px !important;
          overflow: hidden !important;
          clip: rect(0, 0, 0, 0) !important;
          white-space: nowrap !important;
          border: 0 !important;
        }

        .visually-hidden {
          position: absolute !important;
          width: 1px !important;
          height: 1px !important;
          padding: 0 !important;
          margin: -1px !important;
          overflow: hidden !important;
          clip: rect(0, 0, 0, 0) !important;
          white-space: nowrap !important;
          border: 0 !important;
        }
        "
      )
    )
  )
}
