shinyServer(function(input, output) {
    selected_x_data_func <- function() {
        if (input$scatterplot_x == 1) {
            return(list(iris$Sepal.Length, "Sepal.Length"))
        } else if (input$scatterplot_x == 2) {
            return(list(iris$Sepal.Width, "Sepal.Width"))
        } else if (input$scatterplot_x == 3) {
            return(list(iris$Petal.Length, "Petal.Length"))
        } else if (input$scatterplot_x == 4) {
            return(list(iris$Petal.Width, "Petal.Width"))
        }
    }
    selected_y_data_func <- function() {
        if (input$scatterplot_y == 1) {
            return(list(iris$Sepal.Length, "Sepal.Length"))
        } else if (input$scatterplot_y == 2) {
            return(list(iris$Sepal.Width, "Sepal.Width"))
        } else if (input$scatterplot_y == 3) {
            return(list(iris$Petal.Length, "Petal.Length"))
        } else if (input$scatterplot_y == 4) {
            return(list(iris$Petal.Width, "Petal.Width"))
        }
    }

    my_scatterplot <- function() {
        selected_x_data <- selected_x_data_func()
        selected_y_data <- selected_y_data_func()
        my_scatterplot <- ggplot(
            data = iris,
            mapping = aes(
                x = selected_x_data[[1]],
                y = selected_y_data[[1]],
                color = Species
            )
        ) + geom_point() + scale_color_nejm() + labs(x=selected_x_data[[2]], y=selected_y_data[[2]], colour="species")
        return(my_scatterplot)
    }
    output$my_scatterplot <- renderPlot({my_scatterplot()})

    my_barplot <- function() {
        selected_x_data <- selected_x_data_func()
        selected_y_data <- selected_y_data_func()
        my_barplot <- ggplot(
            data = iris,
            mapping = aes(
                x = selected_x_data[[1]],
                y = selected_y_data[[1]],
                fill = Species
            )
        ) + geom_bar(stat = "identity") + labs(x=selected_x_data[[2]], y=selected_y_data[[2]])
        return(my_barplot)
    }
    output$my_barplot <- renderPlot({my_barplot()})
})
