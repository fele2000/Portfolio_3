/* Find Countries with a Population Greater Than the Global Average */
/* SELECT population, `name`
FROM country
WHERE population > (
	SELECT AVG(population)
    FROM country) */
    
/* Top 5 Most Spoken Languages */
/* SELECT `language`, sum(population)
FROM countrylanguage
INNER JOIN city ON countrylanguage.CountryCode = city.CountryCode
GROUP BY `language`
ORDER BY SUM(population) DESC LIMIT 5; */

/* Calculate the Population Density */
/* SELECT (population DIV SurfaceArea) AS Density, `Name`
FROM country
WHERE SurfaceArea IS NOT NULL
ORDER BY Density DESC LIMIT 10; */

/* Countries with No Cities */
/* SELECT country.`name`, `Code`
FROM country
LEFT JOIN city ON country.Code = city.CountryCode
WHERE city.ID IS NULL */

/* Average Life Expectancy by Continent */
/* SELECT AVG(LifeExpectancy), Continent
FROM country
GROUP BY Continent
ORDER BY AVG(LifeExpectancy) DESC; */

/* Cities in Countries with Similar Population */
/* SELECT city.`name`, city.population, country.`Name`
FROM city
INNER JOIN country ON country.Code = city.CountryCode
WHERE city.population BETWEEN 
0.9*(SELECT population
		FROM country
		WHERE `Name` = 'Japan')
	AND
1.1*(SELECT population
		FROM country
		WHERE `Name` = 'Japan') */
        
/* Rank Countries by GDP */
/* I assume GDP means GNP in this dataset, even though they are different things */
/* SELECT GNP, `Name`, RANK() OVER(ORDER BY GNP DESC) as 'Rank'
FROM country */

/* Countries with a Higher GDP than Their Neighboring Countries */
/* I assume neighbours are within their regions as there is no 'neighbour relantionship in the countries table' */
/* SELECT Region, GNP, `Name`
FROM (SELECT Region, GNP, `Name`, RANK() OVER(PARTITION BY Region ORDER BY GNP DESC) AS 'Rank'
FROM country) temp
WHERE temp.`Rank` < 2 AND GNP > 0
ORDER BY GNP DESC; */

/* Language Distribution Across Countries */
/* SELECT `Language`, COUNT(CountryCode) as NumberOfCountries
FROM countrylanguage
GROUP BY `Language`
ORDER BY COUNT(CountryCode) DESC; */

/* Cities with Population Greater than Their Country’s Average */
/* SELECT city.`Name` AS city_name, city.Population as city_population, country_avgPop, country.`name` AS country_name
FROM (SELECT AVG(Population) as country_avgPop, CountryCode
FROM city
GROUP BY CountryCode) temp
INNER JOIN country ON temp.CountryCode = country.`Code`
INNER JOIN city ON temp.CountryCode = city.CountryCode
WHERE city.Population > country_avgPop
ORDER BY country_name */







