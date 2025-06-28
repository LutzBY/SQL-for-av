select year, count (id) as ads, round(avg(price)) as avg_price, string_agg(distinct (model_vlk), ', ') as model
from av_full
WHERE model_vlk ilike '%mt%07%'
--and brand = 'Yamaha'
and exclude_flag is FALSE
and duplicate_flag is FALSE
group by year
order by year