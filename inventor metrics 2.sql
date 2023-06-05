select user_id,users.username,count(*) as num_like from likes
inner join users on users.id = likes.user_id
group by user_id
having num_like = (select count(*) from photos);