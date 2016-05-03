#Initialize an empty data frame
gdp = data.frame()

#Read data from .csv files
for (input in list.files(pattern = "data-[0-9]+.csv") ) {
	new <- read.csv(input)
	gdp <- rbind(gdp, new)
}

#Big comment block

#qeoakes changed the formula

gdp['gdp'] <- gdp$gdpPercap * gdp$pop

keep <- c('country', 'year', 'lifeExp', 'gdp')
gdp <- gdp[keep]

write.csv(gdp, "gdpc.csv")
