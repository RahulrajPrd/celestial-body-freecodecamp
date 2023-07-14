--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    years_old integer,
    size integer,
    has_planet boolean,
    astronaunt boolean,
    area_calculated numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    color text NOT NULL,
    description character varying(150) NOT NULL,
    radius integer,
    distance integer,
    area numeric,
    has_life boolean,
    astronaut boolean,
    name character varying(50)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    color text NOT NULL,
    description character varying(150) NOT NULL,
    radius integer,
    distance integer,
    area numeric,
    has_life boolean,
    astronaut boolean,
    name character varying(50)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.reports (
    reports_id integer NOT NULL,
    old integer NOT NULL,
    gene integer,
    type numeric,
    alive boolean,
    record boolean,
    description character varying(100),
    code text,
    name character varying(100)
);


ALTER TABLE public.reports OWNER TO freecodecamp;

--
-- Name: reports_report_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.reports_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_report_id_seq OWNER TO freecodecamp;

--
-- Name: reports_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.reports_report_id_seq OWNED BY public.reports.reports_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    color text NOT NULL,
    description character varying(150) NOT NULL,
    radius integer,
    distane integer,
    area numeric,
    has_life boolean,
    astronaut boolean,
    name character varying(50)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: reports reports_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reports ALTER COLUMN reports_id SET DEFAULT nextval('public.reports_report_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 15000000, 1000000, true, false, 456321.456, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 16000000, 2000000, false, false, 456551.456, 'Spiral Galaxy1');
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 170000000, 30000000, true, true, 8963.325, 'Spiral Galaxy 3');
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 18000000, 3000000, false, false, 456551.456, 'Spiral Galaxy 4');
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 19000000, 4000000, true, false, 788963.325, 'Spiral Galaxy 5');
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 10000000, 1000000000, false, false, 454544535.35635, 'Spiral Galaxy 6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, '1', 'Spiral Moon 1', 489, 321, 856.63, true, true, 'Moon 1');
INSERT INTO public.moon VALUES (2, 2, '2', 'Spiral Moon 2', 489, 321, 856.63, true, true, 'Moon 2');
INSERT INTO public.moon VALUES (3, 3, '3', 'Spiral Moon 3', 489, 321, 856.63, true, true, 'Moon 3');
INSERT INTO public.moon VALUES (7, 5, '5', 'Spiral Moon 5', 489, 321, 856.63, true, true, 'Moon 5');
INSERT INTO public.moon VALUES (8, 6, '6', 'Spiral Moon 6', 489, 321, 856.63, true, true, 'Moon 6');
INSERT INTO public.moon VALUES (9, 7, '7', 'Spiral Moon 7', 489, 321, 856.63, true, true, 'Moon 7');
INSERT INTO public.moon VALUES (10, 8, '8', 'Spiral Moon 8', 489, 321, 856.63, true, true, 'Moon 8');
INSERT INTO public.moon VALUES (11, 9, '9', 'Spiral Moon 9', 489, 321, 856.63, true, true, 'Moon 9');
INSERT INTO public.moon VALUES (12, 10, '10', 'Spiral Moon 10', 489, 321, 856.63, true, true, 'Moon 10');
INSERT INTO public.moon VALUES (13, 11, '11', 'Spiral Moon 11', 489, 321, 856.63, true, true, 'Moon 11');
INSERT INTO public.moon VALUES (14, 12, '12', 'Spiral Moon 12', 489, 321, 856.63, true, true, 'Moon 12');
INSERT INTO public.moon VALUES (15, 13, '13', 'Spiral Moon 13', 489, 321, 856.63, true, true, 'Moon 13');
INSERT INTO public.moon VALUES (17, 1, '14', 'Spiral Moon 14', 489, 321, 856.63, true, true, 'Moon 14');
INSERT INTO public.moon VALUES (18, 2, '15', 'Spiral Moon 15', 489, 321, 856.63, true, true, 'Moon 15');
INSERT INTO public.moon VALUES (19, 3, '16', 'Spiral Moon 16', 489, 321, 856.63, true, true, 'Moon 16');
INSERT INTO public.moon VALUES (21, 5, '17', 'Spiral Moon 17', 489, 321, 856.63, true, true, 'Moon 17');
INSERT INTO public.moon VALUES (22, 6, '18', 'Spiral Moon 18', 489, 321, 856.63, true, true, 'Moon 18');
INSERT INTO public.moon VALUES (23, 7, '19', 'Spiral Moon 19', 489, 321, 856.63, true, true, 'Moon 19');
INSERT INTO public.moon VALUES (24, 8, '20', 'Spiral Moon 20', 489, 321, 856.63, true, true, 'Moon 20');
INSERT INTO public.moon VALUES (25, 9, '21', 'Spiral Moon 21', 489, 321, 856.63, true, true, 'Moon 21');
INSERT INTO public.moon VALUES (26, 10, '22', 'Spiral Moon 22', 489, 321, 856.63, true, true, 'Moon 22');
INSERT INTO public.moon VALUES (27, 11, '23', 'Spiral Moon 23', 489, 321, 856.63, true, true, 'Moon 23');
INSERT INTO public.moon VALUES (28, 12, '24', 'Spiral Moon 24', 489, 321, 856.63, true, true, 'Moon 24');
INSERT INTO public.moon VALUES (29, 13, '25', 'Spiral Moon 25', 489, 321, 856.63, true, true, 'Moon 25');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Color 1', 'Spiral Planet 1', 4563, 8596, 126.789, false, true, 'Planet 1');
INSERT INTO public.planet VALUES (2, 2, 'Color 2', 'Spiral Planet 2', 4563, 8596, 126.789, false, true, 'Planet 2');
INSERT INTO public.planet VALUES (3, 3, 'Color 3', 'Spiral Planet 3', 4563, 8596, 126.789, false, true, 'Planet 3');
INSERT INTO public.planet VALUES (5, 4, 'Color 4', 'Spiral Planet 4', 48993, 8596, 176.789, false, true, 'Planet 4');
INSERT INTO public.planet VALUES (6, 5, 'Color 5', 'Spiral Planet 5', 48993, 8596, 176.789, false, true, 'Planet 5');
INSERT INTO public.planet VALUES (7, 6, 'Color 6', 'Spiral Planet 6', 48993, 8596, 176.789, false, true, 'Planet 6');
INSERT INTO public.planet VALUES (8, 1, 'Color 7', 'Spiral Planet 7', 48993, 8596, 176.789, false, true, 'Planet 7');
INSERT INTO public.planet VALUES (9, 2, 'Color 8', 'Spiral Planet 8', 48993, 8596, 176.789, false, true, 'Planet 8');
INSERT INTO public.planet VALUES (10, 3, 'Color 9', 'Spiral Planet 9', 48993, 8596, 176.789, false, true, 'Planet 9');
INSERT INTO public.planet VALUES (11, 4, 'Color 10', 'Spiral Planet 10', 48993, 8596, 176.789, false, true, 'Planet 10');
INSERT INTO public.planet VALUES (12, 5, 'Color 11', 'Spiral Planet 11', 48993, 8596, 176.789, false, true, 'Planet 11');
INSERT INTO public.planet VALUES (13, 6, 'Color 12', 'Spiral Planet 12', 48993, 8596, 176.789, false, true, 'Planet 12');


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.reports VALUES (1, 10, 20, 45.33, true, true, 'R 1', 'ZXCV', 'R 1');
INSERT INTO public.reports VALUES (2, 30, 30, 665.33, true, true, 'R 2', 'ZXC2', 'R 2');
INSERT INTO public.reports VALUES (3, 40, 40, 565.33, true, true, 'R 3', 'ZXC3', 'R 3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Color 1', 'Spiral Star 1', 45056, 1520000, 456.3223, true, true, 'Star 1');
INSERT INTO public.star VALUES (2, 2, 'Color 2', 'Spiral Star 2', 45056, 1520000, 456.3223, false, true, 'Star 2');
INSERT INTO public.star VALUES (3, 3, 'Color 3', 'Spiral Star 3', 45056, 1520000, 456.3223, false, true, 'Star 3');
INSERT INTO public.star VALUES (4, 4, 'Color 4', 'Spiral Star 4', 4505612, 17820000, 456.3223, false, false, 'Star 4');
INSERT INTO public.star VALUES (5, 5, 'Color 5', 'Spiral Star 5', 45078212, 15620000, 456.3223, true, false, 'Star 5');
INSERT INTO public.star VALUES (6, 6, 'Color 6', 'Spiral Star 6', 450238212, 15622000, 456.3223, false, false, 'Star 6');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: reports_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.reports_report_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_color_key UNIQUE (color);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: reports reports_old_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_old_key UNIQUE (old);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (reports_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

