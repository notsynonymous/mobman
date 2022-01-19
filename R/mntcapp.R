#' Bootstrap for App for Form Generation
#' A generic inspection form (not technically Amazon affiliated)
#' @name mntcapp_beta
#'
#' @author Samuel Mark DeClerk
#'
#' @importFrom shiny fluidPage tags HTML div sidebarLayout sidebarPanel selectInput mainPanel htmlOutput renderUI shinyApp textInput
#'
#' @returns None
#' 
#' @examples
#' \dontrun{
#' 
#' ##importFrom shinyBS
#' ##importFrom ggplot2
#' }
#' print("this has not yet been scripted")
#' @export
#' @md

mntcapp <- function(){

    cat_subcat <- list(

        list("Lights and light covers",
            c("Lights or light covers are cracked, broken, or missing", "Turn signal is not working", "Hazard light is not working")),

        list("EV System",
            c("Battery boxes are unsecured or damaged", "Any loose, hanging, faulty, or frayed wires", "Orange wires are present: High Voltage! Do not touch!")),

        list("Side mirrors",
            c("Mirror or glass is missing", "Side mirrors have cracks or damage that is in your line of sight", "Side mirrors are loose, hanging, unsecured, or held up with a zip-tie, tape, or similar")),

        list("Front tire, wheel and rim",
            c("Tire is flat, leaking air, bulging, or swelling", "Tire has objects, cuts, dents, or exposed wire on its surface", "Tire has insufficient tread (Less than 2/32 inches or 1.6mm)", "Tire has insufficient tread (Less than 4/32 inches or 3.2mm)", "Tire has uneven wear on treads", "Wheel, rim, or mounting equipment is damaged, cracked, or broken", "Wheel nuts are missing, or loose", "Tire is flat, leaking air, bulging, or swelling", "Tire has objects, cuts, dents, or exposed wire on its surface", "Mud Flap is damaged, missing, unsecured or held up with a zip-tie, tape or similar",  "Wheel nuts are missing, or loose")),

        list("Back tire, wheel and rim",
            c("Tire is flat, leaking air, bulging, or swelling", "Tire has objects, cuts, dents, or exposed wire on its surface", "Tire has insufficient tread (Less than 2/32 inches or 1.6mm)", "Tire has insufficient tread (Less than 4/32 inches or 3.2mm)", "Tire has uneven wear on treads", "Wheel, rim, or mounting equipment is damaged, cracked, or broken", "Wheel nuts are missing, or loose", "Tire is flat, leaking air, bulging, or swelling", "Tire has objects, cuts, dents, or exposed wire on its surface", "Mud Flap is damaged, missing, unsecured or held up with a zip-tie, tape or similar",  "Wheel nuts are missing, or loose")),
        
        list("Fuel and fluids",
            c("Charging port cap is missing or broken", "Active red, orange, yellow, green, blue, brown, black, or pink fluid leaking on the ground")),

        list("Body and doors",
            c("Items attached to the body of the vehicle (for example: lift gates and hood latches) are missing, damaged, loose, unsecure, hanging, or held with a zip-tie, tape, or similar", "Rear step/bumper is damaged/loose/unsecure/hanging/missing (Branded Vehicles Only)", "Side step is damaged/loose/unsecure/hanging/missing (Branded Vehicles Only)", "Doors cannot open, or close")),

        list("License plates/tags",
            c("License plates/temp tags/ are damaged, missing, or expired")),

        list("Vehicle Documentation",
            c("Insurance Information is missing or expired", "Short Haul Exemption is missing or expired", "Vehicle Registration is missing or expired", "Certification of Lease is missing", "Repair documentation audit failure")),
        
        list("Vehicle Inspections", 
            c("DOT/CA BIT/ State Inspection sticker is missing or expired")),

        list("Seatbelt",
            c("Seatbelt is missing, torn, or frayed", "Seatbelt is not working")),

        list("Wipers",
            c("Wipers are missing, damaged, or not working")),

        list("Windshield",
            c("Windshield has crack/chips/stars/bullseyes or damage that is in your line of sight", "Windshield has crack/chips/stars/bullseyes or damage that is more than 1 inch", "Device/Accessory is mounted on the windshield")),

        list("Safety Accessories",
            c("Fire extinguisher is missing, mounted with a tape, zip-tie or similar, or the dial/needle is not in the green zone", "Delivery device cradle is damaged, missing, or is mounted with a tape, zip-tie or similar", "Reflective triangles are missing", "Spare fuses are missing")),

        list("Camera/monitor",
            c("Camera monitor is missing, broken, or not working", "Camera monitor is mounted with a tape, zip-tie, or similar", "Back-up camera is loose, hanging, missing, or mounted with a tape, zip-tie, or similar", "Netradyne camera is hanging/disconnected from bracket")),

        list("Credentials",
            c("Medical card is not present, or is expired")),

        list("Preventive Maintenance",
            c("PM is overdue")),

        list("Recall/ Campaign", 
            c("Recall/ Campaign is overdue")),

        list("Vehicle Cleanliness", 
            c("Exterior of vehicle is visably dirty when viewed from 20 feet away", "Amazon Prime decal is damaged, missing, or excessively dirty", "Interior of vehicle has excessive grime, dust, or trash present"))
            
    )
    master_main.init <- list("Lights and light covers", "EV system", "Side mirrors", "Front tire, wheel and rim", "Back tire, wheel and rim", "Fuel and fluids", "Body and doors", "License plates/tags", "Vehicle Documentation", "Vehicle Inspections", "Seatbelt", "Wipers", "Windshield", "Safety accessories", "Camera/monitor", "Credentials", "Preventive", "maintenance", "Recall/Campaign", "Vehicle Cleanliness")
    master_sublist.init <- list("Lights or light covers that are cracked, broken, or missing", "Turn signal that is not working", "Hazard light that is not working", "Battery boxes that are unsecured or damaged", "loose, hanging, faulty, or frayed wires", "Orange wires that are visible",  "Mirror or glass that is missing", "Side mirrors have cracks or damage that that is in your line of sight", "Side mirrors that are loose, hanging, unsecured, or held up with a zip-tie, tape, or similar", "Tire that is flat, leaking air, bulging, or swelling", "Tire has objects, cuts, dents, or exposed wire on its surface", "Tire has insufficient tread (Less than 2/32 inch or 1.6mm)", "Tire has insufficient tread (Less than 4/32 inch or 3.2mm)", "Tire has uneven wear on treads", "Wheel, rim, or mounting equipment that is damaged, cracked, or broken ", "Wheel nuts that are missing, or loose", "Tire that is flat, leaking air, bulging, or swelling", "Tire has objects, cuts, dents, or exposed wire on its surface", "Tire has insufficient tread (Less than 2/32 incj or 1.6mm)", "Tire has uneven wear on treads", "Wheel, rim, or mounting equipment that is damaged, cracked, or broken", "Mud Flap that is damaged, missing, unsecured or held up with a zip-tie, tape or similar", "Wheel nuts that are missing, or loose", "Charging port cap that is missing or broken", "Active red, orange, yellow, green, blue, brown, black, or pink fluid leaking on the ground", "Items attached to the body of the vehicle (for example: lift gates and hood latches) that are missing, damaged, loose, unsecure, hanging, or held with a zip-tie, tape, or similar", "Rear step/bumper that is damaged/loose/unsecure/hanging/missing (Branded Vehicles Only)", "Side step that is damaged/loose/unsecure/hanging/missing (Branded Vehicles Only)", "Doors cannot open, or close", "License plates/temp tags/ that are damaged, missing, or expired", "Insurance Information that is missing or expired", "Short Haul Exemption that is missing or expired", "Vehicle Registration that is missing or expired ", "Certification of Lease that is missing", "Repair documentation audit failure", "DOT/CA BIT/ State Inspection sticker that is missing or expired", "Seatbelt that is missing, torn, or frayed", "Seatbelt that is not working", "Wipers that are missing, damaged, or not working", "Windshield has crack/chips/stars/bullseyes or damage that that is in your line of sight", "Windshield has crack/chips/stars/bullseyes or damage that that is more than 1 inch", "Device/Accessory that is mounted on the windshield", "Fire extinguisher that is missing, mounted with a tape, zip-tie or similar, or the dial/needle that is not in the green zone", "Delivery device cradle that is damaged, missing, or that is mounted with a tape, zip-tie or similar", "Reflective triangles that are missing", "Spare fuses that are missing", "Camera monitor that is missing, broken, or not working ", "Camera monitor that is mounted with a tape, zip-tie, or similar", "Back-up camera that is loose, hanging, missing, or mounted with a tape, zip-tie, or similar", "Netradyne camera that is hanging/disconnected from bracket", "Medical card that is not present, or that is expired", "PM that is overdue", "Recall/Campaign that is overdue", "Exterior of vehicle that is visably dirty when viewed from 20 feet away", "Amazon Prime decal that is damaged, missing, or excessively dirty", "Interior of vehicle has excessive grim, dust, or trash present")
    severity <- list("1", "2")
    grounded <- list("Grounded", "Active")
    vehicleType <- list("All Types", "Electric", "Regulated", "Commercial Van", "Step Van", "Non CV, SV, or EV") #select one or more
    modelNumber <- list("NRR DSL REG, 195, 268A, MT45G, E-450 STRIPPED, F-59 COMMERCIAL STRIPPED", "NRR DSL REG, 195, 268A, MT45G, E-450 STRIPPED, F-59 COMMERCIAL STRIPPED, V8100, TRANSIT-350HD, SV01, F59", "Other not listed") #select most applicable
    NAOnly <- list("All", "NA", "Don't know")

    ui <- fluidPage(
    title = "ADS 2022",
    tags$style(HTML("
        #concatForm {
            background: yellow;
            border: 2px dashed black;
        }
        #welcome-header {
            border-bottom: solid;
        }
    ")),
    div(id = 'welcome-header', class = "decorations",
        tags$h2("Welcome to the Automotive Diagnostic Simplifier (ADS)")
    ),
    sidebarLayout(
        sidebarPanel(
        textInput("vinnumber", "VIN-Numbers", "placeholder"),
        selectInput("category.main", "Main Damage Categories", choices = master_main.init),
        selectInput("category.sub", "Damage Subcategories", choices = master_sublist.init),
        selectInput("severity", "Level of Severity", choices = severity),
        selectInput("grounded", "Grounding Status", choices = grounded),
        selectInput("vehicleType", "Type of Vehicle Being Serviced", choices = vehicleType),
        selectInput("modelNumber", "Model Number (select most applicable)", choices = modelNumber)
        ),
        mainPanel(
        tags$h4("Generated Form: "),
        tags$h2(htmlOutput("concatForm"))
        )
    )
    )

    server <- function(input, output, session) {
   
        output$concatForm <- renderUI({
            str0 <- paste0(input$vinnumber, " have ")
            str1 <- paste0(str0, tolower(input$category.sub))
            if(endsWith(input$category.main, 's')){
                str2 <- paste(" for the ", tolower(input$category.main), ".", sep="")    
            } else {
                str2 <- paste(" for the ", tolower(input$category.main), ".")    
            }
            

            if(input$severity == "1"){
                str3 <- " This is considered a severe issue."
                } else {
                str3 <- " This issue is not considered a severe issue."
            }
            
            if(input$vehicleType != "All Types") {
                str4 <- paste(paste0(" The ", tolower(input$vehicleType)), " (", input$modelNumber, ")")
                
                if(input$grounded != "Active") {
                    str4 <- paste0(str4, " with reported VINs is/ are currently being serviced. ")
                } else {
                    str4 <- paste0(str4, " with reported VINs has/ have returned to the road")
                }
            } else if(input$grounded != "Active") {
                str4 <- " The vehicle is currently being serviced."
            } else {
                str4 <- " The vehicle has returned to the road."
            }
            
            HTML(paste0(str1, str2, str3, str4))
        })

    }

shinyApp(ui, server)

}