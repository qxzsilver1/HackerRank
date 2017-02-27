/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM City INNER JOIN Country ON City.COUNTRYCODE=Country.Code GROUP BY Country.Continent;
