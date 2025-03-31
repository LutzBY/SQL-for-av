SELECT id, price, model_vlk, brand, model, model_misc, year, type, cylinders, capacity, exclude_flag, url, date, date_corrected, duplicate_flag, duplicate_id, seller, locations, seller_ph_nr, status, status_date
FROM public.av_full 
WHERE id = 115605813
--or id in ()
order by id asc
