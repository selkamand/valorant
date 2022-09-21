val_strats_df <- function(){
  strats_df <- utils::read.csv(val_strat_filepath(), sep = "\t", header = TRUE)

  if(!all(c("Title", "Description", "Side", "Contributor") %in% colnames(strats_df)))
    stop('Strats dataframe must contain the following columns: c("Title", "Description", "Side", "Contributor")')

  return(strats_df)
}


val_strat_filepath <- function(){
  path = system.file(package='valorant', 'strat_roulette.tsv')

  if(!file.exists(path)) {
    stop('Could not find file at path [', system.file(package='valorant', 'strat_roulette2.tsv'), ']. please report this error message to app developer by creating a new github issue')
  }
  return(path)
}

val_strats_dataframe <- function(side = c('Both', 'Attacking', 'Defending'), seed = NULL){
  side = rlang::arg_match(side)

#  browser()
  strats_df <- val_strats_df()
  strats_filtered <- strats_df[strats_df$Side == side,]

  if(!is.null(seed))
    set.seed(seed = seed)

  rows = sample(seq_along(strats_filtered[[1]]), size = nrow(strats_filtered))

  strats_filtered <- strats_filtered[rows,]

  return(strats_filtered)
}


val_strat_to_strings <- function(df){
  paste0(
    df$Title, ': ', df$Description
    )
}


#' Valorant Strats
#'
#' Get vector of random valorant stats
#'
#' @param side one of 'Both', 'Attacking', 'Defending'
#' @param seed random seed (numeric)
#'
#' @return vector of strings containing valorant strats
#' @export
#'
#' @examples
#' val_strats()
val_strats <- function(side = c('Both', 'Attacking', 'Defending'), seed = NULL){
  val_strat_to_strings(
    val_strats_dataframe(side = side, seed = seed)
  )
}


# val_strat_single <- function(side = c('Both', 'Attacking', 'Defending'), seed = NULL){
#
#   val_strats_filtered = val_strats_df[val_strats_df[['Side']] == side,]
#
#   sample(
#     seq_along(val_strats_filtered[[1]]),
#     size = 1
#   )
#
#
# }
# s |> dplyr::mutate(Description = stringr::str_replace_all(Description, '\x92', "'")) |> tidyr::extract(Description, into = c("Title", "D"), regex = "(^.*?) ?-(.*)$", remove = FALSE) |> View()
