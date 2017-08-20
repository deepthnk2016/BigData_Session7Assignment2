
use custom;

CREATE TABLE olympics_data (athlete string, age int, country string, year int, closingdate string, sport string, goldmedals int, silvermedals int, bronzemedals int, totalmedals int) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';

load data local inpath '/home/acadgild/Deepak/Assignments/Session7Assignment2/olympix_data.csv' into table olympics_data;

--Task 1: Find the number of medals won by each country in Swimming
select country,sum(totalmedals) from olympics_data where sport='Swimming' group by country;

--Task 2: Find the total number of medals won by India year wise.
select year,sum(totalmedals) from olympics_data where country='India' group by year;

--Task 3: Total number of medals each country won
select country,sum(totalmedals) from olympics_data group by country;

--Task 3: Total number of gold medals each country won
select country,sum(goldmedals) from olympics_data group by country;
