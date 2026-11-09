# Screen Reader Only CSS Classes for Shiny Apps

Provides general-purpose CSS classes that visually hide content while
keeping it accessible to screen readers. Includes `.sr-only` and
`.visually-hidden` classes.

## Usage

``` r
ro_shiny_screenreader()
```

## Value

A `shiny.tags` object with a `<head>` tag containing screen reader only
CSS classes.

## See also

[`ro_shiny_skip_link`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md),
[`ro_shiny_skip_link_style`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link_style.md),
[`ro_shiny_dt_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_ui`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_ui.md)

Other DT:
[`ro_create_custom_button()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_create_custom_button.md),
[`ro_icon_download()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_download.md),
[`ro_icon_table()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_table.md),
[`ro_shiny_download_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_server.md),
[`ro_shiny_download_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_download_ui.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_dt_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_server.md),
[`ro_shiny_dt_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_ui.md),
[`ro_shiny_graph_panel_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_server.md),
[`ro_shiny_graph_panel_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_graph_panel_ui.md),
[`ro_show_table_server()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_server.md),
[`ro_show_table_ui()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_show_table_ui.md)

Other shiny:
[`ro_shiny_button_theme()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_focus_style()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_focus_style.md),
[`ro_shiny_skip_link()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md),
[`ro_shiny_skip_link_style()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link_style.md)

## Examples

``` r
if (interactive()) {
  ui <- fluidPage(
    ro_dt_theme(sorting = FALSE),
    ro_shiny_screenreader(),
    DTOutput("mytable")
  )
  server <- function(input, output, session) {
    output$mytable <- renderDT(datatable(iris, options(list(ordering=FALSE))))
  }
  shinyApp(ui, server)
}
```
