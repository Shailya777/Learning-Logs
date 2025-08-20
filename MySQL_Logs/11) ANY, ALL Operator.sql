-- Select actors who acted in movies with movie id 101, 110, 121
select * from movie_actor;

select actor_id from movie_actor
where movie_id in (101, 110, 121);

select * from actors
where actor_id in (select actor_id from movie_actor
					where movie_id in (101, 110, 121));

-- Movies with rating greater than any marvel movies rating:
select imdb_rating from movies
where studio = 'marvel studios';

select * from movies
where imdb_rating > any(select imdb_rating from movies
						where studio = 'marvel studios');

-- Movies with rating greater than all of marvel movies:
select * from movies
where imdb_rating > all(select imdb_rating from movies
						where studio = 'marvel studios');
