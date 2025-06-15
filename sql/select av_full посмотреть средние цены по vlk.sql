select year, count (id) as ads, round(avg(price)) as avg_price, string_agg(distinct (model_vlk), ', ') as model
from av_full
where brand = 'Kawasaki'
and model_vlk ilike '%z 1000 sx%1%'
and exclude_flag is FALSE
and duplicate_flag is FALSE
group by year
order by year