# Focus Indicators CSS for Shiny Apps

Provides CSS for focus indicators on all interactive elements in Shiny
apps. Ensures keyboard users can see which element currently has focus,
improving accessibility and keyboard navigation.

## Usage

``` r
ro_shiny_focus_style()
```

## Value

A `shiny.tags` object (HTML

tag) to be included at the top of your Shiny UI.

## See also

[`ro_shiny_skip_link`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link.md),
[`ro_shiny_skip_link_style`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_skip_link_style.md),
[`ro_shiny_button_theme`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_responsive.md)

Other shiny:
[`ro_shiny_button_theme()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/reference/ro_shiny_dt_responsive.md),
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
