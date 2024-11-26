# Präambel
rm(list=ls()) # Entfernt alle Objekte (Datensätze, Variablen usw.) aus dem Speicher
library(readr)

# Vorbereitung
cars_df <- read_csv("ToyotaCorolla.csv")

head(cars_df)

cars_df[, c(1,2)]

cars_df[7:12, ]

cars_reduced_df <- cars_df[ , c(1,3,7,8)]

dim(cars_reduced_df)

cars_reduced_df <- na.omit(cars_reduced_df)
dim(cars_reduced_df) # Keine fehlende Werte

rm(cars_df)

table(cars_reduced_df$Fuel_Type)
  
mean(cars_reduced_df$Price)

var(cars_reduced_df$Price)

mean(cars_reduced_df$KM)

var(cars_reduced_df$KM)

plot(cars_reduced_df$KM, cars_reduced_df$Price,
     xlab= "Gefahrene Kilometer",
     ylab= "Fahrzeugwert",
     main= "Der Zusammenhang zwischen der geleisteten Fahrleistung und dem aktuellen Fahrzeugwert")

pdf("Hausaufgabe1.pdf")
plot(cars_reduced_df$KM, cars_reduced_df$Price,
     xlab= "Gefahrene Kilometer",
     ylab= "Fahrzeugwert",
     main= "Zusammenhang zwischen KM-Stand und aktuellem Fahrzeugwert")
dev.off()

plot(as.factor(cars_reduced_df$Fuel_Type), cars_reduced_df$Price,
     xlab= "KFZ-Typ",
     ylab= "Fahrzeugwert",
     main= "Zusammenhang zwischen KFZ-Typ und aktuellem Fahrzeugwert")

summary(cars_reduced_df)