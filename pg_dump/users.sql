--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2019-04-14 10:28:39 EEST

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
-- Name: users; Type: TABLE; Schema: tmp; Owner: nvasilev
--

CREATE TABLE tmp.users (
    id integer NOT NULL,
    username text,
    email text,
    detections integer DEFAULT 0,
    joined timestamp without time zone
);


ALTER TABLE tmp.users OWNER TO nvasilev;

--
-- TOC entry 333 (class 1259 OID 17031)
-- Name: users_id_seq; Type: SEQUENCE; Schema: tmp; Owner: nvasilev
--

CREATE SEQUENCE tmp.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tmp.users_id_seq OWNER TO nvasilev;

--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 333
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: tmp; Owner: nvasilev
--

ALTER SEQUENCE tmp.users_id_seq OWNED BY tmp.users.id;


--
-- TOC entry 2467 (class 2604 OID 17036)
-- Name: id; Type: DEFAULT; Schema: tmp; Owner: nvasilev
--

ALTER TABLE ONLY tmp.users ALTER COLUMN id SET DEFAULT nextval('tmp.users_id_seq'::regclass);


--
-- TOC entry 2586 (class 0 OID 17033)
-- Dependencies: 334
-- Data for Name: users; Type: TABLE DATA; Schema: tmp; Owner: nvasilev
--

COPY tmp.users (id, username, email, detections, joined) FROM stdin;
25	plamkaTA	plamen_example@gmail.com	0	2019-03-19 22:31:43
53	example	example@example.com	0	2019-04-14 10:10:32
5	Ivan Ivanov	ivan.vasilev@vivacom.bg	0	2019-03-11 11:07:12.9
1	vankata63	ivan.vasilev63@vivacom.bg	0	2019-03-10 11:38:45.729
3	vankata61	ivan.vasilev61@vivacom.bg	0	2019-03-10 11:46:49.172
4	vankata111	ivan.vasilev111@vivacom.bg	0	2019-03-10 11:46:51.061
2	vankata71	ivan.vasilev71@vivacom.bg	6	2019-03-10 11:39:40.733
6	vankata234	ivan.vasilev234@vivacom.bg	0	2019-03-11 11:40:53.578
23	Nikola	nikola.vasilev@vivacom.bg	0	2019-03-13 13:52:01.508
24	Pinokio	nikola.ivanov@abv.bg	0	2019-03-13 13:58:39.174
26	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:33:16
27	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:34:45
28	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:35:30
29	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:37:34
30	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:38:42
31	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:40:06
32	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:40:31
33	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:41:53
34	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:42:31
35	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 22:42:34
36	nicksonaAAA	nicksona@mail.bg	0	2019-03-19 23:00:54
46	niki	niki.piki@abv.bg	0	2019-04-01 12:12:33
47	nikolaa	nikolaa@aaa.bg	0	2019-04-01 12:14:31
48	nikita	nick_in_lan@abv.bg	0	2019-04-02 12:26:05
49			0	2019-04-03 10:52:47
50			0	2019-04-03 10:52:48
51	chikita	chikita@abv.bg	0	2019-04-03 11:02:01
52	boroudi	boroudi@gmail.com	0	2019-04-05 12:18:41
45	nikola.ivanov.vasilev	nikola.ivanov.vasilev@gmail.com	13	2019-03-28 17:28:11
20	mitaka97	mitko_example@gmail.com	0	2019-03-11 23:43:44.304
21	Petur_331	petio_example@gmail.com	0	2019-03-11 23:43:48.263
22	Ivo_the_boss	ivo_example@gmail.com	0	2019-03-12 11:45:24.435
\.


--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 333
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: tmp; Owner: nvasilev
--

SELECT pg_catalog.setval('tmp.users_id_seq', 53, true);


--
-- TOC entry 2470 (class 2606 OID 17041)
-- Name: users_pkey; Type: CONSTRAINT; Schema: tmp; Owner: nvasilev
--

ALTER TABLE ONLY tmp.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2019-04-14 10:28:39 EEST

--
-- PostgreSQL database dump complete
--

