with genome_scores as ( 
  select movie_id, tag_id, relevance from {{ref("src_genome_score")}}
)

select movie_id, tag_id, ROUND(relevance,4) AS RELEVANCE_SCORE from genome_scores
where relevance>0