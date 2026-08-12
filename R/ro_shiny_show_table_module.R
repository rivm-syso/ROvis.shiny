#' Table Toggle Button Module UI
#'
#' @description
#' Creates a Shiny action button with an SVG icon to toggle table visibility.
#'
#' @param id Character. The module namespace ID.
#' @param label_show Character. Label shown when table is hidden. Default is "Toon tabel".
#' @param label_hide Character. Label shown when table is visible. Default is "Verberg tabel".
#' @param svg_path Character. SVG path data for the icon.
#' @family DT
#' @return A Shiny UI element (action button) for use in a module UI.
#' @seealso \code{\link{ro_show_table_server}}, \code{\link{ro_shiny_graph_panel_ui}}
#'
#' @examples
#' if (interactive()) {
#' ro_show_table_ui(
#'   id = "toggle1",
#'   svg_path = ro_icon_table()
#' )
#' }
ro_show_table_ui <- function(id, label_show = "Toon tabel", label_hide = "Verberg tabel", svg_path) {
  ns <- NS(id)
  actionButton(
    ns("btn"),
    label = span(
      tags$svg(width = 19, height = 19, viewBox = "0 0 16 16", class = "custom-icon", tags$path(d = svg_path)),
      label_show
    ),
    class = "custom-icon-btn"
  )
}

#' Table Toggle Button Module Server
#'
#' @description
#' Server logic for toggling the table visibility button and updating its label/icon.
#'
#' @param id Character. The module namespace ID.
#' @param svg_path Character. SVG path data for the icon.
#' @param label_show Character. Label shown when table is hidden. Default is "Toon tabel".
#' @param label_hide Character. Label shown when table is visible. Default is "Verberg tabel".
#' @family DT
#' @return A list with a reactiveVal `show_table`, indicating whether the table is shown.
#' @seealso \code{\link{ro_show_table_ui}}, \code{\link{ro_shiny_graph_panel_server}}
#'
#' @examples
#' if (interactive()) {
#'   ro_show_table_server(
#'     id = "toggle1",
#'     svg_path = ro_icon_table()
#'   )
#' }
ro_show_table_server <- function(id, svg_path, label_show = "Toon tabel", label_hide = "Verberg tabel") {
  moduleServer(id, function(input, output, session) {
    show_table <- reactiveVal(FALSE)
    observeEvent(input$btn, {
      show_table(!show_table())
      updateActionButton(
        session,
        "btn",
        label = HTML(
          paste0(
            "<svg width=\"19\" height=\"19\" viewBox=\"0 0 16 16\" class=\"custom-icon\">",
            "<path d=\"",
            svg_path,
            "\"></path>",
            "</svg> ",
            if (show_table()) label_hide else label_show
          )
        )
      )
    })
    # Remove aria-live from button
    session$onFlushed(
      function() {
        runjs(sprintf(
          "var el = document.getElementById('%s'); if(el) el.removeAttribute('aria-live');",
          session$ns("btn")
        ))
      },
      once = FALSE
    )
    return(list(show_table = show_table))
  })
}
