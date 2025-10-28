#' Transcribe a DNA sequence into a RNA sequence
#'
#' @param dna_sequence A character string representing a DNA sequence
#'
#' @returns A character string respresenting the transcribed RNA sequence
#' @export
#'
#' @examples
#' dna_to_RNA("ATTGCT)
dna_to_RNA <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  rna_sequence <- gsub("t", "u", rna_sequence)
  return(rna_sequence)
}

