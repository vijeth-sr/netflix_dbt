with src_movies as(
  select* from {{ ref("src_movie")}}
)

select movie_id, INITCAP(TRIM(title)) AS movies_title,
split(genres,'|') as genre_array,
genres from src_movies