--
-- Data for Name: info_main; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_main (id, first_name, last_name, middle_name, relationship, phone, date_of_birth, date_of_registry) FROM stdin;
3	Semen	Smirnov	Valeriyevich	instructor	+380957823211	1995-03-05	2022-03-05
1	Vasya	Pupkin	Petrovich	member	+380983423738	1999-03-05	2022-03-05
2	Petya	Pupkin	Petrovich	member	+380983429345	1998-02-04	2022-03-05
4	Evgeniy	Shashkin	\N	user	+380932314771	2001-12-08	2022-03-06
5	Nikita	Pasichnik	Vasilievich	member	+380679614369	1993-01-28	2022-05-03
6	Dmitry	Bobrov	Leonidovich	member	+380505875952	2003-12-08	2022-05-03
7	Gleb	Tolochko	Vadimovich	instructor	+380975384955	1978-12-12	2022-05-03
8	Stepan	Osipov	Andreevich	member	+380662223148	1997-04-30	2022-05-03
9	Kristina	Tsvetkova	Romanovna	user	+380987818823	1988-03-15	2022-05-03
10	Eva	Kulakova	Stanislavovna	member	+380508312425	1974-11-02	2022-05-03
\.


--
-- Data for Name: instructors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructors (info_id, hire_date, salary) FROM stdin;
3	2022-03-05	15000
7	2022-05-03	20000
\.


--
-- Data for Name: memberships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.memberships (id, title, price, duration, instructor_id) FROM stdin;
1	Basic 3 month	2999	3	\N
2	Basic 6 month	5999	6	\N
3	Basic 12 month	8999	12	\N
4	Advanced 3 month	3599	3	3
5	Advanced 6 month	7599	6	3
6	Advanced 12 month	11999	12	7
7	Promo 1 month	899	1	\N
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (info_id, membership_id, expires_at) FROM stdin;
1	1	2022-03-08 00:00:00
2	5	2022-03-11 00:00:00
5	3	2023-03-05 00:00:00
6	7	2022-03-06 00:00:00
8	2	2022-03-11 00:00:00
10	4	2022-03-08 00:00:00
\.


--
-- Data for Name: system_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_users (info_id, username, password_hash, email) FROM stdin;
4	Romashka	qwerty123	jenya_shash21@gmail.com
9	Berezka	123123	tsvet_proz11@gmail.com
\.


--
-- Data for Name: visits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visits (id, visitor_id, came_at, left_at) FROM stdin;
1	2	2022-03-06 15:55:52.495514	2022-03-06 16:09:45.625473
2	3	2022-05-03 08:38:43.187857	\N
4	5	2022-05-03 09:26:27.321932	\N
6	10	2022-05-03 09:26:27.321932	\N
9	2	2022-05-03 09:26:27.321932	\N
3	1	2022-05-03 08:38:43.187857	2022-05-03 09:31:48.89969
5	6	2022-05-03 09:26:27.321932	2022-05-03 09:31:48.89969
7	7	2022-05-03 09:26:27.321932	2022-05-03 09:31:48.89969
8	9	2022-05-03 09:26:27.321932	2022-05-03 09:31:48.89969
10	8	2022-05-03 09:26:27.321932	2022-05-03 09:31:48.89969
\.
