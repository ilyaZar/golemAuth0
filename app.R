# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

pkgload::load_all(export_all = FALSE,helpers = FALSE,attach_testthat = FALSE)
options( "golem.app.prod" = TRUE)
# golemAuth0::run_app() # add parameters here (if any)
options("golem.app.prod" = TRUE, shiny.port = 8080,
        auth0_config_file = system.file("app/_auth0.yml",
                                        shiny.port = 8080,
                                        auth0_disable = TRUE,
                                        package = "golemAuth0"))
golemAuth0::run_app_auth0()
