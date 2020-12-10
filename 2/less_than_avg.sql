select o.object_id, round(price/area_total, 2) as avg from objects o
inner join avg_price_square_city a on o.city_id = a.city_id
where o.action = 'Продажа' and o.status = 'active' and o.class = 'Вторичная'
and round(price/area_total, 2) <= a.avg_price;
