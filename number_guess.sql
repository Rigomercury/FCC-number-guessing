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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 335);
INSERT INTO public.games VALUES (2, 1, 438);
INSERT INTO public.games VALUES (3, 2, 262);
INSERT INTO public.games VALUES (4, 2, 394);
INSERT INTO public.games VALUES (5, 1, 613);
INSERT INTO public.games VALUES (6, 1, 1);
INSERT INTO public.games VALUES (7, 1, 556);
INSERT INTO public.games VALUES (8, 3, 912);
INSERT INTO public.games VALUES (9, 3, 696);
INSERT INTO public.games VALUES (10, 4, 44);
INSERT INTO public.games VALUES (11, 4, 882);
INSERT INTO public.games VALUES (12, 3, 795);
INSERT INTO public.games VALUES (13, 3, 1);
INSERT INTO public.games VALUES (14, 3, 260);
INSERT INTO public.games VALUES (15, 5, 45);
INSERT INTO public.games VALUES (16, 5, 518);
INSERT INTO public.games VALUES (17, 6, 589);
INSERT INTO public.games VALUES (18, 6, 485);
INSERT INTO public.games VALUES (19, 5, 927);
INSERT INTO public.games VALUES (20, 5, 1);
INSERT INTO public.games VALUES (21, 5, 217);
INSERT INTO public.games VALUES (22, 7, 603);
INSERT INTO public.games VALUES (23, 7, 911);
INSERT INTO public.games VALUES (24, 8, 885);
INSERT INTO public.games VALUES (25, 8, 660);
INSERT INTO public.games VALUES (26, 7, 201);
INSERT INTO public.games VALUES (27, 7, 1);
INSERT INTO public.games VALUES (28, 7, 394);
INSERT INTO public.games VALUES (29, 9, 698);
INSERT INTO public.games VALUES (30, 9, 923);
INSERT INTO public.games VALUES (31, 10, 629);
INSERT INTO public.games VALUES (32, 10, 884);
INSERT INTO public.games VALUES (33, 9, 690);
INSERT INTO public.games VALUES (34, 9, 36);
INSERT INTO public.games VALUES (35, 9, 274);
INSERT INTO public.games VALUES (36, 11, 92);
INSERT INTO public.games VALUES (37, 11, 855);
INSERT INTO public.games VALUES (38, 12, 1001);
INSERT INTO public.games VALUES (39, 12, 775);
INSERT INTO public.games VALUES (40, 11, 497);
INSERT INTO public.games VALUES (41, 11, 378);
INSERT INTO public.games VALUES (42, 11, 783);
INSERT INTO public.games VALUES (43, 13, 389);
INSERT INTO public.games VALUES (44, 13, 962);
INSERT INTO public.games VALUES (45, 14, 308);
INSERT INTO public.games VALUES (46, 14, 222);
INSERT INTO public.games VALUES (47, 13, 916);
INSERT INTO public.games VALUES (48, 13, 627);
INSERT INTO public.games VALUES (49, 13, 728);
INSERT INTO public.games VALUES (50, 15, 38);
INSERT INTO public.games VALUES (51, 15, 463);
INSERT INTO public.games VALUES (52, 16, 275);
INSERT INTO public.games VALUES (53, 16, 121);
INSERT INTO public.games VALUES (54, 15, 726);
INSERT INTO public.games VALUES (55, 15, 312);
INSERT INTO public.games VALUES (56, 15, 205);
INSERT INTO public.games VALUES (57, 17, 13);
INSERT INTO public.games VALUES (58, 18, 535);
INSERT INTO public.games VALUES (59, 18, 568);
INSERT INTO public.games VALUES (60, 19, 988);
INSERT INTO public.games VALUES (61, 19, 306);
INSERT INTO public.games VALUES (62, 18, 762);
INSERT INTO public.games VALUES (63, 18, 603);
INSERT INTO public.games VALUES (64, 18, 312);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1746499450054');
INSERT INTO public.users VALUES (2, 'user_1746499450053');
INSERT INTO public.users VALUES (3, 'user_1746499587567');
INSERT INTO public.users VALUES (4, 'user_1746499587566');
INSERT INTO public.users VALUES (5, 'user_1746499637117');
INSERT INTO public.users VALUES (6, 'user_1746499637116');
INSERT INTO public.users VALUES (7, 'user_1746499766189');
INSERT INTO public.users VALUES (8, 'user_1746499766188');
INSERT INTO public.users VALUES (9, 'user_1746499819209');
INSERT INTO public.users VALUES (10, 'user_1746499819208');
INSERT INTO public.users VALUES (11, 'user_1746499934930');
INSERT INTO public.users VALUES (12, 'user_1746499934929');
INSERT INTO public.users VALUES (13, 'user_1746499968392');
INSERT INTO public.users VALUES (14, 'user_1746499968391');
INSERT INTO public.users VALUES (15, 'user_1746500036189');
INSERT INTO public.users VALUES (16, 'user_1746500036188');
INSERT INTO public.users VALUES (17, 'Roro');
INSERT INTO public.users VALUES (18, 'user_1746500266180');
INSERT INTO public.users VALUES (19, 'user_1746500266179');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

