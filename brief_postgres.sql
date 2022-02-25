--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-01-27 17:33:27 WAT

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
-- TOC entry 205 (class 1259 OID 16398)
-- Name: departements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departements (
    id integer NOT NULL,
    name character varying(100),
    description text,
    faculte_id integer NOT NULL
);


ALTER TABLE public.departements OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16396)
-- Name: departements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departements_id_seq OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 204
-- Name: departements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departements_id_seq OWNED BY public.departements.id;


--
-- TOC entry 210 (class 1259 OID 16486)
-- Name: etudiants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.etudiants (
    id bigint NOT NULL,
    nom character varying(100),
    prenom character varying(100),
    sexe character varying(100),
    adresse character varying(100),
    date_naissance date,
    lieu_naissance character varying(100),
    id_niveau integer
);


ALTER TABLE public.etudiants OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16387)
-- Name: facultes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facultes (
    id integer NOT NULL,
    name character varying(100),
    description text
);


ALTER TABLE public.facultes OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: facultes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facultes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facultes_id_seq OWNER TO postgres;

--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 202
-- Name: facultes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facultes_id_seq OWNED BY public.facultes.id;


--
-- TOC entry 207 (class 1259 OID 16417)
-- Name: filieres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filieres (
    id integer NOT NULL,
    name character varying(100),
    description text,
    departement_id integer NOT NULL
);


ALTER TABLE public.filieres OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16415)
-- Name: filieres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filieres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filieres_id_seq OWNER TO postgres;

--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 206
-- Name: filieres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filieres_id_seq OWNED BY public.filieres.id;


--
-- TOC entry 209 (class 1259 OID 16433)
-- Name: niveau; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.niveau (
    id integer NOT NULL,
    libelle character varying(100),
    description text,
    filiere_id integer NOT NULL
);


ALTER TABLE public.niveau OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16431)
-- Name: niveau_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.niveau_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.niveau_id_seq OWNER TO postgres;

--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 208
-- Name: niveau_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.niveau_id_seq OWNED BY public.niveau.id;


--
-- TOC entry 2868 (class 2604 OID 16401)
-- Name: departements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departements ALTER COLUMN id SET DEFAULT nextval('public.departements_id_seq'::regclass);


--
-- TOC entry 2867 (class 2604 OID 16390)
-- Name: facultes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facultes ALTER COLUMN id SET DEFAULT nextval('public.facultes_id_seq'::regclass);


--
-- TOC entry 2869 (class 2604 OID 16420)
-- Name: filieres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filieres ALTER COLUMN id SET DEFAULT nextval('public.filieres_id_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 16436)
-- Name: niveau id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.niveau ALTER COLUMN id SET DEFAULT nextval('public.niveau_id_seq'::regclass);


--
-- TOC entry 3015 (class 0 OID 16398)
-- Dependencies: 205
-- Data for Name: departements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departements (id, name, description, faculte_id) FROM stdin;
1	Département d Informatique	Le département Informatique propose une offre de formations qui se décline en Licence et en Master et qui permettent aux étudiants d acquérir les connaissances théoriques et pratiques en informatique.	1
2	Département de Mathématiques	Le Département de Mathématiques propose des formations en Licence et en Master qui permettent aux étudiants d acquérir des connaissances solides en mathématiques en culture générale scientifique.	1
\.


--
-- TOC entry 3020 (class 0 OID 16486)
-- Dependencies: 210
-- Data for Name: etudiants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.etudiants (id, nom, prenom, sexe, adresse, date_naissance, lieu_naissance, id_niveau) FROM stdin;
1	Rosaline	Zecchii	Male	rzecchii0@sciencedirect.com	1991-03-20	Port Saint Lucie	1
2	Jada	Langthorn	Male	jlangthorn1@arstechnica.com	2001-05-28	Kaka	4
3	Jocelyn	Hrihorovich	Female	jhrihorovich2@networkadvertising.org	1991-04-02	Xiwang	2
4	Kerry	Coffin	Female	kcoffin3@washingtonpost.com	1998-05-04	Sanchahe	4
5	Juliet	Fasey	Male	jfasey4@surveymonkey.com	1997-05-13	Benešov nad Černou	3
6	June	Screas	Female	jscreas5@bandcamp.com	1999-05-22	Bardaï	5
7	Alf	Garmanson	Female	agarmanson6@fema.gov	1993-11-23	Motupe	4
8	Tandie	Waldie	Female	twaldie7@cargocollective.com	1993-10-20	Kanoni	2
9	Yasmeen	Ghidetti	Male	yghidetti8@mashable.com	1990-03-16	Omiš	2
10	Cris	Piele	Male	cpiele9@sciencedirect.com	2000-11-30	Jajar	5
11	Rochelle	Caps	Female	rcapsa@discovery.com	1992-09-01	Sargatskoye	5
12	Saba	Jermyn	Male	sjermynb@sun.com	1998-04-15	Dukuhturi	3
13	Guthrey	Levine	Male	glevinec@bbb.org	2002-01-24	Świętajno	2
14	Cherey	Merkel	Female	cmerkeld@lycos.com	1996-01-02	Pyu	4
15	Issie	Bodker	Male	ibodkere@slashdot.org	2001-03-22	Kariaí	2
16	Janetta	Lamb-shine	Female	jlambshinef@tamu.edu	1991-05-09	Iwye	1
17	Querida	Goacher	Male	qgoacherg@ovh.net	2000-01-03	Brikcha	3
18	Gordie	Polson	Female	gpolsonh@netscape.com	1995-04-16	General Santos	4
19	Birk	Jewitt	Male	bjewitti@freewebs.com	1995-09-04	Yuxarı Aran	3
20	Brietta	Stiebler	Female	bstieblerj@yahoo.co.jp	1997-12-11	Salamá	5
21	Bert	Garaghan	Female	bgaraghank@sciencedaily.com	1994-10-12	Kassala	4
22	Gerhardt	Bassett	Female	gbassettl@youtube.com	1992-09-01	Xianghuaqiao	1
23	Stevy	Salan	Genderfluid	ssalanm@yolasite.com	1993-09-26	Santander	3
24	Brennan	Karlowicz	Male	bkarlowiczn@ovh.net	1999-06-09	Hechuan	4
25	Guinevere	Farenden	Female	gfarendeno@is.gd	1997-09-22	Noda	4
26	Cortney	Cafferky	Male	ccafferkyp@reference.com	1991-10-31	Paris 02	5
27	Denis	Babbs	Male	dbabbsq@forbes.com	1995-05-07	Kalajoki	2
28	Xena	Hinz	Female	xhinzr@blog.com	1997-01-06	Caticugan	4
29	Aurelie	Boobier	Female	aboobiers@npr.org	1996-02-13	Majennang	2
30	Kai	Hassin	Male	khassint@lulu.com	1992-06-25	Klayusiwalan	1
31	Nataline	Vase	Female	nvaseu@rakuten.co.jp	1997-02-16	Sremčica	4
32	Marieann	Vitall	Female	mvitallv@google.es	1999-08-26	Estancia	5
33	Biron	Rosenfarb	Genderqueer	brosenfarbw@etsy.com	1995-11-02	Nagareyama	5
34	Giovanni	Footitt	Male	gfootittx@xrea.com	1998-03-15	Gospić	3
35	Shirlee	Carneck	Male	scarnecky@t.co	1997-02-08	Starobachaty	4
36	Bamby	Manske	Genderfluid	bmanskez@tuttocitta.it	1998-04-24	Trawniki	4
37	Harlen	Dowell	Female	hdowell10@163.com	1994-05-23	Cagliari	5
38	Rossie	Gilffilland	Female	rgilffilland11@moonfruit.com	2000-07-26	Guinsang-an	1
39	Anthiathia	Stansell	Female	astansell12@google.co.uk	1999-09-08	Shanjiang	2
40	Evonne	Duffitt	Male	eduffitt13@nationalgeographic.com	1991-08-24	Dajanrurung	4
41	Carmelina	Schanke	Male	cschanke14@jalbum.net	1999-12-01	Lomma	3
42	Meade	Abramchik	Male	mabramchik15@ow.ly	1990-09-30	Stadtbredimus	1
43	Dorolice	Aitken	Male	daitken16@cnet.com	1995-12-27	Belisario Dominguez	5
44	Patsy	MacGaffey	Male	pmacgaffey17@hibu.com	1995-12-16	Saraburi	4
45	Kerrin	Godier	Male	kgodier18@cloudflare.com	1998-01-18	Yuanjue	3
46	Kaja	Bresnahan	Female	kbresnahan19@oakley.com	1992-06-20	Beberon	4
47	Alleyn	Gilhooly	Male	agilhooly1a@columbia.edu	1998-09-29	Shangyu	1
48	Estrellita	Van Arsdall	Female	evanarsdall1b@youtube.com	1993-05-11	Mölnlycke	4
49	Maxim	Schimpke	Male	mschimpke1c@infoseek.co.jp	2000-09-22	Piedecuesta	1
50	Carter	Amsden	Female	camsden1d@wisc.edu	1998-12-02	Liandu	2
51	Federica	Mickan	Male	fmickan1e@huffingtonpost.com	1994-11-07	Białobrzegi	2
52	Poppy	Plumley	Male	pplumley1f@phoca.cz	1998-09-14	Clermont-Ferrand	4
53	Calli	Secretan	Male	csecretan1g@mediafire.com	1997-07-17	Cabadiangan	3
54	Farley	Umney	Male	fumney1h@amazonaws.com	1991-10-03	Abashiri	1
55	Arv	Skone	Female	askone1i@livejournal.com	2000-06-29	Milton	2
56	Winfield	McIlmurray	Female	wmcilmurray1j@tinyurl.com	1999-02-28	Burgos	4
57	Chico	Lamcken	Male	clamcken1k@gov.uk	1995-06-20	Xiexiong	5
58	Mellisa	Faloon	Female	mfaloon1l@youtu.be	1999-12-10	Chor	3
59	Alysa	Chinery	Female	achinery1m@deviantart.com	1998-11-23	Wuyang	4
60	Sharla	McEvoy	Genderfluid	smcevoy1n@icq.com	1991-01-26	Novovoronezh	4
61	Selma	Parbrook	Female	sparbrook1o@washingtonpost.com	1995-08-11	Koktal	2
62	Brendan	Pittaway	Male	bpittaway1p@trellian.com	1991-08-03	Cho-airong	1
63	Vanda	Govini	Genderqueer	vgovini1q@cbsnews.com	1999-03-30	Xinhua	5
64	Goldina	Robic	Female	grobic1r@tinypic.com	1992-08-07	Hernández	2
65	Ailbert	Leroux	Male	aleroux1s@miibeian.gov.cn	1993-03-17	Bagroy	3
66	Gena	Hobden	Female	ghobden1t@cyberchimps.com	1994-10-15	Xinxu	5
67	Alexis	Overal	Genderqueer	aoveral1u@nytimes.com	1992-03-03	Cuiabá	2
68	Dame	Dict	Male	ddict1v@zimbio.com	1996-03-26	Vilar	3
69	Mavis	Stace	Male	mstace1w@zdnet.com	1997-07-02	Guaymango	5
70	Letitia	Farrance	Male	lfarrance1x@ehow.com	1992-11-12	Langkou	4
71	Lillian	Oakey	Male	loakey1y@cdbaby.com	2000-10-15	Đồi Ngô	4
72	Lelia	Dexter	Female	ldexter1z@freewebs.com	1999-11-01	Duishan	1
73	Nikkie	Birtle	Female	nbirtle20@biglobe.ne.jp	2001-08-19	Bhāi Pheru	1
74	Skip	Cheetham	Female	scheetham21@msn.com	2001-12-18	Araguaína	2
75	Ermentrude	Jerrolt	Female	ejerrolt22@lulu.com	1995-03-01	Limón	5
76	Jay	Coulthurst	Female	jcoulthurst23@google.fr	1992-09-24	Juxing	4
77	Hinze	Bergstrand	Female	hbergstrand24@reverbnation.com	2000-07-30	Oslo	2
78	Haskel	Cristofol	Female	hcristofol25@miitbeian.gov.cn	1994-01-22	Joutseno	2
79	Donnie	Jouannot	Female	djouannot26@upenn.edu	1996-05-30	Domont	1
80	Kip	Allmann	Female	kallmann27@reddit.com	1991-01-02	Klenak	2
81	Betsy	Lively	Female	blively28@istockphoto.com	1997-08-11	Guamal	5
82	Natty	Skellion	Female	nskellion29@cbc.ca	1991-09-28	Huayacundo Arma	1
83	Tammi	Woloschinski	Female	twoloschinski2a@walmart.com	1996-02-04	Taluksangay	5
84	Kassia	Carcas	Female	kcarcas2b@deviantart.com	1998-09-23	Nai Harn	5
85	Arabele	Fleisch	Male	afleisch2c@vimeo.com	2000-06-12	Potelych	1
86	Alwin	Scotchmore	Female	ascotchmore2d@va.gov	1993-02-16	Alfeizerão	1
87	Renelle	Feldmus	Male	rfeldmus2e@studiopress.com	1997-11-30	Hrvace	2
88	Venus	Iacomelli	Female	viacomelli2f@hc360.com	1993-09-18	Valence	1
89	Brinna	Grovier	Genderfluid	bgrovier2g@trellian.com	1997-02-13	Palhais	5
90	Harmony	Findon	Male	hfindon2h@fotki.com	2000-03-10	Agbor	4
91	Jefferey	Dudenie	Non-binary	jdudenie2i@desdev.cn	1997-07-13	Yaozhuang	2
92	Gunther	Whittington	Male	gwhittington2j@livejournal.com	1990-03-18	Masḩah	5
93	Arvy	Cattrell	Female	acattrell2k@washingtonpost.com	1994-07-27	Chichaoua	4
94	Tonie	Stubbins	Female	tstubbins2l@symantec.com	1999-04-17	Morioka-shi	1
95	Dawna	Salzen	Male	dsalzen2m@hao123.com	1994-09-24	Aguada de Pasajeros	5
96	Scarface	Siggin	Male	ssiggin2n@rakuten.co.jp	1992-07-25	Sukowidodo Barat	3
97	Ettore	Syder	Male	esyder2o@deviantart.com	2001-11-03	Cacheu	5
98	Mason	Goom	Agender	mgoom2p@thetimes.co.uk	1996-11-27	Sanban	1
99	Pepe	Dunn	Genderfluid	pdunn2q@newyorker.com	2000-08-02	Manaoag	3
100	Annabell	Shillito	Female	ashillito2r@huffingtonpost.com	2000-03-22	Suleja	3
\.


--
-- TOC entry 3013 (class 0 OID 16387)
-- Dependencies: 203
-- Data for Name: facultes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facultes (id, name, description) FROM stdin;
1	Faculté des Sciences Exactes et Appliquées	La Faculté des Sciences Exactes et Appliquées offre une diversité de formations scientifiques et techniques en Licence et Master.
2	Faculté des Sciences de la Santé Humaine	\nLa Faculté des Sciences de la Santé Humaine propose des formations en Chirurgie, Gynéco-obstétrique, Pédiatrie, Médecine, Sciences Biomédicales/Pharmacie et Santé Publique.
3	Faculté des Langues, Lettres, Arts et Communication	\nLa Faculté des Langues, Lettres, Arts et Communication propose des cycles de formation généraliste en Licence et Master. Différentes spécialités et options sont disponibles en au sein de ces sept (7) départements.
4	Faculté des Sciences Humaines et Sociales	\nLa Faculté des Sciences Humaines et Sociales propose des cycles de formation de Licence et Master en Anthropologie, Histoire, Géographie, Philosophie et Sociologie. Les enseignements sont dispensés en français ou en arabe.
6	Faculté des Sciences Economiques et de Gestion	\nLa Faculté des sciences économiques et gestion propose des cycles de Licence et Master en économie et gestion. Les formations sont dispensées en langue française ou arabe.
5	Faculté des Sciences Juridiques et Politiques	\nLa Faculté des Sciences Juridiques et Politiques propose des cycles de formation de Licence et Master en droit et sciences politiques. Elle offre la possibilité d effectuer son cursus en langue française ou arabe.
7	Faculté des Sciences de l Éducation	\nLa Faculté des Sciences de l Education propose des cycles de formation de Licence et Master aux métiers de l enseignement et de la recherche. Les formations sont dispensées en langue française ou en arabe.
\.


--
-- TOC entry 3017 (class 0 OID 16417)
-- Dependencies: 207
-- Data for Name: filieres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filieres (id, name, description, departement_id) FROM stdin;
1	informatique	informatique	1
2	reseau	informatique	1
3	systeme	informatique	1
\.


--
-- TOC entry 3019 (class 0 OID 16433)
-- Dependencies: 209
-- Data for Name: niveau; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.niveau (id, libelle, description, filiere_id) FROM stdin;
1	1	licence	1
2	2	licence	1
3	3	licence	1
4	1	master	2
5	2	master	3
\.


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 204
-- Name: departements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departements_id_seq', 2, true);


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 202
-- Name: facultes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facultes_id_seq', 7, true);


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 206
-- Name: filieres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filieres_id_seq', 1, false);


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 208
-- Name: niveau_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.niveau_id_seq', 1, false);


--
-- TOC entry 2874 (class 2606 OID 16406)
-- Name: departements departements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 16517)
-- Name: etudiants etudiants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiants
    ADD CONSTRAINT etudiants_pkey PRIMARY KEY (id);


--
-- TOC entry 2872 (class 2606 OID 16395)
-- Name: facultes facultes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facultes
    ADD CONSTRAINT facultes_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 16425)
-- Name: filieres filieres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filieres
    ADD CONSTRAINT filieres_pkey PRIMARY KEY (id);


--
-- TOC entry 2878 (class 2606 OID 16441)
-- Name: niveau niveau_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.niveau
    ADD CONSTRAINT niveau_pkey PRIMARY KEY (id);


--
-- TOC entry 2881 (class 1259 OID 16502)
-- Name: fki_fk_niveau_etudiant; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_niveau_etudiant ON public.etudiants USING btree (id_niveau);


--
-- TOC entry 2882 (class 2606 OID 16407)
-- Name: departements departements_faculte_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_faculte_id_fkey FOREIGN KEY (faculte_id) REFERENCES public.facultes(id);


--
-- TOC entry 2883 (class 2606 OID 16426)
-- Name: filieres filieres_departement_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filieres
    ADD CONSTRAINT filieres_departement_id_fkey FOREIGN KEY (departement_id) REFERENCES public.departements(id);


--
-- TOC entry 2885 (class 2606 OID 16503)
-- Name: etudiants fk_niveau_etudiant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiants
    ADD CONSTRAINT fk_niveau_etudiant FOREIGN KEY (id_niveau) REFERENCES public.niveau(id);


--
-- TOC entry 2884 (class 2606 OID 16442)
-- Name: niveau niveau_filiere_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.niveau
    ADD CONSTRAINT niveau_filiere_id_fkey FOREIGN KEY (filiere_id) REFERENCES public.filieres(id);


-- Completed on 2022-01-27 17:33:27 WAT

--
-- PostgreSQL database dump complete
--

