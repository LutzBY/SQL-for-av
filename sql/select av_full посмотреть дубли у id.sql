WITH CTE AS (SELECT 110256328 AS search_id)
Select id, date, date_corrected, price, brand, model, model_misc, model_vlk, year, mileage, locations, seller, status, status_date, duplicate_flag, duplicate_id, exclude_flag, url
from av_full
where id = (select search_id from CTE)
or duplicate_id = (select search_id from CTE)
order by date asc