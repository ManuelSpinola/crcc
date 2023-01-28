## code to prepare dataset goes here

library(sf)
library(stars)
library(terra)
library(here)

#1
cr_inm_cm4_8_ssp126_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-inm-cm4-8_ssp126_2021-2040.tif"))

#2
cr_inm_cm4_8_ssp245_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-inm-cm4-8_ssp245_2021-2040.tif"))

#3
cr_inm_cm4_8_ssp370_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-inm-cm4-8_ssp370_2021-2040.tif"))

#4
cr_inm_cm4_8_ssp585_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-inm-cm4-8_ssp585_2021-2040.tif"))

#5
cr_mpi_esm1_2_hr_ssp126_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-mpi-esm1-2-hr_ssp126_2021-2040.tif"))

#6
cr_mpi_esm1_2_hr_ssp245_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-mpi-esm1-2-hr_ssp245_2021-2040.tif"))

#7
cr_mpi_esm1_2_hr_ssp370_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-mpi-esm1-2-hr_ssp370_2021-2040.tif"))

#8
cr_mpi_esm1_2_hr_ssp585_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-mpi-esm1-2-hr_ssp585_2021-2040.tif"))

#9
cr_ukesm1_0_ll_ssp126_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-ukesm1-0-ll_ssp126_2021-2040.tif"))

#10
cr_ukesm1_0_ll_ssp245_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-ukesm1-0-ll_ssp245_2021-2040.tif"))

#11
cr_ukesm1_0_ll_ssp370_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-ukesm1-0-ll_ssp370_2021-2040.tif"))

#12
cr_ukesm1_0_ll_ssp585_2021_2040 <- read_stars(here("data-raw/2021-2040/cr-ukesm1-0-ll_ssp585_2021-2040.tif"))


#1
usethis::use_data(cr_inm_cm4_8_ssp126_2021_2040, overwrite = TRUE)

#2
usethis::use_data(cr_inm_cm4_8_ssp245_2021_2040, overwrite = TRUE)

#3
usethis::use_data(cr_inm_cm4_8_ssp370_2021_2040, overwrite = TRUE)

#4
usethis::use_data(cr_inm_cm4_8_ssp585_2021_2040, overwrite = TRUE)

#5
usethis::use_data(cr_mpi_esm1_2_hr_ssp126_2021_2040, overwrite = TRUE)

#6
usethis::use_data(cr_mpi_esm1_2_hr_ssp245_2021_2040, overwrite = TRUE)

#7
usethis::use_data(cr_mpi_esm1_2_hr_ssp370_2021_2040, overwrite = TRUE)

#8
usethis::use_data(cr_mpi_esm1_2_hr_ssp585_2021_2040, overwrite = TRUE)

#9
usethis::use_data(cr_ukesm1_0_ll_ssp126_2021_2040, overwrite = TRUE)

#10
usethis::use_data(cr_ukesm1_0_ll_ssp245_2021_2040, overwrite = TRUE)

#11
usethis::use_data(cr_ukesm1_0_ll_ssp370_2021_2040, overwrite = TRUE)

#12
usethis::use_data(cr_ukesm1_0_ll_ssp585_2021_2040, overwrite = TRUE)


