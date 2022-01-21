#' Testing dodcumentation on this package
#' This is a program that says your vagina is nasty 9999 times
#' @name testFunction
#'
#' @author Samuel MDC
#'
#' @param name just checking the compiler and telling you that you are lovely.
#'
#' @returns string_n
#' 
#' @examples
#' V <- testFunction("Samuel")
#' V
#' V <- testFunction("")
#' V
#' @export
#' @md


testFunction <- function(name) {

	if(length(name) != 0){
		string2 <- paste0("Hello, ", name)
		string3 <- ", I think that your vagina is nasty"
		string_n <- paste0(string2, string3)
	} else {
		string2 <- paste0("Hello, ", Sys.getenv("%USERNAME%"))
		string3 <- ", I think that your vagina is nasty."
		string_n <- paste0(string2, string3)
	}

	for(i in 1:99) {
		print(string_n)
		i <- i+1
	}

	print("Compiler works!")

return(string_n)
}