db <- "#002145"
bg <- "#ffffff"

samp <- function(n, p = .3) {
  a <- runif(n) > p
  b <- rnorm(sum(!a), 0)
  z <- rnorm(sum(a), 4)
  c(b, z)
}

library(tidyverse)
set.seed(12345)
p <- ggplot(tibble(x = samp(1000))) +
  geom_histogram(aes(x, after_stat(density), fill = after_stat(density)), bins = 50) +
  theme_void() + theme(legend.position = "none") +
  scale_fill_gradient(low = "#eee2f5", high = "#b17ece") +
  scale_x_continuous(expand = expansion(), limits = c(-3, 7)) +
  scale_y_continuous(expand = expansion()) +
  geom_function(fun = ~ 0.3 * dnorm(.x), color = "orange", linewidth = 1) +
  geom_function(fun = ~ 0.7 * dnorm(.x, 4), color = "darkred", linewidth = 1) +
  geom_function(fun = ~ 0.3 * dnorm(.x) + 0.7 * dnorm(.x, 4), color = "tomato", linewidth = 1)

hexSticker::sticker(
  p, package = "Stat302", p_color = db, p_y = 1.2,
  p_size = 28, s_x = 1, s_y = 1.125, s_width = 1.7, s_height = 1.25, 
  h_fill = bg, h_color = db,
  filename = here::here("style", "stat302.png")
)
