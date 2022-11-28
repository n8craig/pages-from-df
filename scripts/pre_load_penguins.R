library(palmerpenguins)

set.seed(7575)
df <- penguins
df$id <- rownames(df) # call the whole table first to get accurate id numbers
# df <- dplyr::sample_n(df, size = 5)

df <- df |> dplyr::mutate(
  url = paste0("Penguin ",
               "<a href='./",
               df$id,
               ".html' target = '_blank'>",
               df$id,
               "</a>"),
  .before = species
)

saveRDS(df, file = "df_temp.rds")
