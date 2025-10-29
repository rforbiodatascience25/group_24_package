test_that("dna_to_rna correctly transcribes DNA to RNA", {
  # Case 1
  expect_equal(dna_to_RNA("ATTGCT"), "AUUGCU")

  # Another Example
  expect_equal(dna_to_RNA("GGTTAAC"), "GGUUAAC")

  # Small letter Case
  expect_equal(dna_to_RNA("attgct"), "auugcu")
})
