/*
Если использовать action_name, то конверсию можно посчитать так:
select (
    sum(
        case when action_name = 'Заявка в банк' then 1 else 0
        end
    )/(count(*) - sum(
        case when action_name = 'Заявка в банк' then 1 else 0
        end
    ))
) * 100
from ost_ticket_action_history;
*/
select distinct extract(month from started), tic.city_id, (sum(action_id)/(count(*) - sum(action_id))) * 100
from ost_ticket_action_history act
inner join ost_ticket tic on act.ticket_id = tic.ticket_id
where tic.created >= '2020-01-01' and tic.status = 'open'
group by extract(month from started);