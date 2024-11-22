SELECT *
FROM public.av_full
WHERE (brand, model, year, type, cylinders, capacity, seller, locations) = 
(
    SELECT brand, model, year, type, cylinders, capacity, seller, locations
    FROM public.av_full
    WHERE id = 112944635
	-- model_vlk, mileage
)
--AND id != 105787706
ORDER BY date ASC;