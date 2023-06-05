use ig_clone;
select
((select count(*) from photos)/(select count(*) from users))
as total_photo_per_user;