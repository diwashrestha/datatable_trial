# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("diwashrestha"),
  Sys.getenv("E6341425D3EF2166DDB53E7A122AC379"),
  Sys.getenv("YGJz1M6NMysYvkFMM6qRLKl+XXdUMX6Mm5ePelOC")
)
rsconnect::deployApp(
  appName = "datatable_trial",
  # exclude hidden files and renv directory (if present)
  appFiles = setdiff(list.files(), "renv")
)
