df <- readRDS("df_temp.rds")

lapply(unique(df$id), function(df.i) {
  rmarkdown::render("input.Rmd",
                    params = list(id = df.i),
                    output_file = paste0(df.i, ".html"),
                    output_dir = "_book")
})

file.remove("df_temp.rds")