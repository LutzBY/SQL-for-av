SELECT id, price, model_vlk, brand, model, model_misc, year, type, cylinders, capacity, exclude_flag, url, date, date_corrected, duplicate_flag, duplicate_id
FROM public.av_full
WHERE id in (114597106, 110903324)
order by id asc
