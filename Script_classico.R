
# Esta linha de comanda não é executada porque começa com um hastag #

# 1) Pacotes a serem usados nas análises -------------------
  library(ggplot2)
  library(car)

# 2) Valores ---------------------------------------------
  X <-  10
  x <-  6:25
  y <-  2*x + rnorm(20, mean = 0, sd = 4)
  df <-  data.frame(x,y)

# 3) Gráficos --------------------------------------------

  ggplot(df, aes(x = x, y = y)) +
    geom_point(size = 2, aes(col ="Pontos")) +
    geom_smooth(method = 'lm', se = T)+
    theme_light()+
    theme(legend.position = c(0.8, 0.2)) +
    labs(x= "Eixo_x", y = "Eixo_y", col = "Nome_legenda")

# 4) Testes Estatísticos --------------------------------

  mod <-  lm(y~x, data = df)
  summary.aov(mod)
  
  
  
