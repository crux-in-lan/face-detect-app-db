--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2019-04-14 10:53:39 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 334 (class 1259 OID 17033)
-- Name: users; Type: TABLE; Schema: tmp; Owner: example_user
--

CREATE TABLE tmp.users (
    id integer NOT NULL,
    username text,
    email text,
    detections integer DEFAULT 0,
    joined timestamp without time zone
);


ALTER TABLE tmp.users OWNER TO example_user;

--
-- TOC entry 333 (class 1259 OID 17031)
-- Name: users_id_seq; Type: SEQUENCE; Schema: tmp; Owner: example_user
--

CREATE SEQUENCE tmp.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tmp.users_id_seq OWNER TO example_user;

--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 333
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: tmp; Owner: example_user
--

ALTER SEQUENCE tmp.users_id_seq OWNED BY tmp.users.id;


--
-- TOC entry 2467 (class 2604 OID 17036)
-- Name: id; Type: DEFAULT; Schema: tmp; Owner: example_user
--

ALTER TABLE ONLY tmp.users ALTER COLUMN id SET DEFAULT nextval('tmp.users_id_seq'::regclass);


--
-- TOC entry 2586 (class 0 OID 17033)
-- Dependencies: 334
-- Data for Name: users; Type: TABLE DATA; Schema: tmp; Owner: example_user
--

COPY tmp.users (id, username, email, detections, joined) FROM stdin;
25	plamkaTA	plamen_example@gmail.com	0	2019-03-19 22:31:43
26	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:33:16
20	mitaka97	mitko_example@gmail.com	0	2019-03-11 23:43:44.304
21	Petur_331	petio_example@gmail.com	0	2019-03-11 23:43:48.263
22	Ivo_the_boss	ivo_example@gmail.com	0	2019-03-12 11:45:24.435
\.


--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 333
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: tmp; Owner: example_user
--

SELECT pg_catalog.setval('tmp.users_id_seq', 53, true);


--
-- TOC entry 2470 (class 2606 OID 17041)
-- Name: users_pkey; Type: CONSTRAINT; Schema: tmp; Owner: example_user
--

ALTER TABLE ONLY tmp.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2019-04-14 10:53:39 EEST

--
-- PostgreSQL database dump complete
--

