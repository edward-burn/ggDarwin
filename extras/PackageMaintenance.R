
# readme ----
# usethis::use_readme_rmd()
devtools::document()

# create R files -----
# usethis::use_r("gg_darwin_time_series")
usethis::use_r("gg_darwin_theme")

# set up tests ----
# usethis::use_testthat()
# usethis::use_test("gg_darwin_time_series")

# checks -----
devtools::spell_check()
devtools::test()
devtools::check()
