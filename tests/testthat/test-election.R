test_that("election rejects errounous input", {
  expect_error(el_object <- election$new("Ankara"))
  expect_error(el_object <- election$new("stockholm"))
  expect_error(eel_objectl <- election$new(Malmo))
  expect_error(el_object <- election$new("Upsala"))
  expect_error(el_object <- election$new(0180))
  
})

test_that("class is not correct", {
  el_object <- election$new("Stockholm")
  fs <- el_object$participation_rate()
  expect_false(is.vector(fs))
  expect_false(is.array(fs))
  expect_false(is.table(fs))
  
})

test_that("participation_rate method works", {
  el_object <- election$new("Stockholm")
  fs <- el_object$participation_rate()
  expect_true(is.data.frame(fs))
  expect_equal(round(unlist(fs[,4][c(1)]), 3), c(80.965))
  
})

test_that("political_party method works", {
  el_object <- election$new("Malmo")
  fs <- el_object$political_party()
  expect_true(is.data.frame(fs))
  expect_equal(round(unlist(fs[,4][c(1)]), 4), c(2.7079))
})

test_that("first_vote method works", {
  el_object <- election$new("Uppsala")
  fs <- el_object$first_vote()
  expect_true(is.data.frame(fs))
  expect_equal(unlist(fs[,4][c(1)]), c(90))
  
})