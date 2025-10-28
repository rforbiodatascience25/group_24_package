#' Create_DNA
#'
#' @param n| This indicates the length of the sequence
#'
#' @returns the sequence as a string
#' @export
Create_DNA <- function(n){
     nucleotides <- sample(c("A", "T", "G", "C"), size = n, replace = TRUE)
     DNA_sequence <- paste0(nucleotides, collapse = "")
     return(DNA_sequence)
}
