
#' List valorant agents
#'
#' @return character vector
#' @export
#'
#' @examples
#' valorant_agents()
valorant_agents <- function(){
  c(
    "Fade",
    "Neon",
    "Chamber",
    "Skye",
    "Yoru",
    "Astra",
    "KAY/O",
    "Phoenix",
    "Raze",
    "Brimstone",
    "Jett",
    "Sage",
    "Viper",
    "Breach",
    "Cypher",
    "Sova",
    "Omen",
    "Reyna",
    "Killjoy"
  )
}

agent_roulette_single_team <- function(nplayers = 5, agents_to_exclude = NULL){
  assertthat::assert_that(nplayers <= 5 & nplayers > 0, msg = "Valorant teams must have 1-5 players")

  agent_pool <- valorant_agents()
  if(!is.null(agents_to_exclude)){
    assertthat::assert_that(all(tolower(agents_to_exclude) %in% tolower(agent_pool)), msg = paste0("Failed to recognise agent name [", agents_to_exclude[! tolower(agents_to_exclude) %in% tolower(agent_pool)], ']'))
    agent_pool <- agent_pool[!tolower(agent_pool) %in% tolower(agents_to_exclude)]
  }

  assertthat::assert_that(length(agent_pool) >= nplayers, msg = "Too few agents to select from for a team of this size")

  agents = sample(agent_pool, size = nplayers, replace = FALSE)
  return(agents)
}

agent_roulette_two_teams <- function(attacking_nplayers = 5, defending_nplayers =5, agents_to_exclude = NULL){
  attackteam <- agent_roulette_single_team(nplayers = attacking_nplayers, agents_to_exclude = agents_to_exclude)
  defenceteam <- agent_roulette_single_team(nplayers = defending_nplayers, agents_to_exclude = agents_to_exclude)

  df <- data.frame(
    team = c(rep("ATTACKERS", times = attacking_nplayers), rep("DEFENDERS", times = defending_nplayers)),
    agent = c(attackteam, defenceteam),
    pos = c((5:1)[seq_along(attackteam)], (5:1)[seq_along(defenceteam)])
  )
  return(df)
}

#' Create Agent Roulette Visualisation
#'
#' @param attacking_nplayers number of players on attacking team
#' @param defending_nplayers number of players on defending team
#' @param agents_to_exclude agents to exclude from the selection
#'
#' @return ggplot2
#' @export
#'
#' @examples
#' agent_roulette_two_teams_visualise()
agent_roulette_customs_visualise <- function(attacking_nplayers = 5, defending_nplayers =5, agents_to_exclude = NULL){
  df = agent_roulette_two_teams(attacking_nplayers = attacking_nplayers, defending_nplayers =defending_nplayers, agents_to_exclude = agents_to_exclude)

  ggplot2::ggplot(
    data = df,
    ggplot2::aes(team, y = pos, label=agent, fill = team)
  ) +
    ggplot2::geom_tile(colour = "black", show.legend = FALSE) +
    ggplot2::scale_fill_manual(values = c("ATTACKERS" = "#985c71", "DEFENDERS" = "#5d9aaf")) +
    ggplot2::geom_text(colour = "white", fontface = "bold") +
    ggplot2::facet_wrap(facets = "team", ncol = 2, scales = "free_x") +
    ggplot2::theme_minimal() +
    ggplot2::theme(
      panel.grid.major = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = c("black")),
      strip.text = ggplot2::element_text(colour = "white", face = "bold", size = 12),
      axis.text = ggplot2::element_blank(),
      axis.title = ggplot2::element_blank()
      )
}
