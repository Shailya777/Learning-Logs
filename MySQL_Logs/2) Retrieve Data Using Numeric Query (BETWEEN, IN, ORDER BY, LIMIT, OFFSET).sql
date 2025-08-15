select * from movies;

select * from movies
where imdb_rating >= 9;

select * from movies
where imdb_rating <= 5;

select * from movies
where imdb_rating > 9;

select * from movies
where imdb_rating < 5;

select * from movies
where imdb_rating >= 6 and imdb_rating <= 9;

select * from movies
where imdb_rating between 6 and 9;

select * from movies
where release_year = 2022 or release_year = 2019;

select * from movies
where release_year = 2022 or release_year = 2019 or release_year = 2018;

select * from movies
where release_year in (2022, 2019, 2018);

select * from movies
where studio in ('marvel studios', 'zee studios');

select * from movies
where imdb_rating is null;

select * from movies
where imdb_rating is not null;

select * from movies
where industry = 'bollywood'
order by imdb_rating;

select * from movies
where industry = 'bollywood'
order by imdb_rating desc;

select * from movies
where industry = 'bollywood'
order by imdb_rating desc
limit 5;

select * from movies
where industry = 'Bollywood'
order by imdb_rating desc
limit 5
offset 3;

-- Print all movies in the order of their release year (latest first).
select * from movies
order by release_year desc;

-- All movies released in the year 2022.
select * from movies
where release_year = 2022;

-- All the movies released after 2020.
select * from movies
where release_year > 2020;

-- All movies after the year 2020 that have more than 8 rating.
select * from movies
where release_year > 2020 and
imdb_rating > 8;

-- Select all movies that are by Marvel studios and Hombale Films.
select * from movies
where studio in ('marvel studios', 'hombale films');

-- Select all THOR movies by their release year.
select * from movies
where title like '%thor%'
order by release_year;

-- Select all movies that are not from Marvel Studios.
select * from movies
where studio not like '%marvel%';