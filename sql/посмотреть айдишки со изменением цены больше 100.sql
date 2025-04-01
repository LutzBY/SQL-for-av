WITH calculated_changes AS (
    SELECT 
        id, 
        price, 
        price_change[array_upper(price_change, 1)] AS last_price_change, 
        price_change[array_upper(price_change, 1)] - price AS pr_change,
		brand,
		date,
		model_vlk,
		url
    FROM 
        av_full
    WHERE 
        price_change IS NOT NULL
	AND
		status = 'Актуально'
),
vlk_avg AS (
	select 
		count(id), 
		model_vlk, 
		round(avg(price), 0) as avg_price
	from 
		av_full
	where
		duplicate_flag is False
	and
		exclude_flag is False
	group by
		model_vlk
)
SELECT 
    cs.id,
	cs.brand,
	cs.model_vlk,
	va.avg_price,
    cs.last_price_change - va.avg_price as pr_diff,
	cs.date,
	cs.price,
	cs.last_price_change,
	cs.pr_change,
	cs.url
FROM 
    calculated_changes cs
JOIN
	vlk_avg va
ON
	cs.model_vlk = va.model_vlk
WHERE 
    pr_change > 99
OR
	pr_change < - 99
ORDER BY
	pr_change asc