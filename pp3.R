library(shiny)

ui <- fluidPage(
  titlePanel("Planificador de Eventos"),
  
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "nombre_evento", 
                label = "Nombre del evento",
                placeholder = "Boda de María y Julio" 
                
      ),
      selectInput(inputId = "tema_evento", 
                  label = "Tema del evento", 
                  choices = c("Boda","Fiesta de cumpleaños","Conferencia","Otro"),
                  multiple = FALSE, 
                  width = "100%", 
                  
      ),
    ),
    mainPanel("Este es el panel principal")
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)