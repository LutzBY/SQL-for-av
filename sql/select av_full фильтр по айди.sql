SELECT id, price, model_vlk, brand, model, model_misc, year, type, cylinders, capacity, exclude_flag, url, date, date_corrected, duplicate_flag, duplicate_id, seller, locations, seller_ph_nr, status, status_date 
FROM public.av_full 
WHERE id in (115278131, 110279690)
order by id asc
