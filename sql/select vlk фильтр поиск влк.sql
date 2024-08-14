select id, brand, model, year, mtype, cylinders, displacement_ccm
from vlookup
where brand = 'yamaha'
--and year = 2007
and model like '%yzf r 1%'
and cylinders = 4
order by year asc