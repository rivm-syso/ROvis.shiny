# Button Theme CSS for Shiny Apps (RIVM Style)

Provides RIVM house style CSS for custom icon buttons in Shiny apps.
Includes styling for button appearance, hover/active/focus states, icon
styling, and button container layout.

## Usage

``` r
ro_shiny_button_theme()
```

## Value

A `shiny.tags` object (HTML

tag) to be included at the top of your Shiny UI.

## See also

[`ro_shiny_skip_link`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md),
[`ro_shiny_skip_link_style`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link_style.md),
[`ro_shiny_focus_style`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_focus_style.md),
[`ro_shiny_dt_responsive`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_create_custom_button`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_create_custom_button.md),
[`ro_icon_download`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_download.md),
[`ro_icon_table`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_icon_table.md)

Other shiny:
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_focus_style()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_focus_style.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md),
[`ro_shiny_skip_link()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md),
[`ro_shiny_skip_link_style()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link_style.md)

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
