#' Translation
#'
#'Translates a list of codons into teir corresponding amino acids
#'
#' @param codons, takes a string of codons
#'
#' @returns a string of aminoacids which have been translated from the codons parameter
#' @export
#'
#' @examples
#'codons_example <- c("AUG", "UCU",  "AAG")
#' translation(codons_example)
translation <- function(codons){
  amino_acid <- paste0(codon_table[codons], collapse = "")
  return(amino_acid)
}
