library(shiny)

#the formulas for the calculations were obtained from
#http://weightloss.about.com/od/eatsmart/a/blcalintake_2.htm

activityBMR <- function(bmr, activity)
{
  
  if(activity=="20") bmrOffset <- .20
  if(activity=="30") bmrOffset <- .30
  if(activity=="40") bmrOffset <- .40
  if(activity=="50") bmrOffset <- .50
  if(activity=="60") bmrOffset <- .60
  bmr + (bmr * bmrOffset)
}
BMR <- function(ht, wt,age, gender)
{
  offsetCoef <- 655
  weightCoef <- 4.3
  heightCoef <- 4.7
  ageCoef <- 4.7
  
  #male is 2, female is 1
  if(gender=="2")
  {
    offsetCoef=66
    weightCoef = 6.3
    heightCoef = 12.9
    ageCoef = 6.8
  }
  
  offsetCoef + (weightCoef * wt) + (heightCoef * ht) - (ageCoef * age)
}
diabetesRisk <- function(glucose) glucose / 200
shinyServer(
  function(input, output) {
    output$heightValue <- renderPrint({input$height})
    output$curweightValue <- renderPrint({input$curweight})
    output$genderValue <- renderPrint({input$gender})
    output$bmr <- renderPrint({BMR(input$height,input$curweight,input$age,input$gender)})
    output$act <- renderPrint({
      activityBMR(
            BMR(input$height,
                input$curweight,
                input$age,
                input$gender
                ),
                  input$exercise
                  )})
  }
)