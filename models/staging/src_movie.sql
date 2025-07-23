with raw_movies as (
  Select * from netflix.raw.raw_movies
)
select  movieId as movie_id, title, genres
from raw_movies