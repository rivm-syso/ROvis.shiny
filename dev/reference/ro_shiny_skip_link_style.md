# Skip Link CSS Styling for Shiny Apps (RIVM Style)

Provides RIVM house style CSS for skip links in Shiny apps. Styles the
`.sr-only-focusable` class to make skip links visible when focused,
using RIVM brand colors.

## Usage

``` r
ro_shiny_skip_link_style()
```

## Value

A `shiny.tags` object (HTML

tag) to be included at the top of your Shiny UI.

## Details

This provides styling for `.sr-only-focusable` which extends the
`.sr-only` base class from
[`ro_shiny_screenreader`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md).
Use together with
[`ro_shiny_skip_link`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md)
for full skip-link functionality.

## See also

[`ro_shiny_skip_link`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md),
[`ro_shiny_focus_style`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_focus_style.md),
[`ro_shiny_button_theme`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_screenreader`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md)

Other shiny:
[`ro_shiny_button_theme()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_button_theme.md),
[`ro_shiny_dt_responsive()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_dt_responsive.md),
[`ro_shiny_focus_style()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_focus_style.md),
[`ro_shiny_screenreader()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_screenreader.md),
[`ro_shiny_skip_link()`](https://rivm-syso.github.io/ROvis.shiny/dev/reference/ro_shiny_skip_link.md)

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
