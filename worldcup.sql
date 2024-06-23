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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (110, 2018, 'Final', 1347, 1348, 4, 2);
INSERT INTO public.games VALUES (111, 2018, 'Third Place', 1349, 1350, 2, 0);
INSERT INTO public.games VALUES (112, 2018, 'Semi-Final', 1348, 1350, 2, 1);
INSERT INTO public.games VALUES (113, 2018, 'Semi-Final', 1347, 1349, 1, 0);
INSERT INTO public.games VALUES (114, 2018, 'Quarter-Final', 1348, 1356, 3, 2);
INSERT INTO public.games VALUES (115, 2018, 'Quarter-Final', 1350, 1358, 2, 0);
INSERT INTO public.games VALUES (116, 2018, 'Quarter-Final', 1349, 1360, 2, 1);
INSERT INTO public.games VALUES (117, 2018, 'Quarter-Final', 1347, 1362, 2, 0);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 1350, 1364, 2, 1);
INSERT INTO public.games VALUES (119, 2018, 'Eighth-Final', 1358, 1366, 1, 0);
INSERT INTO public.games VALUES (120, 2018, 'Eighth-Final', 1349, 1368, 3, 2);
INSERT INTO public.games VALUES (121, 2018, 'Eighth-Final', 1360, 1370, 2, 0);
INSERT INTO public.games VALUES (122, 2018, 'Eighth-Final', 1348, 1372, 2, 1);
INSERT INTO public.games VALUES (123, 2018, 'Eighth-Final', 1356, 1374, 2, 1);
INSERT INTO public.games VALUES (124, 2018, 'Eighth-Final', 1362, 1376, 2, 1);
INSERT INTO public.games VALUES (125, 2018, 'Eighth-Final', 1347, 1378, 4, 3);
INSERT INTO public.games VALUES (126, 2014, 'Final', 1379, 1378, 1, 0);
INSERT INTO public.games VALUES (127, 2014, 'Third Place', 1381, 1360, 3, 0);
INSERT INTO public.games VALUES (128, 2014, 'Semi-Final', 1378, 1381, 1, 0);
INSERT INTO public.games VALUES (129, 2014, 'Semi-Final', 1379, 1360, 7, 1);
INSERT INTO public.games VALUES (130, 2014, 'Quarter-Final', 1381, 1388, 1, 0);
INSERT INTO public.games VALUES (131, 2014, 'Quarter-Final', 1378, 1349, 1, 0);
INSERT INTO public.games VALUES (132, 2014, 'Quarter-Final', 1360, 1364, 2, 1);
INSERT INTO public.games VALUES (133, 2014, 'Quarter-Final', 1379, 1347, 1, 0);
INSERT INTO public.games VALUES (134, 2014, 'Eighth-Final', 1360, 1396, 2, 1);
INSERT INTO public.games VALUES (135, 2014, 'Eighth-Final', 1364, 1362, 2, 0);
INSERT INTO public.games VALUES (136, 2014, 'Eighth-Final', 1347, 1400, 2, 0);
INSERT INTO public.games VALUES (137, 2014, 'Eighth-Final', 1379, 1402, 2, 1);
INSERT INTO public.games VALUES (138, 2014, 'Eighth-Final', 1381, 1370, 2, 1);
INSERT INTO public.games VALUES (139, 2014, 'Eighth-Final', 1388, 1406, 2, 1);
INSERT INTO public.games VALUES (140, 2014, 'Eighth-Final', 1378, 1366, 1, 0);
INSERT INTO public.games VALUES (141, 2014, 'Eighth-Final', 1349, 1410, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1347, 'France');
INSERT INTO public.teams VALUES (1348, 'Croatia');
INSERT INTO public.teams VALUES (1349, 'Belgium');
INSERT INTO public.teams VALUES (1350, 'England');
INSERT INTO public.teams VALUES (1356, 'Russia');
INSERT INTO public.teams VALUES (1358, 'Sweden');
INSERT INTO public.teams VALUES (1360, 'Brazil');
INSERT INTO public.teams VALUES (1362, 'Uruguay');
INSERT INTO public.teams VALUES (1364, 'Colombia');
INSERT INTO public.teams VALUES (1366, 'Switzerland');
INSERT INTO public.teams VALUES (1368, 'Japan');
INSERT INTO public.teams VALUES (1370, 'Mexico');
INSERT INTO public.teams VALUES (1372, 'Denmark');
INSERT INTO public.teams VALUES (1374, 'Spain');
INSERT INTO public.teams VALUES (1376, 'Portugal');
INSERT INTO public.teams VALUES (1378, 'Argentina');
INSERT INTO public.teams VALUES (1379, 'Germany');
INSERT INTO public.teams VALUES (1381, 'Netherlands');
INSERT INTO public.teams VALUES (1388, 'Costa Rica');
INSERT INTO public.teams VALUES (1396, 'Chile');
INSERT INTO public.teams VALUES (1400, 'Nigeria');
INSERT INTO public.teams VALUES (1402, 'Algeria');
INSERT INTO public.teams VALUES (1406, 'Greece');
INSERT INTO public.teams VALUES (1410, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 141, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1410, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

