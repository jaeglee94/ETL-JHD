select * 
from amc 
where title like "%Avengers%";

Create view  all_movies as
	select a.title, a.image, a.theatre, c.Poster, c.Theater
	from amc a, Cinemark c
	where a.title = c.title;

select *
from all_movies;

