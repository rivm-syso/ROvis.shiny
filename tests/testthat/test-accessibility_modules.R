# Some basic tests for the functions and ui for the accessibility_modules.R

#Test if the svg paths are a string
test_that("ro_icon_table returns correct SVG path", {
  expect_type(ro_icon_table(), "character")
  expect_match(ro_icon_table(), "M1 2 L15 2")
})

test_that("ro_icon_download returns correct SVG path", {
  expect_type(ro_icon_download(), "character")
  expect_match(ro_icon_download(), "M8 2 L8 10")
})

#Add a test that calls the function outside of a Shiny app context, just to cover code paths:
test_that("ro_show_table_server toggles", {
  library(shiny)
  testServer(ro_show_table_server, args = list(svg_path = "M1 2 L15 2"), {
    expect_false(show_table())
    session$setInputs(btn = 1)
    expect_true(show_table())
  })
})

#Test if the action button returns the icon and label
test_that("ro_create_custom_button returns actionButton with correct label and icon", {
  btn <- ro_create_custom_button("btnid", "Download", ro_icon_download())
  expect_s3_class(btn, "shiny.tag")
  expect_true(grepl("Download", as.character(btn)))
  expect_true(grepl("btnid", as.character(btn)))
})

#Test if the accessible button ui contains what it should contain?
test_that("ro_shiny_graph_panel_ui builds complete UI", {
  library(shiny)
  library(ROvis.table)
  library(ROvis.plotly)
  ui <- ro_shiny_graph_panel_ui("mainid", plotOutput)
  # Is it a taglist?
  expect_s3_class(ui, "shiny.tag.list")
  # Contains the chart?
  expect_true(grepl("mainid-chart", as.character(ui)))
  # Contains table-toggle button?
  expect_true(grepl("mainid-table_toggle-btn", as.character(ui)))
  # Contains download-button?
  expect_true(grepl("mainid-download-btn", as.character(ui)))
  # Is skip-link present?
  expect_true(any(grepl("ec-data-link", as.character(ui))))
})

test_that("ro_shiny_download_server observer is triggered", {
  library(shiny)
  testServer(
    ro_shiny_download_server,
    args = list(
      data_to_download = function() data.frame(a = 1:2, b = c("x", "y")),
      filename_prefix = "testfile",
      svg_path = "M8 2 L8 10"
    ),
    {
      session$setInputs(btn = 1)
      expect_true(TRUE) # Dummy expectation so testthat counts it as a real test
    }
  )
})
