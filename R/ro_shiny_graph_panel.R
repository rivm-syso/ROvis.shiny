#' Graph Panel Module UI
#'
#' @description
#' Generates a Shiny UI module including a chart,
#' skip-link for accessibility, a table toggle button, download button, and a data table area.
#'
#' @param id Character. Module namespace ID.
#' @param plot_ui_fun Function. UI function to create the chart output (for example \code{plotlyOutput}).
#' @param sorting Logical. Should the table allow column sorting? Default is \code{FALSE}.
#' When used, apply the same in ro_shiny_graph_panel_server.
#'
#' @return A Shiny UI element (tagList) for use in a module UI.
#' @seealso \code{\link{ro_shiny_graph_panel_server}},
#' \code{\link{ro_shiny_skip_link}}, \code{\link{ro_shiny_skip_link_style}},
#' \code{\link{ro_shiny_focus_style}}, \code{\link{ro_shiny_button_theme}},
#' \code{\link{ro_shiny_dt_responsive}}, \code{\link{ro_shiny_screenreader}},
#' \code{\link{ro_icon_download}}, \code{\link{ro_shiny_graph_mod_ui}},
#' \code{\link{ro_show_table_ui}}, \code{\link{ro_shiny_download_ui}}
#' @export
#' @md
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @family DT
#' @examples
#' if (interactive()) {
#'   ro_shiny_graph_panel_ui("main", plotlyOutput)
#' }
ro_shiny_graph_panel_ui <- function(id, plot_ui_fun, sorting = FALSE) {
  ns <- NS(id)
  tagList(
    div(
      #Put the plot in a container, so the buttons stay together and resizing is going smoother
      class = "container",
      style = "max-width:800px;",
      useShinyjs(),
      ro_shiny_screenreader(),
      ro_shiny_skip_link(),
      ro_shiny_skip_link_style(),
      ro_shiny_focus_style(),
      ro_shiny_button_theme(),
      ro_shiny_dt_responsive(),
      ro_dt_theme(sorting = sorting),
      ro_ply_focus_linechart(),
      # skip-link
      tags$a(
        href = paste0("#", ns("data-table")),
        class = "ec-data-link sr-only sr-only-focusable",
        `aria-label` = "Sla de grafiek over en ga naar de datatabel",
        "Sla de grafiek over en ga naar de datatabel"
      ),
      ro_shiny_graph_mod_ui(ns("chart"), plot_ui_fun),
      div(
        class = "button-container",
        style = "display: flex; gap: 2px;",
        ro_show_table_ui(ns("table_toggle"), svg_path = ro_icon_table()),
        ro_shiny_download_ui(ns("download"), svg_path = ro_icon_download())
      ),
      uiOutput(ns("table_area"))
    )
  )
}

#' Graph Panel Module Server
#'
#' @description
#' Server logic for the graph panel module.
#' Handles rendering of the chart, toggling and displaying the table, and downloading data.
#'
#' @param id Character. Module namespace ID.
#' @param plot_render_fun Function. A Shiny render function
#'  (\code{plotly::renderPlotly}, \code{highcharter::renderHighchart}, etc.).
#' @param plot_data_fun Function. A function returning the data or plot object for the chart.
#' @param data Data frame or tibble. The data to be shown in the table and available for download.
#' @param caption Character. Caption/title for the data table.
#' @param sorting Logical. Should the table allow column sorting? Default is \code{FALSE}.
#' When used, apply the same in ro_shiny_graph_panel_ui.
#' @param pagelength Integer. Number of rows per page in the data table. Default is \code{10}.
#'
#'@return None. Sets up the server logic for the graph panel module.
#' @seealso \code{\link{ro_shiny_graph_panel_ui}}, \code{\link{ro_shiny_graph_mod_server}},
#' \code{\link{ro_show_table_server}}, \code{\link{ro_shiny_download_server}},
#' \code{\link{ro_icon_download}}, \code{\link{ro_shiny_dt_ui}},
#' \code{\link{ro_shiny_dt_server}}
#' @export
#' @md
#' @family ggplotly
#' @family plotly
#' @family echarts
#' @family DT
#' @examples
#' # In your Shiny server:
#' if (interactive()) {
#'   ro_shiny_graph_panel_server(
#'   id = "main",
#'   plot_render_fun = plotly::renderPlotly,
#'   plot_data_fun = function() plotly_obj,
#'   data = my_data,
#'   caption = "Aantal gevallen per groep",
#'   sorting = TRUE,
#'   pagelength = 20
#'   )
#' }
ro_shiny_graph_panel_server <- function(
  id,
  plot_render_fun,
  plot_data_fun,
  data,
  caption,
  sorting = FALSE,
  pagelength = 10
) {
  moduleServer(id, function(input, output, session) {
    ro_shiny_graph_mod_server("chart", plot_render_fun, plot_data_fun)
    toggle_table <- ro_show_table_server("table_toggle", svg_path = ro_icon_table())
    ro_shiny_download_server(
      "download",
      data_to_download = function() data,
      filename_prefix = "data",
      svg_path = ro_icon_download()
    )
    output$table_area <- renderUI({
      if (toggle_table$show_table()) {
        tagList(
          tags$div(
            id = session$ns("data-table"),
            tabindex = "-1",
            ro_shiny_dt_ui(session$ns("table_module"))
          )
        )
      } else {
        NULL
      }
    })
    ro_shiny_dt_server(
      "table_module",
      data,
      caption = caption,
      sorting = sorting,
      pagelength = pagelength
    )

    # Remove aria-live from table_area uiOutput
    session$onFlushed(
      function() {
        runjs(sprintf(
          "var el = document.getElementById('%s'); if(el) el.removeAttribute('aria-live');",
          session$ns("table_area")
        ))
      },
      once = FALSE
    )
  })
}
