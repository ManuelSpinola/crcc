#'
#' @name cr_historic_worldclim
#'
#' @title Download historic climate data for Costa Rica
#'
#' @description This function allows you to parse from worldclim version 2.1
#' historic climatic files for Costa Rica.
#'
#' This function is a wrapper of the worldclim2 function from the \href{https://lleisong.github.io/itsdm/index.html}{itsdm} package.
#'
#' @usage cr_historic_worldclim(var, res, path, return_stack)
#'
#' @param var (\code{character}) The option for the variable to download.
#' Should be one of tmin, tmax, prec, bio.
#' The default is tmin.
#'
#' @param res (\code{numeric}) The option for the resolution of image to
#' download. Should be one of 0.5, 2.5, 5, 10. The default is 10.
#'
#' @param path (\code{character}) The path to save the downloaded imagery.
#' If \code{NULL}, it would use the current working directory.
#' The default is \code{NULL}.
#'
#' @param return_stack (\code{logical}) if \code{TRUE}, stack the imagery
#' together and return.
#' If the area is large and resolution is high, it is better not to stack them.
#' The default is \code{TRUE}.
#'
#' @return if \code{return_stack} is \code{TRUE}, the images would be
#' returned as a \code{stars}. Otherwise, nothing to return, but the user
#' would receive a message of where the images are.
#'
#' @references
#' Fick, Stephen E., and Robert J.
#' Hijmans. "WorldClim 2: new 1-km spatial resolution climate surfaces for
#' global land areas." \emph{International journal of climatology}
#' 37.12 (2017): 4302-4315.\doi{10.1002/joc.5086}
#'
#' @details
#' \href{https://worldclim.org/data/index.html}{Web page page for this dataset}
#'
#' @note
#' If it fails due to slow internet, try to set a larger timeout option,
#' e.g., using `options(timeout = 1e3)`.
#'
#'
#' @examples
#'
#' climate <- cr_historic_worldclim(var = "tmax",
#'   res = 10,
#'   path = tempdir(),
#'   return_stack = TRUE)
#'
#' @export

library(stars)

cr_historic_worldclim <- function(var, res, path, return_stack) {
  # Load the necessary packages
  library(itsdm)
  library(crgeo)

  # Download the data
  data <- worldclim2(var, res, bry = cr_outline_c, path, return_stack)

  # Return the data
  return(data)
}
