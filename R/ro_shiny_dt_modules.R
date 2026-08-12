#' DT Table Module UI
#'
#' @description
#' Creates a Shiny UI element for displaying a DT (DataTable) table output within a module.
#'
#' @param id Character. The module namespace ID.
#'
#' @return A Shiny UI output element for rendering a DT table.
#'
#' @seealso \code{\link{ro_shiny_dt_server}}, \code{\link{ro_shiny_graph_panel_server}}
#' @family DT
#' @examples
#' if (interactive()) {
#' ro_shiny_dt_ui("table1")
#' }
ro_shiny_dt_ui <- function(id) {
  ns <- NS(id)
  tags$div(
    style = "overflow-x: auto; width: 100%;",
    tags$div(
      style = "min-width: 766px;", # defaultWidth of the plot: 776px - 10,
      # otherwise the scroll-bar will be there immediatly
      DTOutput(ns("table"))
    )
  )
}


#' DT Table Module Server
#'
#' @description
#' Server logic for rendering an accessible, keyboard-navigable (with customJS) DT
#' table with options for sorting and page length.
#'
#' @param id Character. The module namespace ID.
#' @param data Data frame or tibble. The data to display in the table.
#' @param caption Character. Table caption/title (displayed above the table).
#' @param sorting Logical. Should column sorting be enabled? Default is \code{FALSE}.
#' @param pagelength Integer. Number of rows to display per page. Default is \code{10}.
#'
#' @return None. Sets up the server logic for the DT table module.
#' @family DT
#' @seealso \code{\link{ro_shiny_dt_ui}}, \code{\link{ro_shiny_graph_panel_server}}
#'
#' @examples
#' # In your Shiny server:
#' if (interactive()) {
#' ro_shiny_dt_server(
#'   id = "table1",
#'   data = my_data,
#'   caption = "Aantal gevallen per groep",
#'   sorting = TRUE,
#'   pagelength = 20
#' )
#' }

ro_shiny_dt_server <- function(id, data, caption, sorting = FALSE, pagelength = 10) {
  moduleServer(id, function(input, output, session) {
    output$table <- renderDT({
      dt_df <- ro_dt_table(data = data, caption = caption, sorting = sorting, pagelength = pagelength)

      return(dt_df)
    })
    session$onFlushed(
      function() {
        runjs(sprintf(
          "var el = document.getElementById('%s'); if(el) el.removeAttribute('aria-live');",
          session$ns("table")
        ))
      },
      once = FALSE
    )
  })
}
