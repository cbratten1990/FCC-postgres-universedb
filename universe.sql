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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    astronomer_id integer NOT NULL,
    name character varying NOT NULL,
    birth_date date,
    nationality text,
    field_of_study text,
    notable_discoveries text
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_astronomer_id_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_type text,
    distance_from_earth numeric
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
    name character varying NOT NULL,
    planet_id integer,
    moon_type text,
    distance_from_planet numeric,
    has_atmosphere boolean,
    age_in_millions_of_years integer
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
    name character varying NOT NULL,
    star_id integer,
    planet_type text,
    distance_from_star numeric,
    has_moons boolean,
    age_in_millions_of_years integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    star_type text,
    distance_from_earth numeric,
    has_black_hole boolean,
    age_in_millions_of_years integer
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
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_astronomer_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES (1, 'Carl Sagan', '1934-11-09', 'USA', 'Astronomy', 'Cosmos television series');
INSERT INTO public.astronomer VALUES (2, 'Jocelyn Bell Burnell', '1943-07-15', 'UK', 'Astronomy', 'Discovery of pulsars');
INSERT INTO public.astronomer VALUES (3, 'Vera Rubin', '1928-07-23', 'USA', 'Astronomy', 'Evidence for dark matter');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', false, true, 13000, 'Spiral', 26000.50);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Large spiral galaxy', false, true, 21000, 'Spiral', 220000.75);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy', false, true, 4000, 'Spiral', 300000.25);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 'Bode''s Galaxy', false, true, 12000, 'Spiral', 450000.00);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Active galaxy with a prominent dust lane', false, false, 11000, 'Elliptical', 380000.30);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral galaxy with a prominent dust lane', false, true, 9000, 'Spiral', 500000.20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Terrestrial', 0.0003844, false, 4500);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Rocky', 0.000009378, false, 4000);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Rocky', 0.00002346, false, 4000);
INSERT INTO public.moon VALUES (4, 'Ganymede', 3, 'Icy', 0.0010704, false, 800);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 'Icy', 0.0006709, false, 800);
INSERT INTO public.moon VALUES (6, 'Callistro', 3, 'Icy', 0.0018827, false, 800);
INSERT INTO public.moon VALUES (7, 'TrES-3b', 4, 'Hot Jupiter', 0.02222, false, 4500);
INSERT INTO public.moon VALUES (8, 'Kepler-22b', 5, 'Mini-Neptune', 0.0832, false, 1400);
INSERT INTO public.moon VALUES (9, 'HD 209458 b', 5, 'Hot Jupiter', 0.045, false, 500);
INSERT INTO public.moon VALUES (10, 'HD 106906 b', 6, 'Gas Giant', 0.650, false, 10);
INSERT INTO public.moon VALUES (11, 'HD 188753 Ab', 6, 'Gas Giant', 0.0371, false, 10);
INSERT INTO public.moon VALUES (12, 'PSR J1719-1438 b', 6, 'Ultra-short period', 0.00000666, false, 100);
INSERT INTO public.moon VALUES (13, 'Ophelia', 7, 'Asteroidal moon', 0.0093, false, 500);
INSERT INTO public.moon VALUES (14, 'Kepler-1625b I', 8, 'Gas Giant', 0.0078, false, 1400);
INSERT INTO public.moon VALUES (15, 'Kepler-1625b II', 8, 'Gas Giant', 0.000223, false, 1400);
INSERT INTO public.moon VALUES (16, 'HD 13931 b', 9, 'Gas Giant', 0.0449, false, 100);
INSERT INTO public.moon VALUES (17, 'Kepler-453 b', 10, 'Gas Giant', 0.028, false, 500);
INSERT INTO public.moon VALUES (18, 'OGLE-2012-BLG-0026Lb', 10, 'Gas Giant', 0.878, false, 500);
INSERT INTO public.moon VALUES (19, 'MOA-2011-BLG-262Lb', 11, 'Gas Giant', 0.617, false, 500);
INSERT INTO public.moon VALUES (20, 'Neptune', 11, 'Ice Giant', 0.0005463, true, 4500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', 0.00001581, true, 4500);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Terrestrial', 0.00002398, true, 4000);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'Terrestrial', 0.00001378, false, 4000);
INSERT INTO public.planet VALUES (4, 'Proxima Centauri b', 2, 'Terrestrial', 0.0498, false, 1100);
INSERT INTO public.planet VALUES (5, 'Gliese 581 c', 2, 'Super-Earth', 0.07212, false, 800);
INSERT INTO public.planet VALUES (6, 'Gliese Centauri d', 2, 'Super-Earth', 0.2203, false, 800);
INSERT INTO public.planet VALUES (7, 'Gliese Centauri g', 2, 'Super-Earth', 0.146, false, 800);
INSERT INTO public.planet VALUES (8, 'Kepler-186 f', 3, 'Rocky', 0.041, false, 4500);
INSERT INTO public.planet VALUES (9, 'Kepler-452 b', 3, 'Rocky', 0.0455, false, 1400);
INSERT INTO public.planet VALUES (10, 'HD 189733 b', 4, 'Gas Giant', 0.0312, true, 100);
INSERT INTO public.planet VALUES (11, 'Kepler-16 b', 4, 'Gas Giant', 0.045, true, 500);
INSERT INTO public.planet VALUES (12, 'OGLE-2016-BLG-1195Lb', 4, 'Gas Giant', 0.0126, true, 500);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type main-sequence', 0.00001581, false, 4600);
INSERT INTO public.star VALUES (2, 'Alpha centauri A', 1, 'G-type main-sequence', 4.365, false, 6600);
INSERT INTO public.star VALUES (3, 'Alpha centauri B', 1, 'K-type main-sequence', 4.365, false, 5400);
INSERT INTO public.star VALUES (4, 'Sirius', 2, 'A-type main-sequence', 8.611, false, 230);
INSERT INTO public.star VALUES (5, 'Vega', 2, 'A-type main-sequence', 25.04, false, 455);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 4, 'Red supergiant', 548.41, false, 10);


--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_astronomer_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astronomer uk_astronomer_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT uk_astronomer_name UNIQUE (name);


--
-- Name: galaxy uk_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uk_galaxy_name UNIQUE (name);


--
-- Name: moon uk_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uk_moon_name UNIQUE (name);


--
-- Name: planet uk_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uk_planet_name UNIQUE (name);


--
-- Name: star uk_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uk_star_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

