SELECT * FROM north_american_cities where country="United States" order by latitude desc

select * from North_american_cities  where longitude < -87.629798 order by longitude
select * from North_american_cities  where country like "Mexico"  order by population desc limit 2
select * from North_american_cities  where country like "United States"  order by population desc limit 2 OFFSET 2
SELECT title,Domestic_sales,International_sales FROM Movies  JOIN  Boxoffice ON Movies.id=Boxoffice.Movie_id 
SELECT title,Domestic_sales,International_sales FROM Movies  JOIN  Boxoffice ON Movies.id=Boxoffice.Movie_id where 
International_sales>Domestic_sales

SELECT title,Domestic_sales,International_sales FROM Movies  JOIN  Boxoffice ON Movies.id=Boxoffice.Movie_id order by rating desc
SELECT distinct Building FROM  Buildings INNER JOIN Employees on Buildings.Building_name=Employees.Building;
SELECT  Building_name,Capacity FROM  Buildings 

SELECT * FROM employees LEFT JOIN Buildings on Buildings.Building_name=Employees.building where building is null

SELECT * FROM buildings LEFT JOIN Employees on Buildings.Building_name=Employees.building where building is  null;

SELECT distinct title as movies, (Domestic_sales
+International_sales
)/1000000 as Millions FROM movies LEFT JOIN  Boxoffice on Movies.id=Boxoffice.Movie_id
SELECT  title as movies,(rating*10) as percent FROM movies LEFT JOIN  Boxoffice on Movies.id=Boxoffice.Movie_id

SELECT  title,year FROM movies LEFT JOIN  Boxoffice on Movies.id=Boxoffice.Movie_id where (year%2)=0

SELECT MAX(	Years_employed) FROM employees;
SELECT role, AVG(Years_employed) FROM employees group BY role;
SELECT building,sum(years_employed) FROM employees group by building;
SELECT count() FROM employees where role="Artist";
SELECT role,count() FROM employees  group by role;
SELECT sum(years_employed) FROM employees where role="Engineer" group by role;
SELECT director,count() FROM movies group by director;
SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
FROM movies
    INNER JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;
Insert into Movies (Title,Director,Year,Length_minutes) values
("Toy Story 4","Lee Unkrich",2023,115)
Insert into BoxOffice  values
(15,8.7,340000000,2700000000)
Update Movies set director="John Lasseter" where title="A Bug's Life"
Update Movies set year=1999 where title="Toy Story 2"
Update Movies set title="Toy Story 3",director="Lee Unkrich" where title="Toy Story 8"
delete from Movies where year<2005
delete from Movies where director="Andrew Stanton"

CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);

ALTER TABLE Movies
ADD Aspect_ratio FLOAT; 

ALTER TABLE Movies
ADD Language TEXT
 DEFAULT "English";

DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS BoxOffice;