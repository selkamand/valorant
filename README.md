
<!-- README.md is generated from README.Rmd. Please edit that file -->

# valorant

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/valorant)](https://CRAN.R-project.org/package=valorant)
<!-- badges: end -->

Just a silly little R package I’m using to practice hosting of shiny web
apps

## Installation

You can install the development version of valorant like so:

``` r
remotes::install_github('selkamand/valorant')
```

## Usage

This is a basic example which shows you how to solve a common problem:

``` r
library(valorant)


# Get strats for val roulette
val_strats()
#>  [1] "cracked:  you must prefire EVERYTHING for the entire round"                                                                                                              
#>  [2] "flicked on:  you have to triple your sensitivity the entire round and only use a marshal"                                                                                
#>  [3] "it's the meta:  you cannot stand still while you shoot for the entire round. shotguns not allowed."                                                                      
#>  [4] "firing squad:  everyone must buy an operator or marshal and move together as a group"                                                                                    
#>  [5] "mission impossible:  you must play the mission impossible theme song on 100% volume, and only use ghost the entire round"                                                
#>  [6] "iron cosplay:  turn on inverted mouse in your settings and attempt to kill"                                                                                              
#>  [7] "bo'oh' o wo'ah:  put on your worst british accent for the entire round"                                                                                                  
#>  [8] "sharing is caring:  only one gun can be bought for the entire team. you can pick up the gun if the user dies."                                                           
#>  [9] "nerd:  you must start every sentence with fun fact for the whole round"                                                                                                  
#> [10] "team spirit:  you have to constantly compliment EVERYTHING that your teammates do"                                                                                       
#> [11] "feeling cheeky:  everything you say for the entire round must be sus asf. even while making call-outs/talking to teammates."                                             
#> [12] "my ace:  you have to choose one player to be your dedicated pro player. the rest of the team must act as bait and do everything they can to allow the chosen one to ace."
#> [13] "bored of waiting:  if you die, you must watch tiktok/youtube on full volume on your phone"                                                                               
#> [14] "spray 'n pray:  whenever you fire your gun, you must keep firing until your clip runs out"                                                                               
#> [15] "throwing:  nominate two players to throw the round. they must do everything in their power to stop the other three from getting kills."                                  
#> [16] "bounty hunters:  you must nominate one player on the enemy team to be your target. you cannot shoot the other players until your target is dead."                        
#> [17] "press f to pay respects:  if a teammate dies, everyone must stop shooting for 10 seconds and mourn their loss."                                                          
#> [18] "feeling sleepy:  you must play on 1/4 of your normal sensitivity for the whole round"                                                                                    
#> [19] "can't find my glasses:  you have to aim down sight the entire round"                                                                                                     
#> [20] "assassin:  you can only kill the enemies if they are facing away from you"                                                                                               
#> [21] "my keyboard broke:  you must hold the d key for the entire round no matter what"                                                                                         
#> [22] "hit list:  you must kill the enemy team in the order of their leaderboard, from highest to lowest."                                                                      
#> [23] "planet of the apes:  you must only use shotgun for the entire round, and communicate in monkey noises"                                                                   
#> [24] "back it up:  you can only move by holding the 'S' key. No 'A', 'D', Or 'W' allowed"                                                                                      
#> [25] "throwing my elo:  if you die, you have to spend the rest of the round blaming your teammates."                                                                           
#> [26] "run 'n gun:  buy spectres (or frenzy's if you're broke). Once the round starts don't stop sprinting. Not even to plant spike!"                                           
#> [27] "men:  if you are dead, you must backseat and mansplain valorant to the person you are spectating"                                                                        
#> [28] "one shot one kill:  you must empty your guns before the round starts, leave only five bullets TOTAL. one for each enemy ??"                                              
#> [29] "i got my one:  once you get a kill, you must run back to spawn (you can play again if everyone else dies)"                                                               
#> [30] "respawn?:  your primary objective should be to get to the enemy team spawn. once you have reached their spawn, you can play the round as normal."                        
#> [31] "getting dizzy:  you must turn around 20 times in spawn before the round starts. after every kill, you must turn around 10 more times."
```
