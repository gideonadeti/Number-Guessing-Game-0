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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 148, 10);
INSERT INTO public.games VALUES (2, 8, 190, 7);
INSERT INTO public.games VALUES (3, 9, 711, 712);
INSERT INTO public.games VALUES (4, 9, 959, 960);
INSERT INTO public.games VALUES (5, 10, 159, 160);
INSERT INTO public.games VALUES (6, 10, 962, 963);
INSERT INTO public.games VALUES (7, 9, 943, 946);
INSERT INTO public.games VALUES (8, 9, 355, 357);
INSERT INTO public.games VALUES (9, 9, 696, 697);
INSERT INTO public.games VALUES (10, 11, 720, 721);
INSERT INTO public.games VALUES (11, 11, 310, 311);
INSERT INTO public.games VALUES (12, 12, 360, 361);
INSERT INTO public.games VALUES (13, 12, 493, 494);
INSERT INTO public.games VALUES (14, 11, 599, 602);
INSERT INTO public.games VALUES (15, 11, 926, 928);
INSERT INTO public.games VALUES (16, 11, 752, 753);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, '');
INSERT INTO public.players VALUES (8, 'Gideon');
INSERT INTO public.players VALUES (9, 'user_1708434087246');
INSERT INTO public.players VALUES (10, 'user_1708434087245');
INSERT INTO public.players VALUES (11, 'user_1708434216059');
INSERT INTO public.players VALUES (12, 'user_1708434216058');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 16, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

