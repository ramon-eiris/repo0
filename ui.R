library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  h2("Hi there mamon!"),
  
  

  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 25,
                  value = 12)
    ),
#Manera de enbeber codigo JS en R!!!
    mainPanel(
      h3("experimenting"),
      div("t",id="demo",style="background-color:orange",onclick="function myFunction() {
     var str = 'Hello World!';
     var n = str.length;
     document.getElementById('demo').innerHTML = n;
 };myFunction();"),
      plotOutput("distPlot")
    )
  )
))
