#'
#' @name cr_future_worldclim
#'
#' @title Download future climate data for Costa Rica.
#'
#' @description This function allows you to parse from worldclim version 2.1
#' future climatic files for Costa Rica.
#'
#' This function is a wrapper of the future_worldclim2 function from the \href{https://lleisong.github.io/itsdm/index.html}{itsdm} package.
#'
#' @usage cr_future_worldclim(var, res, gcm, ssp, interval, path, return_stack)
#'
#' @param var (\code{character}) The option for the variable to download.
#' Should be one of tmin, tmax, prec, bioc.
#' The default is tmin.
#'
#' @param res (\code{numeric}) The option for the resolution of image to
#' download. Should be one of 0.5, 2.5, 5, 10. The default is 10.
#'
#' @param gcm (\code{character}) The option for global climate models.
#' Check https://www.worldclim.org for all available GCM. Those are, "ACCESS-CM2", "ACCESS-ESM1-5", "BCC-CSM2-MR", "CanESM5", "CanESM5-CanOE", "CMCC-ESM2", "CNRM-CM6-1", "CNRM-CM6-1-HR", "CNRM-ESM2-1", "EC-Earth3-Veg", "EC-Earth3-Veg-LR", "FIO-ESM-2-0", "GISS-E2-1-G", "GISS-E2-1-H", "HadGEM3-GC31-LL", "INM-CM4-8", "INM-CM5-0", "IPSL-CM6A-LR", "MIROC-ES2L", "MIROC6","MPI-ESM1-2-HR", "MPI-ESM1-2-LR", "MRI-ESM2-0", "UKESM1-0-LL"
#'
#' @param ssp (\code{character}) The option for Shared Socio-economic Pathways.
#' Should be one of "ssp126", "ssp245", "ssp370", "ssp585".
#' The default is "ssp585".
#'
#' @param interval (\code{character}) The option for time interval.
#' Should be one of "2021-2040", "2041-2060", "2061-2080", "2081-2100".
#' The default is "2021-2040".
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
#' climate <- cr_future_worldclim(var = "tmax",
#'   res = 10,
#'   gcm = "ACCESS-CM2",
#'   ssp = "ssp126",
#'   interval = "2041-2060",
#'   path = tempdir(),
#'   return_stack = TRUE)
#'
#' @export

library(stars)

cr_future_worldclim <- function(var, res, gcm, ssp, interval, path, return_stack) {
  # Load the necessary packages
  library(itsdm)
  library(crgeo)

  # Download the data
  data <- future_worldclim2(var, res, gcm, ssp, interval, bry = cr_outline_c, path, return_stack)

  # Return the data
  return(data)
}
