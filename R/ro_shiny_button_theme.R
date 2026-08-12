#' Button Theme CSS for Shiny Apps (RIVM Style)
#'
#' @description
#' Provides RIVM house style CSS for custom icon buttons in Shiny apps.
#' Includes styling for button appearance, hover/active/focus states, icon styling,
#' and button container layout.
#'
#' @return A \code{shiny.tags} object (HTML <head> tag) to be included at the top of your Shiny UI.
#'
#' @seealso \code{\link{ro_shiny_skip_link}},
#' \code{\link{ro_shiny_skip_link_style}}, \code{\link{ro_shiny_focus_style}},
#' \code{\link{ro_shiny_dt_responsive}}, \code{\link{ro_create_custom_button}},
#' \code{\link{ro_icon_download}}, \code{\link{ro_icon_table}}
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
ro_shiny_button_theme <- function() {
  tags$head(
    tags$style(HTML(
      "
    .custom-icon-btn {
      align-items: center; justify-content: center;
      background-color: white; border: 1px solid white; border-radius: 0px;
      cursor: pointer; margin-right: 5px; font-size: 12px; color: #154273;
      text-align: center; vertical-align: bottom; padding: 4px 4px; display: inline-flex; gap: 8px;
    }
    .custom-icon-btn:hover { background-color: #d4e8fb; border: 1px solid white; }
    .custom-icon-btn:active { background-color: white !important; box-shadow: none !important; }
    .custom-icon-btn:focus { outline: 1px solid #154273; background-color: white; }
    .custom-icon { fill: none; stroke: #154273; stroke-width: 1;
                    margin-right: 5px; vertical-align: bottom; display: inline-block; }
    .button-container { display: flex; justify-content: flex-end; gap: 10px; margin-bottom: 10px; }
  "
    ))
  )
}
