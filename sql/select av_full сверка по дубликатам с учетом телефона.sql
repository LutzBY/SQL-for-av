SELECT
    seller_ph_nr,
	seller,
	string_agg(id::text, ', ') AS id_list,
    COUNT(id) AS id_count,  -- Считаем количество id для номера
	brand,
	model,
	year
FROM
    av_full
WHERE
	seller_ph_nr is not null
	and seller_id is null
GROUP BY 
    seller_ph_nr,
	seller,
	brand,
	model,
	year
HAVING 
    COUNT(id) > 1  -- Условие: только если больше одного id для номера
ORDER BY 
	id_count DESC;
