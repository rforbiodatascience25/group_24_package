test_that("codons created", {
  expect_equal(mRNA_to_codon("AUGUCG"),c("AUG","UCG"))
})
