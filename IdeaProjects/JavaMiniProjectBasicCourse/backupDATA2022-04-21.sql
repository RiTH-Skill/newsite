--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    unit_price double precision NOT NULL,
    qty integer NOT NULL,
    imported_date date NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: auto_id_product; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auto_id_product
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auto_id_product OWNER TO postgres;

--
-- Name: auto_id_product; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auto_id_product OWNED BY public.product.id;


--
-- Name: table_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_name (
);


ALTER TABLE public.table_name OWNER TO postgres;

--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.auto_id_product'::regclass);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, unit_price, qty, imported_date) FROM stdin;
33	samsung	900	35	2022-04-16
27	book	2	200	2022-04-14
14	clothes	15	100	2022-04-05
17	milk	4	100	2022-04-28
18	meat	7	200	2022-04-14
19	carrot	90	100	2022-04-06
22	fod	100	20	2022-04-21
34	lyon	0.5	100	2022-04-16
25	ichtan	0.5	200	2022-04-19
21	mouse	15	1	2022-04-27
16	champion	25.55	200	2022-04-21
29	notepad	10	200	2022-04-14
13	tea	5.5	20	2022-04-29
10	dasani	1	2000	2022-04-05
30	cake	10	15	2022-04-15
31	yo'es	1	24	2022-04-15
32	hat	6	10	2022-04-15
4	5	5	5	2022-04-14
36	coconut	2	100	2022-04-17
26	pepsi	0.7	3	2022-04-14
8	knife	15	24	2022-04-27
43	42	42	42	2022-04-19
37	37	37	37	2022-04-17
38	38	38	38	2022-04-18
39	39	39	39	2022-04-19
41	4	10000	100	2022-04-19
44	2	2	2	2022-04-19
45	3	3	3	2022-04-19
46	4	4	4	2022-04-19
24	24	24	24	2022-04-26
47	3	3	3	2022-04-19
48	1	1	1	2022-04-19
49	1	1	1	2022-04-21
\.


--
-- Data for Name: table_name; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.table_name  FROM stdin;
\.


--
-- Name: auto_id_product; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auto_id_product', 28, true);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

