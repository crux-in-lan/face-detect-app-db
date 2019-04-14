--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2019-04-14 10:28:33 EEST

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
-- TOC entry 336 (class 1259 OID 17044)
-- Name: login; Type: TABLE; Schema: tmp; Owner: nvasilev
--

CREATE TABLE tmp.login (
    id integer NOT NULL,
    hash text,
    email text
);


ALTER TABLE tmp.login OWNER TO nvasilev;

--
-- TOC entry 335 (class 1259 OID 17042)
-- Name: login_id_seq; Type: SEQUENCE; Schema: tmp; Owner: nvasilev
--

CREATE SEQUENCE tmp.login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tmp.login_id_seq OWNER TO nvasilev;

--
-- TOC entry 2591 (class 0 OID 0)
-- Dependencies: 335
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: tmp; Owner: nvasilev
--

ALTER SEQUENCE tmp.login_id_seq OWNED BY tmp.login.id;


--
-- TOC entry 2467 (class 2604 OID 17047)
-- Name: id; Type: DEFAULT; Schema: tmp; Owner: nvasilev
--

ALTER TABLE ONLY tmp.login ALTER COLUMN id SET DEFAULT nextval('tmp.login_id_seq'::regclass);


--
-- TOC entry 2585 (class 0 OID 17044)
-- Dependencies: 336
-- Data for Name: login; Type: TABLE DATA; Schema: tmp; Owner: nvasilev
--

COPY tmp.login (id, hash, email) FROM stdin;
26	$2a$10$aFGoL2wYi4TWXZNCLKxO..q4h6.vgilsLCiOXDlMgcPUKlsiLoOoi	plamen_example@gmail.com
22	$2a$10$DYweUPS6Gs66gUBfxEhDBeAvKjAw5AwA3NX3/CwWbkTeQr1sNcoEm	ivo_example@gmail.com
21	$2a$10$sIUBm7cQ/wsaiGEp97Ug8..44ls4DYFN0i2dyyE.ggSr1pPqIxnUe	petio_example@gmail.com
20	$2a$10$aX1Ee8oydbwjQItjKMncJe0T/QMaEptuTvdwuh6mddmc.yhd7z4Xa	mitko_example@gmail.com
25	$2a$10$VBwG9fb2nPAmN4dbTGTCleca.ebFVXoRTFk9T89cylSPXYZwMehgy	chitanka_example@gmail.com
27	$2a$10$Sd4S.f9SsrjMgfVJP8pLg.ng2Y3jf/2XSbDs73mEVCJQJpG2wE612	example@example.com
\.


--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 335
-- Name: login_id_seq; Type: SEQUENCE SET; Schema: tmp; Owner: nvasilev
--

SELECT pg_catalog.setval('tmp.login_id_seq', 27, true);


--
-- TOC entry 2469 (class 2606 OID 17052)
-- Name: login_pkey; Type: CONSTRAINT; Schema: tmp; Owner: nvasilev
--

ALTER TABLE ONLY tmp.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (id);


-- Completed on 2019-04-14 10:28:33 EEST

--
-- PostgreSQL database dump complete
--

