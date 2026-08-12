#' Generic yGraph Module UI
#'
#' @description
#' Returns a UI output element for a generic chart module, using a user-supplied chart UI function.
#'
#' @param id Character. Module namespace ID.
#' @param plot_ui_fun Function. A function that generates a UI element for the chart output
#' (\code{plotlyOutput}, \code{highcharter::highchartOutput}, \code{echarts4r::echarts4rOutput}, etc.).
#'
#' @return A Shiny UI output element for use in a module UI.
#' @seealso \code{\link{ro_shiny_graph_panel_ui}}, \code{\link{ro_shiny_graph_mod_server}}
#' @export
#' @md
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @examples
#' # Using plotly
#' if (interactive()) {
#'   ro_shiny_graph_mod_ui("my_chart", plotlyOutput)
#' }
#'
#' # Using highcharter
#' if (interactive()) {
#'   ro_shiny_graph_mod_ui("my_chart", highcharter::highchartOutput)
#' }
#'
#' # Using echarts4r
#' if (interactive()) {
#'   ro_shiny_graph_mod_ui("my_chart", echarts4r::echarts4rOutput)
#' }
ro_shiny_graph_mod_ui <- function(id, plot_ui_fun) {
  ns <- NS(id)
  tags$div(
    style = "overflow-x: auto; width: 100%;",
    tags$div(
      style = "min-width: 766px;", # defaultWidth of the plot: 776px - 10,
      # otherwise the scroll-bar will be there immediatly
      plot_ui_fun(ns("chart"))
    )
  )
}

#' Generic Graph Module Server
#'
#' @description
#' Server logic for a generic chart module.
#' Renders a chart using a user-supplied render function and a plot-producing function.
#'
#' @param id Character. Module namespace ID.
#' @param render_fun Function.
#' A Shiny render function (\code{renderPlotly}, \code{highcharter::renderHighchart},
#' \code{echarts4r::renderEcharts4r}, etc.).
#' @param plot_data_fun Function. A function returning the data or object to plot.
#'
#' @return None. Sets up the server logic for the generic chart module.
#' @seealso \code{\link{ro_shiny_graph_panel_server}}, \code{\link{ro_shiny_graph_mod_ui}}
#' @export
#' @md
#' @family ggplotly
#' @family plotly
#' @family echarts
#' @examples
#' # Using plotly
#' if (interactive()) {
#'   ro_shiny_graph_mod_server(
#'     id = "my_chart",
#'     render_fun = plotly::renderPlotly,
#'     plot_data_fun = function() plotly_obj
#'   )
#' }
#' # Using highcharter
#' if (interactive()) {
#'   ro_shiny_graph_mod_server(
#'     id = "my_chart",
#'     render_fun = highcharter::renderHighchart,
#'     plot_data_fun = function() highcharter::highchart() |>
#'       highcharter::hc_add_series(data = c(1,2,3))
#'   )
#' }
#'
#' # Using echarts4r
#' if (interactive()) {
#'   ro_shiny_graph_mod_server(
#'     id = "my_chart",
#'     render_fun = echarts4r::renderEcharts4r,
#'     plot_data_fun = function() echarts4r::e_charts(1:3) |> echarts4r::e_line(1:3)
#'   )
#' }
ro_shiny_graph_mod_server <- function(id, render_fun, plot_data_fun) {
  moduleServer(id, function(input, output, session) {
    output$chart <- render_fun(plot_data_fun())
    # Remove aria-live from chart output
    session$onFlushed(
      function() {
        shinyjs::runjs(sprintf(
          "var el = document.getElementById('%s'); if(el) el.removeAttribute('aria-live');",
          session$ns("chart")
        ))
      },
      once = FALSE
    )
  })
}
