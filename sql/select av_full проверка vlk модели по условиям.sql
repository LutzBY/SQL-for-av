SELECT id, price, model_vlk, brand, model, model_misc, year, type, cylinders, capacity, url
FROM public.av_full
WHERE brand = 'Triumph'
and capacity between 900 and 1100
--and model = 'Tiger'
and model_vlk like '%speed%'
and model NOT like '%Speed%'
order by year asc
