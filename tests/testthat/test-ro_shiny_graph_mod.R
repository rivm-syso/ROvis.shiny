# Some basic tests for the functions and ui for the generic_chart.R

#Basic test to check if the ui returns a shiny.tag and id
test_that("ro_shiny_graph_mod_ui returns correct UI element", {
  library(shiny)
  ui <- ro_shiny_graph_mod_ui("testid", shiny::plotOutput)
  expect_s3_class(ui, "shiny.tag")
  expect_true(grepl("testid-chart", as.character(ui)))
})
