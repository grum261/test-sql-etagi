select object_id, round(price/area_total, 2) as avg from objects
where status = 'active'
and class = 'Вторичная'
and round(price/area_total, 2) >= (select avg_price from avg_square);