# Responsive DataTables CSS for Shiny Apps

Provides CSS to make DataTables responsive in Shiny apps. Enables
horizontal scrolling for tables on small screens, ensuring tables remain
usable on mobile devices and narrow viewports.

## Usage

``` r
ro_shiny_dt_responsive()
```

## Value

A `shiny.tags` object (HTML

tag) to be included at the top of your Shiny UI.

## See also

[`ro_shiny_skip_link`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link.md),
[`ro_shiny_skip_link_style`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link_style.md),
[`ro_shiny_focus_style`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_focus_style.md),
[`ro_shiny_button_theme`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_ui`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_ui.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_server.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_download_ui.md),
[`ro_shiny_dt_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_server.md),
[`ro_shiny_dt_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_graph_panel_ui.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_screenreader.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_show_table_ui.md)

Other shiny:
[`ro_shiny_button_theme()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_button_theme.md),
[`ro_shiny_focus_style()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_focus_style.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_screenreader.md),
[`ro_shiny_skip_link()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link.md),
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
