library(readr)
# Cargar base de datos temporada regular:
regular <- read_csv("C:\\Users\\HP-PC\\Desktop\\FCEA\\Estad�stica descriptiva\\regular.csv")

# Estad�sticos principales de algunas variables de inter�s:
summary(regular_1$MP)
summary(regular_1$Age)
summary(regular_1$PTS)

# Renombrar variables y nueva base con los cambios:
regular_1 = rename(regular, c(triple="3P", doble="2P"))

#Regresiones univariadas: analizar algunas correlaciones entre los puntos por partido y variables de inter�s:
regresion <- lm(PTS ~ Age, data = regular)
regresion
summary(regresion)

regresion1 <- lm(PTS ~ triple, data = regular_1)
regresion1
summary(regresion1)

regresion2 <- lm(PTS ~ doble, data = regular_1)
regresion2
summary(regresion2)

# Gr�fico de puntos por partido seg�n la edad de los jugadores:
ggplot(regular_1, aes(Age, PTS)) +
  geom_point() +
  labs(title = "Puntos por edad")

# Regresi�n multivariada_ qu� explica los puntos por partido?
modelo = lm(PTS ~ doble + triple + Age + MP, data = regular_1)
summary(modelo)

