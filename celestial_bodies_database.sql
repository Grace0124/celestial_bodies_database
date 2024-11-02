--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    size integer
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planets_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planets_dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planets_dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planets_dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planets_dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    morphology text,
    age integer,
    num_stars integer
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
    name character varying(30) NOT NULL,
    planet_id integer,
    size integer,
    age integer
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
    name character varying(30) NOT NULL,
    star_id integer,
    is_habitable boolean,
    description text,
    gravity numeric(4,2),
    has_rings boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    mass integer,
    radius integer
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planets_dwarf_planet_id_seq'::regclass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'foccacia', 1, NULL, NULL);
INSERT INTO public.dwarf_planet VALUES (2, 'baguette', 2, NULL, NULL);
INSERT INTO public.dwarf_planet VALUES (3, 'milk bread', 3, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Messier 87', 'supergiant elliptical', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'barred spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'LMC', 'irregular dwarf', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 'barred spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'collisional ring', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Honda', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Toyota', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Volkswagen', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Ferrari', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Hyundai', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Tesla', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Lamborgini', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Jeep', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Acura', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Ford', 1, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Chevrolet', 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Subaru', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'BMW', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Audi', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Kia', 1, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Mercendes Benz', 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Cadillac', 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Genesis', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Lexus', 3, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Porsche', 4, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'apple', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'orange', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'banana', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'grapes', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'kumquat', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'starfruit', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'pear', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'rambutan', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'strawberry', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'blueberry', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'blackberry', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'kiwi', 4, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'M87-RG1', 1, 2, 85);
INSERT INTO public.star VALUES (2, 'M87-BSG1', 1, 28, 35);
INSERT INTO public.star VALUES (3, 'AF And', 2, 65, 420);
INSERT INTO public.star VALUES (4, 'AE And', 2, 60, 380);
INSERT INTO public.star VALUES (5, 'M31-V1', 2, 20, 65);
INSERT INTO public.star VALUES (6, 'VHK 83', 2, 25, 75);
INSERT INTO public.star VALUES (7, 'red', 1, NULL, NULL);
INSERT INTO public.star VALUES (8, 'green', 2, NULL, NULL);
INSERT INTO public.star VALUES (9, 'blue', 3, NULL, NULL);
INSERT INTO public.star VALUES (10, 'purple', 4, NULL, NULL);
INSERT INTO public.star VALUES (11, 'vermillion', 1, NULL, NULL);
INSERT INTO public.star VALUES (12, 'yellow', 2, NULL, NULL);
INSERT INTO public.star VALUES (13, 'pink', 3, NULL, NULL);
INSERT INTO public.star VALUES (14, 'white', 1, NULL, NULL);
INSERT INTO public.star VALUES (15, 'black', 1, NULL, NULL);
INSERT INTO public.star VALUES (16, 'magenta', 2, NULL, NULL);
INSERT INTO public.star VALUES (17, 'ivory', 3, NULL, NULL);
INSERT INTO public.star VALUES (18, 'aquamarine', 4, NULL, NULL);
INSERT INTO public.star VALUES (19, 'cream', 3, NULL, NULL);
INSERT INTO public.star VALUES (20, 'rose', 2, NULL, NULL);
INSERT INTO public.star VALUES (21, 'olive', 3, NULL, NULL);
INSERT INTO public.star VALUES (22, 'indigo', 4, NULL, NULL);
INSERT INTO public.star VALUES (23, 'violet', 2, NULL, NULL);
INSERT INTO public.star VALUES (24, 'lavender', 1, NULL, NULL);
INSERT INTO public.star VALUES (25, 'gold', 3, NULL, NULL);
INSERT INTO public.star VALUES (26, 'silver', 4, NULL, NULL);


--
-- Name: dwarf_planets_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planets_dwarf_planet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 26, true);


--
-- Name: dwarf_planet dwarf_planets_dwarf_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planets_dwarf_planet_id_key UNIQUE (dwarf_planet_id);


--
-- Name: dwarf_planet dwarf_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planets_pkey PRIMARY KEY (dwarf_planet_id);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planets_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planets_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_nearest_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nearest_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_nearest_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nearest_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

