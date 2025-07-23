-- select movie_id, tag_id, RELEVANCE_SCORE
-- from {{ ref('fct_genome_scores')}}
-- where relevance_score<=0

{{ no_nulls_in_columns(ref('fct_genome_scores'))}}