library(tidyverse)
library(jsonlite)


generate <- function() {
    # -------------------------------------------------------------
    # Make your changes only between the dashed lines 
    # Please generate your arguments here and put them in `params` and `correct_answers`
    # Example:
    #     Question: What is a + b?
    #
    #     a <- 1; b <- 2; c <- a + b
    #     params <- list(a=a, b=b)
    #     correct_answers <- list(c=c)
    
    
    
    
    # BEGIN EXAMPLE

    a <- sample(1:10, 1)
    b <- sample(1:10, 1)
    c <- a + b
    
    dir.create('clientFilesQuestion')
    png(file = "clientFilesQuestion/chart.png")
    barplot(sample(1:10, 10))
    dev.off()
    
    params <- list(a=a, b=b, chart_name="chart.png")
    correct_answers <- list(c=c)

    # END EXAMPLE
    
    
    
    
    
    # -------------------------------------------------------------
    return(list(params=params, correct_answers=correct_answers))
}

toJSON(generate(), pretty=TRUE, auto_unbox=TRUE)
