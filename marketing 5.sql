use ig_clone;
select dayname(created_at) as days,count(*) as num from users
group by days
order by num desc;