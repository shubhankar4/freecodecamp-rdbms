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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    no_of_stars integer,
    dist_from_earth numeric(20,3),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    age integer,
    radius integer,
    dist_from_planet numeric(12,3),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age integer,
    no_of_moons integer,
    dist_from_earth numeric(30,3),
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    radius integer,
    dist_from_earth numeric(20,3),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Long Tail', 120);
INSERT INTO public.comet VALUES (2, 'Solaris 142', 50);
INSERT INTO public.comet VALUES (3, 'Oriion 12', 780);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 859, 133, 56.360, 'Milky Way is where our solar system is');
INSERT INTO public.galaxy VALUES (2, 'Galaxy 75M', 780, 410, 784.000, 'A galaxy far far away');
INSERT INTO public.galaxy VALUES (3, 'Galaxy12U', 420, 120, 1000.000, 'A galaxy that is recently been born');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 1200, 890, 230.620, 'A galaxy near us');
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', 450, 60, 350.000, 'Discovered in the 1970s');
INSERT INTO public.galaxy VALUES (6, 'Magllanic Clouds', 980, 782, 1200.300, 'Oldest galaxy known to humans');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'PO42', 180, 21, 45.000, 1);
INSERT INTO public.moon VALUES (2, 'Jup-1M', 230, 45, 18.020, 1);
INSERT INTO public.moon VALUES (3, 'Ear-1M', 120, 8, 6.400, 2);
INSERT INTO public.moon VALUES (4, 'Moon1-1A', 200, 50, 120.000, 1);
INSERT INTO public.moon VALUES (5, 'Moon1-1B', 120, 20, 180.000, 1);
INSERT INTO public.moon VALUES (6, 'Moon1-2', 230, 70, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Moon1-3A', 130, 200, 80.000, 3);
INSERT INTO public.moon VALUES (8, 'Moon1-3B', 70, 20, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Moon1-12B', 10, 20, 24.000, 12);
INSERT INTO public.moon VALUES (10, 'Moon1-12A', 40, NULL, 10.000, 12);
INSERT INTO public.moon VALUES (11, 'Moon6-4A', 200, 80, 120.000, 6);
INSERT INTO public.moon VALUES (12, 'Moon6-4B', 310, 170, 180.000, 6);
INSERT INTO public.moon VALUES (13, 'Moon6-4E', NULL, NULL, 50.000, 6);
INSERT INTO public.moon VALUES (14, 'Moon4-6A', 320, 120, 80.000, 4);
INSERT INTO public.moon VALUES (15, 'Moon4-6B', 350, 80, 120.000, 4);
INSERT INTO public.moon VALUES (16, 'Moon4-6C', 210, 170, 150.000, 4);
INSERT INTO public.moon VALUES (17, 'Moon2-8A', 280, 100, NULL, 8);
INSERT INTO public.moon VALUES (18, 'Moon2-8B', 230, 140, 80.000, 8);
INSERT INTO public.moon VALUES (19, 'Moon1-12E', 70, 20, 40.000, 12);
INSERT INTO public.moon VALUES (20, 'Moon1-12G', 90, NULL, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupyter', 480, 4, 120.000, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Earth', 300, 1, 0.000, true, false, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 350, 2, 50.000, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Planet1A', 450, 12, 890.000, false, true, 6);
INSERT INTO public.planet VALUES (5, 'Planet2D', 230, NULL, 1200.000, false, false, 4);
INSERT INTO public.planet VALUES (6, 'Planet12M', 420, 3, 120.000, true, false, 1);
INSERT INTO public.planet VALUES (7, 'Planet4C', 120, NULL, 1500.000, false, true, 2);
INSERT INTO public.planet VALUES (8, 'Planet4E', 320, 2, 1550.000, NULL, true, 2);
INSERT INTO public.planet VALUES (9, 'Planet3U', 720, NULL, 1500.000, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'Planet3C', 420, 1, 1200.000, false, true, 3);
INSERT INTO public.planet VALUES (11, 'Planet12C', 320, 2, 200.000, false, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Planet12U', 230, 4, 360.000, false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 560, 124, 300000.000, 1);
INSERT INTO public.star VALUES (2, 'Orion48', 450, 100, 45000000000.000, 2);
INSERT INTO public.star VALUES (3, 'Bright12', 300, 40, 12000000.000, 2);
INSERT INTO public.star VALUES (4, 'Sirius', 500, NULL, NULL, 6);
INSERT INTO public.star VALUES (5, 'Canopus', 210, 100, 60030000.500, 4);
INSERT INTO public.star VALUES (6, 'Antares', 700, 200, 8400035.600, 6);


--
-- Name: comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

