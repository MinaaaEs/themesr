mytheme <- function(type=c("base", "dashboard")){

  shiny <- match.arg(type)
  if (shiny == "base"){

  tags$head(
  # Note the wrapping of the string in HTML()
  tags$style(HTML(
    "body {
      background-color: black;
      color: white;
    }
    h2 {
      font-family: 'Yusei Magic', sans-serif;
    }
    .shiny-input-container {
      color: #474747;
    }")))
  }

  else {
    tags$head(tags$style(HTML(".skin-blue .left-side, .skin-blue .main-sidebar, .skin-blue .wrapper {
    background-color: white;
  }", "section.sidebar .shiny-input-container {
    padding: 12px 15px 0px 15px;
    white-space: normal;
    color: #525252;
  }", ".skin-blue .sidebar a {
    color: #000000;
}", "     .selectize-dropdown-content .active {
       background: #2196f3 !important;
       color: white !important;}", 
                              ".main-header .logo {
                                -webkit-transition: width .3s ease-in-out;
                                -o-transition: width .3s ease-in-out;
                                transition: width .3s ease-in-out;
                                display: block;
                                float: left;
                                height: 70px;
                                font-size: 20px;
                                line-height: 50px;
                                text-align: center;
                                width: 230px;
                                padding: 0 15px;
                                font-weight: 300;
                                overflow: hidden;
                              }",
                              ".main-header .sidebar-toggle {
    padding-top: 25px;
    padding-left: 22px;
    float: left;
    background-color: transparent;
    background-image: none;
    /* padding: 15px 15px; */
    font-family: fontAwesome;
}",
                              ".left-side, .main-sidebar {
                                position: absolute;
                                top: 0;
                                left: 0;
                                padding-top: 70px;
                                min-height: 100%;
                                width: 230px;
                                z-index: 810;
                                -webkit-transition: -webkit-transform .3s ease-in-out,width .3s ease-in-out;
                                -moz-transition: -moz-transform .3s ease-in-out,width .3s ease-in-out;
                                -o-transition: -o-transform .3s ease-in-out,width .3s ease-in-out;
                                transition: transform .3s ease-in-out,width .3s ease-in-out;
                              }")))


  }

    }
mytitle <- function(){
shinydashboard::dashboardHeader(
  title = "Demo",
  tags$li(class = "dropdown",
          tags$a(href = 'https://google.com',
                 tags$img(src = 'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', height= 50,width= 50, align = "right")
          )
  ),
  dropdownMenuOutput('messageMenu')
)
}
