--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: pokemon_db; Type: TABLE; Schema: public; Owner: jdcannedy
--

CREATE TABLE public.pokemon_db (
    id integer NOT NULL,
    name character varying,
    type character varying,
    "evolvesFromId" integer
);


ALTER TABLE public.pokemon_db OWNER TO jdcannedy;

--
-- Name: trainers; Type: TABLE; Schema: public; Owner: jdcannedy
--

CREATE TABLE public.trainers (
    id integer,
    name character varying,
    "isGymLeader" boolean,
    "pokemonSlot1" integer,
    "pokemonSlot2" integer,
    "pokemonSlot3" integer,
    "pokemonSlot4" integer,
    "pokemonSlot5" integer,
    "pokemonSlot6" integer
);


ALTER TABLE public.trainers OWNER TO jdcannedy;

--
-- Data for Name: pokemon_db; Type: TABLE DATA; Schema: public; Owner: jdcannedy
--

COPY public.pokemon_db (id, name, type, "evolvesFromId") FROM stdin;
1	Bublasaur	Grass	\N
2	Ivysaur	Grass	1
3	Venusaur	Grass	2
4	Charmander	Fire	\N
5	Charmeleon	Fire	4
6	Charizard	Fire	5
7	Squirtle	Water	\N
8	Wartortle	Water	7
9	Blastoise	Water	8
10	Caterpie	Bug	\N
11	Metapod	Bug	10
12	Butterfree	Bug	11
\.


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: jdcannedy
--

COPY public.trainers (id, name, "isGymLeader", "pokemonSlot1", "pokemonSlot2", "pokemonSlot3", "pokemonSlot4", "pokemonSlot5", "pokemonSlot6") FROM stdin;
1	Ash	f	1	10	\N	\N	\N	\N
2	Misty	t	7	\N	\N	\N	\N	\N
3	Brock	t	3	6	9	\N	\N	\N
\.


--
-- Name: pokemon_db pokemon_db_pkey; Type: CONSTRAINT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.pokemon_db
    ADD CONSTRAINT pokemon_db_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

