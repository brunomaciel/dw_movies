-- MeanCriticsRatingGenre
(select avg("Rotten Tomatoes Ratings %") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimmovies.genre
having dimmovies.genre = ?
),

-- MeanCriticsRatingDirector
(select avg("Rotten Tomatoes Ratings %") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimdirector.director
having dimdirector.director = ?
),

-- MeanPublicRatingGenre
(select avg("Audience Ratings %") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimmovies.genre
having dimmovies.genre = ?
),

-- MeanPublicRatingDirector
(select avg("Audience Ratings %") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimdirector.director
having dimdirector.director = ?
),

-- MeanRottenTomatoesRatingDirector
(select avg("Audience Ratings %") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimmovies.genre
having dimmovies.genre = ?
),

-- MeanRottenTomatoesRatingDirector
(select avg("Audience Ratings %") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimdirector.director
having dimdirector.director = ?
),

-- TotalBudgetYear
(select sum("Budget (million $)") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimtime."Year"
having dimtime."Year" = ?
),

-- TotalBugdetDirector,
(select sum("Budget (million $)") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimdirector.director
having dimdirector.director = ?
),

-- TotalBudgetGenre,
(select sum("Budget (million $)") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimmovies.genre
having dimmovies.genre = ?
),

-- TotalRevenueYear
(select sum("Revenue (Millions)") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimtime."Year"
having dimtime."Year" = ?
),

-- TotalRevenueDirector
(select sum("Revenue (Millions)") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimdirector.director
having dimdirector.director = ?
),

-- TotalRevenueGenre
(select sum("Revenue (Millions)") 
from FatoCinema
join dimdirector on FatoCinema.iddirector = dimdirector.iddirector
join dimmovies on FatoCinema.idmovie = dimmovies.idmovie
join dimtime on FatoCinema.idtime = dimtime.idtime
group by dimmovies.genre
having dimmovies.genre = ?
),