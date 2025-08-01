library(aRtsy)
# paletteer::paletteer_d("ggsci::uniform_startrek")
cols <- c("#CC0C00FF", "#5C88DAFF", "#84BD00FF", "#FFCD00FF", "#7C878EFF", "#00B5E2FF", "#00AF66FF")
swirls <- canvas_swirls(
  cols,
  background = "#ffffff",
  iterations = 200,
  n = 200,
  curvature = 0.008,
  lwd = 0.4
)
ggsave("style/swirls.png", swirls, width = 10, height = 4)
