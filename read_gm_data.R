gdp <- read.csv("data/data-1952.csv")

gdp$gdp <- gdp$gdpPercap * gdp$pop

write.csv(gdp, "gdpc.csv")
