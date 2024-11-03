-- Выбираем строки с ID, которые указаны в duplicate_id
SELECT *
FROM av_full
WHERE id IN (
    SELECT duplicate_id
    FROM av_full
    WHERE duplicate_flag IS TRUE
)

-- Объединяем их со строками, у которых флаг duplicate_flag = TRUE
UNION

-- Выбираем строки, у которых duplicate_flag = TRUE (т.е., которые ссылаются на другие строки)
SELECT *
FROM av_full
WHERE duplicate_flag IS TRUE
order by model_misc asc;