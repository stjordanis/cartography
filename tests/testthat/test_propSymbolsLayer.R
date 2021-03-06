context("Plot Proportional Symbols")

test_that("plots are plotting", {
plot(st_geometry(mtq))
  expect_silent(propSymbolsLayer(mtq, var="POP", add=TRUE))
  plot(st_geometry(mtq))
  expect_silent(propSymbolsLayer(mtq, var="POP", add=TRUE, symbols = "square"))
  plot(st_geometry(mtq))
  expect_error(propSymbolsLayer(mtq, var="POP", breakval = 10000,add=TRUE))
  plot(st_geometry(mtq))
  expect_silent(propSymbolsLayer(mtq, var="POP", add=TRUE, symbols = "bar"))
  plot(st_geometry(mtq))
  expect_silent(propSymbolsLayer(mtq, var="POP", add=TRUE, symbols = "square"))
  plot(st_geometry(mtq))
  expect_silent(propSymbolsLayer(spdf = as(mtq, "Spatial"), var="POP", add=TRUE))
  plot(st_geometry(mtq))
  expect_silent(propSymbolsLayer(mtq, var="POP", fixmax = 100000,add=TRUE))
  expect_silent(propSymbolsLayer(mtq, var="POP", add=FALSE))
})
