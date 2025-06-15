select year, count (id), round(avg(price)), string_agg(distinct (model_vlk), ', ')
from av_full
where brand = 'Honda'
and model_vlk ilike 'vt 750%'
group by year
order by year