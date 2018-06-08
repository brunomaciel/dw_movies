CREATE TABLE imdb
(
    "Rank" bigint NOT NULL DEFAULT nextval('"imdb_Rank_seq"'::regclass),
    title text COLLATE pg_catalog."default",
    genre text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    director text COLLATE pg_catalog."default",
    actors text COLLATE pg_catalog."default",
    "Year" double precision,
    "Runtime (Minutes)" double precision,
    rating double precision,
    votes double precision,
    "Revenue (Millions)" double precision,
    metascore double precision
);


CREATE TABLE movieRatings
(
  film TEXT
, Genre TEXT
, "Rotten Tomatoes Ratings %" DOUBLE PRECISION
, "Audience Ratings %" DOUBLE PRECISION
, "Budget (million $)" DOUBLE PRECISION
, "Year of release" DOUBLE PRECISION
);

