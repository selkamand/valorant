test_that("val_strat_file_exists", {
  expect_true(
    file.exists(val_strat_filepath())
  )
})


test_that("val_strats_df exists", {
  expect_named(val_strats_df(), expected = c("Title", "Description", "Side", "Contributor"))

})

test_that("val_strats function works", {
  expect_error(val_strats(), NA)

  expect_true(is.character(val_strats()))
  expect_true(length(val_strats()) > 0)
})

test_that("Side is either Attacking, Defending, Or Both", {
  expect_true(all(val_strats_df()[['Side']] %in% c('Attacking', 'Defending', 'Both')))
})


test_that("val_strat function works", {
  expect_error(val_strat(), NA)

  expect_true(is.character(val_strat()))
  expect_true(length(val_strat()) == 1)
})
