--
-- PostgreSQL database dump
--

\restrict mahAyDIeM9ImEdUKtGYMoCiWPheA0WxRIH7NFiL64SzlhpEHX1MvoRZVEK2FuDM

-- Dumped from database version 17.7 (Debian 17.7-0+deb13u1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-0+deb13u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: teste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teste (
    id integer NOT NULL,
    nome character varying(50)
);


ALTER TABLE public.teste OWNER TO postgres;

--
-- Name: teste_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teste_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teste_id_seq OWNER TO postgres;

--
-- Name: teste_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teste_id_seq OWNED BY public.teste.id;


--
-- Name: teste id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teste ALTER COLUMN id SET DEFAULT nextval('public.teste_id_seq'::regclass);


--
-- Data for Name: teste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teste (id, nome) FROM stdin;
\.


--
-- Name: teste_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teste_id_seq', 1, false);


--
-- Name: teste teste_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teste
    ADD CONSTRAINT teste_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict mahAyDIeM9ImEdUKtGYMoCiWPheA0WxRIH7NFiL64SzlhpEHX1MvoRZVEK2FuDM

