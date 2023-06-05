use ig_clone;
#select tag_name,count(*) from tags
#group by tag_name;
select tag_id,tags.tag_name as tag_name, count(*) as num from photo_tags
left join tags on tags.id = photo_tags.tag_id
group by tag_id
order by num desc limit 5;