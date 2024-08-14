files_to_render <- tibble::tribble(
  ~file, ~format, ~ext, ~suffix,
  "blank", "formato-manuscript-docx", "docx", "",
  "blank", "formato-manuscript-pdf", "pdf", "",
  "ehp", "formato-manuscript-docx", "docx", "",
  "ehp", "formato-manuscript-pdf", "pdf", ""
)

sapply(1:nrow(files_to_render), function(idx) {
  file <- files_to_render[idx, ]$file
  format <- files_to_render[idx, ]$format
  ext <- files_to_render[idx, ]$ext
  suffix <- files_to_render[idx, ]$suffix
  quarto::quarto_render(
    input = paste0(file, ".qmd"),
    output_format = format,
    output_file = paste0(file, suffix, ".", ext)
  )
})
