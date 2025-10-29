#' mRNA_to_codon
#'
#' @param mRNA mRNA to transform
#' @param start When to start the transformation. Default set to 1
#'
#' @returns Replaces mRNA with codon in string
#' @export
#'
#' @examples
#' mRNA <- "AUGUCG"
#' mRNA_to_codon(mRNA)
mRNA_to_codon <- function(mRNA, start = 1){
  len_mRNA <- nchar(mRNA)
  codons <- substring(mRNA,
                      first = seq(from = start, to = len_mRNA-3+1, by = 3),
                      last = seq(from = 3+start-1, to = len_mRNA, by = 3))
  return(codons)
}
