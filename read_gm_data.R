# Read data from .csv files
gdp <- read.csv("data/data-1952.csv")

# Calculate GDP
gdp['gdp'] <- gdp$pop * gdp$gdpPercap

# Subset using a list of variables
keep <- c("country", "year", "lifeExp", "gdp")
gdp <- gdp[keep]

write.csv(gdp, "gdpc.csv")
