{{
  config(materialized = 'ephemeral')
}}

with movies as (
  select * from {{ ref("dim_movies")}}
),
tags as (
  select * from {{ ref("dim_genome_tags")}}
),
scores as (select * from {{ ref("fct_genome_scores")}})

select 
m.movie_id,
m.movies_title,
m.genres,
t.tag_name,
s.RELEVANCE_SCORE
from movies m 
LEFT JOIN SCORES s on m.movie_id = s.movied_id
LEFT JOIN tags t on t.tag_id = s.tag_id 