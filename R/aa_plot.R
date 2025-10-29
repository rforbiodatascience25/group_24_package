#' aa_plotting
#'
#' @param aa_data Amino acid data
#'
#' @returns Plot of amino acids
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @export
aa_plot <- function(aa_data){

  usethis::use_package("ggplot2")
  usethis::use_package("stringr")

  # preparation of data for counting and plotting
  aa_data_prepared <- aa_data |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # counting amino acids and putting into data frame
  counts <- sapply(aa_data_prepared, function(amino_acid) stringr::str_count(string = aa_data, pattern =  amino_acid)) |>
    as.data.frame()

  # organising the counts
  colnames(counts) <- c("Counts")
  counts[["aa_data"]] <- rownames(counts)

  # plotting the counts
  aa_plotted <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aa_data, y = Counts, fill = aa_data)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_plotted)
}
