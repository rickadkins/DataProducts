library(shiny)


shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Calculate my Basal Metabolic Rate"),
    sidebarPanel(
      numericInput('height','Enter your height in inches',
                   68,min=36,max=90, step=1),
      numericInput('curweight','Enter your current weight in pounds',
                   150,min=70,max=500, step=10),
      #numericInput('targetweight', 'Enter your target weight in pounds',  150, min = 70, max = 500, step = 10),
      sliderInput('age','We need you age',
                  18,70,30,step=1,round=T),
      radioButtons('gender','Give us your gender',
                  c('Female'=1,'Male'=2),inline=T),
      radioButtons('exercise',"Tell us how active you are",
                  c('Sedentary' = 20,'Lightly Active'=30,
                    'Moderately Active'=40,
                    'Very Active'=50, 
                    'Extremely Active'=60),inline=F),
      
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of calculation'),
      h4('Your Basal Metabolic Rate'),
      verbatimTextOutput("bmr"),
      h4('Number of Daily Calories to maintain weight: '),
      verbatimTextOutput("act"),
      h5("The information for generating this calculator is found at"),
      a("http://weightloss.about.com/od/eatsmart/a/blcalintake_2.htm")
    )
  )
)