/* Write your T-SQL query statement below */


select distinct num as ConsecutiveNums
from (
select a.num,
case when a.num=b.num and a.num=c.num then 1  end as ct
from logs a, logs b, logs c
where b.id = a.id-1 and b.id=c.id+1
) tbl where ct=1

-- select id, num, lag(num) over(order by id) as lg
-- from logs
