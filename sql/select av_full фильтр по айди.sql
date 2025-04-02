SELECT af.id, price, string_agg(aph.usd_eq::text, ', ') as pr_ch, model_vlk, brand, model, model_misc, year, type, cylinders, capacity, url, af.date, date_corrected, duplicate_flag, duplicate_id, seller, locations, seller_ph_nr, status, status_date, exclude_flag
FROM public.av_full af
LEFT JOIN av_price_history aph
ON af.id = aph.id_av
WHERE af.id = 115624314
--or af.id in (115371199)
group by af.id
order by id asc
