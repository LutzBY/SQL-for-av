SELECT id, price, model_vlk, brand, model, model_misc, year, type, cylinders, capacity, exclude_flag, url
FROM public.av_full
WHERE id = 110495074
order by year asc
