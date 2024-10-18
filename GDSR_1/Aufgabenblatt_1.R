# Präambel
rm(list=ls()) # Entfernt alle Objekte (Datensätze, Variablen usw.) aus dem Speicher

library(readr)

## Vorbereitung

housing_df <- read_csv("WestRoxbury.csv")
View(housing_df)

## Analyse

housing_df[1:10,] # Erste 10 Zeilen

housing_df[2,1] # Wert der zweiten Wohnung

housing_reduced_df <- housing_df[,c(1,4,14)] # Auswahl der drei Variablen

table(housing_reduced_df$REMODEL) # Häufigkeitstabelle

dim(housing_df) # Dimensionen

length(housing_df$"TOTAL VALUE") # Anzahl der Zeilen

length(names(housing_df)) # Anzahl der Spalten

plot(x=housing_df$"LIVING AREA", y=housing_df$"TOTAL VALUE",
     xlab="Wohnfläche",
     ylab="Wert",
     main="Zusammenhang zwischen Wohnfläche und Wohnungswert")

pdf("Abbildung1.pdf")
plot(x=housing_df$"LIVING AREA", y=housing_df$"TOTAL VALUE",
     xlab="Wohnfläche",
     ylab="Wert",
     main="Zusammenhang zwischen Wohnfläche und Wohnungswert")
dev.off()

#plot(x=housing_df$REMODEL, y=housing_df$"TOTAL VALUE", 
#     xlab="Wert",
#     ylab="Renovierungszustand",
#     main="Zusammenhang zwischen Renovierungszustand und Wohnungswert")

plot(x=as.factor(housing_df$REMODEL), y=housing_df$"TOTAL VALUE", 
     xlab="Wert",
     ylab="Renovierungszustand",
     main="Zusammenhang zwischen Renovierungszustand und Wohnungswert")

summary(housing_df)