
## Set up ----
# usethis::use_mit_license()

# readme ----
# usethis::use_readme_rmd()

# required packages ----
# usethis::use_package("checkmate")
# usethis::use_package("dplyr")
# usethis::use_package("ggplot2")
# usethis::use_package("testthat")

# create R files -----
# usethis::use_r("theme_darwin")
# usethis::use_r("theme_darwin_facet")
# usethis::use_r("scale_fill_darwin")
# usethis::use_r("scale_colour_darwin")
# usethis::use_r("scale_x_date_darwin")


# set up tests ----
# usethis::use_testthat()
# usethis::use_test("theme_darwin")
# usethis::use_test("theme_darwin_facet")
# usethis::use_test("scale_fill_darwin")
# usethis::use_test("scale_colour_darwin")
# usethis::use_test("scale_x_date_darwin")

# Maintain ----
# devtools::document()
# checks -----
devtools::spell_check()
devtools::test()
devtools::check()
