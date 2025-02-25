
Homepage <- dashboardPage(
  dashboardHeader(disable = T),
  dashboardSidebar(disable = T),
  
  dashboardBody(
    tags$head(tags$style("section.content { overflow-y: hidden; }")),
    # fluidRow(
    #   column(
    #     width = 10,
    #     offset = 1,
    #     titleBox(title = "LIRBase: a comprehensive collection of long inverted repeats in 427 eukaryotic genomes")
    #   )
    # ),
    
    fluidRow(
      column(
        width = 10,
        offset = 1,
        textBox(
          width = 12,
          p("LIRBase houses a total of 6,789,791", strong("long inverted repeats (LIR, longer than 800 nt)"), "in 427 eukaryotic genomes and provides various functionalities to facilitate the annotation and functional studies of LIRs and their derived small RNAs.")
        ),
        box(
          width = 12,
          HTML("<p class='aligncenter'><img src='demon.png' width='100%' height='100%' /></p>
            <style>
            .aligncenter {
              text-align: center;
            }
          </style>")
        )
      )
    ),
    
    column(
      width = 10,
      offset = 1,
      sectionBox(
        title = "Statistics",
        fluidRow(
          valueBox("6,789,791", "Long inverted repeats", width = 4, color="blue"),
          valueBox("427", "Eukaryotic genomes", width = 4, color="blue"),
          valueBox(374, "Species", width = 4, color="blue")
        ),
        fluidRow(
          # valueBox("297,317", "LIRs in 77 metazoa genomes", width = 4, color="blue"),
          box(width = 4,
              shinyWidgets::actionBttn("metazoa_butt", "297,317", 
                                       block = TRUE, size = "lg", style="unite", color="default"),
              h4("LIRs in 77 invertebrate metazoa genomes"), color="blue"
          ),
          # valueBox("1,902,296", "LIRs in 142 plant genomes", width = 4, color="blue"),
          box(width = 4,
              shinyWidgets::actionBttn("plant_butt", "1,902,296", 
                                       block = TRUE, size = "lg", style="unite", color="default"),
              h4("LIRs in 142 plant genomes"), color="blue"
          ),
          # valueBox("4,590,178", "LIRs in 208 vertebrate genomes", width = 4, color="blue"),
          box(width = 4,
              shinyWidgets::actionBttn("vertebrate_butt", "4,590,178", 
                                       block = TRUE, size = "lg", style="unite", color="default"),
              h4("LIRs in 208 vertebrate genomes"), color="blue"
          )
        )
      )
    ),
    
    column(
      width = 10,
      offset = 1,
      sectionBox(
        title = "Functionalities of LIRBase",
        fluidRow(
          box(width = 4,
              shinyWidgets::actionBttn("Browse_butt", "Browse", 
                         icon = icon("folder-open-o", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Browse LIRBase by species/genomes")
          ),
          
          box(width = 4,
              shinyWidgets::actionBttn("SearchByReg_butt", "Search by genomic location", 
                         icon = icon("search-location", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Search LIRBase by genomic locations")
          ),
          
          box(width = 4,
              shinyWidgets::actionBttn("SearchByLIRID_butt", "Search by LIR identifier", 
                         icon = icon("id-card", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Search LIRBase by the identifiers of LIRs")
          )
        ),
        
        fluidRow(
          box(width = 4,
              shinyWidgets::actionBttn("BLAST_butt", "BLAST", 
                         icon = icon("rocket", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Search LIRBase by sequence similarity using BLAST")
          ),
          
          box(width = 4,
              shinyWidgets::actionBttn("Annotate_butt", "Annotate", 
                         icon = icon("cogs", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Detect and annotate long inverted repeats in user-uploaded DNA sequences")
          ),
          
          box(width = 4,
              shinyWidgets::actionBttn("Quantify_butt", "Expression -> Quantify", 
                         icon = icon("upload", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Identify candidate LIRs encoding long hpRNAs by aligning sRNA sequencing data to LIRs")
          )
        ),
        
        fluidRow(
          box(width = 4,
              shinyWidgets::actionBttn("DESeq_butt", "Expression -> DESeq", 
                         icon = icon("eercast", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Differential expression analysis of LIRs or small RNAs between different biological samples/tissues")
          ),
          
          box(width = 4,
              shinyWidgets::actionBttn("Target_butt", "Target", 
                         icon = icon("bullseye", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Identify protein-coding genes targeted by the small RNAs derived from a LIR")
          ),
          
          box(width = 4,
              shinyWidgets::actionBttn("Visualize_butt", "Visualize", 
                         icon = icon("eye", class = NULL, lib = "font-awesome"),
                         block = TRUE, size = "lg", style="unite", color="default"),
              h4("Predict and visualize the secondary structure of potential long hpRNA encoded by a LIR")
          )
        )
      )
    )
    
  )
)

