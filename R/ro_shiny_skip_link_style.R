#' Skip Link CSS Styling for Shiny Apps (RIVM Style)
#'
#' @description
#' Provides RIVM house style CSS for skip links in Shiny apps.
#' Styles the \code{.sr-only-focusable} class to make skip links visible
#' when focused, using RIVM brand colors.
#'
#' @return A \code{shiny.tags} object (HTML <head> tag) to be included at the top of your Shiny UI.
#'
#' @details
#' This provides styling for \code{.sr-only-focusable} which extends the
#' \code{.sr-only} base class from \code{\link{ro_shiny_screenreader}}.
#' Use together with \code{\link{ro_shiny_skip_link}} for full skip-link functionality.
#'
#' @seealso \code{\link{ro_shiny_skip_link}},
#' \code{\link{ro_shiny_focus_style}}, \code{\link{ro_shiny_button_theme}},
#' \code{\link{ro_shiny_dt_responsive}}, \code{\link{ro_shiny_screenreader}}
#' @family shiny
#' @keywords internal
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
ro_shiny_skip_link_style <- function() {
  tags$head(
    tags$style(HTML("
    /* Skip-link focusable styles (use with .sr-only from ro_shiny_screenreader) */
    .sr-only-focusable:active,
    .sr-only-focusable:focus {
      position: static !important;
      width: auto;
      height: auto;
      margin: 0;
      overflow: visible;
      clip: auto;
      color: #01689b;
      border: 0;
      z-index: 99999;
      font-size: 1em;
      text-decoration: underline;
      outline: 2px dotted #000;
      outline-offset: 0;
    }
    .sr-only-focusable:focus:hover,
    .sr-only-focusable:focus:active {
      color: #154273;
      text-decoration: underline;
      border: 0;
    }
  "))
  )
}
