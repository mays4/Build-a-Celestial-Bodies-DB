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
    galaxy_types character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    magnitude numeric(4,2),
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    discription text,
    year_discoverd date
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
    planet_type character varying(30),
    star_id integer NOT NULL,
    years integer,
    has_moon boolean
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
-- Name: solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar (
    solar_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.solar OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_solar_id_seq OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_solar_id_seq OWNED BY public.solar.solar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_san boolean,
    number_of_star integer,
    diserciption text,
    galaxy_id integer
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
-- Name: solar solar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar ALTER COLUMN solar_id SET DEFAULT nextval('public.solar_solar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('sprial', 1, 'Milky way', -6.50, 'contain sun and solar system');
INSERT INTO public.galaxy VALUES ('sprial', 2, 'andromanda', 3.40, 'cloest to milky way');
INSERT INTO public.galaxy VALUES ('sprial', 3, 'needle', 10.00, 'near north galactic pole');
INSERT INTO public.galaxy VALUES ('sprial', 4, 'bodes', 6.90, 'can see by eye');
INSERT INTO public.galaxy VALUES ('sprial', 5, 'traingulum', 5.70, 'can see by eye');
INSERT INTO public.galaxy VALUES ('sprial', 6, 'scluptor', 7.20, 'can see by eye');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'phobos', 3, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'Dimos', 3, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'amelthia', 3, NULL, NULL);
INSERT INTO public.moon VALUES (40, 'io', 3, NULL, NULL);
INSERT INTO public.moon VALUES (41, 'theba', 3, NULL, NULL);
INSERT INTO public.moon VALUES (42, 'erupa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (43, 'pen', 5, NULL, NULL);
INSERT INTO public.moon VALUES (44, 'atles', 5, NULL, NULL);
INSERT INTO public.moon VALUES (45, 'callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (46, 'promethous', 5, NULL, NULL);
INSERT INTO public.moon VALUES (47, 'hamilia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (48, 'mimus', 5, NULL, NULL);
INSERT INTO public.moon VALUES (49, 'epmithuos', 5, NULL, NULL);
INSERT INTO public.moon VALUES (50, 'canmedia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (54, 'puck', 5, NULL, NULL);
INSERT INTO public.moon VALUES (55, 'titan', 4, NULL, NULL);
INSERT INTO public.moon VALUES (56, 'diona', 4, NULL, NULL);
INSERT INTO public.moon VALUES (57, 'phoebe', 4, NULL, NULL);
INSERT INTO public.moon VALUES (58, 'rhea', 4, NULL, NULL);
INSERT INTO public.moon VALUES (59, 'arial', 4, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'jupeter;', 'gas gaint', 1, 43333, true);
INSERT INTO public.planet VALUES (3, 'earth', 'rokey', 3, 365, true);
INSERT INTO public.planet VALUES (4, 'venus', 'rokey', 4, 255, true);
INSERT INTO public.planet VALUES (5, 'mercury', 'rokey', 5, 88, true);
INSERT INTO public.planet VALUES (7, 'mars', 'rokey', 6, 687, true);
INSERT INTO public.planet VALUES (8, 'santurn', 'gas gaint', 7, 10759, false);
INSERT INTO public.planet VALUES (11, 'neptune', 'ice giant', 1, 60190, true);
INSERT INTO public.planet VALUES (13, 'unrans', 'ice giant', 3, 60190, true);
INSERT INTO public.planet VALUES (20, 'unr', 'ice giant', 1, 60, true);
INSERT INTO public.planet VALUES (21, 'rans', ' gas  giant', 3, 60, false);
INSERT INTO public.planet VALUES (22, 'mar', ' gas  giant', 3, 100, false);
INSERT INTO public.planet VALUES (23, 'marsron', ' gas  giant', 5, 10, false);


--
-- Data for Name: solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar VALUES (1, 'sun', NULL);
INSERT INTO public.solar VALUES (2, 'solar system', NULL);
INSERT INTO public.solar VALUES (3, 'Milky way', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sirius', true, 1, 'alpha canis', 1);
INSERT INTO public.star VALUES (3, 'canpous', true, 1, 'alpha carine', 2);
INSERT INTO public.star VALUES (4, 'rigel', true, 1, 'alpha centauri', 3);
INSERT INTO public.star VALUES (5, 'viga', true, 1, 'alpha lyra', 4);
INSERT INTO public.star VALUES (6, 'spica', true, 1, 'alpha virginis', 5);
INSERT INTO public.star VALUES (7, 'castor', true, 1, 'alpha', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 59, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: solar_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_solar_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: solar solar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_name_key UNIQUE (name);


--
-- Name: solar solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_pkey PRIMARY KEY (solar_id);


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

