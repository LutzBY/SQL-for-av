SELECT id, date, price, model_vlk, model, model_misc, year, url, duplicate_flag, duplicate_id
FROM public.av_full
WHERE id in (114251874, 107156570)
order by date asc
