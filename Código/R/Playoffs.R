library(readxl)

# Importar base de datos de Playoffs:
playoffs <- read_excel("C:/Users/HP-PC/Desktop/FCEA/Estadística descriptiva/playoffs.xls", 
                      +     col_types = c("numeric", "skip", "text", 
                                          +         "text", "numeric", "text", "text", 
                                          +         "numeric", "numeric", "text", "text", 
                                          +         "text", "numeric", "text", "text", 
                                          +         "numeric", "text", "text", "text", 
                                          +         "text", "text", "text", "text", "text", 
                                          +         "text", "text", "text", "text", "text", 
                                          +         "text", "numeric", "skip"))

# Renombrar variables y nueva base con los cambios:
playoffs_1 = rename(playoffs, c(triple="3P", doble="2P"))

# Regresión multivariada_ qué explica los puntos por partido?
modelo_p = lm(PTS ~ doble + triple + Age + MP, data = playoffs_1)
summary(modelo_p)

# Gráfico de puntos por partido según la edad de los jugadores:
ggplot(playoffs_1, aes(Age, PTS)) +
  geom_point() +
  labs(title = "Puntos por edad")

# Estadísticos principales de algunas variables:
summary(playoffs_1$Age)
summary(playoffs_1$PTS)


