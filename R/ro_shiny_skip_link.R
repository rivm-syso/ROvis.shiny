#' Skip Link JavaScript Handlers for Shiny Apps
#'
#' @description
#' Provides JavaScript handlers for skip links in Shiny apps.
#' Skip links allow keyboard users to jump directly to the data table,
#' bypassing the chart. Includes download CSV handler and skip-link navigation logic.
#'
#' @return A \code{shiny.tags} object (HTML <head> tag) to be included at the top of your Shiny UI.
#'
#' @details
#' This function provides JavaScript functionality only.
#' Use with \code{\link{ro_shiny_screenreader}} (for \code{.sr-only} base class)
#' and \code{\link{ro_shiny_skip_link_style}} (for \code{.sr-only-focusable} styling).
#'
#' @seealso \code{\link{ro_shiny_skip_link_style}},
#' \code{\link{ro_shiny_focus_style}}, \code{\link{ro_shiny_button_theme}},
#' \code{\link{ro_shiny_dt_responsive}}, \code{\link{ro_shiny_graph_panel_ui}},
#' \code{\link{ro_shiny_screenreader}}
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
ro_shiny_skip_link <- function() {
  tags$head(
    tags$script(HTML("
    Shiny.addCustomMessageHandler('download_csv', function(params) {
      var link = document.createElement('a');
      link.href = 'data:text/csv;charset=utf-8,' + encodeURIComponent(params.filepath);
      link.download = params.filename;
      link.click();
    });
    // Accessible skip-link handler
    document.addEventListener('DOMContentLoaded', function() {
      var skipLink = document.querySelector('.ec-data-link');
      if (skipLink) {
        skipLink.addEventListener('click', function(e) {
          var showBtn = document.getElementById('table_toggle-btn');
          if (showBtn && /Show|Toon/i.test(showBtn.innerText)) {
            showBtn.click();
          }
        });
      }
    });
  ")),
    #Skip link action
    tags$script(HTML("
    $(document).on('click', '.ec-data-link', function(e) {
      // Find the skip-link's href (e.g., #myModule-data-table)
      var anchorId = $(this).attr('href');
      // Try to find the module prefix from the skip-link's own href/id
      var $module = $(this).closest('.shiny-html-output, .shiny-bound-output').parent();
      // Try to find the toggle button within this module
      var showBtn = $module.find('[id$=\"table_toggle-btn\"]');
      // If not found, try globally (fallback)
      if (showBtn.length === 0) showBtn = $('[id$=\"table_toggle-btn\"]');
      // Only click if the table is hidden
      if (showBtn.length && showBtn.text().match(/Show|Toon/i)) {
        showBtn.click();
        // Wait for UI to update, then move focus to the anchor
        setTimeout(function() {
          var $anchor = $(anchorId);
          if($anchor.length) {
            $anchor.focus();
            // For extra accessibility, scroll to it as well
            window.scrollTo({top: $anchor.offset().top - 20, behavior: 'smooth'});
          }
        }, 400);
        e.preventDefault();
        return false;
      } else {
        // Table is already visible, just focus/scroll to anchor
        setTimeout(function() {
          var $anchor = $(anchorId);
          if($anchor.length) {
            $anchor.focus();
            window.scrollTo({top: $anchor.offset().top - 20, behavior: 'smooth'});
          }
        }, 100);
      }
    });
    "))
  )
}
