#' Focus Indicators CSS for Shiny Apps
#'
#' @description
#' Provides CSS for focus indicators on all interactive elements in Shiny apps.
#' Ensures keyboard users can see which element currently has focus, improving
#' accessibility and keyboard navigation.
#'
#' @return A \code{shiny.tags} object (HTML <head> tag) to be included at the top of your Shiny UI.
#'
#' @seealso \code{\link{ro_shiny_skip_link}},
#' \code{\link{ro_shiny_skip_link_style}}, \code{\link{ro_shiny_button_theme}},
#' \code{\link{ro_shiny_dt_responsive}}
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
ro_shiny_focus_style <- function() {
  tags$head(
    tags$style(HTML(
      "
   /* focus-indicator for all elements */
    a:focus, a:focus-visible,
    button:focus, button:focus-visible,
    input:focus, input:focus-visible,
    select:focus, select:focus-visible,
    textarea:focus, textarea:focus-visible,
    [tabindex]:focus, [tabindex]:focus-visible,
    .custom-icon-btn:focus, .custom-icon-btn:focus-visible
    {
      outline: 2px dotted #000 !important;
      outline-offset: 0 !important;
      z-index: 10;
    }
  "
    ))
  )
}
