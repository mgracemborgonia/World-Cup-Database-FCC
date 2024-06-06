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
    round character varying(50) NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (129, 2018, 'Final', 249, 250, 4, 2);
INSERT INTO public.games VALUES (130, 2018, 'Third Place', 251, 252, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Semi-Final', 250, 252, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Semi-Final', 249, 251, 1, 0);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 250, 253, 3, 2);
INSERT INTO public.games VALUES (134, 2018, 'Quarter-Final', 252, 254, 2, 0);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 251, 255, 2, 1);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 249, 256, 2, 0);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 252, 257, 2, 1);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 254, 258, 1, 0);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 251, 259, 3, 2);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 255, 260, 2, 0);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 250, 261, 2, 1);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 253, 262, 2, 1);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 256, 263, 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 249, 264, 4, 3);
INSERT INTO public.games VALUES (145, 2014, 'Final', 265, 264, 1, 0);
INSERT INTO public.games VALUES (146, 2014, 'Third Place', 266, 255, 3, 0);
INSERT INTO public.games VALUES (147, 2014, 'Semi-Final', 264, 266, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Semi-Final', 265, 255, 7, 1);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 266, 267, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Quarter-Final', 264, 251, 1, 0);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 255, 257, 2, 1);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 265, 249, 1, 0);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 255, 268, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 257, 256, 2, 0);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 249, 269, 2, 0);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 265, 270, 2, 1);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 266, 260, 2, 1);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 267, 271, 2, 1);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 264, 258, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 251, 272, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (249, 'France');
INSERT INTO public.teams VALUES (250, 'Croatia');
INSERT INTO public.teams VALUES (251, 'Belgium');
INSERT INTO public.teams VALUES (252, 'England');
INSERT INTO public.teams VALUES (253, 'Russia');
INSERT INTO public.teams VALUES (254, 'Sweden');
INSERT INTO public.teams VALUES (255, 'Brazil');
INSERT INTO public.teams VALUES (256, 'Uruguay');
INSERT INTO public.teams VALUES (257, 'Colombia');
INSERT INTO public.teams VALUES (258, 'Switzerland');
INSERT INTO public.teams VALUES (259, 'Japan');
INSERT INTO public.teams VALUES (260, 'Mexico');
INSERT INTO public.teams VALUES (261, 'Denmark');
INSERT INTO public.teams VALUES (262, 'Spain');
INSERT INTO public.teams VALUES (263, 'Portugal');
INSERT INTO public.teams VALUES (264, 'Argentina');
INSERT INTO public.teams VALUES (265, 'Germany');
INSERT INTO public.teams VALUES (266, 'Netherlands');
INSERT INTO public.teams VALUES (267, 'Costa Rica');
INSERT INTO public.teams VALUES (268, 'Chile');
INSERT INTO public.teams VALUES (269, 'Nigeria');
INSERT INTO public.teams VALUES (270, 'Algeria');
INSERT INTO public.teams VALUES (271, 'Greece');
INSERT INTO public.teams VALUES (272, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 272, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
