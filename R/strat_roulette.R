val_strats_df <- function(){
  strats_df <- utils::read.csv(val_strat_filepath(), sep = "\t", header = TRUE)

  return(strats_df)
}


val_strat_filepath <- function(){
  path = system.file(package='valorant', 'strat_roulette.tsv')

  return(path)
}

val_strats_dataframe <- function(side = c('Both', 'Attacking', 'Defending'), seed = NULL){
  side = rlang::arg_match(side)

  # If user wants attacking strats - include those that can be either attacking/defending. Same if requesting defender strats
  if(side == "Attacking" | side == "Defending")
    side <- c(side, "Both")

  strats_df <- val_strats_df()
  strats_filtered <- strats_df[strats_df$Side %in% side,]

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


val_strat_to_strings <- function(df, html=TRUE){
  if(html){
   title = paste0(
     '<strong>',df$Title,':', '</strong>','<br/>'
   )
   description = paste0(
     '<p>', df$Description, '</p>'
   )
  }
  else{
   title = paste0(df$Title, '\n')
   description = df$Description
  }

  paste0(
    title,description
  )
}

#' Valorant Strats
#'
#' Get vector of random valorant strats
#'
#' @param side one of 'Both', 'Attacking', 'Defending'
#' @param seed random seed (numeric)
#' @param html should html formatting tags be added (flag)
#'
#' @return vector of strings containing valorant strats
#' @export
#'
#' @examples
#' val_strats()
val_strats <- function(side = c('Both', 'Attacking', 'Defending'), seed = NULL, html=TRUE){
  val_strat_to_strings(
    val_strats_dataframe(side = side, seed = seed), html = html
  )
}


#' Valorant Strats
#'
#' Get a single random valorant strat
#'
#' @inheritParams val_strats
#'
#' @return vector of strings containing valorant strats
#' @export
#'
#' @examples
#' val_strat()
val_strat <- function(side = c('Both', 'Attacking', 'Defending'), seed = NULL, html=TRUE){
  val_strats(side = side, seed = seed, html = html)[1]
}
