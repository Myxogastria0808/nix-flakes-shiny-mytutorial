shinyUI(fluidPage(
    tags$head(
        #google fonts
        tags$link(rel="preconnect", href="https://fonts.googleapis.com"),
        tags$link(rel="preconnect", href="https://fonts.gstatic.com"),
        tags$link(href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap", rel="stylesheet"),
        #base setting
        tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
        tags$link(rel = "shortcut icon", href = "favicon.png"),
        tags$title("title")
    ),

    div(
        class="my-space"
    ),
    fluidRow(
        class="my-container center-block",
        column(
            width=12,
            class="text-center",
            h1(
                class="my-font",
                'Shiny Base Sample'
                )
        )
    ),
    titlePanel(
        h2(
            class="my-font",
            'title panel'
        )
    ),
    sidebarLayout(
        sidebarPanel(
            h4(
                class="my-font",
                "sidebar panel: width = 4 (default)"
            ),
            selectInput(
                inputId = "scatterplot_x",
                label = h3(
                    class="my-font",
                    "x data"
                ),
                choices = list(
                    "Sepal.Length" = 1,
                    "Sepal.Width" = 2,
                    "Petal.Length" = 3,
                    "Petal.Width" = 4
                ),
                selected = 1
            ),
            selectInput(
                inputId = "scatterplot_y",
                label = h3(
                    class="my-font",
                    "y data"
                ),
                choices = list(
                    "Sepal.Length" = 1,
                    "Sepal.Width" = 2,
                    "Petal.Length" = 3,
                    "Petal.Width" = 4
                ),
                selected = 2
            )
        ),
        mainPanel(
            h4(
                class="my-font",
                "main panel: width = 8 (default)"
            ),
            tabsetPanel(
                type = "tabs", 
                tabPanel(
                    p(
                        class='my-font',
                        "Scatter Plot"
                    ),
                    h2(
                        class="text-center",
                        "Scatter Plot"
                    ),
                    plotOutput(
                        outputId = 'my_scatterplot'
                    )
                ),
                tabPanel(
                    p(
                        class='my-font',
                        "Bar Plot"
                    ),
                    h2(
                        class="text-center",
                        "Bar Plot"
                    ),
                    plotOutput(
                        outputId = 'my_barplot'
                    )
                )
            )
        )
    )
))
