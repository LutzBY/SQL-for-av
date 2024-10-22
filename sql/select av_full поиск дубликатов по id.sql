SELECT id, date, price, model_vlk, brand, model, model_misc, year, type, cylinders, capacity, mileage, exclude_flag, url
FROM public.av_full
WHERE (brand, model, model_misc, year, type, cylinders, capacity, mileage, seller, locations) = 
(
    SELECT brand, model, model_misc, year, type, cylinders, capacity, mileage, seller, locations
    FROM public.av_full
    WHERE id = 112262309
)
--AND id != 105787706
ORDER BY date ASC;