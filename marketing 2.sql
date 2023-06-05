select username,users.id as user_id from users
left join photos on users.id = photos.user_id
where photos.id is null;

