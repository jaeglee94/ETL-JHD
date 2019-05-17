select a.title, a.image, a.theatre, c.Poster, c.Theater
from amc a
left join Cinemark c using(title)
union ALL
select a.title, a.image, a.theatre, c.Poster, c.Theater
from Cinemark c
left join amc a using(title)
where a.title is null;

create view complete_movie_list as
	select a.title, a.image, a.theatre, c.Poster, c.Theater
	from amc a
	left join Cinemark c using(title)
	union ALL
	select a.title, a.image, a.theatre, c.Poster, c.Theater
	from Cinemark c
	left join amc a using(title)
	where a.title is null;
	
select * from complete_movie_list;	