SELECT count (af.id), seller, title, legal_name, seller_id
FROM AV_FULL af
LEFT JOIN av_organizations ao
ON af.seller_id = ao.id
WHERE title is null
AND seller_id is not null
GROUP BY seller, title, legal_name, seller_id
ORDER BY count desc