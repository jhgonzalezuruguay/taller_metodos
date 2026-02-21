library(shiny)

ui <- fluidPage(
  
  tags$head(
    tags$style(HTML("
      .btn {
        background-color: #FFD8A8 !important;
        border-color: #FFD8A8 !important;
        color: black !important;
      }
      .btn:hover {
        background-color: #FFC078 !important;
        border-color: #FFC078 !important;
      }
      .flashcard {
        border: 2px solid #FFD8A8;
        padding: 15px;
        margin: 10px 0;
        border-radius: 8px;
        background-color: #FFF4E6;
      }
    "))
  ),
  
  titlePanel("Taller – Métodos en Ciencias Sociales - Mag. José González"),
  
  tabsetPanel(
    
    # =====================================================
    # PARADIGMAS
    # =====================================================
    
    tabPanel("Paradigmas",
             
             h3("Actividad 1: Identificación de paradigma"),
             br(),
             
             radioButtons("paradigma1",
                          "Un estudio que busca medir estadísticamente la relación entre nivel socioeconómico y acceso a la justicia corresponde a:",
                          choices = c("Positivismo","Interpretativismo","Constructivismo radical"),
                          selected = character(0)),
             actionButton("submit_paradigma1", "Responder"),
             textOutput("feedback_paradigma1"),
             br(),br(),
             
             radioButtons("paradigma2",
                          "Una investigación basada en entrevistas en profundidad corresponde a:",
                          choices = c("Positivismo","Interpretativismo","Realismo ingenuo"),
                          selected = character(0)),
             actionButton("submit_paradigma2", "Responder"),
             textOutput("feedback_paradigma2"),
             
             br(),br(),
             h4("Verdadero o Falso"),
             radioButtons("vf_paradigma",
                          "El positivismo busca explicar relaciones causales.",
                          choices = c("Verdadero","Falso"),
                          selected = character(0)),
             actionButton("submit_vf_paradigma","Responder"),
             textOutput("feedback_vf_paradigma"),
             
             br(),br(),
             h4("Flashcards"),
             div(class="flashcard", strong("Positivismo"), textOutput("fc_pos")),
             actionButton("flip_pos","Mostrar definición"),br(),br(),
             div(class="flashcard", strong("Interpretativismo"), textOutput("fc_int")),
             actionButton("flip_int","Mostrar definición"),br(),br(),br(),
             
             # -------- NUEVO BLOQUE SIN ELIMINAR NADA --------
             
             div(class="actividad-box",
                 h4("Actividad Reflexiva"),
                 p("Explique diferencias entre positivismo e interpretativismo."),
                 p("Compare: realidad, rol del investigador y tipo de evidencia."),
                 textAreaInput("ref_paradigma",
                               "Escriba su respuesta:",
                               rows = 8,
                               width = "100%"),
                 downloadButton("desc_paradigma_ref",
                                "Descargar mi reflexión (.txt)")
             ),br(),br(),br(),
             
             div(class="actividad-box",
                 h4("Actividad de Construcción"),
                 p("Diseñe un proyecto positivista y otro interpretativista sobre un mismo problema social."),
                 textAreaInput("cons_paradigma",
                               "Desarrolle su proyecto:",
                               rows = 8,
                               width = "100%"),
                 downloadButton("desc_paradigma_cons",
                                "Descargar mi construcción (.txt)")
             )
    ),
    
    # =====================================================
    # ENFOQUES
    # =====================================================
    
    tabPanel("Enfoques",
             
             h3("Actividad 2: Clasificación del enfoque"),
             br(),
             
             selectInput("enfoque1",
                         "Analizar correlación entre género y percepción de acceso a servicios mediante encuesta nacional:",
                         choices = c("Cuantitativo","Cualitativo","Mixto"),
                         selected = NULL),
             actionButton("submit_enfoque1", "Responder"),
             textOutput("feedback_enfoque1"),
             br(),br(),
             
             selectInput("enfoque2",
                         "Estudiar relatos de migrantes sobre experiencias de exclusión institucional:",
                         choices = c("Cuantitativo","Cualitativo","Mixto"),
                         selected = NULL),
             actionButton("submit_enfoque2", "Responder"),
             textOutput("feedback_enfoque2"),
             br(),br(),
             
             selectInput("enfoque3",
                         "Combinar estadísticas de empleo con entrevistas a trabajadores informales:",
                         choices = c("Cuantitativo","Cualitativo","Mixto"),
                         selected = NULL),
             actionButton("submit_enfoque3", "Responder"),
             textOutput("feedback_enfoque3"),
             
             br(),br(),
             h4("Verdadero o Falso"),
             radioButtons("vf_enfoque",
                          "El enfoque mixto combina técnicas cuantitativas y cualitativas.",
                          choices = c("Verdadero","Falso"),
                          selected = character(0)),
             actionButton("submit_vf_enfoque","Responder"),
             textOutput("feedback_vf_enfoque"),
             
             br(),br(),
             h4("Flashcards"),
             div(class="flashcard", strong("Cuantitativo"), textOutput("fc_cuant")),
             actionButton("flip_cuant","Mostrar definición"),br(),br(),br(),br(),
             div(class="flashcard", strong("Cualitativo"), textOutput("fc_cuali")),
             actionButton("flip_cuali","Mostrar definición"),br(),br(),br(),br(),
             
             # -------- NUEVO BLOQUE --------
             
             div(class="actividad-box",
                 h4("Actividad Reflexiva"),
                 p("Explique diferencias entre enfoque cuantitativo, cualitativo y mixto."),
                 textAreaInput("ref_enfoque",
                               "Escriba su respuesta:",
                               rows = 8,
                               width = "100%"),
                 downloadButton("desc_enfoque_ref",
                                "Descargar mi reflexión (.txt)")
             ),br(),br(),br(),br(),
             
             div(class="actividad-box",
                 h4("Actividad de Construcción"),
                 p("Diseñe un estudio mixto sobre un problema social a elección."),
                 textAreaInput("cons_enfoque",
                               "Desarrolle su diseño:",
                               rows = 8,
                               width = "100%"),
                 downloadButton("desc_enfoque_cons",
                                "Descargar mi construcción (.txt)")
             )
    ),
    


    # =====================================================
    # DISEÑO
    # =====================================================
    
    tabPanel("Diseño de investigación",
             
             h3("Actividad 3: Elegir el método adecuado"),
             br(),
             
             radioButtons("metodo1",
                          "Si el objetivo es generalizar resultados sobre acceso a servicios sociales en todo el país:",
                          choices = c("Entrevistas en profundidad",
                                      "Encuesta probabilística",
                                      "Observación participante"),
                          selected = character(0)),
             actionButton("submit_metodo1","Responder"),
             textOutput("feedback_metodo1"),
             br(),br(),
             
             radioButtons("metodo2",
                          "Si el objetivo es comprender significados que las personas atribuyen a la desigualdad:",
                          choices = c("Análisis estadístico",
                                      "Entrevistas abiertas",
                                      "Modelo econométrico"),
                          selected = character(0)),
             actionButton("submit_metodo2","Responder"),
             textOutput("feedback_metodo2"),
             
             br(),br(),
             h4("Verdadero o Falso"),
             radioButtons("vf_diseno",
                          "La muestra es un subconjunto de la población.",
                          choices = c("Verdadero","Falso"),
                          selected = character(0)),
             actionButton("submit_vf_diseno","Responder"),
             textOutput("feedback_vf_diseno"),
             
             br(),br(),
             h4("Flashcards"),
             div(class="flashcard", strong("Población"), textOutput("fc_pob")),
             actionButton("flip_pob","Mostrar definición"),
             div(class="flashcard", strong("Muestra"), textOutput("fc_mue")),
             actionButton("flip_mue","Mostrar definición"),
             
             # br(),br(),
             # downloadButton("desc_diseno_ref","Descargar actividad reflexiva (.txt)"),
             #downloadButton("desc_diseno_cons","Descargar actividad de construcción (.txt)")
    ),
    
    # =====================================================
    # CASOS
    # =====================================================
    
    tabPanel("Casos aplicados",
             
             h3("Actividad 4: Caso aplicado"),
             br(),
             
             p("Caso: Se desea estudiar por qué ciertos grupos sociales no acceden a mecanismos formales de resolución de conflictos."),
             
             radioButtons("caso1",
                          "¿Qué combinación metodológica permitiría una comprensión más completa?",
                          choices = c("Solo estadísticas nacionales",
                                      "Solo entrevistas",
                                      "Encuestas + entrevistas en profundidad"),
                          selected = character(0)),
             actionButton("submit_caso1","Responder"),
             textOutput("feedback_caso1"),
             
             br(),br(),
             h4("Verdadero o Falso"),
             radioButtons("vf_caso",
                          "La triangulación fortalece la validez del estudio.",
                          choices = c("Verdadero","Falso"),
                          selected = character(0)),
             actionButton("submit_vf_caso","Responder"),
             textOutput("feedback_vf_caso"),
             
             br(),br(),
             h4("Flashcards"),
             div(class="flashcard", strong("Triangulación"), textOutput("fc_tria")),
             actionButton("flip_tria","Mostrar definición"),
             
             # br(),br(),
             #downloadButton("desc_caso_ref","Descargar actividad reflexiva (.txt)"),
             #downloadButton("desc_caso_cons","Descargar actividad de construcción (.txt)")
    ),
    
    # =====================================================
    # EVALUACIÓN FINAL
    # =====================================================
    
    tabPanel("Evaluación final",
             
             h3("Autoevaluación – Métodos en Ciencias Sociales"),
             br(),
             
             radioButtons("eval1",
                          "El método cuantitativo se orienta principalmente a:",
                          choices = c("Comprender significados individuales",
                                      "Generalizar resultados",
                                      "Construir tipos ideales"),
                          selected = character(0)),
             
             radioButtons("eval2",
                          "El método cualitativo se caracteriza por:",
                          choices = c("Diseño rígido y cerrado",
                                      "Análisis inductivo",
                                      "Uso exclusivo de estadísticas"),
                          selected = character(0)),
             
             radioButtons("eval3",
                          "El enfoque mixto permite:",
                          choices = c("Eliminar la subjetividad",
                                      "Triangular información",
                                      "Evitar entrevistas"),
                          selected = character(0)),
             
             actionButton("submit_eval","Calcular resultado"),
             textOutput("resultado_final"),
             
             # br(),br(),
             #downloadButton("desc_eval_ref","Descargar reflexión final (.txt)"),
             #downloadButton("desc_eval_cons","Descargar actividad integradora (.txt)")
    )
    
  )
)

server <- function(input, output, session) {
  
  # RESPUESTAS ORIGINALES
  observeEvent(input$submit_paradigma1,{
    output$feedback_paradigma1 <- renderText(if(input$paradigma1=="Positivismo") "✅ Correcto." else " Revisar"
    )
  })
  
  observeEvent(input$submit_paradigma2,{
    output$feedback_paradigma2 <- renderText(if(input$paradigma2=="Interpretativismo") "✅ Correcto." else "Revisar el enfoque cualitativo.")
  })
  
  observeEvent(input$submit_enfoque1,{
    output$feedback_enfoque1 <- renderText(if(input$enfoque1=="Cuantitativo") "✅ Correcto." else "Revisar definición.")
  })
  
  observeEvent(input$submit_enfoque2,{
    output$feedback_enfoque2 <- renderText(if(input$enfoque2=="Cualitativo") "✅ Correcto." else "Revisar características.")
  })
  
  observeEvent(input$submit_enfoque3,{
    output$feedback_enfoque3 <- renderText(if(input$enfoque3=="Mixto") "✅ Correcto." else "Revisar enfoque mixto.")
  })
  
  observeEvent(input$submit_metodo1,{
    output$feedback_metodo1 <- renderText(if(input$metodo1=="Encuesta probabilística") "✅ Correcto." else "Revisar objetivo de generalización.")
  })
  
  observeEvent(input$submit_metodo2,{
    output$feedback_metodo2 <- renderText(if(input$metodo2=="Entrevistas abiertas") "✅ Correcto." else "Revisar enfoque comprensivo.")
  })
  
  observeEvent(input$submit_caso1,{
    output$feedback_caso1 <- renderText(if(input$caso1=="Encuestas + entrevistas en profundidad") "✅ Correcto. Método mixto." else "Revisar integración metodológica.")
  })
  
  observeEvent(input$submit_eval,{
    puntaje <- 0
    if(input$eval1=="Generalizar resultados") puntaje <- puntaje + 1
    if(input$eval2=="Análisis inductivo") puntaje <- puntaje + 1
    if(input$eval3=="Triangular información") puntaje <- puntaje + 1
    output$resultado_final <- renderText(paste("Resultado:",puntaje,"/ 3"))
  })
  
  # VERDADERO/FALSO
  observeEvent(input$submit_vf_paradigma,{
    output$feedback_vf_paradigma<-renderText(if(input$vf_paradigma=="Verdadero") "✅ Correcto." else "Revisar concepto.")
  })
  
  observeEvent(input$submit_vf_enfoque,{
    output$feedback_vf_enfoque<-renderText(if(input$vf_enfoque=="Verdadero") "✅ Correcto." else "Revisar concepto.")
  })
  
  observeEvent(input$submit_vf_diseno,{
    output$feedback_vf_diseno<-renderText(if(input$vf_diseno=="Verdadero") "✅ Correcto." else "Revisar definición.")
  })
  
  observeEvent(input$submit_vf_caso,{
    output$feedback_vf_caso<-renderText(if(input$vf_caso=="Verdadero") "✅ Correcto." else "Revisar triangulación.")
  })
  
  # FLASHCARDS
  observeEvent(input$flip_pos,{output$fc_pos<-renderText("Paradigma orientado a medición objetiva y explicación causal.")})
  observeEvent(input$flip_int,{output$fc_int<-renderText("Paradigma centrado en comprensión de significados sociales.")})
  observeEvent(input$flip_cuant,{output$fc_cuant<-renderText("Utiliza datos numéricos y análisis estadístico.")})
  observeEvent(input$flip_cuali,{output$fc_cuali<-renderText("Explora experiencias y significados.")})
  observeEvent(input$flip_pob,{output$fc_pob<-renderText("Conjunto total de unidades que se desea estudiar.")})
  observeEvent(input$flip_mue,{output$fc_mue<-renderText("Subconjunto seleccionado de la población.")})
  observeEvent(input$flip_tria,{output$fc_tria<-renderText("Combinación de métodos o fuentes para fortalecer resultados.")})
  
  # DESCARGAS COMPLETAS
  descargar <- function(nombre, contenido){
    downloadHandler(
      filename=function(){nombre},
      content=function(file){writeLines(contenido,file)}
    )
  }
  
  output$desc_paradigma_ref <- descargar("Reflexion_Paradigmas.txt",
                                         c("Explique diferencias entre positivismo e interpretativismo.",
                                           "¿Cuál aplicaría para estudiar desigualdad social? Justifique."))
  
  output$desc_paradigma_cons <- descargar("Construccion_Paradigmas.txt",
                                          c("Diseñe un proyecto positivista y otro interpretativista sobre acceso a servicios."))
  
  output$desc_enfoque_ref <- descargar("Reflexion_Enfoques.txt",
                                       c("Compare enfoque cuantitativo y cualitativo."))
  
  output$desc_enfoque_cons <- descargar("Construccion_Enfoques.txt",
                                        c("Diseñe un estudio mixto sobre migración."))
  
  output$desc_diseno_ref <- descargar("Reflexion_Diseno.txt",
                                      c("Explique diferencia entre población y muestra."))
  
  output$desc_diseno_cons <- descargar("Construccion_Diseno.txt",
                                       c("Complete: Unidad de análisis, Población, Muestra, Variables, Método."))
  
  output$desc_caso_ref <- descargar("Reflexion_Caso.txt",
                                    c("Analice ventajas del método mixto."))
  
  output$desc_caso_cons <- descargar("Construccion_Caso.txt",
                                     c("Diseñe estudio completo sobre acceso a servicios públicos."))
  
  output$desc_eval_ref <- descargar("Reflexion_Final.txt",
                                    c("Explique relación entre paradigma, enfoque y método."))
  
  output$desc_eval_cons <- descargar("Actividad_Integracion_Final.txt",
                                     c("Diseñe un proyecto completo integrando todos los conceptos."))
  
}

shinyApp(ui, server)
