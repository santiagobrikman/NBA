library(readxl)

# Importar base de datos del Draft 2021/22:
draft2021_1_ <- read_excel("C:/Users/HP-PC/Desktop/FCEA/Estadística descriptiva/draft2021 (1).xls", 
                           skip = 1)
View(draft2021_1_)

# Gráfico de puntos por partido por ranking de jugador, identificando a qué equipo pertenecen:
ggplot(draft2021_1_, aes(Rk, PTS)) +
  geom_point(aes(colour = factor(Tm))) +
  labs(title = "Puntos por ranking según equipo")

# Reducir base para comparar algunas variables:
draft <- draft2021_1_[, c("Rk", "Player", "Tm", "PTS")] 
View(draft)
