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
-- Name: additional_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.additional_info (
    additional_info_id integer NOT NULL,
    name character varying(150),
    attribute_name text NOT NULL,
    attribute_value integer NOT NULL
);


ALTER TABLE public.additional_info OWNER TO freecodecamp;

--
-- Name: additional_info_additional_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_info_additional_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_info_additional_info_id_seq OWNER TO freecodecamp;

--
-- Name: additional_info_additional_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_info_additional_info_id_seq OWNED BY public.additional_info.additional_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer,
    description text DEFAULT 'No Description'::text NOT NULL,
    is_explored boolean DEFAULT false,
    official_link character varying(250)
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
    name character varying(30),
    notes text,
    planet_id integer,
    nasa_id integer,
    tips text DEFAULT 'Enter tips'::text NOT NULL
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
    name character varying(30),
    age_in_million_years integer,
    distance_from_earth_in_km numeric(8,1),
    star_id integer,
    population text DEFAULT 'Empty planet/Not discovered'::text NOT NULL,
    tracking_number integer
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
    start_id integer NOT NULL,
    name character varying(30),
    age_in_million_years integer,
    is_sold boolean,
    galaxy_id integer,
    star_id integer NOT NULL,
    has_life boolean,
    internal_tracking_number integer
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
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.start_id;


--
-- Name: additional_info additional_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_info ALTER COLUMN additional_info_id SET DEFAULT nextval('public.additional_info_additional_info_id_seq'::regclass);


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
-- Name: star start_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN start_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: additional_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.additional_info VALUES (1, 'Record 1', 'Color', 5);
INSERT INTO public.additional_info VALUES (2, 'Record 2', 'Size', 10);
INSERT INTO public.additional_info VALUES (3, 'Record 3', 'Weight', 15);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, 'No Description', false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', NULL, 'No Description', false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', NULL, 'No Description', false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Maffei I and II', NULL, 'No Description', false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellanic', NULL, 'No Description', false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', NULL, 'No Description', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s moon', 1, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars'' moon', 4, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars'' moon', 4, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Jupiter''s moon', 5, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter''s moon', 5, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (6, 'Callisto', 'Jupiter''s moon', 5, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (7, 'Titan', 'Saturn''s moon', 6, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Saturn''s moon', 6, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (9, 'Mimas', 'Saturn''s moon', 6, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (10, 'Miranda', 'Uranus'' moon', 7, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (11, 'Ariel', 'Uranus'' moon', 7, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (12, 'Umbriel', 'Uranus'' moon', 7, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (13, 'Triton', 'Neptune''s moon', 8, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (14, 'Nereid', 'Neptune''s moon', 8, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (15, 'Charon', 'Pluto''s moon', 9, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (16, 'Phobetor', 'Pluto''s moon', 9, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (17, 'Nix', 'Pluto''s moon', 9, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (18, 'Hydra', 'Pluto''s moon', 9, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (19, 'Styx', 'Pluto''s moon', 9, NULL, 'Enter tips');
INSERT INTO public.moon VALUES (20, 'Kerberos', 'Pluto''s moon', 9, NULL, 'Enter tips');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 77.3, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 41.4, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 0.0, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 78.3, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 628.7, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 1275.0, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 2724.7, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 4351.4, 1, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (9, 'Proxima b', 4500, 4000000.0, 6, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 4500, 4300000.0, 2, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-442b', 2900, 1120000.0, 3, 'Empty planet/Not discovered', NULL);
INSERT INTO public.planet VALUES (12, 'Sirius B', 120, 8600000.0, 3, 'Empty planet/Not discovered', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, false, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 4500, true, 1, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 300, false, 2, 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10, true, 2, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Rigel', 8, false, 3, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4500, true, 3, 6, NULL, NULL);


--
-- Name: additional_info_additional_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_info_additional_info_id_seq', 3, true);


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
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 1, false);


--
-- Name: additional_info additional_info_attribute_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_info
    ADD CONSTRAINT additional_info_attribute_name_key UNIQUE (attribute_name);


--
-- Name: additional_info additional_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_info
    ADD CONSTRAINT additional_info_pkey PRIMARY KEY (additional_info_id);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_official_link_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_official_link_key UNIQUE (official_link);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_nasa_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nasa_id_key UNIQUE (nasa_id);


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
-- Name: planet planet_tracking_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_tracking_number_key UNIQUE (tracking_number);


--
-- Name: star star_internal_tracking_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_internal_tracking_number_key UNIQUE (internal_tracking_number);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


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

