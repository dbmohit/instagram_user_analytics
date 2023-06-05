select users.id as user_id,
		#photos.id as photo_id,
        users.username as username,
        count(*) as total_likes from photos
inner join likes on likes.photo_id = photos.id
inner join users on users.id = photos.user_id

group by photo_id
order by total_likes desc limit 1;



