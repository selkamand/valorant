test_that("agent roulette works", {

  expect_true(is.character(valorant_agents()))

  expect_error(agent_roulette_customs_visualise(), NA)
  expect_s3_class(agent_roulette_customs_visualise(), class = "ggplot")
})
