
## Set up ----
# usethis::use_mit_license()

# readme ----
# usethis::use_readme_rmd()

# create R files -----
# usethis::use_r("gg_darwin_time_series")
# usethis::use_r("gg_darwin_theme")

# required packages ----
# usethis::use_package("checkmate")
# usethis::use_package("dplyr")
# usethis::use_package("ggplot2")
# usethis::use_package("testthat")

# set up tests ----
# usethis::use_testthat()
# usethis::use_test("gg_darwin_time_series")
# usethis::use_test("gg_darwin_theme")

# Maintain ----
# devtools::document()
# checks -----
devtools::spell_check()
devtools::test()
devtools::check()
