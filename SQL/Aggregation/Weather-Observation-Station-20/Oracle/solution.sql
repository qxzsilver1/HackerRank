/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
Select round(S.LAT_N,4) median from station S where (select count(Lat_N) from station where Lat_N < S.LAT_N ) = (select count(Lat_N) from station where Lat_N > S.LAT_N);
