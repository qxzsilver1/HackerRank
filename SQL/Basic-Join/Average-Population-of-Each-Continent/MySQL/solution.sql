SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM City INNER JOIN Country ON City.COUNTRYCODE=Country.Code GROUP BY Country.Continent;
