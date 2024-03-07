library(shiny)

fluidPage(
  
  titlePanel("Queen of Hearts"),
  
  sidebarPanel(
    
    sliderInput('cardsLeft', 'Cards left on the board', min=1, max=54,
                value=7, step=1, round=0),
    
    numericInput('n', 'Number of tickets you buy', 1,
                 min = 1, max = 10000000),
    
    numericInput('N', 'Number of tickets everybody else buys', 300000,
                 min = 1, max = 50000000),
    
    numericInput('prevjack', 'Jackpot last week', 1230000,
                 min = 1000, max = 500000000)
  ),
  
  mainPanel(
    "Probability that somebody wins the game this weekend",
    verbatimTextOutput('wins'),
    "Probability that you win the game this weekend",
    verbatimTextOutput('values'),
    "Odds against you winning the game this weekend",
    verbatimTextOutput('odds'),
    "Your expected winnings for this weekend",
    verbatimTextOutput('expect'),
    "Your expected winnings per dollar spent",
    verbatimTextOutput('expectper'),
    tags$a(href = "http://gkerns.people.ysu.edu/QueenOfHearts.html", "Here are some mathematical details.")
  )
)
