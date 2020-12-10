select distinct * FROM traffic_light t
where month = 10 and year = 2020 and date_upload = (
    select max(date_upload) from traffic_light
    group by user_id
    having user_id = t.user_id
)
order by place desc
limit 100;