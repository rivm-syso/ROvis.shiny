# Skip Link JavaScript Handlers for Shiny Apps

Provides JavaScript handlers for skip links in Shiny apps. Skip links
allow keyboard users to jump directly to the data table, bypassing the
chart. Includes download CSV handler and skip-link navigation logic.

## Usage

``` r
ro_shiny_skip_link()
```

## Value

A `shiny.tags` object (HTML

tag) to be included at the top of your Shiny UI.

## Details

This function provides JavaScript functionality only. Use with
[`ro_shiny_screenreader`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_screenreader.md)
(for `.sr-only` base class) and
[`ro_shiny_skip_link_style`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link_style.md)
(for `.sr-only-focusable` styling).

## See also

[`ro_shiny_skip_link_style`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link_style.md),
[`ro_shiny_focus_style`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_focus_style.md),
[`ro_shiny_button_theme`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_graph_panel_ui`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_screenreader`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_screenreader.md)

Other shiny:
[`ro_shiny_button_theme()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_focus_style()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_focus_style.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_screenreader.md),
[`ro_shiny_skip_link_style()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link_style.md)

## Examples

``` r
if (interactive()) {
  ui <- fluidPage(
    ro_shiny_screenreader(),
    ro_shiny_skip_link(),
    ro_shiny_skip_link_style(),
    ro_shiny_focus_style(),
    ro_shiny_button_theme(),
    ro_shiny_dt_responsive(),
    # ... your app UI ...
  )
  server <- function(input, output, session) {}
  shinyApp(ui, server)
}
```
