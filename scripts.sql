CREATE SEQUENCE public.dimdirector_iddirector_seq
    INCREMENT 1
    START 645
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.dimdirector_iddirector_seq
    OWNER TO postgres;



CREATE SEQUENCE public.dimmovies_idmovie_seq
    INCREMENT 1
    START 2935
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.dimmovies_idmovie_seq
    OWNER TO postgres;



CREATE SEQUENCE public.dimtime_idtime_seq
    INCREMENT 1
    START 11
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.dimtime_idtime_seq
    OWNER TO postgres;



CREATE SEQUENCE public."imdb_Rank_seq"
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public."imdb_Rank_seq"
    OWNER TO postgres;







-- Table: public.imdb

-- DROP TABLE public.imdb;

CREATE TABLE public.imdb
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
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.imdb
    OWNER to postgres;





-- Table: public.movieratings

-- DROP TABLE public.movieratings;

CREATE TABLE public.movieratings
(
    film text COLLATE pg_catalog."default",
    genre text COLLATE pg_catalog."default",
    "Rotten Tomatoes Ratings %" double precision,
    "Audience Ratings %" double precision,
    "Budget (million $)" double precision,
    "Year of release" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.movieratings
    OWNER to postgres;







-- Table: public.dimtime

-- DROP TABLE public.dimtime;

CREATE TABLE public.dimtime
(
    idtime bigint NOT NULL DEFAULT nextval('dimtime_idtime_seq'::regclass),
    "Year" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.dimtime
    OWNER to postgres;

-- Index: idx_dimtime_lookup

-- DROP INDEX public.idx_dimtime_lookup;

CREATE INDEX idx_dimtime_lookup
    ON public.dimtime USING btree
    ("Year")
    TABLESPACE pg_default;

-- Index: idx_dimtime_pk

-- DROP INDEX public.idx_dimtime_pk;

CREATE UNIQUE INDEX idx_dimtime_pk
    ON public.dimtime USING btree
    (idtime)
    TABLESPACE pg_default;






-- Table: public.dimdirector

-- DROP TABLE public.dimdirector;

CREATE TABLE public.dimdirector
(
    iddirector bigint NOT NULL DEFAULT nextval('dimdirector_iddirector_seq'::regclass),
    director text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.dimdirector
    OWNER to postgres;

-- Index: idx_dimdirector_lookup

-- DROP INDEX public.idx_dimdirector_lookup;

CREATE INDEX idx_dimdirector_lookup
    ON public.dimdirector USING btree
    (director COLLATE pg_catalog."default")
    TABLESPACE pg_default;

-- Index: idx_dimdirector_pk

-- DROP INDEX public.idx_dimdirector_pk;

CREATE UNIQUE INDEX idx_dimdirector_pk
    ON public.dimdirector USING btree
    (iddirector)
    TABLESPACE pg_default;




-- Table: public.dimmovies

-- DROP TABLE public.dimmovies;

CREATE TABLE public.dimmovies
(
    idmovie bigint NOT NULL DEFAULT nextval('dimmovies_idmovie_seq'::regclass),
    title text COLLATE pg_catalog."default",
    genre text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.dimmovies
    OWNER to postgres;

-- Index: idx_dimmovies_lookup

-- DROP INDEX public.idx_dimmovies_lookup;

CREATE INDEX idx_dimmovies_lookup
    ON public.dimmovies USING btree
    (title COLLATE pg_catalog."default")
    TABLESPACE pg_default;

-- Index: idx_dimmovies_pk

-- DROP INDEX public.idx_dimmovies_pk;

CREATE UNIQUE INDEX idx_dimmovies_pk
    ON public.dimmovies USING btree
    (idmovie)
    TABLESPACE pg_default;




-- Table: public.fatocinema

-- DROP TABLE public.fatocinema;

CREATE TABLE public.fatocinema
(
    idmovie bigint,
    iddirector bigint,
    idtime bigint,
    rating double precision,
    "Revenue (Millions)" double precision,
    "Rotten Tomatoes Ratings %" double precision,
    "Audience Ratings %" double precision,
    "Budget (million $)" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fatocinema
    OWNER to postgres;

