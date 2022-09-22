
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

### Strat roulette

``` r
library(valorant)

# Get single strat for val roulette (don't format with html tags)
val_strat(html = FALSE)
#> [1] "assassin\n you can only kill the enemies if they are facing away from you"

# Get list of strats for val roulette
val_strats(html = FALSE)
#>  [1] "my ace\n you have to choose one player to be your dedicated pro player. the rest of the team must act as bait and do everything they can to allow the chosen one to ace."
#>  [2] "one shot one kill\n you must empty your guns before the round starts, leave only five bullets TOTAL. One for each enemy!"                                                
#>  [3] "spray 'n pray\n whenever you fire your gun, you must keep firing until your clip runs out"                                                                               
#>  [4] "bored of waiting\n if you die, you must watch tiktok/youtube on full volume on your phone"                                                                               
#>  [5] "assassin\n you can only kill the enemies if they are facing away from you"                                                                                               
#>  [6] "men\n if you are dead, you must backseat and mansplain valorant to the person you are spectating"                                                                        
#>  [7] "team spirit\n you have to constantly compliment EVERYTHING that your teammates do"                                                                                       
#>  [8] "can't find my glasses\n you have to aim down sight the entire round"                                                                                                     
#>  [9] "getting dizzy\n you must turn around 20 times in spawn before the round starts. after every kill, you must turn around 10 more times."                                   
#> [10] "planet of the apes\n you must only use shotgun for the entire round, and communicate in monkey noises"                                                                   
#> [11] "mission impossible\n you must play the mission impossible theme song on 100% volume, and only use ghost the entire round"                                                
#> [12] "feeling sleepy\n you must play on 1/4 of your normal sensitivity for the whole round"                                                                                    
#> [13] "respawn?\n your primary objective should be to get to the enemy team spawn. once you have reached their spawn, you can play the round as normal."                        
#> [14] "back it up\n you can only move by holding the 'S' key. No 'A', 'D', Or 'W' allowed"                                                                                      
#> [15] "press f to pay respects\n if a teammate dies, everyone must stop shooting for 10 seconds and mourn their loss."                                                          
#> [16] "firing squad\n everyone must buy an operator or marshal and move together as a group"                                                                                    
#> [17] "nerd\n you must start every sentence with fun fact for the whole round"                                                                                                  
#> [18] "it's the meta\n you cannot stand still while you shoot for the entire round. shotguns not allowed."                                                                      
#> [19] "hit list\n you must kill the enemy team in the order of their leaderboard, from highest to lowest."                                                                      
#> [20] "i got my one\n once you get a kill, you must run back to spawn (you can play again if everyone else dies)"                                                               
#> [21] "iron cosplay\n turn on inverted mouse in your settings and attempt to kill"                                                                                              
#> [22] "cracked\n you must prefire EVERYTHING for the entire round"                                                                                                              
#> [23] "bounty hunters\n you must nominate one player on the enemy team to be your target. you cannot shoot the other players until your target is dead."                        
#> [24] "throwing\n nominate two players to throw the round. they must do everything in their power to stop the other three from getting kills."                                  
#> [25] "my keyboard broke\n you must hold the d key for the entire round no matter what"                                                                                         
#> [26] "sharing is caring\n only one gun can be bought for the entire team. you can pick up the gun if the user dies."                                                           
#> [27] "feeling cheeky\n everything you say for the entire round must be sus asf. even while making call-outs/talking to teammates."                                             
#> [28] "throwing my elo\n if you die, you have to spend the rest of the round blaming your teammates."                                                                           
#> [29] "run 'n gun\n buy spectres (or frenzy's if you're broke). Once the round starts don't stop sprinting. Not even to plant spike!"                                           
#> [30] "bo'oh' o wo'ah\n put on your worst british accent for the entire round"                                                                                                  
#> [31] "flicked on\n you have to triple your sensitivity the entire round and only use a marshal"
```

### Agent Roulette

``` r
agent_roulette_customs_visualise()
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
