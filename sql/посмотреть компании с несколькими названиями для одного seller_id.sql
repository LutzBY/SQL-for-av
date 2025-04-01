SELECT count(af.id), seller_id, string_agg(distinct seller, ', ') as titles, legal_name
FROM av_full af
join av_organizations ao
on af.seller_id = ao.id
where seller_id is not null
group by seller_id, legal_name
having count(distinct seller) > 1
order by count desc
