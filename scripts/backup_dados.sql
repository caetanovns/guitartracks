--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	songs	artist
2	songs	song
3	admin	logentry
4	auth	permission
5	auth	group
6	auth	user
7	contenttypes	contenttype
8	sessions	session
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add artist	1	add_artist
2	Can change artist	1	change_artist
3	Can delete artist	1	delete_artist
4	Can view artist	1	view_artist
5	Can add song	2	add_song
6	Can change song	2	change_song
7	Can delete song	2	delete_song
8	Can view song	2	view_song
9	Can add log entry	3	add_logentry
10	Can change log entry	3	change_logentry
11	Can delete log entry	3	delete_logentry
12	Can view log entry	3	view_logentry
13	Can add permission	4	add_permission
14	Can change permission	4	change_permission
15	Can delete permission	4	delete_permission
16	Can view permission	4	view_permission
17	Can add group	5	add_group
18	Can change group	5	change_group
19	Can delete group	5	delete_group
20	Can view group	5	view_group
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$870000$iKcGMgYTFyN9KBk0PONEwP$s6oL5jc5gWUJLRHzpzcST8tmUX/RqQDIu3oS4/77zzw=	\N	t	root	Root	User		t	t	2024-08-22 20:13:09.164557+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-08-22 18:57:42.163514+00
2	auth	0001_initial	2024-08-22 18:57:42.228242+00
3	admin	0001_initial	2024-08-22 18:57:42.245709+00
4	admin	0002_logentry_remove_auto_add	2024-08-22 18:57:42.251928+00
5	admin	0003_logentry_add_action_flag_choices	2024-08-22 18:57:42.25797+00
6	contenttypes	0002_remove_content_type_name	2024-08-22 18:57:42.270697+00
7	auth	0002_alter_permission_name_max_length	2024-08-22 18:57:42.277009+00
8	auth	0003_alter_user_email_max_length	2024-08-22 18:57:42.284145+00
9	auth	0004_alter_user_username_opts	2024-08-22 18:57:42.289596+00
10	auth	0005_alter_user_last_login_null	2024-08-22 18:57:42.295857+00
11	auth	0006_require_contenttypes_0002	2024-08-22 18:57:42.297961+00
12	auth	0007_alter_validators_add_error_messages	2024-08-22 18:57:42.303571+00
13	auth	0008_alter_user_username_max_length	2024-08-22 18:57:42.313164+00
14	auth	0009_alter_user_last_name_max_length	2024-08-22 18:57:42.319639+00
15	auth	0010_alter_group_name_max_length	2024-08-22 18:57:42.32865+00
16	auth	0011_update_proxy_permissions	2024-08-22 18:57:42.334713+00
17	auth	0012_alter_user_first_name_max_length	2024-08-22 18:57:42.342698+00
18	sessions	0001_initial	2024-08-22 18:57:42.353732+00
19	songs	0001_initial	2024-08-22 18:57:42.369541+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: songs_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.songs_artist (id, name, gender, image_path, popularity, gender_list, followers) FROM stdin;
26	3 Doors Down	\N	https://i.scdn.co/image/ab6761610000e5eb2064b57344edc592454c8090	71	alternative metal/nu metal/post-grunge/rock/	4420516
34	ABBA	\N	https://i.scdn.co/image/ab6761610000e5eb124eba6bf3476404531bd7b2	81	europop/swedish pop/	12667888
38	Acro Brats	\N	https://i.scdn.co/image/ab67616d0000b273b80105af4505fcdb057bb189	12		1446
39	Adele	\N	https://i.scdn.co/image/ab6761610000e5eb68f6e5892075d7f22615bd17	86	british soul/pop/pop soul/uk pop/	57619685
43	Against Me	\N	https://i.scdn.co/image/8294eb1685d99a6d557049dba7c7760d0889c3df	49	folk punk/gainesville indie/orgcore/skate punk/	295533
45	Airbourne	\N	https://i.scdn.co/image/ab6761610000e5ebb2b70dc14087e9a73cded7cf	58	hard rock/	813580
49	Alan Jackson	\N	https://i.scdn.co/image/ab6772690000c46c1dce50b93ca0b1e2f459d9e6	73	country/	2804114
51	Alannah Myles	\N	https://i.scdn.co/image/ab6761610000e5eb094b27e87b27cab9ca84d85f	56	classic canadian rock/	111456
54	Alex Hutchings	\N	https://i.scdn.co/image/ab6761610000e5ebc0fe116667e315edc128cff9	23	metal guitar/	4885
57	Alice In Chains	\N	https://i.scdn.co/image/ab6761610000e5eb6114a63659d0d5c0a801f733	73	alternative metal/alternative rock/grunge/hard rock/nu metal/rock/	5208055
63	Allan Holdsworth	\N	https://i.scdn.co/image/ab6761610000e5eb206e38b717db6e7e12212fe1	34	jazz fusion/jazz guitar/	103475
62	All Time Low	\N	https://i.scdn.co/image/ab6761610000e5ebc42923f098c078d2caace1b7	69	modern rock/neon pop punk/pop emo/pop punk/	3041230
65	Alpha Rev	\N	https://i.scdn.co/image/ab6761610000e5eb9268734f8b91aa0351082bbd	16	rebel blues/	7907
71	Amp Fiddler	\N	https://i.scdn.co/image/ab6761610000e5eb8e16a87f9b2e186e1b6d6000	36	acid jazz/broken beat/indie jazz/neo r&b/	41539
74	Anais	\N	https://i.scdn.co/image/ab6761610000e5eb4b9549c4cfb67ad3f1d25dd3	38		6762
75	Anarchy Club	\N	https://i.scdn.co/image/ab6761610000e5eb2514c8979d505de828dcfcac	24		7392
78	Andy James	\N	https://i.scdn.co/image/ab67616d0000b273b0695e92473e6843907a11b3	35	instrumental rock/shred/	58692
81	Angels And Airwaves	\N	https://i.scdn.co/image/ab6761610000e5eb9bf03fdd68eecd329f9fde6e	55	pop punk/socal pop punk/	699476
84	Anouk	\N	https://i.scdn.co/image/ab6761610000e5eb9333d540b3c2629879e72267	54	dutch pop/dutch rock/	374370
87	Anvil	\N	https://i.scdn.co/image/1f93b99edb4e6cd7df2ee7dc395777c92e0ab5bd	43	canadian metal/glam metal/hard rock/metal/speed metal/thrash metal/	129030
89	Arc Angels	\N	https://i.scdn.co/image/ab6761610000e5eb1f978923d0898734cb6ee6bb	27	southern rock/texas blues/	21287
93	Aretha Franklin	\N	https://i.scdn.co/image/ab6761610000e5ebf12270128127ba170f90097d	71	classic soul/jazz blues/memphis soul/soul/southern soul/vocal jazz/	3414927
95	Ark	\N	https://i.scdn.co/image/ab6761610000e5eb587aabc97ea3ead62622013f	43		7754
100	Asin	\N	https://i.scdn.co/image/ab67616d0000b2733d3fab110c8e453963c6e34f	50	classic opm/manila sound/opm/	301900
32	A Static Lullaby	\N	https://i.scdn.co/image/1ece8bb51fa36c1e8dbceaf09f6f68412939752b	36	screamo/	89425
107	Attack Attack	\N	https://i.scdn.co/image/c8bbeedb05f38ae5cb982a7daf4bf7129cca892c	65	downtempo/electronica/trip hop/	2240980
109	Audioslave	\N	https://i.scdn.co/image/ab6761610000e5eb5a865295befda9e060a72cb0	68	alternative metal/alternative rock/grunge/hard rock/nu metal/permanent wave/post-grunge/rock/supergroup/	4563566
112	Authority Zero	\N	https://i.scdn.co/image/ab6761610000e5ebcc8769232844e85493288724	42	arizona punk/punk/ska/ska punk/skate punk/	104944
116	Avril Lavigne	\N	https://i.scdn.co/image/ab6761610000e5eb5c3349ddba6b8e064c1bab16	77	canadian pop/candy pop/dance pop/pop/	11199406
119	Aya Hirano	\N	https://i.scdn.co/image/ab67616d0000b273aad5851ddfa925f178713ac8	38	anime/j-idol/seiyu/	45084
123	Backyard Babies	\N	https://i.scdn.co/image/ab6761610000e5ebf8011f17979348141e1b2a37	37	action rock/glam punk/punk 'n' roll/sleaze rock/swedish hard rock/	77305
127	Badlands	\N	https://i.scdn.co/image/7c086729dd9fddb140573582b0e89f93ce334b93	19	glam metal/	28660
130	Bang Camaro	\N	https://i.scdn.co/image/ab6761610000e5eb37e3b35a50084a7be73cc7b7	25		8256
132	Barenaked Ladies	\N	https://i.scdn.co/image/ab6761610000e5eb6f38e73a455b76c9e84d2e05	60	canadian pop/canadian rock/pop rock/post-grunge/	808328
137	Beatsteaks	\N	https://i.scdn.co/image/ab6761610000e5eb50d61686eeb125bb6fcc6504	50	german pop/german punk/german punk rock/german rock/	341801
139	Bee Gees	\N	https://i.scdn.co/image/1d5a05673975ba0c378cd280344e000b0b865620	77	disco/mellow gold/soft rock/	8025949
143	Belo	\N	https://i.scdn.co/image/ab6761610000e5eb83036a4880a6984579630eb7	69	pagode/	1619505
145	Ben Harper	\N	https://i.scdn.co/image/ab6761610000e5eb3c9c29d5da3d90b991c6abbb	60	neo mellow/pastoral/	1015650
148	Better Than Ezra	\N	https://i.scdn.co/image/ab6761610000e5eb20dca8f0cc5eb6d6a7fb5082	48	pop rock/post-grunge/	433582
152	Big Bang	\N	https://i.scdn.co/image/ab6761610000e5eb597a4257d0022e2ac837fa7d	65	k-pop/k-pop boy group/	4901685
154	Big Head Todd And The Monsters	\N	https://i.scdn.co/image/ab6761610000e5ebe7563edc093aab6879a52629	47	roots rock/	136328
158	Billy Idol	\N	https://i.scdn.co/image/ab6761610000e5ebd42c6334786bfdea92beeb5d	69	album rock/classic rock/dance rock/hard rock/new romantic/new wave/new wave pop/rock/soft rock/	2035635
161	Billy Ray Cyrus	\N	https://i.scdn.co/image/ab6761610000e5ebcedd1ae91e199fd50213222e	62	country rock/	250340
166	Black Dahlia Murder	\N	https://i.scdn.co/image/ab6761610000e5ebe026ca151707ae3679a94960	50	american melodeath/deathcore/melodic deathcore/melodic metalcore/	346060
168	Black Rebel Motorcycle Club	\N	https://i.scdn.co/image/ab6761610000e5eb671e6bba4b119e7b9675f1a4	50	garage rock/garage rock revival/modern blues rock/permanent wave/	559013
171	Black Tide	\N	https://i.scdn.co/image/ab6761610000e5eb6b0c68ffcbd51e4c5a52ec41	36	miami metal/	67081
175	Blessthefall	\N	https://i.scdn.co/image/ab6761610000e5eb965130dadfdf76ccef54c926	52	melodic metalcore/metalcore/pop punk/screamo/	650064
180	Blondie	\N	https://i.scdn.co/image/ab6761610000e5eb67dc4da82c968767d994f3c3	69	candy pop/new wave pop/permanent wave/power pop/rock/synthpop/	1518128
183	Blue Jays	\N	https://i.scdn.co/image/ab67616d0000b2732f4acedcc059b772c7b408e6	1		278
186	Blues Brothers	\N	https://i.scdn.co/image/9a2d7607cc1e3c6640a12b9007ec91d7301a8c53	55	blues/blues rock/	413059
189	Blur	\N	https://i.scdn.co/image/ab6761610000e5eb00620d736644d2359ce99430	69	alternative rock/britpop/madchester/permanent wave/rock/	3408325
193	Bob Marley	\N	https://i.scdn.co/image/b5aae2067db80f694a980e596e7f49618c1206c9	82	reggae/roots reggae/	12528905
197	BOC	\N	https://i.scdn.co/image/ab67616d0000b273b6164d427a2f60f8d51f68ae	52	axe/funk das antigas/funk melody/pagode/	330501
198	Bon Jovi	\N	https://i.scdn.co/image/ab6761610000e5eb52aade0d2ea19706074da4b9	79	glam metal/rock/	13659491
202	Box Car Racer	\N	https://i.scdn.co/image/420feb7fab6622848736cff1aa11739eae13849f	49	pop punk/	422636
204	BoyZone	\N	https://i.scdn.co/image/588a07548bc91a664fafbaa04c1936a4759f5bcf	58	boy band/	1138180
208	Bravery	\N	https://i.scdn.co/image/ab6761610000e5ebd65c907c81dd4f7e77d8c45c	0		54
210	Breaking Benjamin	\N	https://i.scdn.co/image/ab6761610000e5eb43f5e5cf145e783d5859fb9a	70	alternative metal/nu metal/post-grunge/	4648681
213	Brian May	\N	https://i.scdn.co/image/ab6761610000e5ebf61cc1bdeee1f14bff38c7df	47	glam rock/	383680
216	Britney Spears	\N	https://i.scdn.co/image/ab6761610000e5eb3a49b0a3954e460a8a76ed90	81	dance pop/pop/	15053866
220	Bruno Mars	\N	https://i.scdn.co/image/ab6761610000e5ebc36dd9eb55fb0db4911f25dd	89	dance pop/pop/	57884121
223	Buckethead	\N	https://i.scdn.co/image/267ee5fdca8d015c7b45b19bd495f1b37a90e041	50	funk metal/instrumental rock/shred/	410727
226	Budgie	\N	https://i.scdn.co/image/ab67616d0000b27356fd29a1637e7e3baabde031	34	proto-metal/welsh metal/	66023
229	Bumblefoot	\N	https://i.scdn.co/image/a25fe806d9ed52fbdb7e568cdf7483920134424b	27	shred/	28787
233	Busted	\N	https://i.scdn.co/image/ab6761610000e5eb27f3bca48a225329cfe58f60	54	boy band/talent show/	270977
235	Cacophony	\N	https://i.scdn.co/image/ab67616d0000b27354edb14eeee3b7998b8feec7	24	metal guitar/neo classical metal/	52762
239	Caliban	\N	https://i.scdn.co/image/ab6761610000e5eb0b5884ae28417c57175cc84b	40	german metalcore/german post-hardcore/melodic metalcore/metalcore/	190875
244	Capital Inicial	\N	https://i.scdn.co/image/ab6761610000e5ebbc611be88d151416dba687c8	64	brazilian rock/pop rock brasileiro/rock brasiliense/rock nacional brasileiro/	2839091
248	Carl Douglas	\N	https://i.scdn.co/image/ab6761610000e5ebcea061a1aee40d93206e244c	55		43562
251	Carlos Santana And Buddy Miles	\N	https://i.scdn.co/image/ab6761610000e5eb09882b1b7b33732abd60fc38	71	blues rock/classic rock/mexican classic rock/	3415976
253	Cast of nativity	\N	https://i.scdn.co/image/ab67616d0000b273f4d07dde933c55ede5165b55	0		85
257	CCR	\N	https://i.scdn.co/image/ab6761610000e5ebd2e2b04b7ba5d60b72f54506	82	album rock/classic rock/country rock/mellow gold/rock/southern rock/swamp rock/	6826829
261	Charlie Parker	\N	https://i.scdn.co/image/ab6761610000e5eb5642427a0fb3988948c9bec4	51	bebop/contemporary post-bop/cool jazz/jazz/jazz saxophone/vocal jazz/	628034
264	Chely Wright	\N	https://i.scdn.co/image/ab6761610000e5eb6776f4a348ccf5da1b7542bd	34	country dawn/queer country/	142499
268	Chicago	\N	https://i.scdn.co/image/ab6761610000e5ebbab088e2157b02848dfcbc1e	70	album rock/classic rock/mellow gold/rock/soft rock/yacht rock/	4147210
273	Chris Isaak	\N	https://i.scdn.co/image/ab6761610000e5ebf0026b72dcfa06ef8fd3c49b	66	mellow gold/	567016
275	Christina Aguilera	\N	https://i.scdn.co/image/ab6761610000e5eb371cba21c6962a457c550b81	77	dance pop/pop/	8405528
279	Chumbawamba	\N	https://i.scdn.co/image/57d60d824eac6f8870011979a6fab6b27b97fa44	55	anarcho-punk/	121446
282	CKY	\N	https://i.scdn.co/image/ab6761610000e5ebc4ab3b24237163bde3414e3d	49	nu metal/	253324
284	Coco Electric	\N	https://i.scdn.co/image/ab6761610000e5eb61c8665820f4cead9e8dd733	0		39
287	Cold Chisel	\N	https://i.scdn.co/image/75834cea956112782d8b6eeda25af254c6cd226d	56	australian rock/	768975
290	Cole Porter	\N	https://i.scdn.co/image/ab6761610000e5eb7b8595bef60047fe0d2bf093	40	swing/tin pan alley/	144006
293	Corey Fluhrer	\N	https://i.scdn.co/image/ab67616d0000b273d55626973d0b02ffb22758e7	23		32
296	Cosimo Valentini	\N	https://i.scdn.co/image/ab6761610000e5ebe0cfe58a70d39ba20883481c	32		3298
297	Count Zero	\N	https://i.scdn.co/image/ab67616d0000b273756b66c5231fdccf9f6eb92e	11		1083
300	Crashdiet	\N	https://i.scdn.co/image/ab6761610000e5eb79efcb5ad5948626cf2a69c3	34	glam metal/sleaze rock/swedish hard rock/	56441
304	Crooked X	\N	https://i.scdn.co/image/ab6761610000e5eb38b85f64737b090d34ae6318	50	vapor soul/	163737
306	Cross Canadian Radweed	\N	https://i.scdn.co/image/ab6761610000e5eb8a04435bcdc7e4da8966c121	42		482
309	Crystal King	\N	https://i.scdn.co/image/ab67616d0000b273968eb7f4150c715dafdc3b74	33	classic anime/	7479
312	Cyber Jammers	\N	https://i.scdn.co/image/ab6761610000e5eb8808c8a59cc2c1713f0b76e4	39	pop lgbtq+ brasileira/	7477
315	Daisuke Kurosawa	\N	https://i.scdn.co/image/ab6761610000e5ebb1b470e3b9dc16eea39d804a	27		3904
319	Dandy Warhols	\N	https://i.scdn.co/image/ab6761610000e5eb918734ca6f0f14803c7d8922	53	alternative rock/dance-punk/	328301
320	Danny Gatton	\N	https://i.scdn.co/image/aac8b073886dda997ceb96eb3541c1be1f76dcfe	21		20037
324	Darker My Love	\N	https://i.scdn.co/image/a77bbfdd175be830ba46809b3780042776fbb37b	18	nu gaze/psych gaze/	10439
328	Darrrells Guitar Garage project	\N	https://i.scdn.co/image/ab67616d0000b2738d3425cd661cad116a5ae660	32		105
330	Dashboard Confessional	\N	https://i.scdn.co/image/ab6761610000e5eb807198af655751559ed590a7	56	emo/neon pop punk/pop punk/pop rock/	620816
483	Flobots	\N	https://i.scdn.co/image/ab6761610000e5ebe7bb49246bf67405b11f3de3	45	conscious hip hop/nerdcore/	189607
482	Flo Rida Feat T Pain	\N	https://i.scdn.co/image/ab6761610000e5eb655ca8f3196953554b479452	80	dance pop/miami hip hop/pop/pop rap/	8602676
637	Jerome Kern	\N	https://i.scdn.co/image/ab6772690000c46cdd1adc4257904818fb0f7e5a	27	tin pan alley/	8419
361	Dethklok	\N	\N	0	\N	0
334	David Bowie	\N	https://i.scdn.co/image/ab6761610000e5ebb78f77c5583ae99472dd4a49	77	art rock/classic rock/glam rock/permanent wave/rock/	10645631
337	David Gray	\N	https://i.scdn.co/image/ab6761610000e5ebc653929290ae14a9ea5db071	62	neo mellow/permanent wave/	615835
340	David Wilcox	\N	https://i.scdn.co/image/ab67616d0000b27312930f541f854221c61e1e5d	38	canadian blues/classic canadian rock/	31226
344	Dealership	\N	https://i.scdn.co/image/a49f8ed94c7520dc7dc5c4db89fe257464cd688a	5	alternative pop/	639
347	Death Of The Cool	\N	https://i.scdn.co/image/ab6761610000e5ebb8925c7844e0fa72aa9ef175	6		391
350	Def Leppard	\N	https://i.scdn.co/image/ab6761610000e5eb695e45d9945ce1f8e5fa5c54	70	album rock/classic rock/glam metal/hard rock/nwobhm/rock/	5066727
354	Demiang	\N	https://i.scdn.co/image/ab67616d0000b2738e0c10e0b90499a8a856fc9e	36		747
356	Depeche Mode	\N	https://i.scdn.co/image/ab6761610000e5ebaff13c9484fdad590ccfb73c	74	dance rock/new romantic/new wave/permanent wave/rock/synthpop/	6485428
360	Destruction	\N	https://i.scdn.co/image/ab6761610000e5eb6a3e6fae759775185cf89c67	38	death metal/german metal/german thrash metal/metal/old school thrash/thrash metal/	281586
366	Diante do trono	\N	https://i.scdn.co/image/ab6761610000e5ebcb3d8904c9a8bc9694f0f57a	57	adoracao/brazilian gospel/	2006082
368	Die Toten Hosen	\N	https://i.scdn.co/image/ab6761610000e5eb6fc6ebd3cadc9bd5ae947b02	61	german alternative rock/german pop/german punk/german rock/	1485332
374	Dionne Warwick	\N	https://i.scdn.co/image/ab6761610000e5eb460f728695000dadb44a4e8c	61	adult standards/brill building pop/disco/quiet storm/soft rock/soul/vocal jazz/	956331
377	Dixie Chicks	\N	https://i.scdn.co/image/ab6761610000e5eb43d9d87bba466538f5c40901	66	contemporary country/country/country dawn/	1441639
381	Dobie Gray	\N	https://i.scdn.co/image/c98d2afb203a84f05bb4cb559b523eb0a758bdd1	50	northern soul/	44845
384	Dom Liberati	\N	https://i.scdn.co/image/ab6761610000e5eb428e70d1944cc1388631bfe1	0		112
386	Don Felder	\N	https://i.scdn.co/image/ab6761610000e5eb92d00e8b10c5a02a0067363f	30		14673
389	Dope	\N	https://i.scdn.co/image/ab6761610000e5eb750cc5e8908ca2a0c02d73cd	55	alternative metal/industrial metal/nu metal/	787641
396	Dramarama	\N	https://i.scdn.co/image/ab6761610000e5eb530ff016ba26e00af4515f6d	34		24944
398	Dream Warriors	\N	https://i.scdn.co/image/ab67616d0000b273378df454d3a58578ffe603ac	26	canadian old school hip hop/jazz rap/	9424
400	Drist	\N	https://i.scdn.co/image/ab67616d0000b273d38595bf27d4d0663fbdca2b	23		5739
402	Drivin N Cryin	\N	https://i.scdn.co/image/ab6761610000e5ebcb54762dfc999b2e7f9fb1e5	35	roots rock/	29041
394	Dr Sin	\N	https://i.scdn.co/image/ab67616d0000b2738f266bad2954b09a915ee5a6	26	brazilian metal/hard rock brasileiro/	35848
409	Dwight Yoakam	\N	https://i.scdn.co/image/ab6761610000e5ebfd0a6c9856c3b25b0af46983	59	bakersfield sound/country/country rock/	680904
412	Echo And The Bunnymen	\N	https://i.scdn.co/image/397489fba8899aa52cadb0f62662603f96065446	55	alternative rock/new romantic/new wave/permanent wave/uk post-punk/	937292
417	Editors	\N	https://i.scdn.co/image/ab6761610000e5eb02f411bd3acd4f49905f2564	52	british indie rock/indie rock/modern rock/new rave/	745052
419	Edwin Collins	\N	https://i.scdn.co/image/ab6761610000e5ebfdbd9299d7899c86cb1e0a3a	50	britpop/scottish new wave/solo wave/	54548
422	Electric Six	\N	https://i.scdn.co/image/ab6761610000e5eb911e16bcc336091c0cb42cba	46	dance-punk/garage rock/	162444
427	Elton John	\N	https://i.scdn.co/image/ab6761610000e5eb0a7388b95df960b5c0da8970	83	glam rock/mellow gold/piano rock/rock/	13631688
429	Elvin Bishop	\N	https://i.scdn.co/image/ab6761610000e5eb2f2e3f982b2cd24a798246c6	49	country rock/southern rock/	101695
433	EMF	\N	https://i.scdn.co/image/ab6761610000e5ebd268c9aa7851f3cbee67b6c7	49	britpop/dance rock/grebo/indietronica/madchester/	73317
436	Endeverafter	\N	https://i.scdn.co/image/ab67616d0000b2739c913ea3a6bef3576b5dfe8d	34	wrestling/	7916
439	Enter Shikari	\N	https://i.scdn.co/image/ab6761610000e5ebb3359e39b0da9241573d6a19	55	british alternative rock/nintendocore/trancecore/uk metalcore/uk post-hardcore/	456987
442	Era	\N	https://i.scdn.co/image/ab6761610000e5eb47d6bf6d840974e8a20f8f13	57	gregorian dance/	444155
446	Eric Mantel	\N	https://i.scdn.co/image/ab67616d0000b273bd7b4884b31ed02d03a1d3b8	8		189
449	Evanescence	\N	https://i.scdn.co/image/ab6761610000e5eb7ecf213c7dd78e0049379c5b	73	alternative metal/	4624903
453	Everlife	\N	https://i.scdn.co/image/3ab77a808f98b283eb06278cadec8cbd966760a9	27	candy pop/post-teen pop/	103224
457	Extreme	\N	https://i.scdn.co/image/ab6761610000e5eba2816ccc399c2c820c3d0bb6	61	funk metal/glam metal/hard rock/	618873
459	Face To Face	\N	https://i.scdn.co/image/ab6761610000e5eb8a39076467fa5fc98d6e3e61	48	punk/ska/skate punk/	185865
462	Fall Out Boy	\N	https://i.scdn.co/image/ab6761610000e5eb362011ebe6064c38e97e9aac	79	emo/modern rock/pop/pop punk/rock/	10792970
467	Feeder	\N	https://i.scdn.co/image/ab6761610000e5eb32fdbb620726c47f0c38edcd	49	britpop/welsh rock/	237035
470	Final Fantasy	\N	https://i.scdn.co/image/ab67616d0000b273d79fcebc3363935c51fae6cf	15	acid trance/	1916
472	Finley	\N	https://i.scdn.co/image/ab6761610000e5eb6d7a6868360a0701b9b435a9	45	italian adult pop/	75226
476	Fito Y Fitipaldis	\N	https://i.scdn.co/image/ab6761610000e5ebd5ed89f6dd4961b5442ea527	65	latin rock/spanish pop/spanish rock/	2085374
480	Fleetwood Mac	\N	https://i.scdn.co/image/ab6761610000e5ebc8752dd511cda8c31e9daee8	82	album rock/classic rock/rock/soft rock/yacht rock/	11873245
533	Go Gos	\N	\N	0	\N	0
492	Foreigner	\N	https://i.scdn.co/image/ab6761610000e5ebb338d6964565206f741d5ad1	71	album rock/classic rock/glam metal/hard rock/mellow gold/rock/soft rock/	3245422
496	Fourplay	\N	https://i.scdn.co/image/ab6761610000e5eb05e3fd39ec7af512e3631687	46	smooth jazz/	182046
501	Frankie Goes To Hollywood	\N	https://i.scdn.co/image/ab6761610000e5ebe7efd9cceef0829d1439b11e	57	dance rock/hi-nrg/new romantic/new wave/new wave pop/synthpop/	827231
503	Freddie Hubbard	\N	https://i.scdn.co/image/ab6761610000e5ebff800311ca4e79ec75be6813	41	bebop/contemporary post-bop/hard bop/jazz/jazz trumpet/	174653
506	Free	\N	https://i.scdn.co/image/b0710c8d0247d0710cfb5a2cd153908dc42ca08f	55	album rock/blues rock/british blues/classic rock/hard rock/	524313
510	Funkadelic	\N	https://i.scdn.co/image/dfd7b11d97bc9159e9d085c5fd925b70cd192178	51	classic soul/funk/funk rock/p funk/psychedelic soul/soul/	756898
514	Garbage	\N	https://i.scdn.co/image/ab6761610000e5eb3bb09eeb97b323472241d512	58	alternative rock/dance rock/electronic rock/permanent wave/	1226282
518	Gene Vincent	\N	https://i.scdn.co/image/7e8504fa090b9251bd6d02a41dfa9566dbdb36a7	38	rock-and-roll/rockabilly/	140352
522	George Lynch	\N	https://i.scdn.co/image/95c4b3ebabac56b9ad032eb2e7bb7e5f5536d647	26	glam metal/shred/	41684
526	Georgia Satellites	\N	https://i.scdn.co/image/7566a85bd529cdfcd242491eb4a15ab3d3011061	48	album rock/classic rock/country rock/hard rock/southern rock/	217694
527	Gerald Wilson	\N	https://i.scdn.co/image/dd67272d2307053b07791ba4337b3f47974ca061	14		2174
530	Ghost Hounds	\N	https://i.scdn.co/image/ab6761610000e5ebd7a269796fc16c4568e09038	39		103681
535	Golden Earring	\N	https://i.scdn.co/image/ab6761610000e5ebd7b257fdbe94a7e59687c03a	53	album rock/dutch prog/dutch rock/nederpop/	276141
540	Grand Funk Railroad	\N	https://i.scdn.co/image/ab6761610000e5eb54445ff310afccebf830a71b	56	album rock/blues rock/classic rock/country rock/hard rock/mellow gold/rock/singer-songwriter/soft rock/	1041994
543	Graveyard BBQ	\N	https://i.scdn.co/image/ab6761610000e5eb86a25e68eb5a5981facde717	17	southern metal/	4450
547	Greg Howe	\N	https://i.scdn.co/image/ab6761610000e5eb826380bb9949c8df54621107	36	instrumental rock/shred/	64134
549	Guitar Hero	\N	https://i.scdn.co/image/ab6761610000e5ebce399ad7547d8ee3b7fc86a0	54	vgm instrumental/	34210
557	Hank Crawford	\N	https://i.scdn.co/image/ac169261794acef9bd156579c1a2a076a20c4ba7	27	jazz blues/jazz saxophone/soul jazz/	16070
558	Hank Marvin	\N	https://i.scdn.co/image/ab6761610000e5eb4d10826d71cb6b4827cce767	25		28866
560	Hard Fi	\N	https://i.scdn.co/image/ab6761610000e5eba105b59e21ff5f9ac41b32e4	42	britpop/	184078
564	Hawthorne Heights	\N	https://i.scdn.co/image/ab6761610000e5ebe1d6884c0c707bdf447c6285	53	dayton indie/neon pop punk/pop punk/screamo/	509119
566	Headset	\N	https://i.scdn.co/image/ecb478dd72de390d258cbce263cbb2e309ed189d	0		211
570	Helmy Maulana	\N	https://i.scdn.co/image/ab6761610000e5eb7c41f2ffbd20309a81bcbbe1	19		503
572	Herbie Hancock	\N	https://i.scdn.co/image/ab6761610000e5ebca17170af02af227d6ea0c31	55	contemporary post-bop/instrumental funk/jazz/jazz funk/jazz fusion/jazz piano/	707480
575	Hidenori	\N	https://i.scdn.co/image/ab67616d0000b2738d73daa8d5e38acf9cbc889c	0		22
577	Him	\N	https://i.scdn.co/image/ab6761610000e5ebba025c8f62612b2ca6bfa375	67		1701047
581	Honest Bob And The Factory To Dealer Incentives	\N	https://i.scdn.co/image/ab67616d0000b273ed84f18603bb91ebc639ee50	15		2402
583	Hoodoo Gurus	\N	https://i.scdn.co/image/ab6761610000e5eb1a88e8deafc6dce55b6daa3f	48	australian rock/power pop/	194278
586	House De Racket	\N	https://i.scdn.co/image/ab6761610000e5eb0875561edcf5cf528c3eb5e4	18	electrofox/french rock/	19215
588	HS Lee	\N	https://i.scdn.co/image/ab67616d0000b27300bcb5f000960cbb91af0a19	0		3
591	Hundred Reasons	\N	https://i.scdn.co/image/ab6761610000e5ebebdf1b774e54b3ae89ce5137	33	uk post-hardcore/	27724
597	Ides Of March	\N	https://i.scdn.co/image/3d8a411b45f98cd8a11406a288230f6e343442ba	38		21716
599	Imagine dragons	\N	https://i.scdn.co/image/ab6761610000e5ebab47d8dae2b24f5afe7f9d38	88	modern rock/pop/rock/	53925591
603	Innerpartysystem	\N	https://i.scdn.co/image/ab67616d0000b273cfbba16edef5729fd2bd587b	32	electronic rock/electropowerpop/	30604
601	In This Moment	\N	https://i.scdn.co/image/ab6761610000e5eb285ee23e367e081e90606ea1	60	alternative metal/nu metal/post-grunge/	1337373
608	Iron Maiden	\N	https://i.scdn.co/image/ab6761610000e5eb232a905537f61c00da9d16e0	72	alternative metal/hard rock/metal/nwobhm/rock/	9191302
614	Jackson 5	\N	https://i.scdn.co/image/19f768d93f6c80f7d4ca5b906e1c0376a3704389	66	motown/soul/	1588118
616	Jacques Dutronc	\N	https://i.scdn.co/image/ab6761610000e5eb410b2ccb82d9d56725b682b2	49	chanson/ye ye/	177230
620	James Brown	\N	https://i.scdn.co/image/ab6761610000e5eb158342aa8bb8a192c778f2a5	62	funk/motown/soul/vocal jazz/	2175371
617	Jam Tracks	\N	https://i.scdn.co/image/ab6761610000e5eb1b1a46ec7ba36a4a1e2b4eba	0		37
626	Jason Aldean	\N	https://i.scdn.co/image/ab6761610000e5eb70d22778295f215b94941a21	74	contemporary country/country/country road/modern country rock/	6497897
630	Jean Louis Aubert	\N	https://i.scdn.co/image/ab6761610000e5eb32e8c3939a60814ac9c5da0a	47	chanson/french pop/french rock/	270379
632	Jeff Buckley	\N	https://i.scdn.co/image/67779606c7f151618a28f62b1d24fb514d39dacf	65	melancholia/permanent wave/singer-songwriter/	1424004
634	Jeff Loomis	\N	https://i.scdn.co/image/53fb370411c25041b51ca65f911b6d628f8cce68	36	instrumental rock/neo classical metal/shred/	46421
638	Jerry Lee Lewis	\N	https://i.scdn.co/image/ab6761610000e5eb01ff3e4f94ff73cab6c4c0bb	58	piano rock/rock-and-roll/rockabilly/	919009
643	Jimi Hendrix	\N	https://i.scdn.co/image/ab6761610000e5eb31f6ab67e6025de876475814	69	acid rock/album rock/alternative rock/classic rock/hard rock/proto-metal/psychedelic rock/rock/	6799759
971	Rick Derringer	\N	https://i.scdn.co/image/894c4156ce1eadbbe6582ab7aa39fd55f6067e52	40	blues rock/country rock/electric blues/southern rock/	78190
769	Mago De Oz	\N	\N	0	\N	0
648	Joan Manuel Serrat	\N	https://i.scdn.co/image/ab6761610000e5eb8ff0dda128ae8739db09bdd3	60	cantautor/nova canco/nueva cancion/trova/	1428846
651	Joe Perry	\N	https://i.scdn.co/image/ab6761610000e5eb1e5a12e8d18a2e9cd471e826	35	modern hard rock/	16759
654	John 5	\N	https://i.scdn.co/image/ab6761610000e5ebdb6620693d4000420d2cf6eb	38	instrumental rock/shred/	99247
657	John Cafferty And The Beaver Brown Band	\N	https://i.scdn.co/image/9fa4e15fa6b548522ab1107f753162968363d729	40	heartland rock/	37983
661	John Lennon	\N	https://i.scdn.co/image/ab6761610000e5ebba4ddda6af00a6927a4f307c	69	classic rock/rock/	6114776
663	John Mayer	\N	https://i.scdn.co/image/ab6761610000e5ebe926dd683e1700a6d65bd835	77	neo mellow/singer-songwriter/	6017980
668	Johnny Hallyday	\N	https://i.scdn.co/image/ab6761610000e5ebcdfaeaab2e632fdafcdbd585	59	chanson/french pop/ye ye/	1340434
671	Johnny Vaughan	\N	https://i.scdn.co/image/ab67616d0000b273eb44c219a9916b3838d86fbf	0		4
673	Johny Cash	\N	https://i.scdn.co/image/ab67616d0000b273a4773bde389e61d97eee378a	1		2757
674	Jonathan Coulton	\N	https://i.scdn.co/image/ab6761610000e5eb59fdf438f062bdda0a9dff96	41	comic/	108339
678	Juanes	\N	https://i.scdn.co/image/ab6761610000e5eb330d24db775125dcec2c7b4c	76	colombian pop/latin pop/mexican pop/rock en espanol/	4832240
681	Julien K	\N	https://i.scdn.co/image/ab6761610000e5eba7475b5895e9a1d3800d60e4	59	chanson/french pop/	866486
685	Justin Moore	\N	https://i.scdn.co/image/ab6761610000e5eb5053d9dcc37664e5176bab6f	63	arkansas country/contemporary country/country/country road/modern country rock/	1861257
690	Kasabian	\N	https://i.scdn.co/image/ab6761610000e5eb9adf40411756ca7c9d92bbf2	63	britpop/garage rock/leicester indie/modern rock/rock/	1805394
692	Katy Perry	\N	https://i.scdn.co/image/ab6761610000e5eb5e5f676a99a81dba06cc3db6	85	pop/	34105911
694	Kelton	\N	https://i.scdn.co/image/ab6761610000e5eb55118e708a80cc07508f3f03	2		1009
699	Kent	\N	https://i.scdn.co/image/ab6761610000e5eb745185735a35ce9dd50fa35c	16		2415
700	Kid Rock	\N	https://i.scdn.co/image/ab6761610000e5eb2306846cafba63385008dc21	68	nu metal/	2699274
704	King Crimson	\N	https://i.scdn.co/image/ab6761610000e5eb7c1c2fcf5a73dbfa60a40a18	54	art rock/instrumental rock/jazz rock/progressive rock/psychedelic rock/symphonic rock/zolo/	1175813
707	Kiss	\N	https://i.scdn.co/image/ab6761610000e5ebd8205a492a79bfe4b34c567a	72	glam rock/hard rock/rock/	9657279
713	Krokus	\N	https://i.scdn.co/image/018c05526898d96dc23b5f86195f63060d0d5825	42	album rock/glam metal/hard rock/swiss rock/	306058
714	KsE	\N	https://i.scdn.co/image/ab6761610000e5ebad587f1fe008054bf556ce67	28	high vibe/shamanic/	6171
717	Kurban	\N	https://i.scdn.co/image/ab6761610000e5ebd48e0c17d5987fa9c31baf3e	40	turkish rock/	148860
726	Lady Antebellum	\N	https://i.scdn.co/image/ab6761610000e5eb88ef2b30e7a0cb9d1af31d7a	66	contemporary country/country/country dawn/country pop/country road/	3684247
728	Lagwagon	\N	https://i.scdn.co/image/ab6761610000e5eb97000feefe51450281e8e52c	48	punk/ska/skate punk/socal pop punk/	274658
730	Last Goodnight	\N	https://i.scdn.co/image/ab6761610000e5eb48cfb4031ac493d7d04a0d95	39		21265
733	Legion Urbana	\N	https://i.scdn.co/image/cd410bc7c6e3591f65d9c9ee9516d2e96acfed42	68	mpb/rock brasiliense/rock nacional brasileiro/	6334366
737	Lesley Roy	\N	https://i.scdn.co/image/ab6761610000e5eb558c225b58f966f9523d5034	27	candy pop/	22638
738	Lessons	\N	https://i.scdn.co/image/ab6761610000e5ebbd7e1e7cf410fe16b4f5c0b0	0		391
740	Life Of Agony	\N	https://i.scdn.co/image/ab6761610000e5ebefa080af9bdfa81b51c9e74f	38		93210
744	Lion	\N	https://i.scdn.co/image/ab6761610000e5eb002684808eb17d8b3645b57c	70	disco/soft rock/	3730288
747	Lit	\N	https://i.scdn.co/image/ab6761610000e5eb4a57c7004c752f2c13eda328	73		250449
750	Live	\N	https://i.scdn.co/image/ab6761610000e5eba27fd31b4b48714e01768c4e	61	grunge/pop rock/post-grunge/	808613
754	Los Berrones	\N	https://i.scdn.co/image/ab67616d0000b273b5b27134b1711506a87e52a1	25	rock en asturiano/	6559
756	Los Lobos	\N	https://i.scdn.co/image/ab6761610000e5ebac4404f853105ca0ae098306	57	roots rock/	168615
759	Lost frequencies	\N	https://i.scdn.co/image/ab6761610000e5eb6a77aaa2cde6783b1ca727e9	80	belgian edm/edm/pop dance/tropical house/	2877215
763	Lush	\N	https://i.scdn.co/image/56b2a6a3f335cd4ac52aaf140940acd19d624355	45	alternative rock/britpop/dream pop/shoegaze/	248981
768	Made In Mexico	\N	https://i.scdn.co/image/ab67616d0000b273d1c040f0641bf0c91b181bdb	8	rhode island indie/	1419
771	Main Drag	\N	https://i.scdn.co/image/ab67616d0000b273e917d315c67475e3aeb6cb10	18		3333
773	Manic Street Preachers	\N	https://i.scdn.co/image/ab6761610000e5eb4f06761da7025701b21accf3	52	britpop/permanent wave/rock/welsh rock/	694141
776	Marcel Coenen	\N	https://i.scdn.co/image/ab6761610000e5ebd833beec5d614c1ef016de55	5	instrumental rock/shred/	2489
779	Mariah Carey	\N	https://i.scdn.co/image/ab6761610000e5eb21b66418f7f3b86967f85bce	77	dance pop/pop/urban contemporary/	10254905
782	Mario Tomic	\N	https://i.scdn.co/image/ab67616d0000b273dc6e271a41979b8d247f76a8	0		33
786	Martha And The Muffins	\N	https://i.scdn.co/image/ab6761610000e5ebd2523c20ca0823136c6e847c	41	classic canadian rock/new wave pop/	25927
787	Martin Vezoli	\N	https://i.scdn.co/image/ab6761610000e5eb2b87b62d5383fb87d245828e	44	funk mtg/	3158
791	Mason Williams	\N	https://i.scdn.co/image/ab67616d0000b27302b90d5203aca903e0238f14	37		13827
794	Matchbox 20	\N	https://i.scdn.co/image/ab6761610000e5eb2600695faee2deeb736755f0	68	neo mellow/pop rock/post-grunge/	2526350
797	Maximo Park	\N	https://i.scdn.co/image/ab6761610000e5eb64ec19f7ca4bddb8d4d56d33	46	britpop/newcastle indie/	244141
932	Puguh Kribo	\N	\N	0	\N	0
802	Melayu	\N	\N	0	\N	0
807	Mezzoforte	\N	https://i.scdn.co/image/ab6761610000e5eb39e3f7a40d9d1ef808ed2115	36	icelandic jazz/	38851
809	Michael Jackson	\N	https://i.scdn.co/image/ab6761610000e5eb0e08ea2c4d6789fbf5cbe0aa	83	r&b/soul/	32058473
812	Midnight Oil	\N	https://i.scdn.co/image/ab6761610000e5eb250d8955d025460671be2609	58	australian rock/new romantic/	807361
816	Miguel Rios	\N	https://i.scdn.co/image/ab6761610000e5ebe44524680238d97bffb950b2	54	cantautor/rock andaluz/spanish new wave/spanish pop/trova/	282826
819	Mike Stern	\N	https://i.scdn.co/image/ab6761610000e5ebed0ff5eb0239ff98b4308d93	33	jazz fusion/jazz guitar/	77605
822	Mojinos Escozios	\N	https://i.scdn.co/image/ab6761610000e5eb8fb9c5e325c4f52eb499de0e	43	comic metal/spanish new wave/spanish pop/	131858
825	Monty Norman	\N	https://i.scdn.co/image/ab67616d0000b273a051b8df70d5bbefd83cdbca	28		3809
828	Morrissey	\N	https://i.scdn.co/image/cdbc12a6b10dbab32ed73d4979183e95f46ebeb2	58	madchester/new wave/permanent wave/solo wave/	1139883
831	Mott The Hoople	\N	https://i.scdn.co/image/130b5d335ec440db3d2efce781ab3882c87a0781	45	glam rock/protopunk/	226239
835	Mr Mister	\N	https://i.scdn.co/image/ab67616d0000b273c2540bf46ca0e8e7ce19064b	5		203
838	Muse	\N	https://i.scdn.co/image/ab6761610000e5eb0accbbe13e1aa147dd27671c	75	alternative rock/modern rock/permanent wave/rock/	7889684
841	Nancy Sinatra	\N	https://i.scdn.co/image/ab6761610000e5eb16c62a011226b92f33c77a2f	65	lounge/sunshine pop/	476181
844	Necroberus	\N	https://i.scdn.co/image/ab6761610000e5ebef4bbd13b115968a9eff665b	1		208
847	Neil Zaza	\N	https://i.scdn.co/image/ab6761610000e5eb1ebb8ac2e7b6989de3dcd959	31	instrumental rock/shred/	28360
851	Newton faulkner	\N	https://i.scdn.co/image/ab6761610000e5ebcd20ab3bbe98368729e51cb7	46	folk-pop/	213807
853	Night Ranger	\N	https://i.scdn.co/image/ab6761610000e5eb9e8c55f799964f5194cc5999	51	album rock/classic rock/glam metal/hard rock/soft rock/	733473
856	Nirvana	\N	https://i.scdn.co/image/84282c28d851a700132356381fcfbadc67ff498b	82	grunge/permanent wave/rock/	20004211
858	No Vacancy	\N	https://i.scdn.co/image/ab67616d0000b2736289ceef1f7c8beb43ef7c53	24		1742
864	Obituary	\N	https://i.scdn.co/image/ab6761610000e5ebe040db93e9828cc23848fc32	46	death metal/florida death metal/groove metal/metal/	501607
868	Ohio Players	\N	https://i.scdn.co/image/23212728cebb091acf4c1192b6f25c553c01c415	47	classic soul/disco/funk/p funk/quiet storm/soul/southern soul/	677530
872	One Republic	\N	https://i.scdn.co/image/ab6761610000e5eb57138b98e7ddd5a86ee97a9b	85	piano rock/pop/	17355192
875	Opiate For The Masses	\N	https://i.scdn.co/image/ab67616d0000b273a07d84b098c7222d1263a001	6		1565
879	Ozielzinho	\N	https://i.scdn.co/image/ab6761610000e5ebc04b2010a74fe67b6aa35da7	16		8948
881	Paco De Lucia	\N	https://i.scdn.co/image/da661057b736c36095e5db589993654fef887cb9	55	flamenco/flamenco guitar/rumba/	561695
885	Papa Roach	\N	https://i.scdn.co/image/ab6761610000e5eb16d84e1083c232e86f299f01	73	alternative metal/nu metal/rap metal/rap rock/rock/	5290503
888	Parissiene	\N	https://i.scdn.co/image/ab67616d0000b2732c23ad0c5adfd32be0aeefc6	43	rai algerien/	333902
891	Pat Metheny	\N	https://i.scdn.co/image/ab6761610000e5eba093df613deeb238051bd7fe	53	avant-garde jazz/contemporary post-bop/jazz/jazz fusion/jazz guitar/	365542
895	Patsy Cline	\N	https://i.scdn.co/image/c8eb3a2d38f77a5f9e752036dec6c21f307fbfe2	61	country/nashville sound/	888790
899	Paul Personne	\N	https://i.scdn.co/image/ab6761610000e5ebed38c191adfb574fbaa18544	25	french rock/	20251
901	Paul Weller	\N	https://i.scdn.co/image/ab6761610000e5eb1cd39d1434a0b1689db06193	53	britpop/solo wave/	466374
907	Peter Green	\N	https://i.scdn.co/image/ab6761610000e5ebc8752dd511cda8c31e9daee8	82	album rock/classic rock/rock/soft rock/yacht rock/	11873245
908	Phil Collins	\N	https://i.scdn.co/image/ab6761610000e5ebd4e38c4e3e5c82774740e28d	77	rock drums/soft rock/	6023957
912	Placebo	\N	https://i.scdn.co/image/ab6761610000e5ebc8b42133fea50275b77f45e2	64	alternative rock/britpop/permanent wave/rock/	1947518
914	Plus 44	\N	https://i.scdn.co/image/ab67616d0000b27394f4a92b3946509b3ed3c140	0		499
918	Porcupine Tree	\N	https://i.scdn.co/image/ab6761610000e5ebc4f72407be5d96db73982400	54	progressive metal/progressive rock/	701988
922	Priestess	\N	https://i.scdn.co/image/9aab6e80ed3fb4d00516dd30f841915a070c3a61	39	canadian metal/canadian rock/retro metal/	37556
925	Prince And The Revolution	\N	https://i.scdn.co/image/ab6761610000e5ebeaca358712b3fe4ed9814640	70	funk/funk rock/minneapolis sound/rock/synth funk/	7407187
928	Prueba	\N	https://i.scdn.co/image/ab67616d0000b2732db98c72f8db06eea9ecf6cc	34		6652
931	Puddle Of Mudd	\N	https://i.scdn.co/image/ab6761610000e5ebdd62ca40d0a72d3719b6a81f	64	alternative metal/nu metal/post-grunge/	2079610
935	Queen and jode5	\N	https://i.scdn.co/image/ab67616d0000b273ad0052839d63c37ec3dc4499	6		774
938	Quite Riot	\N	https://i.scdn.co/image/2639448c11dfe54f33fd747f44093bb4aea936e0	57	album rock/classic rock/glam metal/hard rock/metal/rock/	1819760
942	Radio Futura	\N	https://i.scdn.co/image/ab6761610000e5ebad5b0c081f0d3953f47cfa5a	52	cantautor/spanish new wave/spanish pop/	394201
945	Rainbow	\N	https://i.scdn.co/image/e0ad73e5231086142031094d86e8bef61576268c	58	album rock/classic rock/glam metal/hard rock/metal/rock/	1517157
952	Ratt	\N	https://i.scdn.co/image/ab6761610000e5ebd3297e8dc2b2a85e1071e637	58	album rock/glam metal/hard rock/	1165776
953	Raul Seixas	\N	https://i.scdn.co/image/ab6761610000e5eb9f0c70d55c26e9773d00b7b1	63	mpb/psicodelia brasileira/rock baiano/rock nacional brasileiro/	2305547
958	Red Jumpsuit Apparatus	\N	https://i.scdn.co/image/ab6761610000e5ebb4223cca4841b3e52a7133f1	62	alternative metal/neon pop punk/pop punk/post-grunge/screamo/	1388397
973	Ricky Martin	\N	https://i.scdn.co/image/ab6761610000e5eb1c0f358293ec7b223fd91fca	72	latin pop/mexican pop/puerto rican pop/	7572595
977	Ritchie Valens	\N	https://i.scdn.co/image/c0797b7eeb72ffd9760fa5a026641d14b3fd547a	61	rock-and-roll/rockabilly/	600288
981	Robbie Williams	\N	https://i.scdn.co/image/ab6761610000e5eb15709ba37709bc245a116a1c	70	dance rock/europop/	2916212
985	Robert Plant	\N	https://i.scdn.co/image/6a29772fd3afae9ec890a860c500fa55267d8870	55	album rock/art rock/blues rock/classic rock/hard rock/mellow gold/progressive rock/rock/singer-songwriter/uk americana/	1125253
987	Robster	\N	https://i.scdn.co/image/ab6761610000e5eb1c33e2a3b2e003676b7d6324	39		236
990	Rolf Schumacher	\N	https://i.scdn.co/image/ab67616d0000b2738dde51ab1c7262f5fcd04301	0		1
994	Roupa Nova	\N	https://i.scdn.co/image/ab6761610000e5eb818e8d878ff7429b83c452b2	61	mpb/	2484984
999	RPM	\N	https://i.scdn.co/image/ab6761610000e5ebf656af4b1d598b1008a1e59d	51	rock nacional brasileiro/	1087128
1000	Rudhie Becker Pep Yngve	\N	https://i.scdn.co/image/ab6761610000e5eb11161b033e011a1aa6706a91	43	chill baile/	2300
962	Reggae	\N	https://i.scdn.co/image/ab67616d0000b273e93281b5e8f9129b9fc3cfbd	34	reggae do maranhao/	15644
967	RHCP	\N	https://i.scdn.co/image/ab6761610000e5ebc33cc15260b767ddec982ce8	83	alternative rock/funk metal/funk rock/permanent wave/rock/	21128383
969	Richard Cheese	\N	https://i.scdn.co/image/ab6761610000e5ebc83d5ddac0f9613356096da2	45	comic/comic metal/jazz cover/	297694
1004	Sabaton	\N	https://i.scdn.co/image/ab6761610000e5eb0f468cde238dfde3ba3c921e	71	power metal/swedish metal/swedish power metal/	2172151
1006	Samhain	\N	https://i.scdn.co/image/ab6761610000e5eba7990fc90125bf28c7f67897	7		3474
1010	Savage Garden	\N	https://i.scdn.co/image/ab6761610000e5eba218283491135c3c72911719	65	boy band/dance pop/pop rock/	1331174
1013	Scandal	\N	https://i.scdn.co/image/ab6761610000e5eb93b822c0863505d3f30db128	48	anime/j-poprock/	312316
1017	Screaming Trees	\N	https://i.scdn.co/image/ab6761610000e5eb7c8bb5704a37a593587ac2e8	44	alternative rock/grunge/	332392
1020	Senses Fail	\N	https://i.scdn.co/image/ab6761610000e5eb29fb2ce01171457c13652a1f	54	emo/metalcore/neon pop punk/pop punk/post-hardcore/screamo/	452126
1024	Shadow Play	\N	https://i.scdn.co/image/ab6761610000e5ebc9e5df73a067e4b857463eab	40		843
1025	Shadow Warriors	\N	https://i.scdn.co/image/ab67616d0000b2735b648cedeae9c51141378d51	0		97
1030	Shawn Lane	\N	https://i.scdn.co/image/ab6761610000e5ebf5fcbc5edbc218e66d3c038b	23	instrumental rock/neo classical metal/shred/	30393
1033	Shinedown	\N	https://i.scdn.co/image/ab6761610000e5eb82203ff88a2e1bbb1278ab1b	71	alternative metal/nu metal/post-grunge/	4141607
1037	Silversun Pickups	\N	https://i.scdn.co/image/ab6761610000e5ebd3c9dc38ed243e584ba7cce3	53	alternative rock/indie rock/la indie/modern alternative rock/modern rock/	648296
1041	Singuporg	\N	https://i.scdn.co/image/ab6761610000e5eb18b067841c1edf3cecba77a3	41		623
1043	Sixx AM	\N	https://i.scdn.co/image/ab6761610000e5ebfbe3966172a4e2395f3f7daa	54	alternative metal/post-grunge/	417267
1047	Skunk Anansie	\N	https://i.scdn.co/image/ab6761610000e5ebd8b85f239a9cc2f32b792721	51	british alternative rock/	365578
1049	Skylark	\N	https://i.scdn.co/image/ab6761610000e5eb57338ab6b2088c636b154e44	32	french dnb/	6130
1054	Slipknot	\N	https://i.scdn.co/image/ab6761610000e5ebd0cdb283a7384a0edb665182	79	alternative metal/nu metal/rap metal/rock/	11561038
1055	Smash Mouth	\N	https://i.scdn.co/image/ab6761610000e5ebd58661b3aa9d077580e8aa4e	67	pop rock/post-grunge/	1103037
1061	Sodom	\N	https://i.scdn.co/image/ab6761610000e5ebd0762ad94c14d852c570b699	47	black thrash/death metal/deathrash/german metal/german thrash metal/metal/old school thrash/speed metal/thrash metal/	475860
1065	Soulfly	\N	https://i.scdn.co/image/ab6761610000e5eb092c0cdb00c5666c6f6a1a80	50	alternative metal/groove metal/industrial metal/metal/nu metal/rap metal/	714842
1069	Spacehog	\N	https://i.scdn.co/image/ab6761610000e5ebd6dded4cb333312599b0ac21	49	glam rock/pop rock/post-grunge/	137077
1073	Sponge	\N	https://i.scdn.co/image/56fc3a11d95a9b44dabf22ca2dc56b670541c3f5	54	cartoon/children's music/	385004
1076	Stained	\N	https://i.scdn.co/image/ab67616d0000b273f7dfad1f65da7b314a1a1f45	1		90
1079	Status Quo	\N	https://i.scdn.co/image/ab6761610000e5eb6724477b2d922b4b0c18c37d	59	blues rock/british blues/glam rock/	801194
1082	Steffen Schackinger	\N	https://i.scdn.co/image/ab67616d0000b273c506ae3ad2839e03e15086a1	2	instrumental rock/	2008
1085	Stereophonics	\N	https://i.scdn.co/image/ab6761610000e5eb9eeb3f2569bb34874643bb72	63	britpop/welsh rock/	1573842
1089	Steve Morse	\N	https://i.scdn.co/image/4618314cd66b7b5196b2bf9186d0f514b26d19f5	29	instrumental rock/shred/	65639
1090	Steve Ouimette	\N	https://i.scdn.co/image/ab6761610000e5eb51e9d2c5c472079446c7a26c	35	shred/	14445
1094	Stevie Nicks	\N	https://i.scdn.co/image/ab6761610000e5ebff4ca8de3c5605e889efab75	65	heartland rock/	1677299
1097	Sting	\N	https://i.scdn.co/image/ab6761610000e5eb9fdb4dab484a9f12e347c216	71	permanent wave/soft rock/sophisti-pop/	3392212
1102	Strike IV	\N	https://i.scdn.co/image/ab6761610000e5ebe79d0f9cc760d159828d0734	29		2043
1104	Styx	\N	https://i.scdn.co/image/ab6761610000e5ebc2a482e06d5e31e6cc6cf7ec	61	album rock/classic rock/glam metal/hard rock/mellow gold/progressive rock/rock/soft rock/	2004489
1109	Superbus	\N	https://i.scdn.co/image/ab6761610000e5eb735edc388fce2f4c242e1e1d	44	chanson/french pop/french rock/variete francaise/	152214
1112	Survivor	\N	https://i.scdn.co/image/da30acd2c9d0f32f5f5a2d69f32c2d30335466b5	68	album rock/glam metal/hard rock/soft rock/	1151903
1116	System Of A Down	\N	https://i.scdn.co/image/ab6761610000e5eb60063d3451ade8f9fab397c2	80	alternative metal/nu metal/rap metal/rock/	11094061
988	Rocky Horror Picture Show	\N	\N	0	\N	0
991	Ronnie Dio	\N	\N	0	\N	0
1122	Tame Impala	\N	https://i.scdn.co/image/ab6761610000e5eb90357ef28b3a012a1d1b2fa2	80	australian psych/modern rock/neo-psychedelic/rock/	8037678
1126	Ted Nugent	\N	https://i.scdn.co/image/ab6761610000e5eb030bcb95866eee7f4a49961c	53	acid rock/album rock/blues rock/classic rock/glam metal/hard rock/rock/southern rock/	1196756
1130	Tenacious D	\N	https://i.scdn.co/image/ab6761610000e5eb7637f18f419921b8d24bd9e5	63	alternative metal/comedy rock/comic/comic metal/parody/	1828418
1134	The Alan Parons Project	\N	https://i.scdn.co/image/3e90d18b7375a0e78340d23f72822646c4cc3b70	63	album rock/art rock/classic rock/mellow gold/progressive rock/soft rock/symphonic rock/	1508386
1138	The Automatic	\N	https://i.scdn.co/image/ab6761610000e5eb5d7e4829f8fc3cbf4fbe2812	35	welsh rock/	26776
1141	The Beatles	\N	https://i.scdn.co/image/ab6761610000e5ebe9348cc01ff5d55971b22433	85	british invasion/classic rock/merseybeat/psychedelic rock/rock/	28092336
1144	The Bronx	\N	https://i.scdn.co/image/ab6761610000e5eb5e0ed6db531cb43b277f98bf	41		95300
1147	The Clash	\N	https://i.scdn.co/image/ab470b275daa38351810a1eb91d107ebdb821302	71	alternative rock/permanent wave/punk/rock/	2796267
1150	The Coral	\N	https://i.scdn.co/image/ab6761610000e5ebc5fa6b8d66b263ccc1a3a8cd	50	britpop/	265061
1154	The Darkness	\N	https://i.scdn.co/image/ab6761610000e5eb2639501574377bb7bf34fdec	55	glam metal/hard rock/	432356
1156	The Donnas	\N	https://i.scdn.co/image/e7ab2a829395e4468c0224cd1ccb9db8d68746a0	40	candy pop/glam punk/	146680
1159	The Duke Spirit	\N	https://i.scdn.co/image/71b383427879b7a1d977920527168adf3620c09e	25	garage rock/	25544
1163	The Exies	\N	https://i.scdn.co/image/ab6761610000e5eb7032283aa060835bed07f0ef	40	post-grunge/	84864
1165	The Faces	\N	https://i.scdn.co/image/ab6761610000e5eb543d7bfd2f70629c73e6d8fe	4		1337
1167	The Greg Kihn Band	\N	https://i.scdn.co/image/ab6761610000e5eba5244b4329fa53cc7290d48c	50	album rock/	82870
1171	The Hollies	\N	https://i.scdn.co/image/722e36849bde408b99330c713ebeb19157eabc89	63	album rock/british invasion/classic rock/folk rock/mellow gold/merseybeat/soft rock/	1205596
1175	The Killers	\N	https://i.scdn.co/image/ab6761610000e5eb207b21f3ed0ee96adce3166a	78	alternative rock/dance rock/modern rock/permanent wave/rock/	7404294
1179	The Konks	\N	https://i.scdn.co/image/ab67616d0000b2733e43d8592938332c40d8ef28	6		460
1181	The Living End	\N	https://i.scdn.co/image/ab6761610000e5eb47b0a785545cfa096b1bf97d	45	australian alternative rock/australian rock/australian ska/	146114
1224	Themes	\N	https://i.scdn.co/image/ab6761610000e5eb1a4fe81803f8aba30af3f2a0	0		68
1185	The Motorettes	\N	https://i.scdn.co/image/ab67616d0000b2734bbc7ed8a6737cfa61f494fb	0	north east england indie/	272
1187	The Outlaws	\N	https://i.scdn.co/image/ab6761610000e5eb2f8255912e01f657ef3ae7f0	44	album rock/classic rock/country rock/southern rock/	369606
1191	The Pretty Reckless	\N	https://i.scdn.co/image/ab6761610000e5eb78d17452007b49a5ed878006	59	alternative metal/candy pop/	1439482
1194	The Ramones	\N	https://i.scdn.co/image/ab6761610000e5eb5b9f46a5c5bf8243179d56b0	66	alternative rock/early us punk/permanent wave/punk/rock/	2666762
1198	The Seahorses	\N	https://i.scdn.co/image/fa8d9223b4c396efdde9eaf8771ae6e11bbdd632	37	britpop/madchester/york indie/	120998
1199	The Shadows	\N	https://i.scdn.co/image/ab67616d0000b273c1c9c310c878b0ed968c5910	46		4968
1203	The Spotnicks	\N	https://i.scdn.co/image/9d887c1caffd0c39e881ced6f47985716916c4af	30	swedish rock-and-roll/	23498
1205	The Stray Cats	\N	https://i.scdn.co/image/ab6761610000e5eb0a216e322d48d002e58717ec	49	instrumental surf/rockabilly/	270260
1208	The Tea Party	\N	https://i.scdn.co/image/ab6761610000e5eb1123a76624d0722526046a9f	41	canadian rock/	111641
1213	The Upper Crust	\N	https://i.scdn.co/image/b59a28494973555fb4e336b9dfcf46412e09247c	1	boston rock/	1746
1214	The Ventures	\N	https://i.scdn.co/image/ab6761610000e5eb48d2552358f9c87c67f21d55	47	surf music/	166680
1217	The Wallflowers	\N	https://i.scdn.co/image/ab6761610000e5eb0a4af4cd63929557732106d6	56	pop rock/post-grunge/	837085
1221	The Wildhearts	\N	https://i.scdn.co/image/ab6761610000e5ebf3db496398741fdf6dc98e9b	29	deep melodic hard rock/modern hard rock/	35940
1229	Thompson Twins	\N	https://i.scdn.co/image/ab6761610000e5ebe1d9c03cc2d86e3babc83c59	51	new romantic/new wave/new wave pop/synthpop/	669593
1232	Threshold	\N	https://i.scdn.co/image/ab6761610000e5eb666dbab64b10e21b2044480e	31	prog metal/progressive metal/	49808
1235	Tickle Me Pink	\N	https://i.scdn.co/image/df29b442f294c5dee5c5899e7f39d6a3e92b8965	22		6522
1238	TNT	\N	https://i.scdn.co/image/ab67616d0000b273e37f57c3c8553dfbd657e806	39	classic romanian pop/rock gaucho/	37255
1242	Tokio Hotel	\N	https://i.scdn.co/image/ab6761610000e5eb70e2003eac14234422238fc9	63	german pop rock/	1061634
1246	Tommy Tutone	\N	https://i.scdn.co/image/48213fd9aae6a6c22ac3411ddd099f4abe432216	47		55343
1244	Tom Robinson	\N	https://i.scdn.co/image/5df93e9f78f6139dde2cbf09d893bcf195722591	34	glam rock/	31666
1250	Tony Macalpine	\N	https://i.scdn.co/image/ab6761610000e5ebe832f5731cf94e57a2083598	31	instrumental rock/metal guitar/neo classical metal/shred/	64188
1255	Toxic Sky	\N	https://i.scdn.co/image/ab6761610000e5ebf3530c5df935b74ca675e9ce	29	future bounce/	5158
1257	Traditional	\N	https://i.scdn.co/image/ab6761610000e5eb8ce3e7c9e1c38c0edbe1528c	59	gregorian chant/puirt-a-beul/	79531
1260	Trans Siberian Orchestra	\N	https://i.scdn.co/image/ab6761610000e5eb0b8b465430abcd6d5ef5bf76	41	neo classical metal/progressive metal/	340230
1265	Tribe	\N	https://i.scdn.co/image/ab6761610000e5eb2e353dd3ed8f6d88521547c4	48	k-pop girl group/	442355
1268	Trooper	\N	https://i.scdn.co/image/ab6761610000e5eb85757a74e2458a4d622dd271	25	romanian metal/romanian rock/	11747
1273	Twin Atlantic	\N	https://i.scdn.co/image/ab6761610000e5eb6979015e196aa4ba5548f9aa	44	british alternative rock/modern alternative rock/scottish rock/	151572
1264	Tremoloes	\N	\N	0	\N	0
484	Flock Of Seagulls	\N	https://i.scdn.co/image/0e0b74658f7e16190f23d795648c888c4dd40f2a	56	new romantic/new wave/new wave pop/synthpop/	633118
485	Flogging Molly	\N	https://i.scdn.co/image/ab6761610000e5eb0024ccb466aa62503fa9f3e2	55	celtic punk/celtic rock/punk/	676114
486	Florence And The Machine	\N	https://i.scdn.co/image/ab6761610000e5ebe3c37f869b830d1cf1ec829a	77	baroque pop/modern rock/neo mellow/uk alternative pop/	6789564
487	Flyleaf	\N	https://i.scdn.co/image/ab6761610000e5ebf806c08eef7d367476b561d0	61	alternative metal/christian alternative rock/nu metal/post-grunge/	1272942
25	100ft Snowman	\N	https://i.scdn.co/image/ab6761610000e5eb61d75e9bd1eedb1fca81bce5	46		18673
24	10 Years	\N	https://i.scdn.co/image/ab6761610000e5eb9e28259f58ee6e8aeeede99b	57	alternative metal/nu metal/post-grunge/	666622
27	311	\N	https://i.scdn.co/image/ab6761610000e5eb580d1c8b58c11f498e0760c5	63	alternative metal/alternative rock/funk metal/funk rock/nu metal/pop rock/rap rock/reggae fusion/	1068974
28	36 Crazyfists	\N	https://i.scdn.co/image/23055137b85a963278eff1ab9d79f145eba729b9	41	alaska indie/melodic metalcore/metalcore/nu metal/	163049
29	38 Special	\N	https://i.scdn.co/image/30a387423ed24633753a0c72bf5d57809c8cba9d	57	album rock/classic rock/country rock/glam metal/hard rock/mellow gold/rock/soft rock/southern rock/	1249776
35	Abnormality	\N	https://i.scdn.co/image/ab6761610000e5ebd184108e5c0bf8af9d6077e6	14	brutal death metal/	17007
36	Accept	\N	https://i.scdn.co/image/ab6761610000e5eb726d55d855cae9b4bdfd9514	56	german heavy metal/german metal/glam metal/hard rock/metal/power metal/speed metal/thrash metal/	952813
37	Ace Frehley	\N	https://i.scdn.co/image/ab6761610000e5eb40e60dcd163d626ff87d0b43	44	glam metal/hard rock/	229757
30	A Day To Remember	\N	https://i.scdn.co/image/ab6761610000e5eb5fe119fa17eb10919b038bb8	69	alternative metal/metalcore/neon pop punk/pop punk/screamo/	2353050
40	Aerosmith	\N	https://i.scdn.co/image/ab6761610000e5ebc5733401b4689b2064458e7d	76	album rock/classic rock/hard rock/rock/	14491471
41	Aerosmith And Run DMC	\N	https://i.scdn.co/image/ab6761610000e5ebf656af4b1d598b1008a1e59d	51	rock nacional brasileiro/	1087128
42	Afi	\N	https://i.scdn.co/image/ab6761610000e5ebbdecf4762da0117e96e03fb8	61	alternative metal/nu metal/pop punk/post-grunge/punk/screamo/	923679
33	A Ha	\N	https://i.scdn.co/image/ab6761610000e5eb0168ba8148c07c2cdeb7d067	74	new romantic/new wave/new wave pop/permanent wave/synthpop/	2346522
44	Airborne Toxic Event	\N	https://i.scdn.co/image/ab6761610000e5ebd3ebaab561ad1b748715d9eb	46	la indie/metropopolis/	225504
47	Alabama	\N	https://i.scdn.co/image/ab6761610000e5eb854713444dd710e1fb4a1b69	60	alabama indie/modern blues rock/rock/	1639024
48	Alain Bashung	\N	https://i.scdn.co/image/ae1481642fa537fa41d622b2544784c8f0877d20	47	chanson/french rock/	291068
50	Alanis Morissette	\N	https://i.scdn.co/image/ab6761610000e5ebf6a97342ccd47692b7cdf8c0	68	canadian pop/canadian singer-songwriter/lilith/neo mellow/pop rock/singer-songwriter/	2884586
52	Albert King	\N	https://i.scdn.co/image/bfb61e8da152782920e42784c2a72eed8620afc1	49	blues/blues rock/electric blues/memphis soul/soul blues/traditional blues/	447190
53	Alcatrazz	\N	https://i.scdn.co/image/ab6761610000e5ebd7f70f6c463d250b591e0fcb	30	glam metal/hard rock/metal guitar/neo classical metal/	66892
46	Al Di Meola	\N	https://i.scdn.co/image/ab6761610000e5ebf4313d696ee5ec58c57d231b	43	flamenco guitar/jazz fusion/jazz guitar/	156582
55	Alexisonfire	\N	https://i.scdn.co/image/ab6761610000e5eb168440c735d225dd60f4274a	53	canadian post-hardcore/canadian rock/post-hardcore/screamo/	416000
56	Alice Cooper	\N	https://i.scdn.co/image/ab6761610000e5eb33b97c45348420d27fb92d68	63	album rock/classic rock/detroit rock/glam metal/glam rock/hard rock/metal/protopunk/rock/	3738592
58	Alien Ant Farm	\N	https://i.scdn.co/image/ab6761610000e5ebcfb89fdb4667f2816314ff1b	59	alternative metal/funk metal/nu metal/post-grunge/	868419
59	Alkaline Trio	\N	https://i.scdn.co/image/ab6761610000e5ebb85da6fc072594f79f5f27f9	58	chicago punk/emo/pop punk/punk/skate punk/	396377
488	FML	\N	https://i.scdn.co/image/ab67616d0000b273b6b6d48de7779a3b12c184d6	2		208
1275	TYA	\N	https://i.scdn.co/image/ab6761610000e5eb0a192e9324302dea21952f41	6		411
1278	UB40	\N	https://i.scdn.co/image/ab6761610000e5eb057ec513c696b66901270810	70	reggae fusion/uk reggae/	2371248
1282	Urban	\N	https://i.scdn.co/image/ab6761610000e5eb34cd8e05d7881e44f6e86d67	44	korean pop/	206980
1285	Vagiant	\N	https://i.scdn.co/image/ab67616d0000b273fa9a675d105e26be27928677	0		240
1288	Valmyr Tavares	\N	https://i.scdn.co/image/ab6761610000e5ebab4b61fae7016f8aac88ed1d	48	brazilian ccm/	134875
1292	Vaya Con Dios	\N	https://i.scdn.co/image/ab6761610000e5ebd80de3faac4eda72041a67b1	52	classic belgian pop/	153561
1296	Village People	\N	https://i.scdn.co/image/ab6761610000e5eb60571cd7326957308bad6380	59	disco/new wave pop/soft rock/	675532
1299	Violent Femmes	\N	https://i.scdn.co/image/ab6761610000e5ebb3c3b161756ef6f9c9afef38	59	acoustic punk/alternative rock/punk/	736096
1302	War	\N	https://i.scdn.co/image/ab6761610000e5eb16ec6c21fa9d28f9cd95aff2	59	classic soul/funk/motown/p funk/soul/	461450
1306	Wes Montgomery	\N	https://i.scdn.co/image/e0fcfb2e4dbb9cb9c408ba7fad9bdd3526ef6ed8	50	hard bop/jazz/jazz guitar/	278056
1311	Wild Cherry	\N	https://i.scdn.co/image/ab67616d0000b273d419ed4f1e89669ce14bd369	56	disco/funk rock/	176221
1313	Windtunnel Syndrome	\N	https://i.scdn.co/image/ab6761610000e5eb44471f89b81b0145d7e407f6	46	trance brasileiro/	67559
1317	Within Temptation	\N	https://i.scdn.co/image/ab6761610000e5ebd7fd83f3a54ab822936034b6	62	dutch metal/gothic metal/gothic symphonic metal/symphonic metal/	1297364
1319	Wuthering Heights	\N	https://i.scdn.co/image/ab67616d0000b273d4c639174ee497a2a9cf8835	0		1156
1323	Yellowcard	\N	https://i.scdn.co/image/ab6761610000e5ebf737c2d9bab95daf1e3c074c	63	alternative metal/pop punk/post-grunge/socal pop punk/	1512223
1327	You Me At Six	\N	https://i.scdn.co/image/ab6761610000e5eb3400da00149730d222967ee8	55	modern alternative rock/modern rock/neon pop punk/pop emo/pop punk/	702260
1330	Zombies	\N	https://i.scdn.co/image/ab6761610000e5eb89569545e37b9419767946fe	62	movie tunes/	151380
1286	Val Kanaga	\N	\N	0	\N	0
60	All American Rejects	\N	https://i.scdn.co/image/ab6761610000e5ebb18bd56871c0ce8c8d6c8fa7	67	alternative metal/modern rock/neo mellow/neon pop punk/pop punk/pop rock/post-grunge/	2665227
64	Allman Brothers	\N	https://i.scdn.co/image/ab6772690000c46c08f5d15585b77b0cb059717b	63	album rock/blues rock/classic rock/country rock/folk rock/hard rock/jam band/mellow gold/rock/singer-songwriter/soft rock/southern rock/	1653548
61	All That Remains	\N	https://i.scdn.co/image/ab6761610000e5ebb4d9c699a6e892bab3121226	58	alternative metal/melodic metalcore/metalcore/nu metal/post-grunge/	1354506
66	Alphabeat	\N	https://i.scdn.co/image/ab6761610000e5eb66663ee9f52f4057bc70c65c	41	europop/metropopolis/	55518
67	Alter Bridge	\N	https://i.scdn.co/image/ab6761610000e5eb8650b5577dcbd76607f1340d	59	alternative metal/nu metal/post-grunge/	1140770
68	Aly And AJ	\N	https://i.scdn.co/image/ab6761610000e5eb72c976a5d83100474da24bc3	54	dance pop/girl group/post-teen pop/	680537
69	Amaral	\N	https://i.scdn.co/image/ab6761610000e5ebbd577dda0d9f67a49869cc8f	62	latin arena pop/musica aragonesa/spanish pop/spanish pop rock/spanish rock/	803258
70	Amon Amarth	\N	https://i.scdn.co/image/ab6761610000e5eb131d4f2d863142fda3e0f69e	60	groove metal/melodic death metal/metal/power metal/speed metal/swedish death metal/swedish melodeath/swedish metal/tolkien metal/viking metal/	1142455
72	Amy Winehouse	\N	https://i.scdn.co/image/ab6761610000e5eb2ceb023b10da17590878e88c	78	british soul/neo soul/	9005681
76	Anathema	\N	https://i.scdn.co/image/ab6761610000e5eb3b2f51bb865ea1d25c236789	48	gothic metal/progressive doom/progressive metal/	371373
77	Anberlin	\N	https://i.scdn.co/image/ab6761610000e5eb556948eaa5b488d32883037c	53	pop emo/	313438
79	Andy Timmons	\N	https://i.scdn.co/image/faa94aaa713f133c3aae4a90e5bfa0f0734cde1d	37	instrumental rock/shred/	110917
73	An Endless Sporadic	\N	https://i.scdn.co/image/ab6761610000e5ebea1b0deee5314a2bcffb3d64	27		19864
80	Angela Thomas Wade	\N	https://i.scdn.co/image/ab67616d0000b273cc9018510ea03599a37413f4	42	bossa nova/mpb/samba/velha guarda/	152110
82	Angra	\N	https://i.scdn.co/image/ab6761610000e5eb66ed9eef4c4f85369167a555	53	brazilian metal/brazilian power metal/brazilian progressive metal/latin metal/metal/power metal/progressive metal/progressive power metal/speed metal/symphonic metal/	454091
83	Annihilator	\N	https://i.scdn.co/image/423b0a413d344b5e520bda76606b535250f6c130	45	canadian metal/death metal/metal/old school thrash/speed metal/technical groove metal/thrash metal/	389354
85	Antonio Carlos Jobim	\N	https://i.scdn.co/image/25438d99922a46a53792e1496b31159ad386806a	69	bossa nova/brazilian classical/brazilian jazz/latin classical/mpb/violao/	747017
86	Antonio Vivaldi	\N	https://i.scdn.co/image/9785700bae86f991f78183076861c7342a4bcf90	69	baroque/classical/early music/italian baroque/	2522043
31	A Perfect Circle	\N	https://i.scdn.co/image/ab6761610000e5eb41472573351dfea479a4ffba	61	alternative metal/alternative rock/nu metal/rock/supergroup/	1887781
88	April Wine	\N	https://i.scdn.co/image/2fc06a457eb44902ad235b0554e452edafe3f814	50	album rock/classic canadian rock/classic rock/glam metal/hard rock/	399840
90	Arcade Fire	\N	https://i.scdn.co/image/ab6761610000e5eba044e15eee771205956dcbf8	64	alternative rock/baroque pop/canadian indie/canadian indie rock/chamber pop/indie rock/indietronica/modern rock/permanent wave/quebec indie/rock/	2304518
91	Arch Enemy	\N	https://i.scdn.co/image/ab6761610000e5eb4955e32035512de408fab66b	56	alternative metal/death metal/melodic death metal/metal/power metal/speed metal/swedish death metal/swedish melodeath/swedish metal/symphonic metal/	1022661
92	Arctic Monkeys	\N	https://i.scdn.co/image/ab6761610000e5eb7da39dea0a72f581535fb11f	85	garage rock/modern rock/permanent wave/rock/sheffield indie/	25973186
94	Argent	\N	https://i.scdn.co/image/ab67616d0000b2736c4d7eec4e3fbf6beec2f88e	31	blues rock/country rock/progressive rock/psychedelic rock/southern rock/symphonic rock/	56309
96	Artillery	\N	https://i.scdn.co/image/ab6761610000e5eb26c26da0601fb340dbc52501	29	danish death metal/danish metal/death metal/metal/speed metal/technical thrash/thrash metal/	82431
98	Ash	\N	https://i.scdn.co/image/ab6761610000e5eb200914459687748118b36954	67	alt z/escape room/	2353545
99	Asia	\N	https://i.scdn.co/image/ab6761610000e5eb72570338540e5dd8b2d913d1	53	album rock/classic rock/glam metal/hard rock/mellow gold/progressive rock/soft rock/	623795
97	As I Lay Dying	\N	https://i.scdn.co/image/ab6761610000e5ebc8cf6caedd311295ba6f9923	59	alternative metal/christian metal/melodic metalcore/metalcore/nu metal/	1023205
101	Asking Alexandria	\N	https://i.scdn.co/image/ab6761610000e5ebd07f0b3d8b5c9576f15f1fb1	64	alternative metal/metalcore/pop punk/post-grunge/trancecore/uk metalcore/	2210409
104	Athlete	\N	https://i.scdn.co/image/ab6761610000e5eb99ad3e28ad6b7e82e2cd9051	40	britpop/	134362
105	Atlanta Rhythm Section	\N	https://i.scdn.co/image/ab6761610000e5ebd8bf9437c1c695ca517c9710	48	album rock/classic rock/country rock/mellow gold/soft rock/southern rock/yacht rock/	294330
106	Atreyu	\N	https://i.scdn.co/image/ab6761610000e5eb26886e00c56279420a8ceaa7	58	alternative metal/melodic metalcore/metalcore/nu metal/post-grunge/screamo/	961594
108	Attacking The Mind	\N	https://i.scdn.co/image/ab6761610000e5eb68abfccf28c4cc5f995eabbd	57	musica triste brasileira/nerdcore brasileiro/	1182976
102	At The Drive In	\N	https://i.scdn.co/image/ab6761610000e5eb35647a12f98234da77b10f2d	44	dance-punk/el paso indie/emo/post-hardcore/	331939
103	At The Gates	\N	https://i.scdn.co/image/ab6761610000e5ebe05d57f89f3637d01858832f	46	death metal/gothenburg metal/melodic death metal/metal/swedish death metal/swedish melodeath/swedish metal/thrash metal/	245639
110	Audition	\N	https://i.scdn.co/image/ab67616d0000b2731c45ce2c8f6e38333bb6f2cc	0		59
111	August Burns Red	\N	https://i.scdn.co/image/ab6761610000e5eb64e552a08f94aedda5d1df5a	53	christian metal/christian metalcore/melodic metalcore/metalcore/	719694
113	Autograph	\N	https://i.scdn.co/image/ab6761610000e5eba4a4c538409919d987bad573	42	album rock/glam metal/hard rock/	227950
114	Avantasia	\N	https://i.scdn.co/image/ab6761610000e5ebb678d5904bcb79a1f5695b28	54	fantasy metal/german metal/german power metal/gothic symphonic metal/metal/opera metal/power metal/speed metal/symphonic metal/	454893
115	Avenged Sevenfold	\N	https://i.scdn.co/image/ab6761610000e5eb29ec9d388f7d0f9b3480f316	77	alternative metal/	8084672
117	Awaken	\N	https://i.scdn.co/image/ab6761610000e5ebaecf51a083d4c7b6bab0487f	12		784
118	AWOL Nation	\N	https://i.scdn.co/image/ab6761610000e5ebd880bab2bc3d7839c0c25137	62	la indie/modern alternative rock/modern rock/rock/stomp pop/	2074001
120	B 52s	\N	https://i.scdn.co/image/ab6761610000e5eb85c1d77e63082caf426f6d59	59	album rock/classic rock/dance rock/new romantic/new wave/new wave pop/permanent wave/post-punk/rock/zolo/	1132399
121	Babyshambles	\N	https://i.scdn.co/image/ab6772690000c46ca38680140c3149fcdb305d1b	41	britpop/dance-punk/garage rock/rock/	275549
122	Bachman Turner Overdrive	\N	https://i.scdn.co/image/ab6761610000e5eb8d254fbc1fd13a5f650b2101	58	album rock/classic canadian rock/classic rock/country rock/folk rock/hard rock/mellow gold/rock/singer-songwriter/soft rock/	1022638
124	Bad Brains	\N	https://i.scdn.co/image/ab6761610000e5ebbd42597d561d676f5311586a	48	black punk/dc hardcore/hardcore punk/nyhc/punk/	464965
125	Bad Company	\N	https://i.scdn.co/image/65d37e5c4ee9ef8bfb76de6a17e7c05316199724	58	album rock/classic rock/country rock/glam metal/hard rock/mellow gold/rock/singer-songwriter/soft rock/southern rock/	1212437
126	Bad Religion	\N	https://i.scdn.co/image/ab6761610000e5eb785d6af86b16c8747ff61e42	61	punk/skate punk/socal pop punk/	1300314
128	Band Of Horses	\N	https://i.scdn.co/image/ab6761610000e5ebde20f1d3bdfc3239a770921c	60	chamber pop/indie folk/indie rock/indietronica/modern rock/seattle indie/stomp and holler/	1024475
129	Band Of Skulls	\N	https://i.scdn.co/image/ab6761610000e5eba9751dc95650303e18d5c835	45	garage rock/garage rock revival/modern blues rock/punk blues/southampton indie/	259339
131	Barbara Streisand	\N	https://i.scdn.co/image/ab6761610000e5ebf78341630056283b6d617753	63	adult standards/operatic pop/soft rock/	1547711
133	BB Brunes	\N	https://i.scdn.co/image/ab6761610000e5eb6971278da3fc32512405258f	51	chanson/french garage rock/french pop/french rock/	202415
134	BB King	\N	https://i.scdn.co/image/ffb3ff26238fe635a230bb0feb59dd0a5b209b6f	61	blues/blues rock/classic rock/electric blues/jazz blues/soul/soul blues/traditional blues/	2745502
135	Beach Boys	\N	https://i.scdn.co/image/ab6761610000e5eb10d4a1b12c6ceda12d7cd248	73	baroque pop/classic rock/folk rock/mellow gold/psychedelic rock/rock/singer-songwriter/sunshine pop/	4601496
136	Beastie Boys	\N	https://i.scdn.co/image/705bcd56dc5dbf9ebc578a3ba8094e6d622862c2	69	alternative rock/east coast hip hop/golden age hip hop/hip hop/old school hip hop/rap/rap rock/rock/	2864694
138	Beck	\N	https://i.scdn.co/image/ab6761610000e5ebfd04d1d094cd3dc59d00dffc	78	latin pop/latin viral pop/rap latina/reggaeton/trap latino/urbano latino/	14918553
140	Behemoth	\N	https://i.scdn.co/image/ab6761610000e5ebd9b6eca591c714e728194db6	51	black metal/death metal/groove metal/metal/pagan black metal/polish black metal/polish death metal/polish metal/	641725
141	Belanova	\N	https://i.scdn.co/image/ab6761610000e5eb5f98bb5a9eb2fedee9e424ee	68	latin arena pop/latin pop/mexican pop/	1659662
142	Bell U H	\N	https://i.scdn.co/image/d525fe0e20149a7dc5c5ef73c90ef75317736c14	46	classical performance/orchestral performance/	12245
144	Ben E King	\N	https://i.scdn.co/image/22c8cd28a71661b4dbd462e2d45b04b3e1b78572	66	rock-and-roll/soul/	614392
146	Ben Lee	\N	https://i.scdn.co/image/ab6761610000e5eb60b2239570aa06ab901b32e1	42	australian alternative rock/australian pop/australian rock/	61635
147	Bent Mindz	\N	https://i.scdn.co/image/c0a0e5b4b4ab3d52dacc9818edcdaf887c213485	43	electronica/trip hop/	74467
149	Between The Buried And Me	\N	https://i.scdn.co/image/ab6761610000e5eb87fc314a9b6b9f18e6e32278	43	djent/melodic metalcore/north carolina metal/progressive metal/	272131
150	Biffy Clyro	\N	https://i.scdn.co/image/ab6761610000e5eb5a8702315c7ddff8eb7b69ba	56	modern rock/scottish rock/	721405
151	Big And Rich	\N	https://i.scdn.co/image/ab6761610000e5ebc8c403161c81d8f8c02c0506	58	contemporary country/country/country road/	1219213
153	Big Country	\N	https://i.scdn.co/image/9da85bf614f13433da4c789d13e815f664430809	46	new romantic/new wave/new wave pop/scottish new wave/scottish rock/	247619
155	Big Soul	\N	https://i.scdn.co/image/ab6761610000e5ebdbe69327fd9d289d68a5991f	32		6933
156	Bikini Kill	\N	https://i.scdn.co/image/ab6761610000e5ebfc226caae7dd29541e337a18	50	olympia wa indie/punk/riot grrrl/	518674
157	Billy Currington	\N	https://i.scdn.co/image/b54b36596d1511fd262e8e60445689624cd1adca	66	contemporary country/country/country road/	2598574
159	Billy J Kramer And The Dakotas	\N	https://i.scdn.co/image/ab67616d0000b27326ea2568ba72650edc9f0055	3		2392
160	Billy Joel	\N	https://i.scdn.co/image/ab6761610000e5ebb34057d59275011032ef8bc8	78	album rock/classic rock/mellow gold/piano rock/rock/singer-songwriter/soft rock/	6177697
162	Billy Squier	\N	https://i.scdn.co/image/a58dae694e2419439ba72ba5ab95316d53331b19	57	album rock/classic rock/glam metal/hard rock/rock/soft rock/southern rock/	824124
163	Billy Talent	\N	https://i.scdn.co/image/ab6761610000e5eb129c7158f9565223cead0dd8	64	canadian punk/	1267645
164	Black Country Communion	\N	https://i.scdn.co/image/ab6761610000e5ebad0be550ec58c4c6d9ed3a82	39	modern hard rock/supergroup/	114592
165	Black Crowes	\N	https://i.scdn.co/image/ab6761610000e5eb791fd863f3e6d97157b9a0b1	60	album rock/blues rock/classic rock/electric blues/hard rock/jam band/rock/southern rock/	782083
173	Blackfoot	\N	https://i.scdn.co/image/ab67616d0000b273b0cb99579af59e4a51f7887d	43	album rock/classic rock/country rock/hard rock/native american traditional/southern rock/	359577
167	Black Label Society	\N	https://i.scdn.co/image/ab6761610000e5ebca9e1ddb61172c1b9672567a	59	alternative metal/groove metal/hard rock/metal/nu metal/	1686725
169	Black Sabbath	\N	https://i.scdn.co/image/ab6761610000e5eb4870cd833ebe1092601820c3	73	album rock/alternative metal/birmingham metal/classic rock/hard rock/metal/rock/stoner rock/uk doom metal/	8055533
170	Black Stone Cherry	\N	https://i.scdn.co/image/ab6761610000e5eb22d2a96f7f4039b8ecf03db7	53	alternative metal/modern hard rock/post-grunge/	593025
172	Black Veil Brides	\N	https://i.scdn.co/image/ab6761610000e5eb2f603df69ba8f1a6f1b7b4a9	61	alternative metal/pop punk/	1987070
174	Blake Shelton	\N	https://i.scdn.co/image/ab6761610000e5ebe2cff2190102be30cfb8bfe5	74	classic oklahoma country/contemporary country/country/country road/modern country rock/	7190863
176	Blind Guardian	\N	https://i.scdn.co/image/ab6761610000e5eb26139a78b669ae67aacde9f3	55	fantasy metal/german metal/german power metal/metal/power metal/speed metal/symphonic metal/	732126
177	Blind Melon	\N	https://i.scdn.co/image/ab6761610000e5ebdcc3fe6af94c5c178a36d006	60	alternative metal/alternative rock/grunge/pop rock/rock/	1211493
178	Blink 182	\N	https://i.scdn.co/image/ab6761610000e5eb5da36f8b98dd965336a1507a	78	alternative metal/modern rock/pop punk/punk/rock/socal pop punk/	8403698
310	Csaiopea	\N	https://i.scdn.co/image/ab6761610000e5eb1fffab9114fa5b3a5a2aa858	61	funk ostentacao/trap funk/	99104
179	Bloc Party	\N	https://i.scdn.co/image/ab6761610000e5eb42712519962b4c8fe48bc4a6	61	alternative dance/alternative rock/dance-punk/indie rock/indietronica/modern rock/neo-synthpop/new rave/	1143855
182	Bloodhound Gang	\N	https://i.scdn.co/image/ab6761610000e5ebb37fd268f79456bf904d617e	62	alternative metal/comic/funk metal/funk rock/nu metal/rap rock/	988917
181	Blood Sweat And Tears	\N	https://i.scdn.co/image/26a546022a057e325676bef5c32acdccb456adfb	43	album rock/blues rock/classic rock/country rock/folk/folk rock/jazz rock/mellow gold/singer-songwriter/soft rock/	623001
184	Blue Oyster Cult	\N	https://i.scdn.co/image/ab6761610000e5eba50ccc99f741a7899654bc16	62	album rock/classic rock/glam metal/hard rock/progressive rock/rock/	1582066
185	Blue Saraceno	\N	https://i.scdn.co/image/ab6761610000e5eb8d752e5560328c89abd81452	48	modern blues rock/rebel blues/	149164
187	Blues Saraceno	\N	https://i.scdn.co/image/ab6761610000e5eb8d752e5560328c89abd81452	48	modern blues rock/rebel blues/	149164
188	Blues Traveler	\N	https://i.scdn.co/image/ab6761610000e5eb0a75e80e419fa64836518832	56	jam band/pop rock/post-grunge/	676931
196	Bobby Fuller Four	\N	https://i.scdn.co/image/ab67616d0000b2737808c94d787cfceb6b28f294	41	bubblegum pop/classic garage rock/surf music/	24812
191	Bob Dylan	\N	https://i.scdn.co/image/ab6772690000c46cd7064356b04a156664a37c4f	72	classic rock/country rock/folk/folk rock/rock/roots rock/singer-songwriter/	6559574
192	BoB Feat Harley Williams	\N	https://i.scdn.co/image/ab6761610000e5eb644fe626192bceb76339710d	58	brazilian hip hop/	25938
194	Bob Marley And The Wailers	\N	https://i.scdn.co/image/b5aae2067db80f694a980e596e7f49618c1206c9	82	reggae/roots reggae/	12528905
195	Bob Seger	\N	https://i.scdn.co/image/ab6761610000e5ebd98e2abb8fbebc2e2340f178	68	album rock/classic rock/country rock/detroit rock/hard rock/heartland rock/mellow gold/rock/singer-songwriter/soft rock/	2475378
190	Bo Diddley	\N	https://i.scdn.co/image/3c116fa8059a519a653f242c7e14feb43a4186d0	46	acoustic blues/blues/chicago blues/electric blues/rock-and-roll/rockabilly/traditional blues/	321750
199	Bonnie Raitt	\N	https://i.scdn.co/image/ab6761610000e5ebe86f788af4e127154da1257f	57	country rock/electric blues/folk/folk rock/mellow gold/singer-songwriter/soft rock/	731141
200	Bonnie Tyler	\N	https://i.scdn.co/image/ab6761610000e5ebfdd9bd42889cb7bdeb631931	68	europop/new wave pop/soft rock/	2052116
201	Boston	\N	https://i.scdn.co/image/051ffa17a5832586c6e0f8ee8a705ad15114e9c0	66	album rock/classic rock/glam metal/hard rock/mellow gold/rock/soft rock/	2789073
203	Boys Like Girls	\N	https://i.scdn.co/image/ab6761610000e5ebfe545b76cb9f9d2e719107cc	60	neon pop punk/pop punk/	1213489
205	Brad Paisley	\N	https://i.scdn.co/image/ab6761610000e5eb49b3eca30283993e5794c6ef	67	contemporary country/country/country road/	2811642
206	Brad Sucks	\N	https://i.scdn.co/image/ab6761610000e5eb93bd6c384f4ca26fb4d6b581	33	one-person band/ottawa indie/	25862
207	Brand New	\N	https://i.scdn.co/image/ab6761610000e5eb4d709a7f0c971c81aeeb6e75	56	emo/pop punk/post-hardcore/screamo/	718088
209	Bread	\N	https://i.scdn.co/image/a94fb066d16bf8bafed754f62c5b746357b661e6	67	mellow gold/soft rock/	1737118
211	Breaking Wheel	\N	https://i.scdn.co/image/ab67616d0000b27396892e9f73071993ead236c9	0		1032
212	Brian Kahanek	\N	https://i.scdn.co/image/ab6761610000e5ebd1d13cc9d2a055aecfcf5d5a	1		596
214	Brian Setzer Orchestra	\N	https://i.scdn.co/image/ab6761610000e5eb60ea7f13ea054cd06daafdfc	39	heartland rock/rockabilly/swing/swing revival/	100303
215	Bring Me The Horizon	\N	https://i.scdn.co/image/ab6761610000e5ebe7c9399d0b5d813c20cbec65	80	melodic metalcore/metalcore/modern rock/rock/uk metalcore/	5782001
217	Brooks and Dunn	\N	https://i.scdn.co/image/ab6761610000e5eb9a9b27317d43de785e22517d	72	contemporary country/country/country road/	2930138
218	Bruce Dickinson	\N	https://i.scdn.co/image/ab6761610000e5ebd90e4a9038787929178b4815	50	hard rock/metal/power metal/speed metal/	640204
219	Bruce Springsteen	\N	https://i.scdn.co/image/ab6761610000e5eb81df2fa2f937029ec986bbb8	78	heartland rock/mellow gold/permanent wave/rock/singer-songwriter/	6450259
221	Bryan Adams	\N	https://i.scdn.co/image/ab6761610000e5eb9333e218db341b192817db03	75	canadian pop/canadian singer-songwriter/classic canadian rock/heartland rock/mellow gold/soft rock/	3739178
222	Buckcherry	\N	https://i.scdn.co/image/ab6761610000e5ebd842638cedc0a18bba151b1c	57	alternative metal/glam metal/hard rock/nu metal/post-grunge/sleaze rock/	838896
224	Buddy Guy	\N	https://i.scdn.co/image/ab6761610000e5ebb421cddbc392e714006f6606	52	blues/blues rock/chicago blues/country blues/electric blues/modern blues/soul blues/traditional blues/	825162
225	Buddy Holly	\N	https://i.scdn.co/image/ff6c6ecd90618f5fb0f8fbf51bf8477586c8843b	57	classic rock/folk rock/mellow gold/rock-and-roll/rockabilly/singer-songwriter/	1338304
227	Buffalo Springfield	\N	https://i.scdn.co/image/b701ba75981d0b9aeef036b9fab4e3c96609e364	67	album rock/blues rock/classic rock/country rock/folk/folk rock/mellow gold/psychedelic rock/rock/soft rock/southern rock/	830420
228	Bullet For My Valentine	\N	https://i.scdn.co/image/ab6761610000e5eb083627f7d306f40cd7ff8893	66	alternative metal/melodic metalcore/nu metal/post-grunge/uk metalcore/welsh metal/	3057440
231	Burning Brides	\N	https://i.scdn.co/image/bea9db90df6898fdfab7787eaa93bcc042a49a80	20	alternative roots rock/philly indie/	5937
232	Bush	\N	https://i.scdn.co/image/ab6761610000e5ebd209395dc5321f4b5163aed4	61	alternative metal/alternative rock/grunge/nu metal/post-grunge/rock/	1885309
234	Cab Calloway	\N	https://i.scdn.co/image/ab6772690000c46ca831714c23653ef40ed1b864	39	big band/harlem renaissance/jazz blues/swing/	147862
236	Caesars	\N	https://i.scdn.co/image/664b64455e32f061ba134defca4b92830e4b2df9	54	swedish indie rock/	83362
237	Caifanes	\N	https://i.scdn.co/image/ab6761610000e5eb3f58860477b33dfae15b16e0	71	latin alternative/latin rock/mexican rock/nu-cumbia/rock en espanol/rock urbano mexicano/	3848038
238	Cake	\N	https://i.scdn.co/image/ab6761610000e5ebb8bf71301acec36f0256c0f8	62	alternative rock/pop rock/post-grunge/sacramento indie/	1183801
240	Camel	\N	https://i.scdn.co/image/3f9436752f7276b9c468f0aed5dbbf2d9c95386f	47	canterbury scene/flute rock/progressive rock/symphonic rock/synth prog/	376129
241	Cameo	\N	https://i.scdn.co/image/ab6761610000e5eb6945dad7c71ec94838ba1836	52	disco/funk/motown/new jack swing/p funk/popping/post-disco/quiet storm/soul/	639307
242	Candlebox	\N	https://i.scdn.co/image/ab6761610000e5eb30d295e073cb12ce2dedb70a	55	alternative metal/grunge/nu metal/post-grunge/	896138
894	Patrick Rondat	\N	https://i.scdn.co/image/ab67616d0000b273bcab97427d07832c88cb30dc	11	shred/	5160
243	Cannibal Corpse	\N	https://i.scdn.co/image/ab6761610000e5eb502944f431be8f85813f8e6a	54	alternative metal/brutal death metal/buffalo ny metal/death metal/metal/	1045202
245	Capra	\N	https://i.scdn.co/image/ab6761610000e5eb8589af8b20b48cc9a92825cb	19		15486
246	Caramelos De Cianuro	\N	https://i.scdn.co/image/ab6761610000e5ebd03c194a3c3ca6d3adcc53a5	55	pop reggaeton/venezuelan rock/	444110
247	Carcass	\N	https://i.scdn.co/image/ab6761610000e5ebf8ec9d92b03893c45fe4e1db	49	british death metal/british grindcore/death 'n' roll/death metal/deathgrind/goregrind/melodic death metal/metal/speed metal/	398502
249	Carlo Bardoli	\N	https://i.scdn.co/image/ab67616d0000b2731eef588442cd59c346289028	15		33
250	Carlos Santana	\N	https://i.scdn.co/image/ab6761610000e5eb09882b1b7b33732abd60fc38	71	blues rock/classic rock/mexican classic rock/	3415976
252	Carrie Underwood	\N	https://i.scdn.co/image/ab6761610000e5eb6d81a16f9d1b2abf04e765a6	70	classic oklahoma country/contemporary country/country/country dawn/dance pop/pop/	5973577
255	Catolicas	\N	https://i.scdn.co/image/ab6761610000e5eb7f73cae967664e76a07f6f7a	37		57875
254	Cat Stevens	\N	https://i.scdn.co/image/ab6761610000e5ebcff97c36c1d9a2a1d421966c	70	british folk/classic rock/folk/folk rock/mellow gold/singer-songwriter/soft rock/	1944231
256	Cavalera Conspiracy	\N	https://i.scdn.co/image/ab6761610000e5ebd93429df94b98f1f457f2856	42	alternative metal/death metal/groove metal/metal/nu metal/speed metal/thrash metal/	315178
258	Cee Lo Green	\N	https://i.scdn.co/image/ab6761610000e5eb8079989370c50963b60ee7bc	65	atl hip hop/pop rap/	632817
259	Celtic Frost	\N	https://i.scdn.co/image/ab6761610000e5eba83d0ae88b2e89569c1edb26	39	black metal/black thrash/death metal/deathrash/metal/old school thrash/swiss black metal/swiss metal/	250008
260	Charlie Daniels Band	\N	https://i.scdn.co/image/ab6761610000e5eb84e8dcb90d1d55643d417744	58	album rock/classic rock/country/country rock/southern rock/	842177
262	Charon	\N	https://i.scdn.co/image/ab67616d0000b273ff00d6825267f5fabfbfcd98	33	dark rock/finnish power metal/gothic metal/	42206
263	Cheap Trick	\N	https://i.scdn.co/image/ab6772690000c46c5ad27b7aba43e761f7e3ec46	60	album rock/beatlesque/classic rock/glam metal/glam rock/hard rock/mellow gold/power pop/rock/singer-songwriter/soft rock/	1501378
265	Cherry Poppin Daddies	\N	https://i.scdn.co/image/0784dd5afd20ac4d2de22efd27f60737790f892d	37	eugene indie/swing/swing revival/	58254
266	Chet Atkins	\N	https://i.scdn.co/image/d1e1442035d8632a3a4e8677ff578f34d81cc228	49	nashville sound/	102587
267	Chevelle	\N	https://i.scdn.co/image/ab6761610000e5eb6411cad01afe7d60b448dabc	64	alternative metal/christian rock/nu metal/post-grunge/	1892090
269	Chickenfoot	\N	https://i.scdn.co/image/0ad49bfefc9cf10551526f37da19b66508aad6a9	37	hard rock/supergroup/	178095
270	Chimaira	\N	https://i.scdn.co/image/ab6761610000e5eb34b15e65928c23769c13a167	41	alternative metal/cleveland metal/groove metal/industrial metal/melodic metalcore/nu metal/	305806
271	Chris Cagle	\N	https://i.scdn.co/image/da2af01e4dac3d00528e72a078d691a0d5eec32c	48	contemporary country/country/country road/	885733
274	Chris Rea	\N	https://i.scdn.co/image/ab6761610000e5eb81aacad025d8338d125debd0	59	soft rock/sophisti-pop/	1053406
276	Chromeo	\N	https://i.scdn.co/image/ab6761610000e5eb017399838e5064b16f01e4c1	55	alternative dance/dance rock/filter house/indietronica/neo-synthpop/new rave/nu disco/	401608
277	Chuck Berry	\N	https://i.scdn.co/image/d58323616d4f5d22b51e9dfe0ba53aedabe53cd4	66	blues/blues rock/classic rock/rock/rock-and-roll/rockabilly/soul/	2027459
278	Chuck Mangione	\N	https://i.scdn.co/image/e9df5954d907411a43487d61c1acae8a04ae0b93	45	jazz trumpet/smooth jazz/	105073
280	Cinderella	\N	https://i.scdn.co/image/ab6761610000e5ebaa397a18bdfd4c1dd44557c9	56	album rock/glam metal/hard rock/	1751074
281	Civil War	\N	https://i.scdn.co/image/ab6761610000e5eb0bae8ba82eaf7e63af515c9f	54	acoustic pop/indie folk/neo mellow/new americana/stomp and holler/	792556
283	Classical	\N	https://i.scdn.co/image/ab67616d0000b27312c8e4542c5b6b0dffa574c9	6		716
285	Cody Chesnutt	\N	https://i.scdn.co/image/02f89a69a4cef248e8ceaba2960b0b7a71bb85eb	46	funk/	47873
286	Coheed And Cambria	\N	https://i.scdn.co/image/ab6761610000e5ebe63ceef20dce0ac6522c4011	59	modern alternative rock/	680391
289	Coldplay	\N	https://i.scdn.co/image/ab6761610000e5eb1ba8fc5f5c73e7e9313cc6eb	90	permanent wave/pop/	52452144
288	Cold War Kids	\N	https://i.scdn.co/image/ab6761610000e5eb27ea8d74714b23fa9e116f91	58	indie rock/modern alternative rock/modern rock/piano rock/stomp and holler/	881640
291	Collective Soul	\N	https://i.scdn.co/image/ab6761610000e5eb7cefc8031e13c2b9aa2a1fd4	61	alternative rock/grunge/nu metal/pop rock/post-grunge/rock/	1120701
292	Cooper Temple Clause	\N	https://i.scdn.co/image/8615e85ae985fcc0934bb7a09cd61f865d66404a	22	reading indie/uk post-hardcore/	19482
294	Corinne Bailey Rae	\N	https://i.scdn.co/image/ab6761610000e5ebdcb57d08016c41fca3e221ab	64	british soul/neo soul/pop soul/soul/	799161
295	Corrosion Of Conformity	\N	https://i.scdn.co/image/ab6761610000e5eb399661b4306ecd3bc76baf29	45	alternative metal/groove metal/industrial metal/north carolina metal/nu metal/old school thrash/sludge metal/stoner metal/stoner rock/	303743
298	Counting Crows	\N	https://i.scdn.co/image/ab6761610000e5eba47e78281f70619ffac52f80	68	neo mellow/pop rock/post-grunge/rock/	1782804
299	Cracker	\N	https://i.scdn.co/image/7b2f767067f78fbde8ced6509bb9fb286a221f81	46	alternative rock/permanent wave/pop rock/post-grunge/	106582
301	Cream	\N	https://i.scdn.co/image/aab6a0a0e9ca2ab17460b0451e59ba507cc5802a	62	album rock/blues rock/british blues/classic rock/folk rock/hard rock/psychedelic rock/rock/singer-songwriter/supergroup/	2386512
302	Creed	\N	https://i.scdn.co/image/ab6761610000e5eb0d86c8971cc4d6fa63d58bae	72	alternative metal/nu metal/post-grunge/rock/	3433440
303	Creedence Clearwater Revival	\N	https://i.scdn.co/image/ab6761610000e5ebd2e2b04b7ba5d60b72f54506	82	album rock/classic rock/country rock/mellow gold/rock/southern rock/swamp rock/	6826829
305	Crosby Stills Nash And Young	\N	https://i.scdn.co/image/ab6761610000e5eb4e5018dad07ee004f171d7d3	59	album rock/classic rock/country rock/folk/folk rock/mellow gold/rock/roots rock/soft rock/supergroup/	1740504
307	Crowbar	\N	https://i.scdn.co/image/ab6761610000e5eb6555d42384a3ed1e42fb1fdb	42	doom metal/groove metal/louisiana metal/sludge metal/southern metal/	171912
308	Crowded House	\N	https://i.scdn.co/image/ab6761610000e5eb44cb4815148bd49c0a600b89	66	australian rock/permanent wave/	851792
311	Culture Club	\N	https://i.scdn.co/image/ab6761610000e5eb5903965a15551fd12feb8b87	64	new romantic/new wave/new wave pop/soft rock/synthpop/	1595977
313	DAD	\N	https://i.scdn.co/image/ab6761610000e5eb8272e64159284a747d5bf9e2	47	danish alternative rock/danish rock/	112767
314	Daft Punk	\N	https://i.scdn.co/image/ab6761610000e5eba7bfd7835b5c1eee0c95fa6e	80	electro/filter house/rock/	10069809
316	DalekSam	\N	https://i.scdn.co/image/ab6761610000e5ebd23d19c486eb12598d18973f	39	brazilian hip hop/pop lgbtq+ brasileira/	100613
317	Damageplan	\N	https://i.scdn.co/image/4b10acb6e69308e3424f2d4a017cad2282eeb6e2	39	alternative metal/groove metal/industrial metal/nu metal/southern metal/	242244
318	Damien Rice	\N	https://i.scdn.co/image/2e30a95ed5539cc08cc339439a596db30304d31a	56	acoustic pop/irish rock/irish singer-songwriter/neo mellow/singer-songwriter/	1098409
321	Danny Nasra	\N	https://i.scdn.co/image/a89c3de14c6a14e4a26f92d984ed9619a5529dd9	44	indie game soundtrack/video game music/	52159
322	Danzig	\N	https://i.scdn.co/image/ab6772690000c46cfc6c290e700ffc24fce643c1	58	alternative metal/groove metal/grunge/hard rock/industrial rock/metal/nu metal/punk/	942556
323	Darius Rucker	\N	https://i.scdn.co/image/ab6761610000e5eb17f1bb8128fc6e637e4240d7	67	black americana/contemporary country/country/country road/modern country rock/	2594524
325	Darkest Hour	\N	https://i.scdn.co/image/ab6761610000e5ebd977966f2d1f7aeb1004653f	41	melodic metalcore/metalcore/	176621
326	Darkest Of The Hillside Thickets	\N	https://i.scdn.co/image/ab67616d0000b273d6dda8810b782007adc88cd6	22	vancouver punk/	5803
329	Darryl Worley	\N	https://i.scdn.co/image/ab6761610000e5eb2311618050e3f0345325c850	40	country/country road/	237394
331	Daughtry	\N	https://i.scdn.co/image/ab6761610000e5eb8d77449249782b0163f351a2	65	alternative metal/neo mellow/pop rock/post-grunge/	2198285
332	Dave Brubeck	\N	https://i.scdn.co/image/a6a0e86fd68166c7cd4425bc0eadab5131f4fbd1	49	american modern classical/bebop/cool jazz/jazz/jazz piano/	414713
333	Dave Edmunds	\N	https://i.scdn.co/image/ab6761610000e5ebc4c49dead65ad0ff32228aa4	40	british blues/power pop/pub rock/rockabilly/	68302
335	David Gates	\N	https://i.scdn.co/image/8cde2f45d29e53dbf85a59955dab677bf3960672	49	soft rock/	207591
336	David Gilmour	\N	https://i.scdn.co/image/ab6761610000e5eb4ab2cbce7e4f8f2c9be48a71	56	album rock/art rock/classic rock/progressive rock/symphonic rock/	1896675
338	David Hidalgo	\N	https://i.scdn.co/image/fb8e59970a59662e2051f1c8f55c3a5d72e1a893	36		2584
341	Davidicus	\N	https://i.scdn.co/image/ab67616d0000b273900f2afba9c8bc1a1f21d237	0		17
339	David Lee Roth	\N	https://i.scdn.co/image/ab6761610000e5eb7b3b79fbb96e4245b9bf52f8	48	album rock/classic rock/glam metal/hard rock/	681548
342	Dead By April	\N	https://i.scdn.co/image/ab6761610000e5ebf3770344c0b2952acd65b79f	53	swedish alternative rock/swedish metalcore/trancecore/	416379
343	Dead Kennedys	\N	https://i.scdn.co/image/725a76a15036422522a106bf153471a273e5e93f	54	alternative rock/early us punk/hardcore punk/punk/	839517
345	Dean Martin	\N	https://i.scdn.co/image/ab6761610000e5eb4dccee2f9fe2960b14f9a4d3	67	adult standards/easy listening/lounge/vocal jazz/	1720733
346	Death	\N	https://i.scdn.co/image/b1ad9718b69b4c75164d418bde0cf3aa1566ac92	56	death metal/dissonant death metal/florida death metal/groove metal/hard rock/metal/speed metal/technical death metal/	898009
348	Deep Blue Something	\N	https://i.scdn.co/image/ab6761610000e5eb6b788b5cf3dd4a3ae76c72dc	53	pop rock/	59886
349	Deep Purple	\N	https://i.scdn.co/image/ab6761610000e5eb3a475812e97ee788cfd5fd1a	66	album rock/classic rock/hard rock/metal/rock/	5565993
352	Deliverance	\N	https://i.scdn.co/image/ab67616d0000b2739c57bbe6716ed84f6d686b88	24	christian death metal/christian metal/christian thrash metal/finnish heavy metal/old school thrash/	23265
351	Del Shannon	\N	https://i.scdn.co/image/983c727b6ec616b62d2ce5a8a48e0e4bdef59b6c	49	doo-wop/rock-and-roll/rockabilly/	295191
353	Demi Lovato	\N	https://i.scdn.co/image/ab6761610000e5ebe106fea940fcf250f8dd5bfe	77	pop/post-teen pop/	26667511
355	Demons And Wizards	\N	https://i.scdn.co/image/ab6761610000e5eb3e9f7b144bbf065cdfceeec8	56	rap geek/	169917
357	Derek And The Dominoes	\N	https://i.scdn.co/image/cfec75171b6394ae543eb906e86e4d50cbafd9dc	57	album rock/blues rock/british blues/classic rock/country rock/electric blues/folk rock/hard rock/mellow gold/psychedelic rock/rock/singer-songwriter/	712119
358	Derek Trucks Band	\N	https://i.scdn.co/image/d2acdc1f530d1a9e4868a6bdf9454199a41df7bb	39	blues/blues rock/country rock/electric blues/jam band/modern blues/southern rock/	225663
359	Derrick and the Dominoes	\N	https://i.scdn.co/image/cfec75171b6394ae543eb906e86e4d50cbafd9dc	57	album rock/blues rock/british blues/classic rock/country rock/electric blues/folk rock/hard rock/mellow gold/psychedelic rock/rock/singer-songwriter/	712119
362	Detroit	\N	https://i.scdn.co/image/ab6761610000e5eb8ff161ec206bc3b96924a313	43		42049
363	Devo	\N	https://i.scdn.co/image/39a7e5e551639397c9ee7801e0e1755cf2affd1c	54	alternative rock/art punk/dance rock/new romantic/new wave/new wave pop/post-punk/synth punk/synthpop/zolo/	573416
365	Diamond Head	\N	https://i.scdn.co/image/ab6761610000e5eb9ed1ebe8865e05d2ad3752cb	37	hard rock/metal/nwobhm/speed metal/thrash metal/	181498
367	Die Fantastischen Vier	\N	https://i.scdn.co/image/ab6761610000e5eb88ea3d910b55c0874bc2d83d	53	german pop/german rock/oldschool deutschrap/	634401
369	Dierks Bentley	\N	https://i.scdn.co/image/ab6761610000e5eb56f2ff11303eddb9aaee081b	68	contemporary country/country/country road/modern country rock/	3115250
370	Dimmu Borgir	\N	https://i.scdn.co/image/ab6761610000e5ebd61bda1ccb2bc5993a834ab0	51	black metal/gothic metal/melodic death metal/metal/norwegian black metal/norwegian metal/power metal/speed metal/symphonic black metal/symphonic metal/viking metal/	523975
371	Din	\N	https://i.scdn.co/image/ab6761610000e5ebec5dfee14f697f9cc6918a69	61		129258
372	Dinosaur Jr	\N	https://i.scdn.co/image/ab6761610000e5eb7b2807f10602e4fe97c9ada7	51	alternative rock/lo-fi/noise pop/noise rock/permanent wave/power pop/shoegaze/slacker rock/	542314
373	Dio	\N	https://i.scdn.co/image/ab6761610000e5eb555c8199ba80168cfeafdfbc	60	album rock/alternative metal/glam metal/hard rock/metal/rock/speed metal/	2640107
364	Di Rect	\N	https://i.scdn.co/image/ab6761610000e5ebafce9ea838eb6b567b1cb4ad	53	dutch pop/dutch rock/	171684
375	Disturbed	\N	https://i.scdn.co/image/ab6761610000e5eb012addc95f5b2e7283f45446	77	alternative metal/nu metal/rap metal/rock/	6800937
376	Divine Comedy	\N	https://i.scdn.co/image/ab6761610000e5eb3c062bb2892e24cf3d78119a	43	baroque pop/britpop/chamber pop/melancholia/	149696
378	Dixie Dregs	\N	https://i.scdn.co/image/0e0f296560654727a9364e4992ebcfcc518e955a	26	jazz fusion/southern rock/	31935
380	Django Reinhardt	\N	https://i.scdn.co/image/ab6761610000e5ebc97909d061299645edfdbe5c	51	french jazz/gypsy jazz/jazz/jazz guitar/swing/	402523
382	Doctor Doctor	\N	https://i.scdn.co/image/ab6761610000e5eb65df8d8faf6b4e828a33117d	62	eurodance/europop/hip house/	264480
383	Dokken	\N	https://i.scdn.co/image/ab6761610000e5ebabfe651e0b08c096f5e6f93e	52	album rock/glam metal/hard rock/metal/	702038
385	Don Dokken	\N	https://i.scdn.co/image/883c612bb0534092c4088155ef9eaabf7d11523c	26	glam metal/	33310
387	Don Henley	\N	https://i.scdn.co/image/e3bb4b09ffbf0a8f420ae14837208056cf64451e	63	album rock/classic rock/mellow gold/singer-songwriter/soft rock/yacht rock/	1599374
388	Don Mclean	\N	https://i.scdn.co/image/ab6761610000e5eb960f33e2e44a53d836dc8ffb	63	classic rock/folk/folk rock/mellow gold/singer-songwriter/soft rock/	993401
390	Dover	\N	https://i.scdn.co/image/ab67616d0000b273adf033dfc19dc1d205106d11	47	spanish rock/	117966
391	Down	\N	https://i.scdn.co/image/010fd56976f3bb1a3ad4ab1158069b1d60d5648e	46	alternative metal/groove metal/industrial metal/louisiana metal/nu metal/sludge metal/southern metal/stoner metal/supergroup/	408549
392	Doyle Bramhall II	\N	https://i.scdn.co/image/ab6761610000e5eb71e17f4a5540a1405cbfc32b	30	electric blues/modern blues/modern blues rock/	50015
395	Dragonforce	\N	https://i.scdn.co/image/ab6761610000e5eb2c0d92dae9b4af4c8a565c3b	59	british power metal/fantasy metal/metal/power metal/speed metal/	1072626
397	Dream Theater	\N	https://i.scdn.co/image/ab6761610000e5eba8d44361845e5149ed163457	60	metal/progressive metal/	1592168
399	Dredg	\N	https://i.scdn.co/image/ab6761610000e5ebe2b4fb14ca6590f524926dbc	35	progressive alternative/	85218
393	Dr Feelgood	\N	https://i.scdn.co/image/ab6761610000e5ebe395ddadb9670997384100ad	39	blues rock/british blues/protopunk/pub rock/	109218
401	Drive By Truckers	\N	https://i.scdn.co/image/ab6761610000e5ebc81405127e5ca302f0e4d1d8	52	alternative country/folk/new americana/roots rock/southern rock/	222073
403	Dropkick Murphys	\N	https://i.scdn.co/image/ab6761610000e5eb2b3032f701dee12a10157f83	60	boston punk/boston rock/celtic punk/celtic rock/punk/	1247768
404	Drowning Pool	\N	https://i.scdn.co/image/ab6761610000e5eb4501ba57fdddf77368c589ff	63	alternative metal/nu metal/post-grunge/rap metal/	2049073
405	Duane Eddy	\N	https://i.scdn.co/image/427b1b9c5b3c5f8d3341b65d491342528be05896	42	rock-and-roll/rockabilly/surf music/	106466
406	Duffy	\N	https://i.scdn.co/image/ab6772690000c46c50e750d1aed632c37a450ffb	58	british soul/	946920
407	Duke Ellington	\N	https://i.scdn.co/image/1e24691a352233bbe989a311d921f17e7892a87e	57	african-american classical/harlem renaissance/jazz/jazz piano/swing/vocal jazz/	895032
408	Duran Duran	\N	https://i.scdn.co/image/ab6761610000e5ebf363c34ff8b5ca3b9a13b174	69	album rock/dance rock/new romantic/new wave/new wave pop/rock/soft rock/synthpop/	3080534
410	Eagle Eye Cherry	\N	https://i.scdn.co/image/ab6761610000e5eb9e0ca4a2881766ad646d449d	58	pop rock/	183939
411	Eagles Of Death Metal	\N	https://i.scdn.co/image/9084649cb287a4cd52b6955fe9f5dd647fc4e431	53	alternative rock/garage rock/garage rock revival/modern blues rock/palm desert scene/	546673
413	Eddie Cochran	\N	https://i.scdn.co/image/598642ecbc39004cdbb63dd018042db59b0385e5	52	rock-and-roll/rockabilly/	333182
414	Eddie Money	\N	https://i.scdn.co/image/ab6761610000e5eb59808090fb17e636132b0d2a	57	album rock/classic rock/country rock/glam metal/hard rock/mellow gold/soft rock/southern rock/	907924
415	Edgar Winter	\N	https://i.scdn.co/image/ab6761610000e5eb134c44c4b9905995938cf881	44	album rock/blues rock/classic rock/country rock/electric blues/folk rock/hard rock/mellow gold/soft rock/	277735
416	Edgar Winter Group	\N	https://i.scdn.co/image/ab6761610000e5eb134c44c4b9905995938cf881	44	album rock/blues rock/classic rock/country rock/electric blues/folk rock/hard rock/mellow gold/soft rock/	277735
418	Edu Ardanuy	\N	https://i.scdn.co/image/ab67616d0000b273523a816b1df982259917824f	10	brazilian metal/	9522
420	Egypt	\N	https://i.scdn.co/image/e84446aca50258224f3015083e92cacb5bb302f5	14	north dakota indie/	6613
421	Electric Light Orchestra	\N	https://i.scdn.co/image/ab6761610000e5eb6ee22df4403027ae525ced87	72	album rock/art rock/beatlesque/classic rock/glam rock/mellow gold/rock/soft rock/symphonic rock/	4078894
423	Eliza Doolittle	\N	https://i.scdn.co/image/ab6761610000e5eb41cfb54a7892a47b84dbf313	69	lilith/	157137
424	Elliott Smith	\N	https://i.scdn.co/image/ab6761610000e5eb079739b801ab3f105866b76f	65	alternative rock/indie rock/melancholia/singer-songwriter/	1143083
425	Elmore James	\N	https://i.scdn.co/image/ab67616d0000b2739edadae1fa36bbcfe53430fb	43	blues/chicago blues/delta blues/electric blues/traditional blues/	194757
426	ELO	\N	https://i.scdn.co/image/ab6761610000e5eb6ee22df4403027ae525ced87	72	album rock/art rock/beatlesque/classic rock/glam rock/mellow gold/rock/soft rock/symphonic rock/	4078894
428	Elton John And Kiki Dee	\N	https://i.scdn.co/image/ab6761610000e5ebc9553df98b57ba166ba85a20	64	classic uk pop/	25278
430	Elvis Costello	\N	https://i.scdn.co/image/ab6761610000e5ebbd95594d3201ab9c7b0349e6	54	new wave/new wave pop/permanent wave/power pop/singer-songwriter/	570387
431	Elvis Presley	\N	https://i.scdn.co/image/ab6761610000e5eb9a93e273380982dff84c0d7c	78	rock-and-roll/rockabilly/	9742801
432	Emerson Lake And Palmer	\N	https://i.scdn.co/image/492cf7afbe3a7be6d6d2bda5c71a52e3cc1c9d3d	49	album rock/art rock/blues rock/classic rock/folk rock/hard rock/mellow gold/progressive rock/singer-songwriter/soft rock/symphonic rock/synth prog/	1087576
434	Empire Of The Sun	\N	https://i.scdn.co/image/ab6761610000e5eb23ae905f944a230905ffa2a8	77	australian dance/australian electropop/dance rock/indietronica/neo-synthpop/	1568547
435	Enanitos Verdes	\N	https://i.scdn.co/image/0a44319db623b112c3fddca7a1ef88b5756265cd	73	argentine rock/latin alternative/latin pop/latin rock/mexican pop/rock en espanol/ska argentino/	4275156
437	Enjambre	\N	https://i.scdn.co/image/ab6761610000e5eb61fb472a31152d596b6bb3ab	68	indie rock mexicano/latin alternative/latin rock/mexican rock/rock en espanol/	1450505
438	Ensiferum	\N	https://i.scdn.co/image/ab6761610000e5eb0a5ef9d5834390b5ebdee107	46	finnish melodeath/finnish metal/folk metal/melodic death metal/metal/nordic folk metal/power metal/symphonic metal/viking metal/	317461
440	Epica	\N	https://i.scdn.co/image/ab6761610000e5eb4aa6b631a5f042656f7e12ef	55	dutch metal/gothic metal/gothic symphonic metal/opera metal/power metal/symphonic metal/	889464
441	Equilibrium	\N	https://i.scdn.co/image/ab6761610000e5ebb6b961b391b987a998b5761e	49	folk metal/german metal/german pagan metal/melodic death metal/power metal/symphonic metal/viking metal/	185703
443	Erasure	\N	https://i.scdn.co/image/ab6761610000e5eb8415569615b5c7f5c03c8594	62	new romantic/new wave/new wave pop/synthpop/	1080441
444	Eric Clapton	\N	https://i.scdn.co/image/ab6772690000c46ca60e8f215103f6841d8a83f0	71	album rock/blues rock/classic rock/electric blues/mellow gold/rock/singer-songwriter/soft rock/	5931950
445	Eric Johnson	\N	https://i.scdn.co/image/ab6761610000e5eb326a4c70b9cf8d35ba8a429a	45	instrumental bluegrass/instrumental rock/progressive jazz fusion/shred/	249586
447	Escape The Fate	\N	https://i.scdn.co/image/ab6761610000e5eb9fc28a89f5046ac3d930adb1	62	alternative metal/metalcore/neon pop punk/pixie/pop punk/post-grunge/screamo/	1332560
448	Europe	\N	https://i.scdn.co/image/ab6761610000e5eb517fe9f61c64eba371873208	64	album rock/glam metal/hard rock/rock/swedish hard rock/swedish melodic rock/	1608787
451	Eve 6	\N	https://i.scdn.co/image/ab6761610000e5ebaac60f5863d2df0b1425955a	52	alternative metal/pop rock/post-grunge/	445809
452	Everclear	\N	https://i.scdn.co/image/ab6761610000e5eb4b2f039f936f88e047163c9d	57	alternative metal/alternative rock/nu metal/permanent wave/pop rock/post-grunge/	987514
454	Everly Brothers	\N	https://i.scdn.co/image/ab6761610000e5ebea4e50a3c95e9024bb990fb9	59	adult standards/folk rock/mellow gold/rock-and-roll/rockabilly/sunshine pop/	968211
455	Every Time I Die	\N	https://i.scdn.co/image/ab6761610000e5eb89a83408f912aa7448361519	46	buffalo ny metal/chaotic hardcore/melodic metalcore/post-hardcore/screamo/	234677
456	Evile	\N	https://i.scdn.co/image/ab6761610000e5eba8f9f3cb937935038a8cb5e1	36	crossover thrash/death metal/groove metal/metal/new wave of thrash metal/speed metal/thrash metal/	109234
458	Extremoduro	\N	https://i.scdn.co/image/ab6761610000e5eb12434039f9760438626cf90b	63	indie extremena/spanish rock/	1337685
460	Faith No More	\N	https://i.scdn.co/image/765ad08f23f828d1a850c47ac417d7be260af932	60	alternative metal/alternative rock/funk metal/funk rock/hard rock/nu metal/post-grunge/rap metal/rock/	1837833
461	Fall Of Troy	\N	https://i.scdn.co/image/ab6761610000e5eb4048ce91ac98fa5a7fdeef08	43	post-hardcore/progressive post-hardcore/screamo/swancore/	171951
463	Fastball	\N	https://i.scdn.co/image/ab6761610000e5eb5970ca9034265f46af089162	51	pop rock/post-grunge/	190982
464	Fastway	\N	https://i.scdn.co/image/768e3e526f1174542d91a0ee38537cd63a536dc0	33	glam metal/	28139
465	Fats Domino	\N	https://i.scdn.co/image/ab6761610000e5eb5305958de2ad389172f3cd78	54	louisiana blues/motown/new orleans blues/piano blues/rock-and-roll/rockabilly/	561987
466	Fear Factory	\N	https://i.scdn.co/image/ab6761610000e5ebb972d48538fd59d9d8dd4484	52	alternative metal/groove metal/industrial metal/metal/nu metal/rap metal/	679579
468	Fightstar	\N	https://i.scdn.co/image/ab6761610000e5eb1cbe438208c188ca6493752d	37	british alternative rock/uk post-hardcore/	72059
469	Filter	\N	https://i.scdn.co/image/ab6761610000e5eba65ceef7fe995c88c6c6ada6	53	alternative metal/alternative rock/grunge/industrial metal/nu metal/post-grunge/	541289
471	Finger Eleven	\N	https://i.scdn.co/image/ab6761610000e5eb46660832363d5a33b3d59dfb	61	alternative metal/canadian rock/funk metal/nu metal/post-grunge/	750736
473	Fiordaliso	\N	https://i.scdn.co/image/ab6761610000e5ebbc6240722e7b7f3a62d244c3	41	classic italian pop/italian pop/	36730
474	Firehouse	\N	https://i.scdn.co/image/ab6761610000e5eb42340b0bd8a8ad9fae79d443	56	glam metal/hard rock/	906595
475	Firewind	\N	https://i.scdn.co/image/ab6761610000e5eba947f4521483ae11876aba05	41	greek metal/melodic metal/metal/neo classical metal/power metal/progressive metal/speed metal/symphonic metal/	100989
477	Five Finger Death Punch	\N	https://i.scdn.co/image/ab6761610000e5eb1e7f796a17c2dc3c28bdeeb9	74	alternative metal/groove metal/nu metal/	6445474
478	Five For Fighting	\N	https://i.scdn.co/image/18bbcd7d392b5f48754d7d89afe37f979fb47199	56	neo mellow/piano rock/pop rock/	861541
479	Flaming Lips	\N	https://i.scdn.co/image/ab6761610000e5ebbaf865cbf7ef15f97d6ef1fe	54	alternative rock/chamber pop/indie rock/indietronica/noise pop/okc indie/singer-songwriter/	800666
481	Flight Of The Conchords	\N	https://i.scdn.co/image/ab6772690000c46cca389bd3b03be11e3eb7256d	46	comic/parody/	365306
489	Focus	\N	https://i.scdn.co/image/ab67616d0000b2737d9ab0d82ab62be45e1b00fb	44	art rock/dutch prog/flute rock/nederpop/progressive rock/symphonic rock/	209082
490	Foghat	\N	https://i.scdn.co/image/ab6761610000e5ebc99812527711745e4e0bf29c	52	album rock/blues rock/british blues/classic rock/country rock/glam metal/hard rock/mellow gold/rock/soft rock/	887055
491	Foo Fighters	\N	https://i.scdn.co/image/ab6761610000e5ebc884df599abc793c116cdf15	78	alternative metal/alternative rock/modern rock/permanent wave/post-grunge/rock/	11918582
493	Foster The People	\N	https://i.scdn.co/image/ab6761610000e5eb22b8e662f0cfdddac8ab22bb	74	indietronica/modern alternative rock/modern rock/rock/	3807302
494	Fountains Of Wayne	\N	https://i.scdn.co/image/fe75e6f4ba0b2e75e97e3505f9daa112a606977f	58	pop rock/power pop/	190531
495	Four Year Strong	\N	https://i.scdn.co/image/ab6761610000e5eb6516c189d8242f844bf32f04	55	anthem emo/easycore/neon pop punk/new england emo/pop punk/screamo/worcester ma indie/	250955
497	Francoise Hardy	\N	https://i.scdn.co/image/034718c8a5381259d9989066d80d207b0a9ef047	60	chanson/ye ye/	482043
498	Frank Gambale	\N	https://i.scdn.co/image/132c84f6dc622e9561b03cff956544a76ce99fce	33	electric bass/jazz fusion/metal guitar/neo classical metal/	54130
499	Frank Sinatra	\N	https://i.scdn.co/image/fc4e0f474fb4c4cb83617aa884dc9fd9822d4411	76	adult standards/easy listening/lounge/	7335669
500	Frank Zappa	\N	https://i.scdn.co/image/e1c04d8144371d6a6ac39c7f15a1c2a9f67a0c50	56	art rock/blues rock/experimental/instrumental rock/jazz fusion/jazz rock/progressive rock/psychedelic rock/symphonic rock/zolo/	948103
502	Franz Ferdinand	\N	https://i.scdn.co/image/ab6761610000e5ebda4df4a711bb9f47722b7706	68	alternative rock/dance rock/indie rock/modern rock/rock/scottish rock/	2666844
504	Freddie King	\N	https://i.scdn.co/image/6c1f3c786fbc542e29df368b40d6ad888fe010be	49	acoustic blues/blues/blues rock/electric blues/texas blues/traditional blues/	398896
505	Freddie Mercury	\N	https://i.scdn.co/image/ab6761610000e5eb1052b77abd7f89485562d797	59	glam rock/	7020115
507	Freedom Call	\N	https://i.scdn.co/image/279d2d704bd987576b9accf6a242638daff43e72	40	german metal/german power metal/power metal/symphonic metal/	128495
508	Freezepop	\N	https://i.scdn.co/image/ab6761610000e5eb4d4142dfc74ead001cc8942a	29	bitpop/indietronica/neo-synthpop/	23253
509	Fu Manchu	\N	https://i.scdn.co/image/ab6761610000e5ebbaef176e4f3dd1d34c29e86b	45	palm desert scene/stoner rock/	231980
511	G3	\N	https://i.scdn.co/image/ab6761610000e5eb84b8e23eed0e28d067a7a653	53	adoracao/brazilian gospel/brazilian metal/brazilian progressive metal/rock gospel brasileiro/	803129
512	Gaetan Roussel	\N	https://i.scdn.co/image/ab6761610000e5eb438172555db336ea5faf1465	52	chanson/french pop/french rock/nouvelle chanson francaise/	153167
513	Gallows	\N	https://i.scdn.co/image/ab6761610000e5eb112e8162db685ed75a19d0ae	33	british alternative rock/	72707
515	Gary Allan	\N	https://i.scdn.co/image/ab6761610000e5eb3fdd52d1b8cadac4597f5308	58	contemporary country/country/country road/	1069325
516	Gary Moore	\N	https://i.scdn.co/image/ab6761610000e5eb445df6e3ccdb1684b75ab7b6	57	blues rock/british blues/electric blues/	701568
517	Gary numan	\N	https://i.scdn.co/image/ab6761610000e5ebdaea707e9e0ace6c53ed0697	49	new romantic/new wave/permanent wave/synthpop/	459438
519	Genesis	\N	https://i.scdn.co/image/ab6761610000e5ebdfb2b3c69199bc2dfbf3e5b9	67	album rock/art rock/classic rock/hard rock/mellow gold/new romantic/progressive rock/rock/soft rock/symphonic rock/	3423709
520	George Benson	\N	https://i.scdn.co/image/ab6761610000e5eb487b00fa17362b8eab3b16c8	64	jazz funk/jazz guitar/smooth jazz/soul jazz/yacht rock/	815900
521	George Harrison	\N	https://i.scdn.co/image/ab6761610000e5eb7fda8adcbe0cd99ec83a3bcf	67	album rock/classic rock/folk rock/mellow gold/rock/singer-songwriter/soft rock/	2712451
523	George Michael	\N	https://i.scdn.co/image/ab6761610000e5ebd919dbf4e6ed3e695ba6339d	73	new wave pop/	4906371
524	George Strait	\N	https://i.scdn.co/image/ab6761610000e5eb77f28b2422efbabde324291c	74	contemporary country/country/country road/	4436849
525	George Thorogood	\N	https://i.scdn.co/image/ab6761610000e5eb757998cdb9826e05ca888216	57	album rock/blues rock/classic rock/country rock/hard rock/heartland rock/mellow gold/rock/	925755
528	Gerry Rafferty	\N	https://i.scdn.co/image/ab6761610000e5eb458dd0cbffc2b84311f5aa7d	61	art rock/classic rock/folk rock/mellow gold/soft rock/	353762
529	Ghost	\N	https://i.scdn.co/image/ab6761610000e5eb2518768732e7215a9f765ca8	74	hard rock/metal/	3224014
531	Gin Blossoms	\N	https://i.scdn.co/image/ab6761610000e5eb5c0f1358900eef3ae120f159	56	permanent wave/pop rock/post-grunge/tempe indie/	687771
532	GLaDOS	\N	https://i.scdn.co/image/ab6761610000e5eb259d2e6b609c9985e8f12a2f	8		408
534	Gojira	\N	https://i.scdn.co/image/ab6761610000e5eb96c4949ee078fbef5d5adb68	67	alternative metal/french death metal/french metal/groove metal/metal/nu metal/progressive groove metal/	1479648
537	Good Charlotte	\N	https://i.scdn.co/image/ab6761610000e5ebfe30423ef497f7a48babb508	65	alternative metal/modern rock/neon pop punk/pop punk/pop rock/post-grunge/	2592407
536	Goo Goo Dolls	\N	https://i.scdn.co/image/ab6761610000e5ebd06647dddf0f321a49934437	74	neo mellow/permanent wave/pop rock/post-grunge/	2861293
538	Gorillaz	\N	https://i.scdn.co/image/ab6761610000e5eb2c61d9506d5af5fb502b343f	79	alternative hip hop/modern rock/rock/	11989660
539	Govt Mule	\N	https://i.scdn.co/image/ab6761610000e5eb131b3ae435add1b3c115f5ed	44	blues rock/electric blues/jam band/modern blues/modern blues rock/southern rock/	294784
541	Grateful Dead	\N	https://i.scdn.co/image/bba340d0c2aa4c9cbcbab0a4c3259d8f8e27f0d7	67	cosmic american/jam band/psychedelic rock/	1859924
542	Graveyard	\N	https://i.scdn.co/image/ab6761610000e5eb3c7691c28a7e58af645b9905	44	modern blues rock/stoner metal/stoner rock/swedish stoner rock/	203401
544	Grease	\N	https://i.scdn.co/image/ab67616d0000b2734d5772f58dfb42c451448bcb	0		2031
545	Great White	\N	https://i.scdn.co/image/ab6761610000e5ebdd19fda1803fa86d7f506e5b	50	album rock/glam metal/hard rock/	950296
546	Green Day	\N	https://i.scdn.co/image/ab6761610000e5eb6ff0cd5ef2ecf733804984bb	81	modern rock/permanent wave/punk/rock/	15249946
548	Gregoire	\N	https://i.scdn.co/image/ab6761610000e5ebf52cd41da1f9fcfa62f19f4d	50	chanson/comedie musicale/french pop/	208941
550	Guitar Playback	\N	https://i.scdn.co/image/ab6761610000e5eba7e29801d51d6650b8121f8f	50	classify/	28330
551	Gun	\N	https://i.scdn.co/image/ab6761610000e5eb50defaf9fc059a1efc541f4c	80	glam metal/hard rock/rock/	31445516
552	Guns N Roses	\N	https://i.scdn.co/image/ab6761610000e5eb50defaf9fc059a1efc541f4c	80	glam metal/hard rock/rock/	31445516
553	GWAR	\N	https://i.scdn.co/image/ab6761610000e5eb5851f6e788a46789963147f0	43	comic metal/groove metal/industrial metal/nu metal/old school thrash/virginia metal/virginia punk/	236262
556	Halloween	\N	https://i.scdn.co/image/ab6761610000e5ebcab673050b3f161eb7688c32	57	german metal/german power metal/hard rock/metal/old school thrash/power metal/speed metal/symphonic metal/thrash metal/	1253196
559	Hany	\N	https://i.scdn.co/image/ab6761610000e5eb3b79a9c3978219194fe0f2e7	1		251
561	Hardcore Superstar	\N	https://i.scdn.co/image/ab6761610000e5ebcacfc658bb464d9a32fbf0a8	41	new wave of glam metal/sleaze rock/swedish alternative rock/swedish hard rock/	110268
562	Harold Faltermayer and Steve Sevens	\N	https://i.scdn.co/image/595485b5a0d83252a95f5fcb21a7101f73b08386	55	german soundtrack/synthesizer/synthpop/	50139
563	Hawkwind	\N	https://i.scdn.co/image/ab6761610000e5eb7b59f34904a85204edb79eec	38	canterbury scene/hard rock/proto-metal/protopunk/psychedelic rock/space rock/	124593
565	Hayatebune	\N	https://i.scdn.co/image/ab6761610000e5ebba025c8f62612b2ca6bfa375	67		1701047
555	H Blockx	\N	https://i.scdn.co/image/ab6761610000e5ebd33fa03c919f447437b0ec04	41	german alternative rock/german rock/	68919
567	Heart	\N	https://i.scdn.co/image/1c145626e516a6817c43e7eab2b1cc3a5a9562a8	67	album rock/classic rock/glam metal/hard rock/mellow gold/new wave pop/rock/singer-songwriter/soft rock/	2632552
568	Helloween	\N	https://i.scdn.co/image/ab6761610000e5ebcab673050b3f161eb7688c32	57	german metal/german power metal/hard rock/metal/old school thrash/power metal/speed metal/symphonic metal/thrash metal/	1253196
569	Helmet	\N	https://i.scdn.co/image/ab6761610000e5eb0396ad8f9d256e9c62c6a030	49	alternative metal/alternative rock/groove metal/grunge/industrial metal/industrial rock/nu metal/post-hardcore/	316543
571	Henry Mancini	\N	https://i.scdn.co/image/ab6761610000e5eb9ee0e74df9f9ee5745caf24c	57	adult standards/classic soundtrack/easy listening/	216098
573	Heroes Del Silencio	\N	https://i.scdn.co/image/9ffe8fc45b8bad986946367201a3e547d9a6dc6a	67	latin alternative/latin rock/musica aragonesa/rock en espanol/spanish rock/	2656107
574	Hey	\N	https://i.scdn.co/image/ab6761610000e5ebae0862ad3e4d6a583c6df242	52		16053
576	Hilary Duff	\N	https://i.scdn.co/image/2b46c43a2c8d3af23f3183299c2070c2d42ad039	55	dance pop/pop/post-teen pop/	2359210
578	Hinder	\N	https://i.scdn.co/image/ab6761610000e5ebb36e61124d37a15925ed4f3c	61	alternative metal/nu metal/post-grunge/	1907281
554	H Is Orange	\N	https://i.scdn.co/image/ab67616d0000b2731e2d432d4f1351252aa1693b	4		535
579	Hole	\N	https://i.scdn.co/image/3f070ac89152fcd23f90c1351295d8cc64d54cb2	61	alternative rock/grunge/riot grrrl/	1212375
580	Hollywood Undead	\N	https://i.scdn.co/image/ab6761610000e5eb7fa4eae2283454a067613275	67	alternative metal/modern rock/post-grunge/rap metal/rap rock/	2379570
582	Hoobastank	\N	https://i.scdn.co/image/ab6761610000e5ebfd24e4299227b496c8bc9765	66	alternative metal/funk metal/nu metal/pop rock/post-grunge/	2526818
584	Horace Silver	\N	https://i.scdn.co/image/ab6761610000e5ebe214842fe87630b113bd8df6	45	bebop/hard bop/jazz/jazz trumpet/	145275
585	Hot Hot Heat	\N	https://i.scdn.co/image/ab6761610000e5eb21fabb7d1b49fefc9fc70124	40	canadian indie rock/canadian rock/dance-punk/victoria bc indie/	130798
587	Howling Wolf	\N	https://i.scdn.co/image/c2408f7f93e582b422af47aa72904a24397029d9	52	acoustic blues/blues/chicago blues/delta blues/harmonica blues/memphis blues/traditional blues/	521969
589	Huey Lewis	\N	https://i.scdn.co/image/5e6a5f0ea60ffb1737da92571f7413d826f7b884	41	new wave pop/	9043
590	Huey Lewis And The News	\N	https://i.scdn.co/image/ab6761610000e5eb8dfb95eb4902b28206963614	64	album rock/classic rock/hard rock/mellow gold/new romantic/new wave pop/rock/singer-songwriter/soft rock/	1625934
592	Hushpuppies	\N	https://i.scdn.co/image/ab67616d0000b2739344a1e7270a52f4eebe2d63	24	french garage rock/french rock/rock independant francais/	8641
593	Hypernova	\N	https://i.scdn.co/image/ab6761610000e5eb4c7fd1d9ec041f7cfb8d38ba	1	deep gothic post-punk/persian rock/	2583
596	Iced Earth	\N	https://i.scdn.co/image/a1fa09dcb7f14ee7bad400ad8c0772f1a2ec4468	46	hard rock/metal/old school thrash/power metal/power thrash/speed metal/symphonic metal/thrash metal/us power metal/	367495
594	I Fight Dragons	\N	https://i.scdn.co/image/ab6761610000e5eb02958b3dc0a865443ee88223	35	chiptune/nerdcore/nintendocore/	50865
598	Iggy Pop	\N	https://i.scdn.co/image/ab6761610000e5eb21e6d14c3d8aab9887380d00	61	alternative rock/glam rock/permanent wave/protopunk/rock/	1644846
595	I Mother Earth	\N	https://i.scdn.co/image/c5106faa948b385851d332fbf3619537d67bd93a	34	canadian metal/canadian rock/funk metal/	75350
602	Incubus	\N	https://i.scdn.co/image/ab6761610000e5ebefb25d9bd279b10bb362a476	69	alternative metal/alternative rock/funk metal/funk rock/modern rock/nu metal/post-grunge/rock/	3302391
600	In Flames	\N	https://i.scdn.co/image/ab6761610000e5eb5c3bd919d1344a738af14136	63	alternative metal/gothenburg metal/melodic death metal/melodic metalcore/metal/swedish alternative rock/swedish death metal/swedish melodeath/swedish metal/	1194639
604	Insane Clown Posse	\N	https://i.scdn.co/image/ab6761610000e5eb534c6d647953f20279d654f8	65	rap rock/	1551094
605	Interpol	\N	https://i.scdn.co/image/ab6761610000e5ebc31f8e7aad462874455cf070	62	alternative dance/alternative rock/indie rock/indietronica/modern rock/rock/	1727897
606	INXS	\N	https://i.scdn.co/image/ab6761610000e5eb9bfd44c9bd2aae22edfd99bf	69	album rock/australian rock/dance rock/funk rock/new romantic/new wave/new wave pop/rock/	2708733
607	Iron Butterfly	\N	https://i.scdn.co/image/ed1f30ed69dc1c5a6b7f649d2e14b06fb021c683	41	acid rock/album rock/blues rock/classic rock/country rock/folk rock/hard rock/progressive rock/proto-metal/psychedelic rock/symphonic rock/	419546
611	Jace Everett	\N	https://i.scdn.co/image/ab6761610000e5eb1e063ca95f9cfc5f1322cd2e	40	modern blues rock/	44002
612	Jack Johnson	\N	https://i.scdn.co/image/ab6761610000e5eb9555a0b3231117c8cde1fca7	77	neo mellow/	3853785
613	Jack White And Alicia Keys	\N	https://i.scdn.co/image/ab6761610000e5eb9555a0b3231117c8cde1fca7	77	neo mellow/	3853785
615	Jacques Brel	\N	https://i.scdn.co/image/ab6761610000e5eb4dfecaf883652dc5600ba055	55	belgian singer-songwriter/chanson/	785781
618	James	\N	https://i.scdn.co/image/ab6761610000e5eb2a0c6d0343c82be9dd6fce0b	81	pop/talent show/uk pop/	18024173
619	James Blunt	\N	https://i.scdn.co/image/ab6761610000e5eb3863fa2fdb07fb4fe1a9607d	71	neo mellow/	2999681
621	James Gang	\N	https://i.scdn.co/image/b7accd8373ed5f6b920ef11d6c1609761cc8ac60	47	album rock/blues rock/classic rock/country rock/electric blues/folk rock/hard rock/mellow gold/southern rock/	375179
622	Jamiraquai	\N	https://i.scdn.co/image/ab6761610000e5eb7e6dca959714339b69e9718d	68	dance pop/	2440575
623	Janes Addiction	\N	https://i.scdn.co/image/ab6761610000e5eb6181668c9b31f2505039ba33	55	alternative metal/alternative rock/funk metal/funk rock/grunge/nu metal/permanent wave/rock/	1435910
624	Janet Jackson	\N	https://i.scdn.co/image/ab6761610000e5eb7a912337f0052d529eb65930	65	dance pop/r&b/urban contemporary/	3957396
625	Janis Joplin	\N	https://i.scdn.co/image/ab6761610000e5ebbf0ee2c099003f6886e4da0c	62	album rock/classic rock/hard rock/psychedelic rock/rock/singer-songwriter/	3401186
627	Jason Becker	\N	https://i.scdn.co/image/ab6761610000e5eb12e98ccca0e7162639a0e0c7	36	instrumental rock/neo classical metal/shred/	120207
628	Jason Derulo	\N	https://i.scdn.co/image/ab6761610000e5eb62fa38af4bdc7322b2103493	78	dance pop/pop/	12153995
629	Javier Batiz	\N	https://i.scdn.co/image/ab6761610000e5ebe6f714cd353b0ac9ebe1e175	34	mexican classic rock/mexican rock/mexican rock-and-roll/rock urbano mexicano/	20371
631	Jeff Beck	\N	https://i.scdn.co/image/c54d3e62fa857b691de4e391b3cca35234462761	54	album rock/blues/blues rock/british blues/classic rock/electric blues/hard rock/instrumental rock/jazz fusion/progressive rock/	775914
635	Jefferson Airplane	\N	https://i.scdn.co/image/ab6761610000e5eb0c739f8231961acda83a4bf8	58	acid rock/album rock/blues rock/classic rock/folk rock/hard rock/mellow gold/psychedelic rock/rock/singer-songwriter/	1599720
636	Jefferson Starship	\N	https://i.scdn.co/image/ab6761610000e5eb8f0bcee19214771de6080e72	50	album rock/classic rock/folk rock/hard rock/mellow gold/rock/singer-songwriter/soft rock/	1036191
633	Jeff Healey	\N	https://i.scdn.co/image/ab6761610000e5ebbad8b44f716773daca9327af	44	blues/blues rock/canadian blues/country rock/electric blues/modern blues/	223488
639	Jerryc	\N	https://i.scdn.co/image/ab6761610000e5eb82c3327bf509daa4f1ef8992	55	brega funk/funk carioca/	792931
640	Jesse Mccartney	\N	https://i.scdn.co/image/ab6761610000e5eb6910fb4dd7f57ab18539b8ae	58	dance pop/pop/post-teen pop/	1031971
641	Jet	\N	https://i.scdn.co/image/ab6761610000e5ebb94631f08038eac322c090f0	57	album rock/art rock/blues rock/classic rock/flute rock/folk rock/hard rock/progressive rock/psychedelic rock/rock/singer-songwriter/symphonic rock/	1892601
642	Jethro Tull	\N	https://i.scdn.co/image/ab6761610000e5ebb94631f08038eac322c090f0	57	album rock/art rock/blues rock/classic rock/flute rock/folk rock/hard rock/progressive rock/psychedelic rock/rock/singer-songwriter/symphonic rock/	1892601
610	J Geils Band	\N	https://i.scdn.co/image/314a7c90c1d6fc4b33adb2da62e05a48a1767a14	56	album rock/classic rock/country rock/hard rock/mellow gold/rock/singer-songwriter/soft rock/	858607
644	Jimmy Buffett	\N	https://i.scdn.co/image/ab6761610000e5ebc51b2d9deea2b3cc8360828d	70	trop rock/	1125154
645	Jimmy Eat World	\N	https://i.scdn.co/image/ab6761610000e5eb0dc33cfd207772f8e2f6b46f	69	alternative metal/alternative rock/emo/modern power pop/modern rock/neon pop punk/pop punk/pop rock/post-grunge/punk/rock/	1585026
646	Jimmy Page	\N	https://i.scdn.co/image/eb8fd85635cd147585f78d4e3e8b9a5e212269e3	41	album rock/art rock/blues rock/british blues/classic rock/electric blues/hard rock/progressive rock/	563089
647	Joan Jett	\N	https://i.scdn.co/image/ab6761610000e5eb62fb8358fddd681fbcaee831	65	glam punk/rock/	863706
649	Joe Bonamassa	\N	https://i.scdn.co/image/ab6761610000e5ebec33bd8fc7f83b842c5d08a8	56	blues/blues rock/electric blues/modern blues/modern blues rock/	932826
650	Joe Jackson	\N	https://i.scdn.co/image/ab6761610000e5eba4e4ffea944ea037683faf51	51	mellow gold/new romantic/new wave/new wave pop/permanent wave/singer-songwriter/sophisti-pop/	402591
652	Joe Walsh	\N	https://i.scdn.co/image/d710b1d866858b418e298b6b7b087e6f841f27c1	55	album rock/blues rock/classic rock/country rock/hard rock/heartland rock/mellow gold/rock/singer-songwriter/soft rock/southern rock/	1270815
653	Johan Paul	\N	https://i.scdn.co/image/4c8a440d9c6b4429feb7df77b4fdad86bcabe66f	57	baroque/classical/german baroque/	171542
655	John 5 Feat Jim Root	\N	https://i.scdn.co/image/ab6761610000e5eb90f9e4a479dab5a99c38fa5b	54	adoracao/	38316
656	John And Ono The Plastic Ono Band	\N	https://i.scdn.co/image/ab6761610000e5eb2cfed18861c121d7cfe9ee96	48	experimental/experimental pop/	137190
658	John Coltrane	\N	https://i.scdn.co/image/ab6761610000e5eb73c7f7505c1af82929ec41df	64	bebop/free jazz/jazz/jazz saxophone/vocal jazz/	1672770
659	John Denver	\N	https://i.scdn.co/image/ab6761610000e5eb748322a35cb459c837d5ac9e	69	classic country pop/folk/folk rock/mellow gold/singer-songwriter/soft rock/	2235387
660	John Fogerty	\N	https://i.scdn.co/image/ab6772690000c46c8fcd4c411558a4182820a8a8	55	album rock/blues rock/classic rock/country rock/folk rock/heartland rock/mellow gold/singer-songwriter/soft rock/southern rock/swamp rock/	887856
662	John Mayall And The Bluesbreakers	\N	https://i.scdn.co/image/ab67616d0000b273c40ff56a16cebb8f30af1f66	49	blues/blues rock/british blues/british invasion/electric blues/traditional blues/	427048
664	John Mellencamp	\N	https://i.scdn.co/image/ab6761610000e5eb39cf2e0c338c08d5b8350053	65	album rock/classic rock/country rock/folk rock/hard rock/heartland rock/mellow gold/rock/singer-songwriter/soft rock/	1733472
667	Johnny Cash	\N	https://i.scdn.co/image/ab6761610000e5eb94a8326675bfcafb20f0a235	75	arkansas country/outlaw country/rock/	6365528
669	Johnny Jones	\N	https://i.scdn.co/image/ab6761610000e5ebd196b068f989d829bb69238f	6		151
670	Johnny Rivers	\N	https://i.scdn.co/image/6c618815c9e7910b2c075bcaa2b160c9f84e0f94	45	bubblegum pop/	199330
672	Johnny Winter	\N	https://i.scdn.co/image/49d41e640134e0247ee9f6cce849bc36395273bd	44	blues/blues rock/classic rock/country rock/electric blues/modern blues/texas blues/traditional blues/	507607
665	John Petrucci	\N	https://i.scdn.co/image/ab6761610000e5eb4ea5b860b232ffa1372868a2	40	instrumental rock/progressive metal/shred/	213531
666	John Waite	\N	https://i.scdn.co/image/bc3a280c958c4509f73b0c3809b1ed7543a5ef49	53	album rock/mellow gold/new romantic/new wave/new wave pop/soft rock/	270543
675	Joss Stone	\N	https://i.scdn.co/image/ab6761610000e5ebaf8e9730026523b1ef1eedb8	56	british soul/neo soul/	1082131
676	Journey	\N	https://i.scdn.co/image/ab6761610000e5ebe848dfb35ea4969099662dfd	76	album rock/classic rock/hard rock/mellow gold/rock/soft rock/	5624567
677	Joy Division	\N	https://i.scdn.co/image/5eeddd733170399db794d2c430a8d2cde7ae1425	63	alternative rock/indie rock/madchester/new wave/post-punk/punk/rock/uk post-punk/	2489155
609	J  Regali	\N	https://i.scdn.co/image/ab67616d0000b27336688a2d8c63466ce8946675	17		137
679	Judas Priest	\N	https://i.scdn.co/image/ab6761610000e5eb4b3cfc24737acb15e73e8bd6	66	album rock/alternative metal/birmingham metal/glam metal/hard rock/metal/rock/	4110063
680	Juli	\N	https://i.scdn.co/image/ab6761610000e5eb54ff61687c7711551096bc47	66	brazilian gospel/	240202
682	Julio Revueltas	\N	https://i.scdn.co/image/ab67616d0000b273a092f6db046a12a891bf5cbb	13		3161
683	Jumbo	\N	https://i.scdn.co/image/ab67616d0000b2730075654cf68f3b1c726f5049	5	italian progressive rock/	1515
684	Junior Wells	\N	https://i.scdn.co/image/ab6761610000e5eba6b8e240a1e7218e7f4b7537	38	blues/chicago blues/electric blues/harmonica blues/memphis blues/traditional blues/	122786
686	Kaiser Chiefs	\N	https://i.scdn.co/image/ab6761610000e5ebc5e79ef4ced0ccbd8eabd960	58	modern rock/	1328939
687	Kamelot	\N	https://i.scdn.co/image/ab6761610000e5eb2436e28f65483f0af02ba27d	49	gothic symphonic metal/melodic metal/metal/power metal/progressive metal/speed metal/symphonic metal/	386390
688	Kane	\N	https://i.scdn.co/image/ab6761610000e5eb6e835a500e791bf9c27a422a	92	chicago rap/hip hop/rap/	26614591
689	Kansas	\N	https://i.scdn.co/image/ab6761610000e5ebce30906f8428166de2e7b592	67	album rock/classic rock/hard rock/heartland rock/mellow gold/progressive rock/rock/soft rock/	1602696
691	Katarina And The Waves	\N	https://i.scdn.co/image/733bf3eb9178fd24dbce4a9a5ec64d0c870ea822	62	new wave pop/	105143
693	KC And The Sunshine Band	\N	https://i.scdn.co/image/ab6761610000e5eb5b9b91f430a06b8094efcbda	64	disco/mellow gold/new wave pop/soft rock/soul/	1033466
695	Kenny Burrell	\N	https://i.scdn.co/image/ab6761610000e5ebdbb5ce7865a18716adba5083	44	bebop/jazz guitar/soul jazz/straight-ahead jazz/	88139
696	Kenny Loggins	\N	https://i.scdn.co/image/ab6761610000e5ebe5ade0d346536449c7a75b48	67	album rock/classic rock/mellow gold/new wave pop/singer-songwriter/soft rock/yacht rock/	1109315
697	Kenny Rogers	\N	https://i.scdn.co/image/ab6761610000e5eb43eec847b2e3aaa5f4edbd23	70	classic country pop/country/nashville sound/soft rock/	2744710
698	Kenny Wayne Shepherd	\N	https://i.scdn.co/image/ab6761610000e5ebd3aeca8e566fe9da8715b158	51	blues/blues rock/electric blues/modern blues/modern blues rock/	339638
701	Kids In Glass Houses	\N	https://i.scdn.co/image/ab6761610000e5ebb0a8b100accc0428f21ee1fb	36	british alternative rock/uk pop punk/welsh rock/	56515
702	Kiko Loureiro	\N	https://i.scdn.co/image/ab6761610000e5eb92b1c2289504c0013ac30fe1	37	brazilian metal/instrumental rock/shred/	107430
703	Killswitch Engage	\N	https://i.scdn.co/image/ab6761610000e5eb6e884cb777732183a587b64f	63	alternative metal/boston metal/melodic metalcore/metalcore/nu metal/post-grunge/	1911446
705	Kings Of Leon	\N	https://i.scdn.co/image/ab6761610000e5eb6fc940f2e99875ced9bafed0	77	modern rock/rock/	5423753
706	Kings X	\N	https://i.scdn.co/image/ab6761610000e5eb6fc940f2e99875ced9bafed0	77	modern rock/rock/	5423753
708	Kitchie Nadal	\N	https://i.scdn.co/image/ab67616d0000b2734699830bfdf6e043cda2d294	57	opm/	1041929
709	KMFDM	\N	https://i.scdn.co/image/ab6761610000e5eb6a76d5a5d332ac3af978720e	50	cyberpunk/industrial metal/industrial rock/neue deutsche harte/	307822
710	Korn	\N	https://i.scdn.co/image/ab6761610000e5eb29af2ffb6f4ddd6324f878bc	76	alternative metal/funk metal/hard rock/nu metal/post-grunge/rap metal/rock/	7827732
711	Korpiklaani	\N	https://i.scdn.co/image/ab6761610000e5ebda501752b6e2f5c6ed2e98eb	52	finnish metal/folk metal/nordic folk metal/power metal/symphonic metal/viking metal/	414887
712	Kreator	\N	https://i.scdn.co/image/ab6761610000e5ebe0b534896c50cb2281b88fed	53	death metal/german metal/german thrash metal/hard rock/melodic thrash/metal/old school thrash/speed metal/thrash metal/	779113
715	KT Tunstall	\N	https://i.scdn.co/image/ab6761610000e5eb8457f57bc526c37bd804b924	61	ectofolk/lilith/neo mellow/pop rock/scottish singer-songwriter/	427392
716	Kula Shaker	\N	https://i.scdn.co/image/ab6761610000e5eb5875885888fbe9396a55aaf1	44	britpop/	237431
718	Kutless	\N	https://i.scdn.co/image/ab6761610000e5eb5d0f8a4ce1ff92d1813d24f0	46	ccm/christian alternative rock/christian music/	343594
719	Kyne	\N	https://i.scdn.co/image/ab67616d0000b27302212b62ae972acb0ff24198	0		5
720	L7	\N	https://i.scdn.co/image/ab6761610000e5eb58da0d9be3d7dc281345ea60	73	funk rj/pop rap brasileiro/trap brasileiro/	4313625
725	Lacuna Coil	\N	https://i.scdn.co/image/ab6761610000e5eb9acb2be8fcd1a83fe9cda681	54	alternative metal/gothic metal/gothic symphonic metal/industrial metal/italian gothic/italian gothic metal/italian metal/nu metal/slayer/symphonic metal/	707220
727	Lady Gaga	\N	https://i.scdn.co/image/ab6761610000e5eb515dea0684e8e716852e24e0	86	art pop/dance pop/pop/	30951816
721	LA Guns	\N	https://i.scdn.co/image/ab6761610000e5eb5959d683f74ff5fcefc7117c	45	glam metal/hard rock/sleaze rock/	442414
722	La Lupita	\N	https://i.scdn.co/image/ab6761610000e5eb4a5b5b13459b4142be52c42a	44	latin alternative/mexican rock/rock en espanol/	440836
723	LA renga	\N	https://i.scdn.co/image/ab6761610000e5eb93e157c63e523335a4d6d21a	61	argentine rock/	1623423
729	Larry Carlton	\N	https://i.scdn.co/image/a4df69effc0075a846ffafaa2670735275407636	41	jazz fusion/jazz guitar/smooth jazz/	126065
731	Lazybone	\N	https://i.scdn.co/image/ab6761610000e5eb1d5c5307c53c055a3fd7c327	11	k-rock/korean punk/	2559
732	Led Zeppelin	\N	https://i.scdn.co/image/207803ce008388d3427a685254f9de6a8f61dc2e	76	album rock/classic rock/hard rock/rock/	14541489
735	Lenny Kravitz	\N	https://i.scdn.co/image/ab6761610000e5ebe0cf058473839f1c9f49937e	72	permanent wave/rock/	3322445
734	Len Price 3	\N	https://i.scdn.co/image/ab6761610000e5eb23e63899a220692cb76c941d	12	garage rock revival/medway sound/mod revival/	4290
736	Leonard skynard	\N	https://i.scdn.co/image/ab6761610000e5ebe52a068e5f113faf35c70142	64	sertanejo/sertanejo tradicional/sertanejo universitario/	1959560
739	Libyans	\N	https://i.scdn.co/image/ab67616d0000b273e319fe81caede22f97ce5dda	2		480
741	Lifehouse	\N	https://i.scdn.co/image/ab6761610000e5eb12e6a316cab1c10592429fa4	64	neo mellow/pop rock/post-grunge/	2028764
742	Limp Bizkit	\N	https://i.scdn.co/image/4654955890cb62a6abe9daadfd2b3ecdee8036e4	76	alternative metal/funk metal/nu metal/post-grunge/rap metal/rock/	6227608
743	Linkin Park	\N	https://i.scdn.co/image/ab6761610000e5eb84a0dd74f21e8acce6a9fd49	86	alternative metal/nu metal/post-grunge/rap metal/rock/	26080118
745	Lionel Ritchie	\N	https://i.scdn.co/image/ab6761610000e5eb002684808eb17d8b3645b57c	70	disco/soft rock/	3730288
746	Liquid Tension Experiment	\N	https://i.scdn.co/image/ab6761610000e5ebcbbba8ab610284a56cc29103	36	chapman stick/instrumental rock/jazz metal/progressive metal/shred/	212114
748	Lita Ford	\N	https://i.scdn.co/image/7c4540e354c44bbd6366b118ef0cbd9711513147	46	album rock/glam metal/hard rock/hel/	478123
749	Little River Band	\N	https://i.scdn.co/image/ab6761610000e5eb9a44d8722feae811910ddba6	56	album rock/classic rock/country rock/mellow gold/singer-songwriter/soft rock/yacht rock/	1202843
751	Living Colour	\N	https://i.scdn.co/image/ab6761610000e5eb1d592c2d28375da088c00ff7	52	funk metal/funk rock/hard rock/	400029
752	Locksley	\N	https://i.scdn.co/image/ab6761610000e5ebb786836bf4d2a8224365146d	23	modern power pop/	9904
753	Lordi	\N	https://i.scdn.co/image/ab6761610000e5ebccf15374ddb07f19a38ef26f	48	comic metal/finnish hard rock/finnish heavy metal/lapland metal/power metal/	263855
755	Los Gatos	\N	https://i.scdn.co/image/ab67616d0000b273b0bbe56fb6f5d9dae8bb1d0e	34	argentine rock/rock nacional/	37601
757	Los Lonely Boys	\N	https://i.scdn.co/image/ab6761610000e5eb4e5c810791cc620520e71580	51		92454
758	Los Rodriguez	\N	https://i.scdn.co/image/703715ebb22bf053372d880894e0dd1729a0f1fb	60	argentine rock/latin alternative/rock en espanol/	710180
760	Loudness	\N	https://i.scdn.co/image/ab67616d0000b2733f3dcb7b4a8ef58c72b7b237	0		2
761	Love And Rockets	\N	https://i.scdn.co/image/ab6761610000e5ebd2991d28aa41b69b958daeb4	43	gothic rock/new romantic/new wave/post-punk/uk post-punk/	207914
762	Loverboy	\N	https://i.scdn.co/image/ab6761610000e5eb02a7fb52455eea92035311dc	55	album rock/classic canadian rock/classic rock/glam metal/hard rock/mellow gold/soft rock/	912089
764	Lynch Mob	\N	https://i.scdn.co/image/ab6761610000e5ebfb7d6240a19cd8115c9c7066	35	glam metal/	142442
765	Lynyrd Skynyrd	\N	https://i.scdn.co/image/ab6761610000e5eb451eb07ddc6e68d3e474c2bf	73	album rock/classic rock/hard rock/rock/southern rock/	5233293
766	Machinehead	\N	https://i.scdn.co/image/ab6761610000e5ebe499036b76b54eab1471297e	57	alternative metal/groove metal/hard rock/industrial metal/melodic groove metal/metal/nu metal/progressive groove metal/	1322401
767	Mad Season	\N	https://i.scdn.co/image/1e30ffa1b0abce432e9598f2f7746fe65ac22b9c	49	alternative metal/alternative rock/blues rock/grunge/supergroup/	621383
770	Mahavishnu Orchestra	\N	https://i.scdn.co/image/d47e45e354175b3b5fe5ae35f65df69028b298d3	35	instrumental rock/jazz/jazz fusion/progressive rock/	157736
772	Mana	\N	https://i.scdn.co/image/ab6761610000e5eb152dcec8175d19fb12eeb8e0	77	latin arena pop/latin pop/latin rock/mexican pop/mexican rock/rock en espanol/	11350939
774	Manowar	\N	https://i.scdn.co/image/ab6761610000e5eba4780fe15900fbd223cd4f48	56	comic metal/hard rock/metal/power metal/speed metal/us power metal/	1010643
775	Marc Cohn	\N	https://i.scdn.co/image/ab6761610000e5ebe1f74810321ffb76360dc5d4	53	mellow gold/	98419
777	Marco Sfogli	\N	https://i.scdn.co/image/ab6761610000e5eb9d818606c2582549402ca755	75	grupera/latin pop/musica mexicana/ranchera/	7237623
778	Marcy Playground	\N	https://i.scdn.co/image/ab6761610000e5ebc12f77e7db22099b40c86f74	54	alternative rock/grunge/pop rock/post-grunge/	438021
780	Marillion	\N	https://i.scdn.co/image/ab6761610000e5eb7466575ddecc323bf499fea7	54	neo-progressive/progressive rock/symphonic rock/	501718
781	Marilyn Manson	\N	https://i.scdn.co/image/ab6761610000e5ebdb8d04a30249a6d312599638	71	alternative metal/hard rock/industrial/industrial metal/industrial rock/nu metal/post-grunge/rock/	4433950
783	Mark Knopfler	\N	https://i.scdn.co/image/ab6761610000e5eb94b957255b1e4d4ddcc470ce	63	soft rock/	1620350
784	Maroon 5	\N	https://i.scdn.co/image/ab6761610000e5ebf8349dfb619a7f842242de77	85	pop/	42294762
785	Marshall Tucker Band	\N	https://i.scdn.co/image/ab6761610000e5eb48bbd7b9258b38689f6dc919	56	album rock/classic rock/country rock/mellow gold/singer-songwriter/soft rock/southern rock/	1024148
788	Martina Mcbride	\N	https://i.scdn.co/image/ab6761610000e5eb77c0a38cfe0932fd57ed9efe	56	contemporary country/country/country dawn/country road/	1369925
789	Marty Friedman	\N	https://i.scdn.co/image/ab6761610000e5eb3603acf97a3c835105f9c60e	39	instrumental rock/shred/	133779
790	Marvin Gaye	\N	https://i.scdn.co/image/cf79bd3e5c787e2ec152eeb1ea5538b0d4cf1434	74	classic soul/motown/neo soul/northern soul/quiet storm/soul/	5409003
792	Mastodon	\N	https://i.scdn.co/image/ab6761610000e5ebf84fe9e6fbb2aa001d6cbbd9	58	alternative metal/atlanta metal/metal/progressive groove metal/progressive sludge/sludge metal/stoner metal/stoner rock/	924060
793	Matchbook Romance	\N	https://i.scdn.co/image/ab6761610000e5ebc1e0c523300496873ed0539d	40	emo/neon pop punk/pop punk/screamo/	140070
795	Matchbox Twenty	\N	https://i.scdn.co/image/ab6761610000e5eb2600695faee2deeb736755f0	68	neo mellow/pop rock/post-grunge/	2526350
796	Matthew Sweet	\N	https://i.scdn.co/image/ab6761610000e5eb3aae2c02fba2299b23fdebaf	39	alternative rock/jangle pop/laboratorio/power pop/underground power pop/	75338
798	Mayhem	\N	https://i.scdn.co/image/ab6761610000e5ebe60e1c595b887e90c6065620	49	black metal/metal/norwegian black metal/	643600
799	MC5	\N	https://i.scdn.co/image/90e09fac65de5e448a430cb7a7616528982b90d1	37	detroit rock/garage rock/proto-metal/protopunk/punk/	194892
800	Meat Puppets	\N	https://i.scdn.co/image/ab6761610000e5ebcec30a3f8d0baa7c2ccf0304	45	alternative rock/cowpunk/grunge/punk/	285547
801	Megadeth	\N	https://i.scdn.co/image/ab6761610000e5eb3f19bad1d41dceb90d8b4cf5	69	alternative metal/hard rock/melodic thrash/metal/old school thrash/rock/speed metal/thrash metal/	5432321
803	Men At Work	\N	https://i.scdn.co/image/296d057590a19ef7dbbe9205186e96cd6078c290	69	album rock/australian rock/classic rock/hard rock/mellow gold/new romantic/new wave/new wave pop/rock/soft rock/	1311226
804	Mercyful Fate	\N	https://i.scdn.co/image/ab6761610000e5eb0f9f487d327776c58129f457	42	danish metal/death metal/hard rock/metal/thrash metal/	340909
805	Meshuggah	\N	https://i.scdn.co/image/ab6761610000e5eb2198c33d521ca13e0204b789	54	alternative metal/djent/groove metal/metal/nu metal/progressive groove metal/swedish metal/technical groove metal/technical thrash/	718974
806	Metallica	\N	https://i.scdn.co/image/ab6761610000e5eb69ca98dd3083f1082d740e44	83	hard rock/metal/old school thrash/rock/thrash metal/	28031154
808	Michael Angelo Batio	\N	https://i.scdn.co/image/6ef7517b96ec2b852389c6ba182036ef199e7213	27	metal guitar/shred/	67429
810	Michael Schenker Group	\N	https://i.scdn.co/image/ab6761610000e5eb056be091dd79c7e26b74cf08	41	german hard rock/glam metal/hard rock/metal/	209289
811	Michelle Branch	\N	https://i.scdn.co/image/ab6761610000e5ebe91d691289f4c1337a665e4f	57	candy pop/dance pop/lilith/neo mellow/pop rock/	661006
813	MiG Ayesa	\N	https://i.scdn.co/image/ab67616d0000b273715b4a2995af274997f994a5	0		16
814	Mighty Mighty Bosstones	\N	https://i.scdn.co/image/ab6761610000e5ebcaa457b536c6dd12009a194d	53	boston punk/boston rock/punk/ska/ska punk/skate punk/	362712
815	Miguel Mateos	\N	https://i.scdn.co/image/ab67616d0000b273f3ea92164c4e64c1d27a57f4	56	latin alternative/latin rock/mexican rock/rock en espanol/	298556
817	Mike And The Mechanics	\N	https://i.scdn.co/image/df1206ce5a5ffab40863574f6921ca066c0f100e	56	album rock/mellow gold/new romantic/new wave/new wave pop/soft rock/	696168
818	Mike Oldfield	\N	https://i.scdn.co/image/b04f41784ba49ed0875cbd018e0e0e55c94344eb	58	progressive rock/symphonic rock/	629228
820	Misfits	\N	https://i.scdn.co/image/ab6761610000e5eb030d67ff9576754ff230b2c0	64	horror punk/new jersey hardcore/new jersey punk/punk/	1414371
821	Modest Mouse	\N	https://i.scdn.co/image/ab6761610000e5eb39b413eb76d2ae87496d76b8	63	alternative rock/chamber pop/indie rock/indietronica/modern rock/washington indie/	1479082
823	Molly Hatchet	\N	https://i.scdn.co/image/2203a2f8b70a214c9d6a7c9f7e9f8cb5ade95d96	46	album rock/classic rock/country rock/glam metal/hard rock/southern rock/	601761
824	Montrose	\N	https://i.scdn.co/image/a4b31d5e4d308212b14e6d5c64a803f712086ec4	38	album rock/blues rock/country rock/glam metal/hard rock/southern rock/	220467
826	Moody Blues	\N	https://i.scdn.co/image/ab6761610000e5eb8beccf59fd551fff989deae1	57	album rock/art rock/british invasion/classic rock/country rock/flute rock/folk rock/mellow gold/progressive rock/rock/singer-songwriter/soft rock/symphonic rock/	1356132
827	Moonsorrow	\N	https://i.scdn.co/image/fa08993cd346db9038825b57fbc9cfed48bf4cef	30	black metal/finnish metal/folk black metal/folk metal/greek metal/nordic folk metal/pagan black metal/symphonic black metal/viking metal/	92717
829	Motley Crue	\N	https://i.scdn.co/image/ab6761610000e5ebab0922f900e6c22b8ef4c01c	71	album rock/alternative metal/glam metal/hard rock/metal/rock/sleaze rock/	5248417
830	Motorhead	\N	https://i.scdn.co/image/ab6761610000e5ebca7ee168d9def6794bd15ea9	65	alternative metal/hard rock/metal/nu metal/rock/speed metal/	4062093
832	Mountain	\N	https://i.scdn.co/image/c602229d8663c4cce1fc123e7d45185fcd27eb9f	52	album rock/blues rock/classic rock/country rock/electric blues/hard rock/proto-metal/psychedelic rock/	312370
833	Mozart	\N	https://i.scdn.co/image/ab6761610000e5eb7fa9108c6dadb8c3ec21da88	74	classical/classical era/	5445181
834	Mr Big	\N	https://i.scdn.co/image/ab6761610000e5ebce1118adf3961b22e63179d1	58	glam metal/hard rock/	629020
836	Muddy Waters	\N	https://i.scdn.co/image/b4ccc4c928c953fbe755c88c4774df70db977a5c	55	blues/blues rock/chicago blues/classic rock/electric blues/soul/traditional blues/	1298231
837	Mudvayne	\N	https://i.scdn.co/image/ab6761610000e5eb95146ec994f65a11f75c9a85	60	alternative metal/industrial metal/nu metal/rap metal/	1890367
839	My Chemical Romance	\N	https://i.scdn.co/image/ab6761610000e5eb9c00ad0308287b38b8fdabc2	78	emo/modern rock/pop punk/pov: indie/rock/	8760937
840	My Morning Jacket	\N	https://i.scdn.co/image/ab6761610000e5eb236c35f5215954e1f9a2f1c6	52	chamber pop/indie rock/jam band/louisville indie/melancholia/roots rock/stomp and holler/	551867
842	Napalm Death	\N	https://i.scdn.co/image/ab6761610000e5eb96715609a206e464a5a2e6a7	45	birmingham metal/british death metal/british grindcore/death metal/deathgrind/grindcore/groove metal/metal/	371774
843	Nazareth	\N	https://i.scdn.co/image/ab6761610000e5ebc5bc094a1280845770d009fa	59	album rock/classic rock/glam metal/hard rock/rock/	1492658
845	Negramaro	\N	https://i.scdn.co/image/ab6761610000e5ebd37b0e5ad2d8fd2408b170fd	58	italian adult pop/italian pop/	1129380
846	Neil Young	\N	https://i.scdn.co/image/ab6761610000e5ebbae8276dffd864ebac759b76	69	canadian singer-songwriter/classic canadian rock/classic rock/folk rock/mellow gold/permanent wave/rock/roots rock/singer-songwriter/	2996482
848	Nelly Furtado	\N	https://i.scdn.co/image/ab6761610000e5ebd2ce0bf5614b54bd44e059d5	77	canadian latin/canadian pop/dance pop/pop/	3970562
849	New Found Glory	\N	https://i.scdn.co/image/ab6761610000e5eb700da92fd7837bba20d58713	58	easycore/emo/neon pop punk/pop punk/	842064
850	New York Dolls	\N	https://i.scdn.co/image/169d98992e555699585b68c5fdc8b88bb1ddda8b	40	early us punk/glam punk/glam rock/protopunk/punk/	284936
852	Nickelback	\N	https://i.scdn.co/image/ab6761610000e5eb4ad382f899596d8c7b9e8e09	79	alternative metal/canadian rock/post-grunge/	6964326
854	Nightwish	\N	https://i.scdn.co/image/ab6761610000e5ebf3284e60d4e43c9a7b52c08d	66	fantasy metal/finnish metal/finnish power metal/gothic metal/gothic symphonic metal/opera metal/power metal/symphonic metal/	2210271
855	Nine Inch Nails	\N	https://i.scdn.co/image/ab6761610000e5eb047095c90419cf2a97266f77	66	alternative metal/alternative rock/cyberpunk/electronic rock/grunge/industrial/industrial metal/industrial rock/nu metal/post-grunge/rock/	2668711
857	No Doubt	\N	https://i.scdn.co/image/f7e39e0ca7a4ba897150247190fb27b6ae6e0318	69	dance pop/dance rock/permanent wave/pop rock/rock/	2873184
859	Noel Gallagher	\N	https://i.scdn.co/image/ab6761610000e5eb21544d3b4e0a00d209f56743	59	britpop/	934982
860	Nofx	\N	https://i.scdn.co/image/ab6772690000c46cddcf65625878991cf30658be	61	punk/ska/skate punk/socal pop punk/	1080399
862	Nuclear Assault	\N	https://i.scdn.co/image/ab67616d0000b273124767f618f8b76ab030388c	37	crossover thrash/old school thrash/thrash metal/	205267
863	Oasis	\N	https://i.scdn.co/image/ab6761610000e5eb0522e98a6f0cf1ddbee9a74f	77	beatlesque/britpop/madchester/permanent wave/rock/	10245096
865	Ocean Colour Scene	\N	https://i.scdn.co/image/ab6761610000e5ebf14b4d7a984c82aa2dd401be	49	britpop/madchester/mod revival/	417770
866	Offspring	\N	https://i.scdn.co/image/ab6761610000e5eb580938fc4c9edb1b80b10898	77	alternative metal/permanent wave/post-grunge/punk/rock/skate punk/socal pop punk/	5719890
867	Oficina G3	\N	https://i.scdn.co/image/ab6761610000e5eb84b8e23eed0e28d067a7a653	53	adoracao/brazilian gospel/brazilian metal/brazilian progressive metal/rock gospel brasileiro/	803129
869	Oingo Boingo	\N	https://i.scdn.co/image/eaf55ebd8f48bd95b3c203237ff550161288999e	54	dance rock/new romantic/new wave/zolo/	454859
870	OK Go	\N	https://i.scdn.co/image/ab6761610000e5ebbad94f3d5e7d2873258ce146	52	chicago indie/modern rock/permanent wave/	517145
871	One Direction	\N	https://i.scdn.co/image/5bb443424a1ad71603c43d67f5af1a04da6bb3c8	84	boy band/pop/post-teen pop/talent show/	36026460
873	Onmyouza	\N	https://i.scdn.co/image/ab6761610000e5ebd7c9cb7b945bede947076e5c	37	j-metal/japanese heavy metal/	46300
874	Opeth	\N	https://i.scdn.co/image/ab6761610000e5eb45e1bb6e5285297f9e55e550	59	alternative metal/metal/progressive death metal/progressive metal/swedish metal/swedish progressive metal/	966162
876	Osmi Putnik	\N	https://i.scdn.co/image/ab6761610000e5ebdd82b67cf170dadd1b1e4e52	12	croatian metal/croatian rock/yugoslav rock/	9345
878	Oziel Zinho	\N	https://i.scdn.co/image/ab6761610000e5ebc04b2010a74fe67b6aa35da7	16		8948
880	Ozzy Osbourne	\N	https://i.scdn.co/image/ab6761610000e5ebb5b52f7e13f720c7a4856306	71	album rock/alternative metal/birmingham metal/classic rock/glam metal/hard rock/metal/rock/	5639101
882	Pain Of Salvation	\N	https://i.scdn.co/image/ab6761610000e5eb4eb988e44960dceeff8d0e5b	39	prog metal/progressive metal/swedish progressive metal/	136308
883	Panic At The Disco	\N	https://i.scdn.co/image/ab6761610000e5ebb256ae9a4b82bfff97776ae2	77	pop/	12303968
884	Pantera	\N	https://i.scdn.co/image/ab6761610000e5ebe21999c0102c240bdf094d9b	70	alternative metal/groove metal/hard rock/metal/nu metal/old school thrash/rock/texas metal/	5147576
886	Paradise Lost	\N	https://i.scdn.co/image/ab6761610000e5eb6510e7ed3b49f950a0a539c7	48	doom metal/gothic metal/groove metal/metal/uk doom metal/	325678
887	Paramore	\N	https://i.scdn.co/image/ab6761610000e5ebb10c34546a4ca2d7faeb8865	78	candy pop/modern rock/pixie/pop/pop emo/pop punk/rock/	8693726
889	Parkway Drive	\N	https://i.scdn.co/image/ab6761610000e5eb4d6648c4e1e1f4e4aad4cbcf	61	alternative metal/australian metalcore/melodic metalcore/metalcore/nu metal/	1130499
890	Pat Benatar	\N	https://i.scdn.co/image/8cd9a623b274a9e694aa7bae28f541d3977673ec	63	album rock/classic rock/glam metal/hard rock/mellow gold/new romantic/new wave pop/rock/singer-songwriter/soft rock/	1776723
893	Patricio Rey Y Sus Redonditos De Ricota	\N	https://i.scdn.co/image/ab6761610000e5eb78f40b5153bfcbd5e7a55432	67	argentine rock/post-punk argentina/	1656851
892	Pat Travers	\N	https://i.scdn.co/image/1760b1c731a6daf0c50821bfbb0592726af4ecf9	29	blues rock/southern rock/	92850
897	Paul Gilbert	\N	https://i.scdn.co/image/ab6761610000e5eb22496746b1e2b9d73509b118	36	metal guitar/neo classical metal/shred/	185949
898	Paul Mccartney	\N	https://i.scdn.co/image/ab6761610000e5eb03bf2fe26e397122faa3d323	71	classic rock/mellow gold/rock/soft rock/	4855195
900	Paul Thorn	\N	https://i.scdn.co/image/56b7091f9c1b0bac8e58bb315a456e2d5c560f1d	33	roots rock/	25007
902	Pearl Jam	\N	https://i.scdn.co/image/ab6761610000e5ebe431fb8ba17cdee73e4ce08a	75	alternative metal/alternative rock/classic rock/grunge/hard rock/permanent wave/rock/	8939843
903	Pennywise	\N	https://i.scdn.co/image/ab6761610000e5eb3abbba4e5b281eff1258d40d	54	punk/skate punk/socal pop punk/	765678
904	Periphery	\N	https://i.scdn.co/image/ab6761610000e5ebae2304891734b9d9fafe1c8d	52	djent/melodic metalcore/progressive metal/progressive metalcore/	501590
905	Pestilence	\N	https://i.scdn.co/image/ab6761610000e5eb72a987c6f0ed82c8e9c13fc2	31	black metal/brutal death metal/death metal/deathrash/dutch death metal/dutch metal/old school thrash/technical death metal/	113873
906	Peter Frampton	\N	https://i.scdn.co/image/ab6761610000e5ebdf422233531e21eefeec9996	55	album rock/british blues/classic rock/country rock/folk rock/hard rock/mellow gold/rock/singer-songwriter/soft rock/southern rock/	1280651
909	Phish	\N	https://i.scdn.co/image/ab6761610000e5ebb3be3bb00408683dffacc4d2	56	jam band/	520689
910	Pink	\N	https://i.scdn.co/image/e69f71e2be4b67b82af90fb8e9d805715e0684fa	78	album rock/art rock/classic rock/progressive rock/psychedelic rock/rock/symphonic rock/	20687470
911	Pink Floyd	\N	https://i.scdn.co/image/e69f71e2be4b67b82af90fb8e9d805715e0684fa	78	album rock/art rock/classic rock/progressive rock/psychedelic rock/rock/symphonic rock/	20687470
913	Platero Y Tu	\N	https://i.scdn.co/image/2507938ca3b5c8867438c7b091600ed8c21f5a9d	50	punk urbano/spanish punk/	310688
915	POD	\N	https://i.scdn.co/image/ab6761610000e5eb289688a9f583f827cd834032	62	alternative metal/funk metal/nu metal/rap metal/rap rock/	1969122
916	Poison	\N	https://i.scdn.co/image/70ed0b201cafa20fc3e3cb30a916f91adbb604ed	63	album rock/classic rock/glam metal/hard rock/rock/	3290618
917	Popa Chubby	\N	https://i.scdn.co/image/ab6761610000e5eb0bd9f9c95f97109f15bca5b1	34	electric blues/modern blues/	79444
919	Portishead	\N	https://i.scdn.co/image/05d3721739aee511a898081ab140daa7890a0120	64	alternative rock/art pop/dark pop/electronica/laboratorio/trip hop/	2065579
920	Powermad	\N	https://i.scdn.co/image/5f5f1990f663d1787abd43aa6a0b3e848a38c24e	15	minneapolis metal/old school thrash/power thrash/speed metal/	7371
921	Presidents Of The United States Of America	\N	https://i.scdn.co/image/ab6761610000e5eb5f58fb70bc91512a98ad530b	59	alternative rock/grunge/pop rock/	635944
923	Primus	\N	https://i.scdn.co/image/ab6761610000e5eb54ed648a0c70ed8910840f4a	57	alternative metal/alternative rock/funk metal/funk rock/grunge/nu metal/	1187374
924	Prince	\N	https://i.scdn.co/image/ab6761610000e5ebeaca358712b3fe4ed9814640	70	funk/funk rock/minneapolis sound/rock/synth funk/	7407187
926	Procol Harum	\N	https://i.scdn.co/image/ab6761610000e5eb2af24c397e6ba11f49516dd9	46	album rock/art rock/blues rock/british invasion/classic rock/country rock/folk rock/mellow gold/progressive rock/psychedelic rock/singer-songwriter/symphonic rock/	464639
927	Protest The Hero	\N	https://i.scdn.co/image/ab6761610000e5eb8df5e7ad475aeaaa865a54fe	43	canadian metal/canadian post-hardcore/djent/	203561
929	Psychedelic Furs	\N	https://i.scdn.co/image/ab6761610000e5ebf7b8a47f7dec7e1745f6d640	55	alternative rock/new romantic/new wave/new wave pop/post-punk/	600253
930	Public Enemy	\N	https://i.scdn.co/image/ab6772690000c46c7af45c8edde30249d1709b54	56	conscious hip hop/east coast hip hop/golden age hip hop/hardcore hip hop/hip hop/old school hip hop/political hip hop/	1094971
933	PYG	\N	https://i.scdn.co/image/ab67616d0000b273bd2cf28e8c378f11caf3fa00	10		1995
934	Queen	\N	https://i.scdn.co/image/b040846ceba13c3e9c125d68389491094e7f2982	85	classic rock/glam rock/rock/	50804256
936	Queens Of The Stone Age	\N	https://i.scdn.co/image/ab6761610000e5eb909b2c4b7c768ee03445cd10	70	alternative metal/alternative rock/grunge/modern rock/palm desert scene/rock/stoner metal/stoner rock/	3561334
937	Queensryche	\N	https://i.scdn.co/image/ab6761610000e5eb6cdde60b6c8838aeb82dfb41	53	album rock/glam metal/hard rock/metal/progressive metal/us power metal/	676188
939	Quo Vadis	\N	https://i.scdn.co/image/ab67616d0000b2737dffdc6bd30bbf5cd565956e	21	canadian metal/quebec death metal/technical death metal/technical melodic death metal/	23914
940	Racer X	\N	https://i.scdn.co/image/ab67616d0000b2735df736e55549535b6229ddd6	35	metal guitar/neo classical metal/	93208
941	Rachel Portman	\N	https://i.scdn.co/image/ab6761610000e5ebecdcf117a93f2cab88a9faf8	51	british soundtrack/orchestral soundtrack/soundtrack/	73419
943	Radiohead	\N	https://i.scdn.co/image/ab6761610000e5eba03696716c9ee605006047fd	81	alternative rock/art rock/melancholia/oxford indie/permanent wave/rock/	10322220
944	Rage Against The Machine	\N	https://i.scdn.co/image/ab6761610000e5ebda4bd2b213cae330e2a4a901	71	alternative metal/alternative rock/conscious hip hop/funk metal/hard rock/nu metal/political hip hop/post-grunge/rap metal/rap rock/rock/	6101636
946	Ram Jam	\N	https://i.scdn.co/image/ab67616d0000b273fa5dcfc4b1b99a0598224758	57	southern rock/	145143
947	Rammstein	\N	https://i.scdn.co/image/ab6761610000e5eb32845b1556f9dbdfe8ee6575	80	german metal/industrial/industrial metal/industrial rock/neue deutsche harte/	10108145
948	Rancid	\N	https://i.scdn.co/image/ab6761610000e5eb9ef1337f472668ab2c5aedcd	59	punk/ska/skate punk/	894202
949	Rascal Flatts	\N	https://i.scdn.co/image/ab6761610000e5ebb2423171f56fa27d89e26207	68	contemporary country/country/country road/modern country rock/	3579342
950	Rata Blanca	\N	https://i.scdn.co/image/ab6761610000e5eb9865592be574bafefc07f4a4	61	argentine heavy metal/argentine rock/latin alternative/latin rock/rock en espanol/rock urbano mexicano/	1317866
951	RATM	\N	https://i.scdn.co/image/ab6761610000e5ebda4bd2b213cae330e2a4a901	71	alternative metal/alternative rock/conscious hip hop/funk metal/hard rock/nu metal/political hip hop/post-grunge/rap metal/rap rock/rock/	6101636
955	Raymond Memphis	\N	https://i.scdn.co/image/ab67616d0000b2730a634c04ae7cf54459bf74ff	12	reggae do maranhao/	620
954	Ray Parker Jr	\N	https://i.scdn.co/image/112bf0d1817b5cffc0874ff8f147d7b6ba2b9cc3	54	theme/	95834
956	Reb Beach	\N	https://i.scdn.co/image/ab6761610000e5eb3346990ae45ee879771e79fe	16	glam metal/metal guitar/neo classical metal/	11369
957	Red Hot Chili Peppers	\N	https://i.scdn.co/image/ab6761610000e5ebc33cc15260b767ddec982ce8	83	alternative rock/funk metal/funk rock/permanent wave/rock/	21128383
959	Red Rider	\N	https://i.scdn.co/image/adec2428d84d631ad5d148a8795e10d1e585479f	42	classic canadian rock/	97499
960	Reef	\N	https://i.scdn.co/image/ab6761610000e5ebc14538ea3fe806b0e7984dc9	41	britpop/	59986
961	Reel Big Fish	\N	https://i.scdn.co/image/ab6761610000e5eb3e2cc3b6c73d974a0f6b91b3	53	modern ska punk/punk/ska/ska punk/skate punk/socal pop punk/	499407
963	REM	\N	https://i.scdn.co/image/ab6761610000e5eb6334ab6a83196f36475ada7f	73	alternative rock/athens indie/permanent wave/rock/	4641033
964	REO Speedwagon	\N	https://i.scdn.co/image/ab6761610000e5ebfc5a03aa1823cfbe08b8b2ed	65	album rock/classic rock/glam metal/hard rock/mellow gold/rock/soft rock/	2593974
965	Replacements	\N	https://i.scdn.co/image/1c80a3a78951958f753cd7282bfe16dbca741258	51	alternative rock/permanent wave/post-punk/power pop/punk/singer-songwriter/	297205
966	Rhapsody	\N	https://i.scdn.co/image/ab6761610000e5eb902fae03243cae6e08caf99a	49	fantasy metal/italian folk metal/italian metal/italian power metal/metal/neo classical metal/power metal/speed metal/symphonic metal/	483500
968	Rhythm Desire	\N	https://i.scdn.co/image/ab67616d0000b273a0a787e695ad5c8d3682f6d6	20		2361
970	Richard Hawley	\N	https://i.scdn.co/image/ab6761610000e5eb145821caf17f98dfd9592b97	48	british singer-songwriter/chamber pop/sheffield indie/singer-songwriter/solo wave/	155531
972	Rick Springfield	\N	https://i.scdn.co/image/ab6761610000e5eb5cc5140fd4e3342f3a6d25ff	63	album rock/australian rock/classic rock/glam metal/hard rock/mellow gold/new romantic/new wave pop/soft rock/yacht rock/	851078
974	Ricky Nelson	\N	https://i.scdn.co/image/99ee90438c46d52c9007866740f5504834d20f99	57	adult standards/doo-wop/rock-and-roll/rockabilly/	483949
975	Rimsky Nikolai Korsako	\N	https://i.scdn.co/image/93e1a6107946160e8308aafd91de512cf458d443	51	avant-garde/classical/early modern classical/late romantic era/russian romanticism/	119330
976	Rise Against	\N	https://i.scdn.co/image/ab6761610000e5eb8e19de59bac2628eb8929156	70	alternative metal/chicago hardcore/chicago punk/hardcore punk/modern rock/pop punk/post-grunge/punk/	2722109
978	Roadrunner United	\N	https://i.scdn.co/image/ab6761610000e5ebc7856e245da586d1b6c3cf8d	35	groove metal/melodic metalcore/nu metal/	112580
980	Robben Ford	\N	https://i.scdn.co/image/397f33fd3f87e4a4c86f3e11140718d72918b892	40	blues/electric blues/jazz blues/jazz fusion/modern blues/soul blues/	108069
982	Robert Cray	\N	https://i.scdn.co/image/a4dd9cf1b97218b614a3561e5b96f0a3dafe153f	48	blues/blues rock/electric blues/modern blues/soul blues/southern rock/traditional blues/	258132
983	Robert Johnson	\N	https://i.scdn.co/image/b8acc51743ff21f1d32e3f99922ca8283d3af0ce	45	acoustic blues/blues/delta blues/pre-war blues/traditional blues/	582903
984	Robert Palmer	\N	https://i.scdn.co/image/d0f9136003814386988d37964be13b1da0b1c6e1	57	album rock/classic rock/dance rock/mellow gold/new romantic/new wave/new wave pop/singer-songwriter/soft rock/yacht rock/	1030348
986	Robin Trower	\N	https://i.scdn.co/image/ab6761610000e5eb10d3380ecdbaf2cf731e0468	45	blues rock/country rock/electric blues/modern blues/southern rock/	251677
979	Rob Zombie	\N	https://i.scdn.co/image/ab6761610000e5eb40a6cfc37fa94d54d28aca22	68	alternative metal/hard rock/industrial metal/industrial rock/nu metal/post-grunge/rock/	3058056
989	Rod Stewart	\N	https://i.scdn.co/image/ab6761610000e5eb876f7ad601fe9a02247b9fb9	72	mellow gold/soft rock/	4853360
992	Rory Gallagher	\N	https://i.scdn.co/image/ab6761610000e5ebe21794f3b8bc495ce47ca3ac	50	blues rock/british blues/electric blues/	450503
993	Rostros Ocultos	\N	https://i.scdn.co/image/ab6761610000e5eb2fbce26547f59d8bad37336e	45	latin alternative/mexican rock/rock en espanol/	136773
995	Roxette	\N	https://i.scdn.co/image/ab6761610000e5eb347ca7e9f41f3ff8e2b19034	71	europop/swedish pop/synthpop/	2287059
996	Roxy Music	\N	https://i.scdn.co/image/ab6761610000e5eb35572c81290a3e3d4a0906e3	60	art rock/glam rock/melancholia/new romantic/new wave/new wave pop/sophisti-pop/	1002397
997	Roy Buchanan	\N	https://i.scdn.co/image/7ff910c920ebfb8cf01a4a662afcb544aeb14499	40	acoustic blues/blues/blues rock/electric blues/modern blues/traditional blues/	171853
998	Roy Orbison	\N	https://i.scdn.co/image/ab6761610000e5eb63c7956d7de45418d7fe6b25	68	adult standards/classic rock/folk rock/mellow gold/rock-and-roll/rockabilly/singer-songwriter/soft rock/	2050247
1001	Runaways	\N	https://i.scdn.co/image/bb558047dc042297754100e562e2c8add949b234	52	early us punk/protopunk/riot grrrl/	426043
1002	Rush	\N	https://i.scdn.co/image/ab6761610000e5eb896c4b043fb3063178afd716	65	album rock/canadian metal/classic canadian rock/classic rock/hard rock/progressive rock/rock/	2344374
1003	Ryan Adams	\N	https://i.scdn.co/image/ab6761610000e5eb46dbea8d8ce2f2a21d9f0702	58	alternative country/new americana/roots rock/singer-songwriter/	708385
1005	Sam Cooke	\N	https://i.scdn.co/image/ab6761610000e5eb41aaa3a05d2ddba59454273e	68	classic soul/soul/vocal jazz/	1646084
1007	Sammy Hagar	\N	https://i.scdn.co/image/ab6761610000e5eb9dc3e6da940b26f4695adc3b	52	album rock/classic rock/glam metal/hard rock/rock/	963815
1008	Sampaguita	\N	https://i.scdn.co/image/ab67616d0000b2736b0a150497e26b35a1ca1df3	41	classic opm/manila sound/opm/	138674
1009	Santana	\N	https://i.scdn.co/image/ab6761610000e5eb09882b1b7b33732abd60fc38	71	blues rock/classic rock/mexican classic rock/	3415976
1011	Savatage	\N	https://i.scdn.co/image/ab6761610000e5eb28ce3420531dadeaea4d8aef	44	glam metal/hard rock/metal/power metal/progressive metal/thrash metal/us power metal/	248555
1012	Saxon	\N	https://i.scdn.co/image/ab6761610000e5eb3cf9569774c02e8e99f46eda	50	glam metal/hard rock/metal/nwobhm/power metal/	603341
1014	Scars On Broadway	\N	https://i.scdn.co/image/ab6761610000e5eb09c6c8687903b10b5571f53a	50		226967
1015	Scorp	\N	https://i.scdn.co/image/ab6761610000e5eb7440170c0628c2945da819c3	72	album rock/german hard rock/german metal/german rock/hard rock/rock/	7307139
1016	Scorpions	\N	https://i.scdn.co/image/ab6761610000e5eb7440170c0628c2945da819c3	72	album rock/german hard rock/german metal/german rock/hard rock/rock/	7307139
1018	Seal	\N	https://i.scdn.co/image/ab6761610000e5ebe29f9c69aad50e33fa61805a	63	british soul/new wave pop/	1878723
1019	Seether	\N	https://i.scdn.co/image/ab6761610000e5ebbab1b739387a6e515dd2f160	69	alternative metal/nu metal/post-grunge/south african rock/	3447172
1021	Sentenced	\N	https://i.scdn.co/image/e79b6e9f3934c0e2a351274f128954df26e48dac	41	finnish death metal/finnish melodeath/gothic metal/melodic death metal/metal/oulu metal/	106650
1022	Sepultura	\N	https://i.scdn.co/image/ab6761610000e5eb716f574b796045f28ce4f4f3	60	alternative metal/brazilian groove metal/brazilian metal/brazilian thrash metal/death metal/deathrash/groove metal/hard rock/latin metal/metal/metal mineiro/nu metal/old school thrash/speed metal/thrash metal/	1991696
1023	Sevendust	\N	https://i.scdn.co/image/ab6761610000e5eb91dd82319224dd9f0316444d	54	alternative metal/atlanta metal/industrial metal/nu metal/rap metal/	1126268
1026	Shadows Fall	\N	https://i.scdn.co/image/f88cd5cb85623a6eaeb4d9c737d637df7f2bcc95	36	alternative metal/boston metal/industrial metal/melodic metalcore/melodic thrash/metalcore/new england metal/nu metal/	235468
1027	Shaimus	\N	https://i.scdn.co/image/ab67616d0000b273852be95b4c9f83dab67a4ecd	14	indie pop rock/	1814
1028	Shaman	\N	https://i.scdn.co/image/ab67616d0000b2730be199bbe7ae13e71afa2a5c	38	brazilian metal/brazilian power metal/brazilian progressive metal/power metal/progressive power metal/	134367
1029	Shania Twain	\N	https://i.scdn.co/image/ab6761610000e5eb01022f4092cb96e0a91811a5	72	canadian country/canadian pop/contemporary country/country/country dawn/	3090490
1031	Shayne Ward	\N	https://i.scdn.co/image/ab6761610000e5eb9034f02ef50646148a8621ff	48	talent show/	346408
1032	Sheryl Crow	\N	https://i.scdn.co/image/ab6761610000e5eb962c94da847bcc4ef21c4ad9	67	lilith/new wave pop/permanent wave/pop rock/singer-songwriter/	1201921
1034	Shivaree	\N	https://i.scdn.co/image/0a6103cb00bcd9c984433d0e9733d123abf8a5c1	44		48927
1035	Shocking Blue	\N	https://i.scdn.co/image/c1533c6ba932c6242e9e78739ce3f98b3cf6518d	51	nederpop/	158607
1036	Silverchair	\N	https://i.scdn.co/image/b362d7cd057ae8affb562483a0c1780172fba9f2	57	alternative metal/alternative rock/australian alternative rock/australian psych/australian rock/grunge/nu metal/post-grunge/	1262565
1038	Simple Minds	\N	https://i.scdn.co/image/ab6761610000e5eb83e9da1d7f9d7da25c9e1e53	67	album rock/dance rock/new romantic/new wave/new wave pop/rock/scottish new wave/soft rock/	2038166
1039	Simple Plan	\N	https://i.scdn.co/image/ab6761610000e5ebfdf40c1eab3c562e96522d02	69	canadian pop punk/canadian punk/canadian rock/modern rock/neon pop punk/pop punk/pop rock/	3630104
1040	Sinead O Connor	\N	https://i.scdn.co/image/ab6761610000e5eb973ffafbef7825fdaa2ae5c5	62	lilith/new wave pop/singer-songwriter/	1262803
1042	Siouxsie And The Banshees	\N	https://i.scdn.co/image/ab6761610000e5eb924bb9e7396ad3bc32cfeab0	58	alternative rock/dream pop/new romantic/new wave/post-punk/punk/uk post-punk/	1144441
1044	Skid Row	\N	https://i.scdn.co/image/ab6761610000e5eb59fe65d4b1e00e486f285167	65	album rock/glam metal/hard rock/metal/rock/	2830271
1045	Skiller	\N	https://i.scdn.co/image/ab6761610000e5eb21a7fcb28b16068ac7e7680a	74	alternative metal/christian alternative rock/christian music/christian rock/	5213735
1046	Skillet	\N	https://i.scdn.co/image/ab6761610000e5eb21a7fcb28b16068ac7e7680a	74	alternative metal/christian alternative rock/christian music/christian rock/	5213735
1048	Sky	\N	https://i.scdn.co/image/ab6761610000e5ebc18bb1ef1dd5beceb0f5ca74	34	brazilian punk/	67760
1050	Skyrider	\N	https://i.scdn.co/image/ab67616d0000b27300acfcbdf27914f26cfb1bbe	0		136
1051	Slash	\N	https://i.scdn.co/image/ab6761610000e5eb16bbce3d5fb8a51e7cc3dce0	58	hard rock/rock/	3111677
1052	Slaughter	\N	https://i.scdn.co/image/ab6761610000e5eb8788bf2ce353a14ede7e7307	59	russian metal/russian metalcore/slamming deathcore/	742671
1053	Slayer	\N	https://i.scdn.co/image/8c81130db7b5f933412c4906c30327817f1e1b43	66	alternative metal/death metal/groove metal/hard rock/metal/old school thrash/rock/speed metal/thrash metal/	4000595
1056	Smashing Pumpkins	\N	https://i.scdn.co/image/ab6761610000e5eb86bd93938c4811d1f94adf9f	73	alternative metal/alternative rock/grunge/permanent wave/rock/spacegrunge/	5214476
1057	Snow Patrol	\N	https://i.scdn.co/image/ab6761610000e5eb9b328846dc38b0a620da1ce2	69	irish rock/modern rock/neo mellow/permanent wave/pop rock/	3025988
1058	Snowy White	\N	https://i.scdn.co/image/2ed93c025bc87cbf04c92a48506d7326c14ed024	54	british blues/	105712
1059	Social Distortion	\N	https://i.scdn.co/image/ab6761610000e5eb233cfb91e84bc512c6456fde	54	punk/punk 'n' roll/skate punk/socal pop punk/	645948
1060	Soda Stereo	\N	https://i.scdn.co/image/ab6761610000e5eb4a6d2f5e161c011cdb9cef69	75	argentine rock/latin alternative/latin rock/post-punk argentina/rock en espanol/ska argentino/	8861088
1062	Sonata Arctica	\N	https://i.scdn.co/image/ab6761610000e5eb3c36e8b69cb376bf869aedc2	52	finnish power metal/gothic symphonic metal/lapland metal/metal/power metal/progressive metal/symphonic metal/	620365
1063	Sonic Youth	\N	https://i.scdn.co/image/af335c11a73e9311516bb28800be58311410d1be	57	alternative rock/noise pop/noise rock/rock/shoegaze/	1196773
1064	Soul Asylum	\N	https://i.scdn.co/image/ab6761610000e5eb0a6ab0c900faf7160d02cbe7	55	alternative rock/grunge/permanent wave/pop rock/post-grunge/	626865
1067	Soulrushmuzic SV LACEY	\N	https://i.scdn.co/image/ab6761610000e5eb6f46a72a60ca1f10d870183f	37	trap carioca/	3653
1068	Soundgarden	\N	https://i.scdn.co/image/ab6761610000e5ebafa254b2a224584485286526	68	alternative metal/alternative rock/classic rock/grunge/hard rock/nu metal/rock/	4470097
1070	Speck	\N	https://i.scdn.co/image/ab67616d0000b273a0217a99fc4d22a23f332b66	6		277
1072	Spinal Tap	\N	https://i.scdn.co/image/cf1963bbbb3a059bf5051dce5c3706ffa2205632	29	comic/comic metal/parody/	44459
1071	Spin Doctors	\N	https://i.scdn.co/image/ab6761610000e5eb407e011fe4e9100c670c0074	60	pop rock/post-grunge/	675896
1074	Squeeze	\N	https://i.scdn.co/image/ab6761610000e5ebca2593dd5b5fb2ceb020091e	52	beatlesque/new romantic/new wave/new wave pop/power pop/sophisti-pop/	321364
1075	Staind	\N	https://i.scdn.co/image/ab6761610000e5eba43eff361de1d811e2d17adb	66	alternative metal/nu metal/post-grunge/	2581942
1077	Starship	\N	https://i.scdn.co/image/db74da1373e8962671878aa692ce010e7dd4816a	66	album rock/classic rock/mellow gold/new romantic/new wave pop/soft rock/synthpop/	1101639
1078	Static X	\N	https://i.scdn.co/image/ab6761610000e5eb7f4a72d9541571d430c157c7	58	alternative metal/industrial metal/industrial rock/nu metal/post-grunge/rap metal/	1468175
1080	Steel Dragon	\N	https://i.scdn.co/image/ab67616d0000b273e45afd46f0e07d68fe172bf0	15		11467
1081	Steely Dan	\N	https://i.scdn.co/image/9d01e4e9aac39b891d684d3d1a5b3a451d7c72bd	68	album rock/classic rock/country rock/folk rock/mellow gold/rock/soft rock/yacht rock/	2271282
1083	Steive Ray Vaughan	\N	https://i.scdn.co/image/1de60c936683320769a1bfb6fba7f75902859085	62	album rock/blues/blues rock/classic rock/electric blues/hard rock/instrumental rock/rock/texas blues/	2486662
1084	Steppenwolf	\N	https://i.scdn.co/image/8208d86ed91c50bc9ffbf8f436c6e323e6bda480	62	acid rock/album rock/blues rock/classic canadian rock/classic rock/hard rock/proto-metal/rock/singer-songwriter/soft rock/	1619302
1086	Sterns	\N	https://i.scdn.co/image/ab6761610000e5ebd841711ead124ae7cbf5916f	41	kindermusik/sleep/	12343
1087	Steve Miller	\N	https://i.scdn.co/image/ab6761610000e5eb624ddceb90bdf808ed4e2e35	68	album rock/classic rock/hard rock/heartland rock/mellow gold/rock/singer-songwriter/soft rock/	3055863
1088	Steve Miller Band	\N	https://i.scdn.co/image/ab6761610000e5eb624ddceb90bdf808ed4e2e35	68	album rock/classic rock/hard rock/heartland rock/mellow gold/rock/singer-songwriter/soft rock/	3055863
1093	Steven Wilson	\N	https://i.scdn.co/image/ab6761610000e5eb8bdeba42711b0e81a6d1504b	47	progressive metal/progressive rock/	400326
1091	Steve Stevens	\N	https://i.scdn.co/image/ab6761610000e5ebb80dd6b23c5c04d62d9aa0c6	70	art pop/baroque pop/chamber pop/indie pop/indie rock/singer-songwriter/	2066467
1092	Steve Winwood	\N	https://i.scdn.co/image/8a6cfe2373a091c0041b2bae6e576e395944eacd	58	album rock/classic rock/folk rock/mellow gold/new wave pop/singer-songwriter/soft rock/	1053195
1095	Stevie Ray Vaughan	\N	https://i.scdn.co/image/1de60c936683320769a1bfb6fba7f75902859085	62	album rock/blues/blues rock/classic rock/electric blues/hard rock/instrumental rock/rock/texas blues/	2486662
1096	Stevie Wonder	\N	https://i.scdn.co/image/c59faacbed7aa770266bad048660810eca204108	75	motown/soul/	6533192
1098	Stone Sour	\N	https://i.scdn.co/image/ab6761610000e5ebf4c48660e778eeea3d9f1c5b	63	alternative metal/nu metal/post-grunge/	2914840
1099	Stone Temple Pilots	\N	https://i.scdn.co/image/ab6761610000e5eb4bb64f87db255d76538b905f	68	alternative metal/alternative rock/classic rock/grunge/hard rock/nu metal/post-grunge/rock/	3553466
1100	Story Of The Year	\N	https://i.scdn.co/image/ab6761610000e5eb1ac582762e74510cfd6ef254	58	neon pop punk/pop punk/screamo/	509570
1101	Stratovarius	\N	https://i.scdn.co/image/ab6761610000e5eb9cb7969163fefa32596af056	55	finnish power metal/metal/neo classical metal/power metal/progressive metal/speed metal/symphonic metal/	664225
1103	Strokes	\N	https://i.scdn.co/image/ab6761610000e5ebc3b137793230f4043feb0089	76	alternative rock/garage rock/modern rock/permanent wave/rock/	5805148
1105	Sublime	\N	https://i.scdn.co/image/ab6761610000e5ebe726280500259dbdb97a8be4	73	rap rock/reggae fusion/ska mexicano/ska punk/	2922927
1106	Suicidal Tendencies	\N	https://i.scdn.co/image/ab6761610000e5eb34e9707779175a2453a1d786	54	alternative metal/california hardcore/crossover thrash/funk metal/hard rock/hardcore punk/metal/nu metal/old school thrash/punk/thrash metal/	742411
1107	Sum 41	\N	https://i.scdn.co/image/ab6761610000e5eb625af80b68ae4eb559c6c417	72	alternative metal/canadian pop punk/canadian punk/modern rock/pop punk/post-grunge/punk/rock/	3913232
1110	Supergrass	\N	https://i.scdn.co/image/ab6761610000e5eb07cb4c66b99dffbd82328366	58	alternative rock/britpop/oxford indie/	612703
1108	Super Kidd	\N	https://i.scdn.co/image/ab67616d0000b27324b4175de6bba94b1e5ef38c	0		9
1111	Supertramp	\N	https://i.scdn.co/image/eebed895cad509b17c7c6faf47f21f1fc35e8829	70	album rock/art rock/classic rock/glam rock/mellow gold/piano rock/progressive rock/rock/soft rock/symphonic rock/	3511802
1113	Sweet	\N	https://i.scdn.co/image/ab67616d0000b27314cb2fe05a983d59383b8558	12		9735
1114	Switchfoot	\N	https://i.scdn.co/image/ab6761610000e5eb1182ae93b58a17bc688564fb	59	ccm/christian alternative rock/christian music/	699471
1115	Symphony X	\N	https://i.scdn.co/image/ab6761610000e5eb54935264e9cf5607a3e98686	45	neo classical metal/power metal/progressive metal/progressive power metal/	271579
1119	Takayoshi Ohmura	\N	https://i.scdn.co/image/ab67616d0000b2735d1b1ecd08d55170060ad417	19	japanese power metal/	7536
1120	Take That	\N	https://i.scdn.co/image/ab6761610000e5eb9582eebc30b3c88fdceb6f75	64	boy band/europop/talent show/	1342968
1121	Talking Heads	\N	https://i.scdn.co/image/e4c5b04fce8706c87663357b1f78522a3a5c641b	69	alternative rock/art punk/dance rock/funk rock/new wave/permanent wave/post-punk/rock/zolo/	2504599
1123	TATU	\N	https://i.scdn.co/image/ab6761610000e5ebc8bb15d091287d6ce663d430	62	dance pop/europop/girl group/	868191
1124	Taylor Swift	\N	https://i.scdn.co/image/ab6761610000e5ebe672b5f553298dcdccb0e676	100	pop/	118881296
1118	T bone Walker	\N	https://i.scdn.co/image/ec29e66fd349e5090f874921a7cd0bdb972212b3	45	blues/chicago blues/electric blues/jazz blues/texas blues/traditional blues/	208279
1125	Tears For Fears	\N	https://i.scdn.co/image/ab6761610000e5eb42ed2cb48c231f545a5a3dad	74	new romantic/new wave/new wave pop/permanent wave/rock/sophisti-pop/synthpop/	3539482
1127	Telephone	\N	https://i.scdn.co/image/548d81f4bca3dd363ce375e010b10d8eda61c815	53	chanson/french rock/	379166
1128	Temple Of The Dog	\N	https://i.scdn.co/image/ab6761610000e5ebf47df3543858204550cc19d3	54	alternative metal/alternative rock/grunge/hard rock/rock/supergroup/	1266102
1129	Ten Years After	\N	https://i.scdn.co/image/2c825769bc2470bf5aaf04a5991db4612298c5dd	55	blues rock/british blues/classic rock/progressive rock/psychedelic rock/	557714
1131	Territory	\N	https://i.scdn.co/image/ab6761610000e5eb716f574b796045f28ce4f4f3	60	alternative metal/brazilian groove metal/brazilian metal/brazilian thrash metal/death metal/deathrash/groove metal/hard rock/latin metal/metal/metal mineiro/nu metal/old school thrash/speed metal/thrash metal/	1991696
1132	Tesla	\N	https://i.scdn.co/image/ab6761610000e5ebe1b45ffd19de80ecb7d086b7	52	album rock/glam metal/hard rock/sacramento indie/	952641
1133	Testament	\N	https://i.scdn.co/image/ab6761610000e5eb450264e732bd079570260538	59	alternative metal/groove metal/hard rock/metal/old school thrash/thrash metal/	1098138
1135	The Animals	\N	https://i.scdn.co/image/ab6761610000e5eb3ce1e2a99cffc7c662938b01	65	album rock/british invasion/classic rock/hard rock/protopunk/psychedelic rock/rock/	2437894
1136	The Answer	\N	https://i.scdn.co/image/ab6761610000e5ebf299f014b3b437122cf97d2b	26	deep melodic hard rock/modern hard rock/nwocr/	42496
1137	The Archies	\N	https://i.scdn.co/image/ab67616d0000b273fbc98da6995bb0a504ed363d	57	bubblegum pop/classic canadian rock/rock-and-roll/	144409
1139	The Bags	\N	https://i.scdn.co/image/ab6761610000e5eb4691df69bc172ea4011b4ace	14	boston rock/	4111
1140	The Band	\N	https://i.scdn.co/image/750c386b0ca07258347328b68e171bfcc1addead	61	blues rock/classic canadian rock/classic rock/cosmic american/country rock/folk/folk rock/heartland rock/jam band/mellow gold/rock/roots rock/southern rock/swamp rock/	1121040
1160	The Eagles	\N	https://i.scdn.co/image/ab67616d0000b273c70684a5eba64c4e3c46df67	14	country rock/	41646
1142	The Black Crows	\N	https://i.scdn.co/image/ab6761610000e5eb791fd863f3e6d97157b9a0b1	60	album rock/blues rock/classic rock/electric blues/hard rock/jam band/rock/southern rock/	782083
1143	The Black Keys	\N	https://i.scdn.co/image/ab6761610000e5eb12a6369237c73c25794b6ed9	73	alternative rock/blues rock/garage rock/indie rock/indietronica/modern blues rock/modern rock/punk blues/rock/	4012455
1145	The Cab	\N	https://i.scdn.co/image/ff6eb786aff45ab50e9820fe39f359656640888e	54	neon pop punk/pop punk/vegas indie/	547746
1146	The Chevelles	\N	https://i.scdn.co/image/ab6761610000e5eb63a63eee9559c34a5863b7ad	6	modern power pop/power pop/underground power pop/	2000
1148	The Commitments	\N	https://i.scdn.co/image/ab67616d0000b2738e790709b9f3ce9dc731f49f	46		93392
1149	The Commodores	\N	https://i.scdn.co/image/ab6761610000e5eb21a213a4fe1a6f9b45d3f7f9	64	adult standards/disco/funk/mellow gold/motown/quiet storm/soft rock/soul/	1901397
1151	The Cranberries	\N	https://i.scdn.co/image/143c01f407ed64a4b3bcbc92d24c05ef80981251	76	irish rock/pop rock/rock/	4416889
1152	The Cult	\N	https://i.scdn.co/image/ab6761610000e5ebdf38241a863ac3fe6eeee047	58	album rock/hard rock/new wave/rock/	734446
1153	The Cure	\N	https://i.scdn.co/image/7ca743e822b80133971ccf5c70fcbd77a4f4f508	75	new wave/permanent wave/rock/uk post-punk/	5620384
1155	The Deftones	\N	https://i.scdn.co/image/ab67616d0000b27384b3e8b3833feb5f34332f71	42	dub/reggae/rocksteady/roots reggae/	93501
1157	The Doobie Brothers	\N	https://i.scdn.co/image/ab6761610000e5eb68a38c02f356fae44e7dd63b	69	album rock/classic rock/country rock/folk rock/mellow gold/rock/singer-songwriter/soft rock/yacht rock/	2549362
1158	The Doors	\N	https://i.scdn.co/image/ab6761610000e5eb440959e022afc20e819050bd	73	acid rock/album rock/classic rock/hard rock/psychedelic rock/rock/	8019867
1161	The Enemy	\N	https://i.scdn.co/image/ab67616d0000b273f82acb0f04905abf41bc044f	40	britpop/coventry indie/	145108
1162	The Every Brothers	\N	https://i.scdn.co/image/ab6761610000e5ebea4e50a3c95e9024bb990fb9	59	adult standards/folk rock/mellow gold/rock-and-roll/rockabilly/sunshine pop/	968211
1164	The Expendables	\N	https://i.scdn.co/image/ab6761610000e5ebe833cf6e2cd0a2149600798a	51	reggae rock/	248020
1166	The Floor Is Made Of Lava	\N	https://i.scdn.co/image/ab6761610000e5ebdd5cb3d78b2cdc95a998b163	22	danish alternative rock/danish rock/	12782
1168	The Guess Who	\N	https://i.scdn.co/image/ab6761610000e5eb468683d4f0caaa7939517741	55	album rock/classic canadian rock/classic rock/country rock/folk rock/hard rock/mellow gold/rock/singer-songwriter/soft rock/	736722
1169	The Hellacopters	\N	https://i.scdn.co/image/ab6761610000e5ebb78686144a2f642b143fbc1b	44	action rock/punk 'n' roll/swedish garage rock/	124269
1170	The Hives	\N	https://i.scdn.co/image/ab6761610000e5eb483be6edf9ba0ded3446c696	58	alternative rock/garage rock/garage rock revival/modern rock/rock/swedish garage rock/swedish hard rock/swedish indie rock/	825838
1172	The Human League	\N	https://i.scdn.co/image/ab6761610000e5eb2aeee2aea5a1a1e3b76b0501	62	new romantic/new wave/new wave pop/permanent wave/sophisti-pop/synthpop/	1155295
1173	The Janitors	\N	https://i.scdn.co/image/ab6761610000e5eb2b08173f727d8be234667a39	10	indie psychedelic rock/psych gaze/	2440
1174	The Jeff Healey Band	\N	https://i.scdn.co/image/ab6761610000e5ebbad8b44f716773daca9327af	44	blues/blues rock/canadian blues/country rock/electric blues/modern blues/	223488
1176	The Kingsmen	\N	https://i.scdn.co/image/7700cff2bbd6cb056e5de2cc3b5e6e0476f5a648	46	classic garage rock/	44281
1177	The Kinks	\N	https://i.scdn.co/image/ab6761610000e5eb81f4e878e8b959fa68f15322	65	album rock/art rock/british invasion/classic rock/folk rock/glam rock/protopunk/psychedelic rock/rock/singer-songwriter/	2609044
1178	The Knack	\N	https://i.scdn.co/image/3f5a283dfaf275c565879058920e5ec99f9833b5	55	album rock/classic rock/hard rock/mellow gold/new wave/new wave pop/power pop/soft rock/	248529
1180	The Kooks	\N	https://i.scdn.co/image/ab6761610000e5ebd263e0042b36fd357c8c7cdb	68	brighton indie/garage rock/modern rock/rock/	2560997
1182	The Mars Volta	\N	https://i.scdn.co/image/ab6761610000e5ebc1e9722c0564d96a92317ce4	50	el paso indie/garage rock/	665767
1223	Them Crooked Vultures	\N	https://i.scdn.co/image/7e78d34c33af8c3555f8eec0f8823cbde00ae2cc	51	alternative metal/alternative rock/modern blues rock/modern rock/supergroup/	589871
1183	The Monkees	\N	https://i.scdn.co/image/ab6761610000e5ebbdef7f178c9cf2e8d50cb9b9	64	album rock/beatlesque/bubblegum pop/classic rock/folk rock/mellow gold/rock/rock-and-roll/singer-songwriter/soft rock/sunshine pop/	1214563
1184	The Mother Hips	\N	https://i.scdn.co/image/ab6761610000e5ebf61ee10f3ef9e75ad1481a4a	25	bay area indie/western americana/	12983
1186	The Muffs	\N	https://i.scdn.co/image/ab6772690000c46c7babd1874ba16b41cc6de32b	37	alternative pop/power-pop punk/riot grrrl/	50599
1225	Thenewno2	\N	https://i.scdn.co/image/67da6e96938867b101254bb9c775552afab1fced	20	beatlesque/electronic rock/	7905
1226	Theory Of A Deadman	\N	https://i.scdn.co/image/ab6761610000e5eb6cff6acc48314698c7d9ce87	63	alternative metal/canadian metal/canadian rock/nu metal/post-grunge/	2134507
1188	The Pixies	\N	https://i.scdn.co/image/ab6761610000e5eb2063f23f293f011102f677c7	70	alternative rock/boston rock/permanent wave/rock/	3036962
1189	The Police	\N	https://i.scdn.co/image/1f73a61faca2942cd5ea29c2143184db8645f0b3	77	album rock/classic rock/permanent wave/rock/	6251865
1190	The Pretenders	\N	https://i.scdn.co/image/ab6761610000e5ebe1e579234621464c62c08f63	62	album rock/classic rock/mellow gold/new romantic/new wave/new wave pop/permanent wave/rock/soft rock/	1527707
1192	The Primitives	\N	https://i.scdn.co/image/ab6761610000e5eb51f06cc5c19cd028e57828c6	40	britpop/c86/candy pop/	40132
1193	The Raconteurs	\N	https://i.scdn.co/image/1b222f51466c099834dfde3b8648d61e2fb82678	55	alternative rock/garage rock/garage rock revival/indie rock/modern blues rock/modern rock/rock/supergroup/	904393
1195	The Refreshments	\N	https://i.scdn.co/image/67c4575516d32ff0f18634e7a8739b491e79d226	37	tempe indie/	19039
1196	The Rolling Stones	\N	https://i.scdn.co/image/ab6761610000e5ebe4cea917b68726aadb4854b8	79	album rock/british invasion/classic rock/rock/	14293178
1197	The Romantics	\N	https://i.scdn.co/image/ab6761610000e5ebb39679d47a3857df9ad4a750	57	album rock/mellow gold/new romantic/new wave/new wave pop/power pop/soft rock/	427683
1200	The Sleeping	\N	https://i.scdn.co/image/ab6761610000e5eb1d28e9b516f6946e38b46e89	38		284
1201	The Slip	\N	https://i.scdn.co/image/76b9a8cfd080ab72323178c410201eb67f31f5a6	21		8601
1202	The Smiths	\N	https://i.scdn.co/image/481b980af463122013e4578c08fb8c5cbfaed1e9	78	madchester/new wave/permanent wave/rock/uk post-punk/	6143038
1204	The Stone Roses	\N	https://i.scdn.co/image/b402bab4eb25e953eef911e1fde6076e116ce0b2	61	britpop/dance rock/madchester/	1570075
1206	The Surfaris	\N	https://i.scdn.co/image/ab6761610000e5eb14d6f0fbdcc5a93fa0ea2716	44	surf music/	44189
1207	The Sword	\N	https://i.scdn.co/image/ab6761610000e5eb7294148e4f4637e31ecc88ca	47	austin metal/sludge metal/stoner metal/stoner rock/	226206
1209	The Temptations	\N	https://i.scdn.co/image/ab6761610000e5ebec212a39ffa4182a0fff4e3c	68	classic soul/disco/memphis soul/motown/soul/	2975704
1210	The Troggs	\N	https://i.scdn.co/image/be13aa2f252209f24469693dbef7050ec39d199c	48	british invasion/	295601
1211	The Tubes	\N	https://i.scdn.co/image/ab6761610000e5ebc645d75ea79ed9470c381855	42	album rock/new wave/synthpop/zolo/	102559
1212	The Turtles	\N	https://i.scdn.co/image/1065764f6bfae289f03651c9927dbd84eabae766	60	bubblegum pop/classic rock/folk rock/psychedelic rock/rock-and-roll/rockabilly/	625537
1215	The Verve	\N	https://i.scdn.co/image/94390c15f4b8ba12d111a0b166a5b2af4dd1d694	67	britpop/permanent wave/rock/shoegaze/	2375359
1216	The Vines	\N	https://i.scdn.co/image/760e4c55d45c4cd1912512c4e7cf317ea038fd92	50	alternative rock/dance-punk/garage rock/modern rock/	365900
1218	The WASP	\N	https://i.scdn.co/image/ab6761610000e5eb49d7dc4ff8a60d310b147ee6	0		37
1219	The White Stripes	\N	https://i.scdn.co/image/ab6761610000e5eb70cc06de8fc28226d4743cd9	71	alternative rock/blues rock/detroit rock/garage rock/modern blues rock/permanent wave/punk blues/rock/	3177982
1220	The Who	\N	https://i.scdn.co/image/9cd709cabb4a614b4f1dd9ec256a5f30e21f0150	67	album rock/british invasion/classic rock/hard rock/rock/	5420178
1222	The Wonders	\N	https://i.scdn.co/image/ab67616d0000b27374f11d9bfd76df870771cede	37	beatlesque/	8537
1227	Thin Lizzy	\N	https://i.scdn.co/image/cbebfb93be8c2ac47ef6b8a2186d11b3298abe49	61	album rock/blues rock/classic rock/glam metal/hard rock/irish rock/metal/rock/	1272137
1228	Third Eye Blind	\N	https://i.scdn.co/image/ab6761610000e5eb6b1e8135b0741308a3f38ded	66	alternative metal/alternative rock/pop rock/post-grunge/	1603658
1230	Three Days Grace	\N	https://i.scdn.co/image/ab6761610000e5eb3626be769b238e2a35010613	75	alternative metal/canadian metal/canadian rock/nu metal/post-grunge/rock/	6218213
1231	Three Dog Night	\N	https://i.scdn.co/image/aa4bb75d6dff8cbb79e790e370ee27a40b3a6cc9	57	album rock/classic rock/country rock/folk rock/hard rock/mellow gold/soft rock/	1012134
1233	Thrice	\N	https://i.scdn.co/image/ab6761610000e5eb6a29072c320c99c245fe24e2	55	post-hardcore/screamo/	463084
1234	Tiamat	\N	https://i.scdn.co/image/ab6761610000e5ebd1f9e61a31b195dd9c1efbc5	39	gothic metal/swedish death metal/swedish doom metal/swedish metal/symphonic black metal/	143649
1236	Tierra Santa	\N	https://i.scdn.co/image/ab6761610000e5eb8068925e80acacaf279d3cad	46	spanish metal/	348098
1237	Tinsley Ellis	\N	https://i.scdn.co/image/ab6761610000e5ebbc4b0d4cfd663d4b2f2a3c4d	38	blues/electric blues/memphis blues/modern blues/	48979
1240	Toadies	\N	https://i.scdn.co/image/ab6761610000e5ebcd37ff4e9d3db41f14f905e7	48	alternative rock/grunge/pop rock/post-grunge/	305355
1239	Toad The Wet Sprocket	\N	https://i.scdn.co/image/ab6761610000e5eb9f8c2c7d4d2bd3dfd6d074a7	49	pop rock/	352035
1241	Toby Keith	\N	https://i.scdn.co/image/ab6761610000e5eb1b6b9d83cfd806b328496207	72	classic oklahoma country/contemporary country/country/country road/	2509743
1245	Tommy Inkila	\N	https://i.scdn.co/image/ab6761610000e5eb0bed54b1f5dbe225bf322213	28	circuit/	15777
1243	Tom Petty And The Heartbreakers	\N	https://i.scdn.co/image/ab6761610000e5eb5523644ec269f1dd79808aff	69	album rock/classic rock/hard rock/heartland rock/mellow gold/rock/singer-songwriter/soft rock/	2815986
1247	Tone Loc	\N	https://i.scdn.co/image/da10ff1a63f5dc12b04649404c63aef6a83511c9	49	hip house/miami bass/	304581
1248	Tonic	\N	https://i.scdn.co/image/ab67616d0000b273ba4b1f2fc45d3ca0335c28fb	45	sertanejo/sertanejo tradicional/	409067
1249	Tony Burnett	\N	https://i.scdn.co/image/ab6761610000e5ebcd9641c8b449440a77ee19cc	60	adult standards/easy listening/lounge/vocal jazz/	944907
1251	Tool	\N	https://i.scdn.co/image/ab6761610000e5eb13f5472b709101616c87cba3	70	alternative metal/art rock/nu metal/post-grunge/progressive metal/progressive rock/rock/	3809071
1252	Toshiro Masuda	\N	https://i.scdn.co/image/ab67616d0000b273e2d37b6eff46fe8ba056fbbe	28		194
1253	Toto	\N	https://i.scdn.co/image/ab6761610000e5eba59a5bcab211f964fe9bfb06	76	album rock/classic rock/hard rock/mellow gold/rock/soft rock/yacht rock/	2997744
1254	Toxic Holocaust	\N	https://i.scdn.co/image/ab6761610000e5eb8f43c9184ba33172dbbe8ff2	38	black thrash/crossover thrash/death metal/metal/portland metal/speed metal/thrash metal/	150277
1256	Tracy Chapman	\N	https://i.scdn.co/image/965060777aeacb43659097cddc16b741785a508f	71	folk/lilith/singer-songwriter/women's music/	1796339
1258	Tragically Hip	\N	https://i.scdn.co/image/ab6761610000e5eb6b16fd0f4b339dadc3cf8562	60	canadian rock/kingston on indie/ontario indie/rock/	971410
1259	Train	\N	https://i.scdn.co/image/ab6761610000e5ebeb96a88993a929eaadbe4864	76	dance pop/neo mellow/pop/pop rock/	4282966
1261	Transatlantic	\N	https://i.scdn.co/image/ab6761610000e5eb24b13820b66eee8a5b6820fe	25	neo-progressive/progressive metal/progressive rock/symphonic rock/	53679
1262	Trapt	\N	https://i.scdn.co/image/ab6761610000e5eb403d2145e451b333a221bdcd	57	alternative metal/nu metal/post-grunge/	1110798
1263	Travis	\N	https://i.scdn.co/image/ab6761610000e5eb19c2790744c792d05570bb71	93	rap/slap house/	31865505
1117	T Rex	\N	https://i.scdn.co/image/ab6761610000e5eb442d3e951ecf7ec0c1f27fbb	61	classic rock/glam rock/protopunk/rock/singer-songwriter/	1076511
1266	Triumph	\N	https://i.scdn.co/image/8c921fd7257a10effa00ae4ae34ae98c5bc24699	46	album rock/canadian metal/classic canadian rock/classic rock/glam metal/hard rock/	488833
1267	Trivium	\N	https://i.scdn.co/image/ab6761610000e5ebb3a5f891ffd71672d0e99e26	61	alternative metal/groove metal/melodic metalcore/melodic thrash/metal/metalcore/nu metal/post-grunge/	1585869
1269	Troy Stetina	\N	https://i.scdn.co/image/ab6761610000e5ebb9b8864153b83ae8c1e9111e	2		1030
1270	Trust	\N	https://i.scdn.co/image/ab6761610000e5eb123e3e90ff5609920b893526	46	alabama metal/nu metal/post-grunge/	147767
1271	Tryo	\N	https://i.scdn.co/image/ab6761610000e5eba966dc882177b707c110aa4d	53	chanson/chanson virale/french pop/french reggae/french rock/	520187
1272	TV On The Radio	\N	https://i.scdn.co/image/b13e733ea4dad41a53bf1b4eedb8ba6ca8d3dc84	54	alternative dance/alternative rock/brooklyn indie/chamber pop/indie rock/indietronica/modern rock/neo-synthpop/	622710
1274	Twisted Sister	\N	https://i.scdn.co/image/758604f17b98e5db650adeebf9cf8cb55feda0f0	62	album rock/classic rock/glam metal/hard rock/metal/rock/	2691024
1276	U2	\N	https://i.scdn.co/image/ab6761610000e5eb76e8d4043d65d5b90dd620c6	77	irish rock/permanent wave/rock/	12414002
1277	U2 And BB King	\N	https://i.scdn.co/image/ffb3ff26238fe635a230bb0feb59dd0a5b209b6f	61	blues/blues rock/classic rock/electric blues/jazz blues/soul/soul blues/traditional blues/	2745502
1279	UFO	\N	https://i.scdn.co/image/f15893f87a3f460765776905100bb6ea17e3920c	54	album rock/glam metal/hard rock/metal/progressive rock/	581865
1280	Ugly Kid Joe	\N	https://i.scdn.co/image/ab6761610000e5eb8231c2f59f858d5bc886ce00	51	funk metal/funk rock/glam metal/hard rock/	280885
1281	Underoath	\N	https://i.scdn.co/image/ab6761610000e5ebbbd7c23baf6f0752d366c679	59	christian metal/christian metalcore/melodic metalcore/metalcore/pop punk/post-hardcore/screamo/tampa indie/	636364
1283	Uriah Heep	\N	https://i.scdn.co/image/ab6761610000e5eb48ffd76e54023401c6e98d90	49	album rock/blues rock/classic rock/hard rock/progressive rock/symphonic rock/	805367
1284	Vader	\N	https://i.scdn.co/image/ab6772690000c46c9d4cd3b704d5fdea23b0ea76	41	black metal/brutal death metal/death metal/deathgrind/deathrash/melodic death metal/metal/polish death metal/polish metal/polish thrash metal/speed metal/technical death metal/	239873
1287	Valient Thorr	\N	https://i.scdn.co/image/ab6761610000e5eb6fd7dd36dfc352c632504a65	20	north carolina metal/	17762
1289	Vampire Weekend	\N	https://i.scdn.co/image/ab6761610000e5eb0bb49b0b71ab3f5871860617	66	baroque pop/chamber pop/garage rock/indie rock/indietronica/modern rock/	1966126
1290	Van Halen	\N	https://i.scdn.co/image/ab6761610000e5ebd8475001d2700686e1008dfb	72	album rock/classic rock/hard rock/rock/	6137972
1291	Van Morrison	\N	https://i.scdn.co/image/ab6761610000e5eb5885f6c2d3ecf8e08bdfa472	75	classic rock/folk/folk rock/mellow gold/rock/singer-songwriter/soft rock/	3227735
1293	Velvet Revolver	\N	https://i.scdn.co/image/ab6761610000e5eb251aece71fda3df6a4232b72	52	alternative metal/alternative rock/glam metal/grunge/hard rock/nu metal/post-grunge/rock/supergroup/	1508645
1294	Versailles	\N	https://i.scdn.co/image/ab67616d0000b273ff8351800b39315096d7901a	38	j-metal/japanese power metal/visual kei/	112191
1297	Vince Gill	\N	https://i.scdn.co/image/ab6761610000e5ebbedd4fb3d79d6cfd9d3fe534	60	classic oklahoma country/country/country road/	606221
1298	Vinnie Moore	\N	https://i.scdn.co/image/ab67616d0000b273948855af4c3f2d2b8934af98	30	instrumental rock/neo classical metal/shred/	79972
1300	Walter Giardino	\N	https://i.scdn.co/image/ab67616d0000b2735bebc1f9bb5a41d42f36682e	28	argentine heavy metal/latin metal/	36472
1301	Wang Chung	\N	https://i.scdn.co/image/39232453a7665ba95cbd4fc33482b191fb40413b	53	new romantic/new wave pop/synthpop/	343542
1303	Warrant	\N	https://i.scdn.co/image/ab6761610000e5ebca93371adcc6ab1e92497687	55	album rock/glam metal/hard rock/	1272518
1304	Warren Zevon	\N	https://i.scdn.co/image/ab6761610000e5ebb4cae47fc78b0461cb81a009	54	country rock/folk/folk rock/piano rock/roots rock/singer-songwriter/	415761
1305	Weezer	\N	https://i.scdn.co/image/ab6761610000e5eb3cd35451daa1b690cfbbb2d4	74	alternative rock/modern power pop/modern rock/permanent wave/rock/	3719153
1307	Whiskeytown	\N	https://i.scdn.co/image/d4464162f1d8ea65e602e876917de670db8ba6d5	38	alternative country/roots rock/	76952
1308	White Lion	\N	https://i.scdn.co/image/6fd204dd44efc6645c3e13a1aaa3ce43b65b17d5	52	album rock/glam metal/hard rock/	928593
1309	White Snake	\N	https://i.scdn.co/image/ab6761610000e5eb1cc545458190efc44f48035f	63	album rock/british blues/classic rock/glam metal/hard rock/metal/rock/	3006474
1310	White Zombie	\N	https://i.scdn.co/image/1c693c0c08a4ef35cb855e499e0f7fe6a768b8cb	56	alternative metal/hard rock/industrial metal/nu metal/post-grunge/rap metal/rock/	1252774
1312	Willie Nelson	\N	https://i.scdn.co/image/ab6772690000c46ca07b9db029b749adaba3c618	71	classic country pop/classic texas country/country/country rock/nashville sound/outlaw country/singer-songwriter/	2268320
1314	Winger	\N	https://i.scdn.co/image/ab6761610000e5ebf998e2c0e84bc99abf4b6061	50	album rock/glam metal/hard rock/	514218
1315	Wings	\N	https://i.scdn.co/image/826d206c73f95f1353383c17f27f22aeb628369a	64	album rock/art rock/classic rock/folk rock/mellow gold/rock/singer-songwriter/soft rock/	1099351
1316	Wintersun	\N	https://i.scdn.co/image/5fd7a5ec182b1c4f19ac3fa08aae8afb022cb71d	42	finnish death metal/finnish melodeath/finnish metal/finnish power metal/finnish progressive metal/folk metal/melodic death metal/metal/power metal/symphonic death metal/symphonic metal/viking metal/	207773
1318	Wolfmother	\N	https://i.scdn.co/image/ab6761610000e5ebcd2f1d977a146da9a24d9de5	58	alternative rock/australian psych/garage rock/modern blues rock/modern rock/rock/	953346
1320	X	\N	https://i.scdn.co/image/ab6761610000e5eb450f7ba269d8a1ac6729081e	72	k-pop girl group/	1624099
1321	XYZ	\N	https://i.scdn.co/image/ab67616d0000b273c45a2ebc0439d1eb5cb22395	37	glam metal/	20905
1322	Yeah Yeah Yeahs	\N	https://i.scdn.co/image/ab6761610000e5eb0185e7016121628470a1b73b	64	alternative dance/alternative rock/art pop/dance-punk/garage rock/indie rock/modern rock/neo-synthpop/new rave/	1322567
1324	Yes	\N	https://i.scdn.co/image/ab6761610000e5eb59869e454c43c15971b3f480	60	album rock/art rock/classic rock/hard rock/progressive rock/rock/soft rock/symphonic rock/	1916968
1325	Yngwie Malmsteen	\N	https://i.scdn.co/image/ab6761610000e5eb7f0176061c3845bcfc2deeb7	48	glam metal/hard rock/instrumental rock/metal/metal guitar/neo classical metal/shred/swedish hard rock/	432844
1326	Yoko Kanno	\N	https://i.scdn.co/image/ab6761610000e5ebd2f58e58b59f8d617bd13de9	40	anime score/japanese classical/japanese soundtrack/japanese vgm/	124891
1328	Yucatan A Go Go	\N	https://i.scdn.co/image/ab6761610000e5ebe82f8e1843cf496428c404cd	19	latin alternative/mexican rock/	42342
1329	Zoe	\N	https://i.scdn.co/image/ab6761610000e5eb6a0dca659f59af9a560f5030	60	adoracao/brazilian gospel/rock gospel brasileiro/	1488513
1331	ZZ Top	\N	https://i.scdn.co/image/ab6772690000c46ca56aa897505a21aebecf7ea3	71	album rock/blues rock/classic rock/hard rock/rock/	4435592
23	10CC	\N	https://i.scdn.co/image/bd85e05d8bb8ad24515a232174cbe20925048566	59	album rock/art rock/classic rock/glam rock/mellow gold/new romantic/soft rock/symphonic rock/yacht rock/	724645
230	Bunny Knutson	\N	\N	0	\N	0
861	Not Sorted yet	\N	\N	0	\N	0
1295	Vesuvius	\N	\N	0	\N	0
724	LA Slum Lords	\N	\N	0	\N	0
327	Darrell Tetar	\N	\N	0	\N	0
272	Chris Impellitteri	\N	\N	0	\N	0
896	Paul Fontanet	\N	\N	0	\N	0
1066	Soulrushmuzic Stephen V Lacey	\N	\N	0	\N	0
877	Ounce Of Self	\N	\N	0	\N	0
379	DJ Ashba	\N	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvhU0Y_PX6dBslSddxpox3agbNT_N-eYtC1gd7F1khObCUwfVp	90	rock	27614591
\.


--
-- Data for Name: songs_song; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.songs_song (id, title, gender, file_path, artist_id) FROM stdin;
21	Im Not In Love	\N	media/songs/10-CC/Im-Not-In-Love.mp3	23
22	Wasteland	\N	media/songs/10-Years/Wasteland.mp3	24
23	Euphoriac Intrances	\N	media/songs/100ft-Snowman/Euphoriac-Intrances.mp3	25
24	Away From The Sun	\N	media/songs/3-Doors-Down/Away-From-The-Sun.mp3	26
25	Away From The Sun v2	\N	media/songs/3-Doors-Down/Away-From-The-Sun-v2.mp3	26
26	Away From The Sun v3	\N	media/songs/3-Doors-Down/Away-From-The-Sun-v3.mp3	26
27	Duck And Run	\N	media/songs/3-Doors-Down/Duck-And-Run.mp3	26
28	Going Down In Flames	\N	media/songs/3-Doors-Down/Going-Down-In-Flames.mp3	26
29	Here Without You	\N	media/songs/3-Doors-Down/Here-Without-You.mp3	26
30	Here Without You v2	\N	media/songs/3-Doors-Down/Here-Without-You-v2.mp3	26
31	Here Without You v3	\N	media/songs/3-Doors-Down/Here-Without-You-v3.mp3	26
32	Here Without You v4	\N	media/songs/3-Doors-Down/Here-Without-You-v4.mp3	26
33	Its Not My Time	\N	media/songs/3-Doors-Down/Its-Not-My-Time.mp3	26
34	Kryptonite	\N	media/songs/3-Doors-Down/Kryptonite.mp3	26
35	Kryptonite v2	\N	media/songs/3-Doors-Down/Kryptonite-v2.mp3	26
36	Kryptonite v3	\N	media/songs/3-Doors-Down/Kryptonite-v3.mp3	26
37	Kryptonite v4	\N	media/songs/3-Doors-Down/Kryptonite-v4.mp3	26
38	Landing In London	\N	media/songs/3-Doors-Down/Landing-In-London.mp3	26
39	Sarah Yellin	\N	media/songs/3-Doors-Down/Sarah-Yellin.mp3	26
40	When Im Gone	\N	media/songs/3-Doors-Down/When-Im-Gone.mp3	26
41	When Im Gone v2	\N	media/songs/3-Doors-Down/When-Im-Gone-v2.mp3	26
42	When Im Gone v3	\N	media/songs/3-Doors-Down/When-Im-Gone-v3.mp3	26
43	When Im Gone v4	\N	media/songs/3-Doors-Down/When-Im-Gone-v4.mp3	26
44	Beautiful Disaster	\N	media/songs/311/Beautiful-Disaster.mp3	27
45	Bloodwork	\N	media/songs/36-Crazyfists/Bloodwork.mp3	28
46	Slit Wrist Theory	\N	media/songs/36-Crazyfists/Slit-Wrist-Theory.mp3	28
47	Turns To Ashes	\N	media/songs/36-Crazyfists/Turns-To-Ashes.mp3	28
48	Caught Up In You	\N	media/songs/38-Special/Caught-Up-In-You.mp3	29
49	Hold On Loosely	\N	media/songs/38-Special/Hold-On-Loosely.mp3	29
50	Hold On Loosely v2	\N	media/songs/38-Special/Hold-On-Loosely-v2.mp3	29
51	Hold On Loosely v3	\N	media/songs/38-Special/Hold-On-Loosely-v3.mp3	29
52	Hold On Loosely v4	\N	media/songs/38-Special/Hold-On-Loosely-v4.mp3	29
53	Honky Tonk Dancer	\N	media/songs/38-Special/Honky-Tonk-Dancer.mp3	29
54	Just Cant Leave You Alone	\N	media/songs/38-Special/Just-Cant-Leave-You-Alone.mp3	29
55	Robin Hood	\N	media/songs/38-Special/Robin-Hood.mp3	29
56	2nd Sucks	\N	media/songs/A-Day-To-Remember/2nd-Sucks.mp3	30
57	All I Want	\N	media/songs/A-Day-To-Remember/All-I-Want.mp3	30
58	All I Want v2	\N	media/songs/A-Day-To-Remember/All-I-Want-v2.mp3	30
59	Nj Legion Iced Tea	\N	media/songs/A-Day-To-Remember/Nj-Legion-Iced-Tea.mp3	30
60	The Downfall Of Us All	\N	media/songs/A-Day-To-Remember/The-Downfall-Of-Us-All.mp3	30
61	3 Libras	\N	media/songs/A-Perfect-Circle/3-Libras.mp3	31
62	3 Libras v2	\N	media/songs/A-Perfect-Circle/3-Libras-v2.mp3	31
63	Judith	\N	media/songs/A-Perfect-Circle/Judith.mp3	31
64	Judith v2	\N	media/songs/A-Perfect-Circle/Judith-v2.mp3	31
65	Orestes	\N	media/songs/A-Perfect-Circle/Orestes.mp3	31
66	Orestes v2	\N	media/songs/A-Perfect-Circle/Orestes-v2.mp3	31
67	Outsider	\N	media/songs/A-Perfect-Circle/Outsider.mp3	31
68	The Outsider	\N	media/songs/A-Perfect-Circle/The-Outsider.mp3	31
69	The Outsider v2	\N	media/songs/A-Perfect-Circle/The-Outsider-v2.mp3	31
70	Nightmares Win 6 0	\N	media/songs/A-Static-Lullaby/Nightmares-Win-6-0.mp3	32
71	Toxic	\N	media/songs/A-Static-Lullaby/Toxic.mp3	32
72	Take On Me	\N	media/songs/A-Ha/Take-On-Me.mp3	33
73	Mamma Mia	\N	media/songs/ABBA/Mamma-Mia.mp3	34
74	Waterloo	\N	media/songs/ABBA/Waterloo.mp3	34
75	Visions	\N	media/songs/Abnormality/Visions.mp3	35
76	Balls To The Wall	\N	media/songs/Accept/Balls-To-The-Wall.mp3	36
77	Balls To The Wall v2	\N	media/songs/Accept/Balls-To-The-Wall-v2.mp3	36
78	Balls To The Wall v3	\N	media/songs/Accept/Balls-To-The-Wall-v3.mp3	36
79	Fast As A Shark	\N	media/songs/Accept/Fast-As-A-Shark.mp3	36
80	Head Over Heels	\N	media/songs/Accept/Head-Over-Heels.mp3	36
81	Metal Heart	\N	media/songs/Accept/Metal-Heart.mp3	36
82	Metal Heart v2	\N	media/songs/Accept/Metal-Heart-v2.mp3	36
83	Midnight Mover	\N	media/songs/Accept/Midnight-Mover.mp3	36
84	Restless And Wild	\N	media/songs/Accept/Restless-And-Wild.mp3	36
85	Teutonic Terror	\N	media/songs/Accept/Teutonic-Terror.mp3	36
86	Teutonic Terror v2	\N	media/songs/Accept/Teutonic-Terror-v2.mp3	36
87	Rip It Out	\N	media/songs/Ace-Frehley/Rip-It-Out.mp3	37
88	Call Out	\N	media/songs/Acro-Brats/Call-Out.mp3	38
89	Rolling In The Deep	\N	media/songs/Adele/Rolling-In-The-Deep.mp3	39
90	Adams Apple	\N	media/songs/Aerosmith/Adams-Apple.mp3	40
91	Amazing	\N	media/songs/Aerosmith/Amazing.mp3	40
92	Amazing v2	\N	media/songs/Aerosmith/Amazing-v2.mp3	40
93	Amazing v3	\N	media/songs/Aerosmith/Amazing-v3.mp3	40
94	Back In The Saddle	\N	media/songs/Aerosmith/Back-In-The-Saddle.mp3	40
95	Back In The Saddle v2	\N	media/songs/Aerosmith/Back-In-The-Saddle-v2.mp3	40
96	Beyond Beautiful	\N	media/songs/Aerosmith/Beyond-Beautiful.mp3	40
97	Big Ten Inch Record	\N	media/songs/Aerosmith/Big-Ten-Inch-Record.mp3	40
98	Bright Light Fright	\N	media/songs/Aerosmith/Bright-Light-Fright.mp3	40
99	Combination	\N	media/songs/Aerosmith/Combination.mp3	40
100	Crazy	\N	media/songs/Aerosmith/Crazy.mp3	40
101	Crazy v2	\N	media/songs/Aerosmith/Crazy-v2.mp3	40
102	Cryin	\N	media/songs/Aerosmith/Cryin.mp3	40
103	Cryin v2	\N	media/songs/Aerosmith/Cryin-v2.mp3	40
104	Draw The Line	\N	media/songs/Aerosmith/Draw-The-Line.mp3	40
105	Dream On	\N	media/songs/Aerosmith/Dream-On.mp3	40
106	Dream On v2	\N	media/songs/Aerosmith/Dream-On-v2.mp3	40
107	Dream On v3	\N	media/songs/Aerosmith/Dream-On-v3.mp3	40
108	Dream On v4	\N	media/songs/Aerosmith/Dream-On-v4.mp3	40
109	Dream On v5	\N	media/songs/Aerosmith/Dream-On-v5.mp3	40
110	Dude Looks Like A Lady	\N	media/songs/Aerosmith/Dude-Looks-Like-A-Lady.mp3	40
111	Dude Looks Like A Lady v2	\N	media/songs/Aerosmith/Dude-Looks-Like-A-Lady-v2.mp3	40
112	I Dont Want To Miss A Thing	\N	media/songs/Aerosmith/I-Dont-Want-To-Miss-A-Thing.mp3	40
113	King And Queens	\N	media/songs/Aerosmith/King-And-Queens.mp3	40
114	Last Child	\N	media/songs/Aerosmith/Last-Child.mp3	40
115	Let The Music Do The Talking	\N	media/songs/Aerosmith/Let-The-Music-Do-The-Talking.mp3	40
116	Livin On The Edge	\N	media/songs/Aerosmith/Livin-On-The-Edge.mp3	40
117	Livin On The Edge v2	\N	media/songs/Aerosmith/Livin-On-The-Edge-v2.mp3	40
118	Livin On The Edge v3	\N	media/songs/Aerosmith/Livin-On-The-Edge-v3.mp3	40
119	Lord Of The Thighs	\N	media/songs/Aerosmith/Lord-Of-The-Thighs.mp3	40
120	Love In An Elevator	\N	media/songs/Aerosmith/Love-In-An-Elevator.mp3	40
121	Love In An Elevator v2	\N	media/songs/Aerosmith/Love-In-An-Elevator-v2.mp3	40
122	Love In An Elevator v3	\N	media/songs/Aerosmith/Love-In-An-Elevator-v3.mp3	40
123	Love In An Elevator v4	\N	media/songs/Aerosmith/Love-In-An-Elevator-v4.mp3	40
124	Make It	\N	media/songs/Aerosmith/Make-It.mp3	40
125	Mama Kin	\N	media/songs/Aerosmith/Mama-Kin.mp3	40
126	Mama Kin v2	\N	media/songs/Aerosmith/Mama-Kin-v2.mp3	40
127	Movin Out	\N	media/songs/Aerosmith/Movin-Out.mp3	40
128	No Surprize	\N	media/songs/Aerosmith/No-Surprize.mp3	40
129	Nobodys Fault	\N	media/songs/Aerosmith/Nobodys-Fault.mp3	40
130	Pandoras Box	\N	media/songs/Aerosmith/Pandoras-Box.mp3	40
131	Pink	\N	media/songs/Aerosmith/Pink.mp3	40
132	Rag Doll	\N	media/songs/Aerosmith/Rag-Doll.mp3	40
133	Rag Doll v2	\N	media/songs/Aerosmith/Rag-Doll-v2.mp3	40
134	Rats In The Cellar	\N	media/songs/Aerosmith/Rats-In-The-Cellar.mp3	40
135	Rats In The Cellar v2	\N	media/songs/Aerosmith/Rats-In-The-Cellar-v2.mp3	40
136	Same Old Song And Dance	\N	media/songs/Aerosmith/Same-Old-Song-And-Dance.mp3	40
137	Same Old Song And Dance v2	\N	media/songs/Aerosmith/Same-Old-Song-And-Dance-v2.mp3	40
138	Same Old Song And Dance v3	\N	media/songs/Aerosmith/Same-Old-Song-And-Dance-v3.mp3	40
139	Sweet Emotion	\N	media/songs/Aerosmith/Sweet-Emotion.mp3	40
140	Sweet Emotion v2	\N	media/songs/Aerosmith/Sweet-Emotion-v2.mp3	40
141	Sweet Emotion v3	\N	media/songs/Aerosmith/Sweet-Emotion-v3.mp3	40
142	Toys In The Attic	\N	media/songs/Aerosmith/Toys-In-The-Attic.mp3	40
143	Toys In The Attic v2	\N	media/songs/Aerosmith/Toys-In-The-Attic-v2.mp3	40
144	Train Kept On Rollin	\N	media/songs/Aerosmith/Train-Kept-On-Rollin.mp3	40
145	Train Kept Rollin	\N	media/songs/Aerosmith/Train-Kept-Rollin.mp3	40
146	Train Kept Rollin v2	\N	media/songs/Aerosmith/Train-Kept-Rollin-v2.mp3	40
147	Uncle Salty	\N	media/songs/Aerosmith/Uncle-Salty.mp3	40
148	Walk This Way	\N	media/songs/Aerosmith/Walk-This-Way.mp3	40
149	Walk This Way v2	\N	media/songs/Aerosmith/Walk-This-Way-v2.mp3	40
150	Walk This Way v3	\N	media/songs/Aerosmith/Walk-This-Way-v3.mp3	40
151	Walk This Way v4	\N	media/songs/Aerosmith/Walk-This-Way-v4.mp3	40
152	Walk This Way v5	\N	media/songs/Aerosmith/Walk-This-Way-v5.mp3	40
153	Walk This Way v6	\N	media/songs/Aerosmith/Walk-This-Way-v6.mp3	40
154	Walking The Dog	\N	media/songs/Aerosmith/Walking-The-Dog.mp3	40
155	You Gotta Move	\N	media/songs/Aerosmith/You-Gotta-Move.mp3	40
156	Walk This Way	\N	media/songs/Aerosmith-And-Run-DMC/Walk-This-Way.mp3	41
157	Beautiful Thieves	\N	media/songs/Afi/Beautiful-Thieves.mp3	42
158	Carcinogen Crush	\N	media/songs/Afi/Carcinogen-Crush.mp3	42
159	Dancing Through Sunday	\N	media/songs/Afi/Dancing-Through-Sunday.mp3	42
160	Girls Not Grey	\N	media/songs/Afi/Girls-Not-Grey.mp3	42
161	Medicate	\N	media/songs/Afi/Medicate.mp3	42
162	Miss Murder	\N	media/songs/Afi/Miss-Murder.mp3	42
163	The Missing Frame	\N	media/songs/Afi/The-Missing-Frame.mp3	42
164	New Wave	\N	media/songs/Against-Me/New-Wave.mp3	43
165	Gasoline	\N	media/songs/Airborne-Toxic-Event/Gasoline.mp3	44
166	Runnin Wild	\N	media/songs/Airbourne/Runnin-Wild.mp3	45
167	Running Wild	\N	media/songs/Airbourne/Running-Wild.mp3	45
168	Too Much Too Young Too Fast	\N	media/songs/Airbourne/Too-Much-Too-Young-Too-Fast.mp3	45
169	Azzura	\N	media/songs/Al-Di-Meola/Azzura.mp3	46
170	Ritmo De La Noche	\N	media/songs/Al-Di-Meola/Ritmo-De-La-Noche.mp3	46
171	San Marco Moderna	\N	media/songs/Al-Di-Meola/San-Marco-Moderna.mp3	46
172	Christmas In Dixie	\N	media/songs/Alabama/Christmas-In-Dixie.mp3	47
173	Christmas In Dixie v2	\N	media/songs/Alabama/Christmas-In-Dixie-v2.mp3	47
174	La Nuit Je Mens	\N	media/songs/Alain-Bashung/La-Nuit-Je-Mens.mp3	48
175	Vertige De Lamour	\N	media/songs/Alain-Bashung/Vertige-De-Lamour.mp3	48
176	Chattahoochie	\N	media/songs/Alan-Jackson/Chattahoochie.mp3	49
177	Chattahoochie v2	\N	media/songs/Alan-Jackson/Chattahoochie-v2.mp3	49
178	Good Time	\N	media/songs/Alan-Jackson/Good-Time.mp3	49
179	Remember When	\N	media/songs/Alan-Jackson/Remember-When.mp3	49
180	Hand In My Pocket	\N	media/songs/Alanis-Morissette/Hand-In-My-Pocket.mp3	50
181	Hand In My Pocket v2	\N	media/songs/Alanis-Morissette/Hand-In-My-Pocket-v2.mp3	50
182	Joining You	\N	media/songs/Alanis-Morissette/Joining-You.mp3	50
183	You Oughta Know	\N	media/songs/Alanis-Morissette/You-Oughta-Know.mp3	50
184	Black Velvet	\N	media/songs/Alannah-Myles/Black-Velvet.mp3	51
185	Black Velvet v2	\N	media/songs/Alannah-Myles/Black-Velvet-v2.mp3	51
186	Albert King Style Backing	\N	media/songs/Albert-King/Albert-King-Style-Backing.mp3	52
187	Born Under A Bad Sign	\N	media/songs/Albert-King/Born-Under-A-Bad-Sign.mp3	52
188	Born Under A Bad Sign v2	\N	media/songs/Albert-King/Born-Under-A-Bad-Sign-v2.mp3	52
189	Born Under A Bad Sign v3	\N	media/songs/Albert-King/Born-Under-A-Bad-Sign-v3.mp3	52
190	Born Under A Bad Sign v4	\N	media/songs/Albert-King/Born-Under-A-Bad-Sign-v4.mp3	52
191	Born Under A Bad Sign v5	\N	media/songs/Albert-King/Born-Under-A-Bad-Sign-v5.mp3	52
192	Cant You See What Youre Doing To Me	\N	media/songs/Albert-King/Cant-You-See-What-Youre-Doing-To-Me.mp3	52
193	Cold Sweat	\N	media/songs/Albert-King/Cold-Sweat.mp3	52
194	Crosscut Saw	\N	media/songs/Albert-King/Crosscut-Saw.mp3	52
195	Killing Floor	\N	media/songs/Albert-King/Killing-Floor.mp3	52
196	Pop	\N	media/songs/Albert-King/Pop.mp3	52
197	The Hunter	\N	media/songs/Albert-King/The-Hunter.mp3	52
198	Youre Gonna Need Me	\N	media/songs/Albert-King/Youre-Gonna-Need-Me.mp3	52
199	Youre Gonna Need Me v2	\N	media/songs/Albert-King/Youre-Gonna-Need-Me-v2.mp3	52
200	Hiroshima Mon Amour	\N	media/songs/Alcatrazz/Hiroshima-Mon-Amour.mp3	53
201	Island In The Sun	\N	media/songs/Alcatrazz/Island-In-The-Sun.mp3	53
202	Jet To Jet	\N	media/songs/Alcatrazz/Jet-To-Jet.mp3	53
203	Happy As Larry	\N	media/songs/Alex-Hutchings/Happy-As-Larry.mp3	54
204	Young Cardinals	\N	media/songs/Alexisonfire/Young-Cardinals.mp3	55
205	Be My Lover	\N	media/songs/Alice-Cooper/Be-My-Lover.mp3	56
206	Billion Dollar Babies	\N	media/songs/Alice-Cooper/Billion-Dollar-Babies.mp3	56
207	Billion Dollar Babies v2	\N	media/songs/Alice-Cooper/Billion-Dollar-Babies-v2.mp3	56
208	Billion Dollar Babies v3	\N	media/songs/Alice-Cooper/Billion-Dollar-Babies-v3.mp3	56
209	Brutal Planet	\N	media/songs/Alice-Cooper/Brutal-Planet.mp3	56
210	Brutal Planet Live	\N	media/songs/Alice-Cooper/Brutal-Planet-Live.mp3	56
211	Caught In A Dream	\N	media/songs/Alice-Cooper/Caught-In-A-Dream.mp3	56
212	Elected	\N	media/songs/Alice-Cooper/Elected.mp3	56
213	Elected v2	\N	media/songs/Alice-Cooper/Elected-v2.mp3	56
214	Gimme	\N	media/songs/Alice-Cooper/Gimme.mp3	56
215	Im Eighteen	\N	media/songs/Alice-Cooper/Im-Eighteen.mp3	56
216	Im Eighteen v2	\N	media/songs/Alice-Cooper/Im-Eighteen-v2.mp3	56
217	Is It My Body	\N	media/songs/Alice-Cooper/Is-It-My-Body.mp3	56
218	Is It My Body v2	\N	media/songs/Alice-Cooper/Is-It-My-Body-v2.mp3	56
219	Muscle Of Love	\N	media/songs/Alice-Cooper/Muscle-Of-Love.mp3	56
220	No More Mr Nice Guy	\N	media/songs/Alice-Cooper/No-More-Mr-Nice-Guy.mp3	56
221	No More Mr Nice Guy v2	\N	media/songs/Alice-Cooper/No-More-Mr-Nice-Guy-v2.mp3	56
222	Only Women Bleed	\N	media/songs/Alice-Cooper/Only-Women-Bleed.mp3	56
223	Poison	\N	media/songs/Alice-Cooper/Poison.mp3	56
224	Poison v2	\N	media/songs/Alice-Cooper/Poison-v2.mp3	56
225	Poison v3	\N	media/songs/Alice-Cooper/Poison-v3.mp3	56
226	Schools Out	\N	media/songs/Alice-Cooper/Schools-Out.mp3	56
227	Schools Out v2	\N	media/songs/Alice-Cooper/Schools-Out-v2.mp3	56
228	Schools Out v3	\N	media/songs/Alice-Cooper/Schools-Out-v3.mp3	56
229	Schools Out v4	\N	media/songs/Alice-Cooper/Schools-Out-v4.mp3	56
230	Schools Out v5	\N	media/songs/Alice-Cooper/Schools-Out-v5.mp3	56
231	Welcome To My Nightmare	\N	media/songs/Alice-Cooper/Welcome-To-My-Nightmare.mp3	56
232	A Looking In View	\N	media/songs/Alice-In-Chains/A-Looking-In-View.mp3	57
233	A Looking In View v2	\N	media/songs/Alice-In-Chains/A-Looking-In-View-v2.mp3	57
234	Again	\N	media/songs/Alice-In-Chains/Again.mp3	57
235	Angry Chair	\N	media/songs/Alice-In-Chains/Angry-Chair.mp3	57
236	Angry Chair v2	\N	media/songs/Alice-In-Chains/Angry-Chair-v2.mp3	57
237	Dam That River	\N	media/songs/Alice-In-Chains/Dam-That-River.mp3	57
238	Dam The River	\N	media/songs/Alice-In-Chains/Dam-The-River.mp3	57
239	Down In A Hole	\N	media/songs/Alice-In-Chains/Down-In-A-Hole.mp3	57
240	Down In A Hole v2	\N	media/songs/Alice-In-Chains/Down-In-A-Hole-v2.mp3	57
241	Down In A Hole v3	\N	media/songs/Alice-In-Chains/Down-In-A-Hole-v3.mp3	57
242	Down In A Hole v4	\N	media/songs/Alice-In-Chains/Down-In-A-Hole-v4.mp3	57
243	Down In A Hole v5	\N	media/songs/Alice-In-Chains/Down-In-A-Hole-v5.mp3	57
244	Down In A Hole v6	\N	media/songs/Alice-In-Chains/Down-In-A-Hole-v6.mp3	57
245	Get Born Again	\N	media/songs/Alice-In-Chains/Get-Born-Again.mp3	57
246	Got Me Wrong	\N	media/songs/Alice-In-Chains/Got-Me-Wrong.mp3	57
247	Grind	\N	media/songs/Alice-In-Chains/Grind.mp3	57
248	Grind v2	\N	media/songs/Alice-In-Chains/Grind-v2.mp3	57
249	Grind v3	\N	media/songs/Alice-In-Chains/Grind-v3.mp3	57
250	Grind v4	\N	media/songs/Alice-In-Chains/Grind-v4.mp3	57
251	Heaven Beside You	\N	media/songs/Alice-In-Chains/Heaven-Beside-You.mp3	57
252	Heaven Beside You No Acoustic Guitars	\N	media/songs/Alice-In-Chains/Heaven-Beside-You-No-Acoustic-Guitars.mp3	57
253	Heaven Beside You v2	\N	media/songs/Alice-In-Chains/Heaven-Beside-You-v2.mp3	57
254	Heaven Beside You v3	\N	media/songs/Alice-In-Chains/Heaven-Beside-You-v3.mp3	57
255	I Stay Away	\N	media/songs/Alice-In-Chains/I-Stay-Away.mp3	57
256	I Stay Away v2	\N	media/songs/Alice-In-Chains/I-Stay-Away-v2.mp3	57
257	I Stay Away v3	\N	media/songs/Alice-In-Chains/I-Stay-Away-v3.mp3	57
258	I Stay Away v4	\N	media/songs/Alice-In-Chains/I-Stay-Away-v4.mp3	57
259	I Stay Away v5	\N	media/songs/Alice-In-Chains/I-Stay-Away-v5.mp3	57
260	I Stay Away v6	\N	media/songs/Alice-In-Chains/I-Stay-Away-v6.mp3	57
261	Last Of My Kind	\N	media/songs/Alice-In-Chains/Last-Of-My-Kind.mp3	57
262	Man In The Box	\N	media/songs/Alice-In-Chains/Man-In-The-Box.mp3	57
263	Man In The Box v2	\N	media/songs/Alice-In-Chains/Man-In-The-Box-v2.mp3	57
264	Man In The Box v3	\N	media/songs/Alice-In-Chains/Man-In-The-Box-v3.mp3	57
265	Man In The Box v4	\N	media/songs/Alice-In-Chains/Man-In-The-Box-v4.mp3	57
266	Man In The Box v5	\N	media/songs/Alice-In-Chains/Man-In-The-Box-v5.mp3	57
267	Man In The Box v6	\N	media/songs/Alice-In-Chains/Man-In-The-Box-v6.mp3	57
268	Man In The Box v7	\N	media/songs/Alice-In-Chains/Man-In-The-Box-v7.mp3	57
269	No Excuses	\N	media/songs/Alice-In-Chains/No-Excuses.mp3	57
270	No Excuses v2	\N	media/songs/Alice-In-Chains/No-Excuses-v2.mp3	57
271	No Excuses v3	\N	media/songs/Alice-In-Chains/No-Excuses-v3.mp3	57
272	Nutshell	\N	media/songs/Alice-In-Chains/Nutshell.mp3	57
273	Over Now	\N	media/songs/Alice-In-Chains/Over-Now.mp3	57
274	River Of Deceit	\N	media/songs/Alice-In-Chains/River-Of-Deceit.mp3	57
275	Sea Of Sorrow	\N	media/songs/Alice-In-Chains/Sea-Of-Sorrow.mp3	57
276	Sludge Factory	\N	media/songs/Alice-In-Chains/Sludge-Factory.mp3	57
277	Them Bones	\N	media/songs/Alice-In-Chains/Them-Bones.mp3	57
278	Them Bones v2	\N	media/songs/Alice-In-Chains/Them-Bones-v2.mp3	57
279	Them Bones v3	\N	media/songs/Alice-In-Chains/Them-Bones-v3.mp3	57
280	Them Bones v4	\N	media/songs/Alice-In-Chains/Them-Bones-v4.mp3	57
281	Them Bones v5	\N	media/songs/Alice-In-Chains/Them-Bones-v5.mp3	57
282	We Die Young	\N	media/songs/Alice-In-Chains/We-Die-Young.mp3	57
283	We Die Young v2	\N	media/songs/Alice-In-Chains/We-Die-Young-v2.mp3	57
284	Would	\N	media/songs/Alice-In-Chains/Would.mp3	57
285	Would v2	\N	media/songs/Alice-In-Chains/Would-v2.mp3	57
286	Would v3	\N	media/songs/Alice-In-Chains/Would-v3.mp3	57
287	Would v4	\N	media/songs/Alice-In-Chains/Would-v4.mp3	57
288	Would v5	\N	media/songs/Alice-In-Chains/Would-v5.mp3	57
289	Would v6	\N	media/songs/Alice-In-Chains/Would-v6.mp3	57
290	Would v7	\N	media/songs/Alice-In-Chains/Would-v7.mp3	57
291	Would v8	\N	media/songs/Alice-In-Chains/Would-v8.mp3	57
292	Your Decision	\N	media/songs/Alice-In-Chains/Your-Decision.mp3	57
293	Your Decision v2	\N	media/songs/Alice-In-Chains/Your-Decision-v2.mp3	57
294	Smooth Criminal	\N	media/songs/Alien-Ant-Farm/Smooth-Criminal.mp3	58
295	Smooth Criminal v2	\N	media/songs/Alien-Ant-Farm/Smooth-Criminal-v2.mp3	58
296	Smooth Criminal v3	\N	media/songs/Alien-Ant-Farm/Smooth-Criminal-v3.mp3	58
297	Armageddon	\N	media/songs/Alkaline-Trio/Armageddon.mp3	59
298	Dirty Little Secret	\N	media/songs/All-American-Rejects/Dirty-Little-Secret.mp3	60
299	Gives You Hell	\N	media/songs/All-American-Rejects/Gives-You-Hell.mp3	60
300	Move Along	\N	media/songs/All-American-Rejects/Move-Along.mp3	60
301	Real World	\N	media/songs/All-American-Rejects/Real-World.mp3	60
302	Swing Swing	\N	media/songs/All-American-Rejects/Swing-Swing.mp3	60
303	Swing Swing v2	\N	media/songs/All-American-Rejects/Swing-Swing-v2.mp3	60
304	Chiron	\N	media/songs/All-That-Remains/Chiron.mp3	61
305	Six	\N	media/songs/All-That-Remains/Six.mp3	61
306	Six v2	\N	media/songs/All-That-Remains/Six-v2.mp3	61
307	Tattered On My Sleeve	\N	media/songs/All-That-Remains/Tattered-On-My-Sleeve.mp3	61
308	The Air That I Breathe	\N	media/songs/All-That-Remains/The-Air-That-I-Breathe.mp3	61
309	The Air That I Breathe v2	\N	media/songs/All-That-Remains/The-Air-That-I-Breathe-v2.mp3	61
310	The Waiting One	\N	media/songs/All-That-Remains/The-Waiting-One.mp3	61
311	This Calling	\N	media/songs/All-That-Remains/This-Calling.mp3	61
312	Two Weeks	\N	media/songs/All-That-Remains/Two-Weeks.mp3	61
313	Whispers I Hear You	\N	media/songs/All-That-Remains/Whispers-I-Hear-You.mp3	61
314	Dear Maria	\N	media/songs/All-Time-Low/Dear-Maria.mp3	62
315	Dear Maria Count Me In	\N	media/songs/All-Time-Low/Dear-Maria-Count-Me-In.mp3	62
316	Dear Maria Count Me In v2	\N	media/songs/All-Time-Low/Dear-Maria-Count-Me-In-v2.mp3	62
317	Weightless	\N	media/songs/All-Time-Low/Weightless.mp3	62
318	Metal Fatigue	\N	media/songs/Allan-Holdsworth/Metal-Fatigue.mp3	63
319	Metal Fatigue v2	\N	media/songs/Allan-Holdsworth/Metal-Fatigue-v2.mp3	63
320	Road Games	\N	media/songs/Allan-Holdsworth/Road-Games.mp3	63
321	Blue Sky	\N	media/songs/Allman-Brothers/Blue-Sky.mp3	64
322	In Memory Of Elizabeth Reed	\N	media/songs/Allman-Brothers/In-Memory-Of-Elizabeth-Reed.mp3	64
323	Jessica	\N	media/songs/Allman-Brothers/Jessica.mp3	64
324	Jessica v2	\N	media/songs/Allman-Brothers/Jessica-v2.mp3	64
325	Jessica v3	\N	media/songs/Allman-Brothers/Jessica-v3.mp3	64
326	Jessica v4	\N	media/songs/Allman-Brothers/Jessica-v4.mp3	64
327	Melissa	\N	media/songs/Allman-Brothers/Melissa.mp3	64
328	One Way Out	\N	media/songs/Allman-Brothers/One-Way-Out.mp3	64
329	One Way Out v2	\N	media/songs/Allman-Brothers/One-Way-Out-v2.mp3	64
330	Ramblin Man	\N	media/songs/Allman-Brothers/Ramblin-Man.mp3	64
331	Ramblin Man v2	\N	media/songs/Allman-Brothers/Ramblin-Man-v2.mp3	64
332	Soulshine	\N	media/songs/Allman-Brothers/Soulshine.mp3	64
333	Statesboro Blues	\N	media/songs/Allman-Brothers/Statesboro-Blues.mp3	64
334	Statesboro Blues v2	\N	media/songs/Allman-Brothers/Statesboro-Blues-v2.mp3	64
335	Stormy Monday	\N	media/songs/Allman-Brothers/Stormy-Monday.mp3	64
336	Stormy Monday v2	\N	media/songs/Allman-Brothers/Stormy-Monday-v2.mp3	64
337	Stormy Monday v3	\N	media/songs/Allman-Brothers/Stormy-Monday-v3.mp3	64
338	Whipping Post	\N	media/songs/Allman-Brothers/Whipping-Post.mp3	64
339	Whipping Post v2	\N	media/songs/Allman-Brothers/Whipping-Post-v2.mp3	64
340	Whipping Post v3	\N	media/songs/Allman-Brothers/Whipping-Post-v3.mp3	64
341	Face Down	\N	media/songs/Alpha-Rev/Face-Down.mp3	65
342	Fascination	\N	media/songs/Alphabeat/Fascination.mp3	66
343	Buried Alive	\N	media/songs/Alter-Bridge/Buried-Alive.mp3	67
344	Come To Life	\N	media/songs/Alter-Bridge/Come-To-Life.mp3	67
345	Come To Life v2	\N	media/songs/Alter-Bridge/Come-To-Life-v2.mp3	67
346	Find The Real	\N	media/songs/Alter-Bridge/Find-The-Real.mp3	67
347	Open Your Eyes	\N	media/songs/Alter-Bridge/Open-Your-Eyes.mp3	67
348	Ties That Bind	\N	media/songs/Alter-Bridge/Ties-That-Bind.mp3	67
349	Like Whoa	\N	media/songs/Aly-And-AJ/Like-Whoa.mp3	68
350	Como Hablar	\N	media/songs/Amaral/Como-Hablar.mp3	69
351	Pursuit Of Vikings	\N	media/songs/Amon-Amarth/Pursuit-Of-Vikings.mp3	70
352	Twilight Of The Thunder God	\N	media/songs/Amon-Amarth/Twilight-Of-The-Thunder-God.mp3	70
353	Hey Joe	\N	media/songs/Amp-Fiddler/Hey-Joe.mp3	71
354	Back To Black	\N	media/songs/Amy-Winehouse/Back-To-Black.mp3	72
355	Rehab	\N	media/songs/Amy-Winehouse/Rehab.mp3	72
356	Rehab v2	\N	media/songs/Amy-Winehouse/Rehab-v2.mp3	72
357	Anything	\N	media/songs/An-Endless-Sporadic/Anything.mp3	73
358	From The Blue Point Of No Return The Triangular Race Through Space	\N	media/songs/An-Endless-Sporadic/From-The-Blue-Point-Of-No-Return-The-Triangular-Race-Through-Space.mp3	73
359	Impulse	\N	media/songs/An-Endless-Sporadic/Impulse.mp3	73
360	Mon Coeur Mon Amour	\N	media/songs/Anais/Mon-Coeur-Mon-Amour.mp3	74
361	Behind The Mask	\N	media/songs/Anarchy-Club/Behind-The-Mask.mp3	75
362	Blood Doll	\N	media/songs/Anarchy-Club/Blood-Doll.mp3	75
363	Collide	\N	media/songs/Anarchy-Club/Collide.mp3	75
364	Collide v2	\N	media/songs/Anarchy-Club/Collide-v2.mp3	75
365	Get Clean	\N	media/songs/Anarchy-Club/Get-Clean.mp3	75
366	Deep	\N	media/songs/Anathema/Deep.mp3	76
367	Forgotten Hopes	\N	media/songs/Anathema/Forgotten-Hopes.mp3	76
368	The Feel Good Drag	\N	media/songs/Anberlin/The-Feel-Good-Drag.mp3	77
369	The Feel Good Drag v2	\N	media/songs/Anberlin/The-Feel-Good-Drag-v2.mp3	77
370	Shine On Through	\N	media/songs/Andy-James/Shine-On-Through.mp3	78
371	A Night To Remember	\N	media/songs/Andy-Timmons/A-Night-To-Remember.mp3	79
372	A Night To Remember v2	\N	media/songs/Andy-Timmons/A-Night-To-Remember-v2.mp3	79
373	A Night To Remember v3	\N	media/songs/Andy-Timmons/A-Night-To-Remember-v3.mp3	79
374	Carpe Diem	\N	media/songs/Andy-Timmons/Carpe-Diem.mp3	79
375	Carpediem	\N	media/songs/Andy-Timmons/Carpediem.mp3	79
376	Cry For You	\N	media/songs/Andy-Timmons/Cry-For-You.mp3	79
377	Cry For You v2	\N	media/songs/Andy-Timmons/Cry-For-You-v2.mp3	79
378	Cry For You v3	\N	media/songs/Andy-Timmons/Cry-For-You-v3.mp3	79
379	Cry For You v4	\N	media/songs/Andy-Timmons/Cry-For-You-v4.mp3	79
380	Deliver Us	\N	media/songs/Andy-Timmons/Deliver-Us.mp3	79
381	Electric Gypsy	\N	media/songs/Andy-Timmons/Electric-Gypsy.mp3	79
382	Electric Gypsy v2	\N	media/songs/Andy-Timmons/Electric-Gypsy-v2.mp3	79
383	Gone	\N	media/songs/Andy-Timmons/Gone.mp3	79
384	Gone v2	\N	media/songs/Andy-Timmons/Gone-v2.mp3	79
385	Groove Or Die	\N	media/songs/Andy-Timmons/Groove-Or-Die.mp3	79
386	Groove Or Die v2	\N	media/songs/Andy-Timmons/Groove-Or-Die-v2.mp3	79
387	Groove Or Die v3	\N	media/songs/Andy-Timmons/Groove-Or-Die-v3.mp3	79
388	Its Getting Better	\N	media/songs/Andy-Timmons/Its-Getting-Better.mp3	79
389	Resolution	\N	media/songs/Andy-Timmons/Resolution.mp3	79
390	The Prayer The Answer	\N	media/songs/Andy-Timmons/The-Prayer-The-Answer.mp3	79
391	The Prayer The Answer v2	\N	media/songs/Andy-Timmons/The-Prayer-The-Answer-v2.mp3	79
392	The Spoken And The Unspoken	\N	media/songs/Andy-Timmons/The-Spoken-And-The-Unspoken.mp3	79
393	The Spoken And The Unspoken v2	\N	media/songs/Andy-Timmons/The-Spoken-And-The-Unspoken-v2.mp3	79
394	There Are No Words	\N	media/songs/Andy-Timmons/There-Are-No-Words.mp3	79
395	There Are No Words v2	\N	media/songs/Andy-Timmons/There-Are-No-Words-v2.mp3	79
396	Milk Cow Blues	\N	media/songs/Angela-Thomas-Wade/Milk-Cow-Blues.mp3	80
397	Adventure	\N	media/songs/Angels-And-Airwaves/Adventure.mp3	81
398	Everythings Magic	\N	media/songs/Angels-And-Airwaves/Everythings-Magic.mp3	81
399	It Hurts	\N	media/songs/Angels-And-Airwaves/It-Hurts.mp3	81
400	It Hurts v2	\N	media/songs/Angels-And-Airwaves/It-Hurts-v2.mp3	81
401	The Adventure	\N	media/songs/Angels-And-Airwaves/The-Adventure.mp3	81
402	Acid Rain	\N	media/songs/Angra/Acid-Rain.mp3	82
403	Acid Rain v2	\N	media/songs/Angra/Acid-Rain-v2.mp3	82
404	Bleeding Heart	\N	media/songs/Angra/Bleeding-Heart.mp3	82
405	Bleeding Heart v2	\N	media/songs/Angra/Bleeding-Heart-v2.mp3	82
406	Carry On	\N	media/songs/Angra/Carry-On.mp3	82
407	Carry On v2	\N	media/songs/Angra/Carry-On-v2.mp3	82
408	Carry On v3	\N	media/songs/Angra/Carry-On-v3.mp3	82
409	Evil Warning	\N	media/songs/Angra/Evil-Warning.mp3	82
410	Evil Warning v2	\N	media/songs/Angra/Evil-Warning-v2.mp3	82
411	Extreme Dream	\N	media/songs/Angra/Extreme-Dream.mp3	82
412	Extreme Dream v2	\N	media/songs/Angra/Extreme-Dream-v2.mp3	82
413	Heroes Of Sand	\N	media/songs/Angra/Heroes-Of-Sand.mp3	82
414	Kiko Loureiro Dream Circle	\N	media/songs/Angra/Kiko-Loureiro-Dream-Circle.mp3	82
415	Kiko Loureiro Dream Circle v2	\N	media/songs/Angra/Kiko-Loureiro-Dream-Circle-v2.mp3	82
416	Kiko Loureiro Dream Circle v3	\N	media/songs/Angra/Kiko-Loureiro-Dream-Circle-v3.mp3	82
417	Metal Icarus	\N	media/songs/Angra/Metal-Icarus.mp3	82
418	Metal Icarus v2	\N	media/songs/Angra/Metal-Icarus-v2.mp3	82
419	No Pain For The Dead	\N	media/songs/Angra/No-Pain-For-The-Dead.mp3	82
420	No Pain For The Dead v2	\N	media/songs/Angra/No-Pain-For-The-Dead-v2.mp3	82
421	Nothing To Say	\N	media/songs/Angra/Nothing-To-Say.mp3	82
422	Nothing To Say v2	\N	media/songs/Angra/Nothing-To-Say-v2.mp3	82
423	Nothing To Say v3	\N	media/songs/Angra/Nothing-To-Say-v3.mp3	82
424	Nova Era	\N	media/songs/Angra/Nova-Era.mp3	82
425	Nova Era v2	\N	media/songs/Angra/Nova-Era-v2.mp3	82
426	Nova Era v3	\N	media/songs/Angra/Nova-Era-v3.mp3	82
427	Rebirth	\N	media/songs/Angra/Rebirth.mp3	82
428	Rebirth v2	\N	media/songs/Angra/Rebirth-v2.mp3	82
429	Running Alone	\N	media/songs/Angra/Running-Alone.mp3	82
430	Speed	\N	media/songs/Angra/Speed.mp3	82
431	Speed v2	\N	media/songs/Angra/Speed-v2.mp3	82
432	Spread Your Fire	\N	media/songs/Angra/Spread-Your-Fire.mp3	82
433	Spread Your Fire v2	\N	media/songs/Angra/Spread-Your-Fire-v2.mp3	82
434	Spread Your Fire v3	\N	media/songs/Angra/Spread-Your-Fire-v3.mp3	82
435	Temple Of Hate	\N	media/songs/Angra/Temple-Of-Hate.mp3	82
436	Temple Of Hate v2	\N	media/songs/Angra/Temple-Of-Hate-v2.mp3	82
437	Time	\N	media/songs/Angra/Time.mp3	82
438	Time v2	\N	media/songs/Angra/Time-v2.mp3	82
439	Wuthering Heights	\N	media/songs/Angra/Wuthering-Heights.mp3	82
440	Wuthering Heights v2	\N	media/songs/Angra/Wuthering-Heights-v2.mp3	82
441	Zito	\N	media/songs/Angra/Zito.mp3	82
442	Zito v2	\N	media/songs/Angra/Zito-v2.mp3	82
443	All For You	\N	media/songs/Annihilator/All-For-You.mp3	83
444	Allison Hell	\N	media/songs/Annihilator/Allison-Hell.mp3	83
445	Annihilator	\N	media/songs/Annihilator/Annihilator.mp3	83
446	Bad Child	\N	media/songs/Annihilator/Bad-Child.mp3	83
447	Bled	\N	media/songs/Annihilator/Bled.mp3	83
448	Brain Dance	\N	media/songs/Annihilator/Brain-Dance.mp3	83
449	Burns Like A Buzzsaw Blade	\N	media/songs/Annihilator/Burns-Like-A-Buzzsaw-Blade.mp3	83
450	Carnival Diablos	\N	media/songs/Annihilator/Carnival-Diablos.mp3	83
451	Catch The Wind	\N	media/songs/Annihilator/Catch-The-Wind.mp3	83
452	Clowns On Parade	\N	media/songs/Annihilator/Clowns-On-Parade.mp3	83
453	Denied	\N	media/songs/Annihilator/Denied.mp3	83
454	Dont Bother Me	\N	media/songs/Annihilator/Dont-Bother-Me.mp3	83
455	Dont Bother Me v2	\N	media/songs/Annihilator/Dont-Bother-Me-v2.mp3	83
456	Fantastic Things	\N	media/songs/Annihilator/Fantastic-Things.mp3	83
457	Human Insecticide	\N	media/songs/Annihilator/Human-Insecticide.mp3	83
458	Hunger	\N	media/songs/Annihilator/Hunger.mp3	83
459	I Want	\N	media/songs/Annihilator/I-Want.mp3	83
460	In The Blood	\N	media/songs/Annihilator/In-The-Blood.mp3	83
461	King Of The Kill	\N	media/songs/Annihilator/King-Of-The-Kill.mp3	83
462	King Of The Kill v2	\N	media/songs/Annihilator/King-Of-The-Kill-v2.mp3	83
463	Like Father Like Gun	\N	media/songs/Annihilator/Like-Father-Like-Gun.mp3	83
464	Maximum Satan	\N	media/songs/Annihilator/Maximum-Satan.mp3	83
465	Never Neverland	\N	media/songs/Annihilator/Never-Neverland.mp3	83
466	Nothing To Me	\N	media/songs/Annihilator/Nothing-To-Me.mp3	83
467	Operation Annihilation	\N	media/songs/Annihilator/Operation-Annihilation.mp3	83
468	Perfect Virus	\N	media/songs/Annihilator/Perfect-Virus.mp3	83
469	Phantasmagoria	\N	media/songs/Annihilator/Phantasmagoria.mp3	83
470	Phoenix Rising	\N	media/songs/Annihilator/Phoenix-Rising.mp3	83
471	Punctured	\N	media/songs/Annihilator/Punctured.mp3	83
472	Reduced To Ash	\N	media/songs/Annihilator/Reduced-To-Ash.mp3	83
473	Refresh The Demon	\N	media/songs/Annihilator/Refresh-The-Demon.mp3	83
474	Set The World On Fire	\N	media/songs/Annihilator/Set-The-World-On-Fire.mp3	83
475	Set The World On Fire v2	\N	media/songs/Annihilator/Set-The-World-On-Fire-v2.mp3	83
476	The Blackest Day	\N	media/songs/Annihilator/The-Blackest-Day.mp3	83
477	The Edge	\N	media/songs/Annihilator/The-Edge.mp3	83
478	The Fun Palace	\N	media/songs/Annihilator/The-Fun-Palace.mp3	83
479	Time Bomb	\N	media/songs/Annihilator/Time-Bomb.mp3	83
480	Ultra Motion	\N	media/songs/Annihilator/Ultra-Motion.mp3	83
481	Weapon X	\N	media/songs/Annihilator/Weapon-X.mp3	83
482	Nobodys Wife	\N	media/songs/Anouk/Nobodys-Wife.mp3	84
483	Desafinado	\N	media/songs/Antonio-Carlos-Jobim/Desafinado.mp3	85
484	Winter	\N	media/songs/Antonio-Vivaldi/Winter.mp3	86
485	Metal On Metal	\N	media/songs/Anvil/Metal-On-Metal.mp3	87
486	Could Have Been A Lady	\N	media/songs/April-Wine/Could-Have-Been-A-Lady.mp3	88
487	Roller	\N	media/songs/April-Wine/Roller.mp3	88
488	Roller v2	\N	media/songs/April-Wine/Roller-v2.mp3	88
489	Roller v3	\N	media/songs/April-Wine/Roller-v3.mp3	88
490	Sign Of The Gypsy Queen	\N	media/songs/April-Wine/Sign-Of-The-Gypsy-Queen.mp3	88
491	Sign Of The Gypsy Queen v2	\N	media/songs/April-Wine/Sign-Of-The-Gypsy-Queen-v2.mp3	88
492	Good Time	\N	media/songs/Arc-Angels/Good-Time.mp3	89
493	Black Mirror	\N	media/songs/Arcade-Fire/Black-Mirror.mp3	90
494	Beast Of Man	\N	media/songs/Arch-Enemy/Beast-Of-Man.mp3	91
495	Bloodstained Cross	\N	media/songs/Arch-Enemy/Bloodstained-Cross.mp3	91
496	Carry The Cross	\N	media/songs/Arch-Enemy/Carry-The-Cross.mp3	91
497	Dead Bury Their Dead	\N	media/songs/Arch-Enemy/Dead-Bury-Their-Dead.mp3	91
498	Demonic Science	\N	media/songs/Arch-Enemy/Demonic-Science.mp3	91
499	Enemy Within	\N	media/songs/Arch-Enemy/Enemy-Within.mp3	91
500	Enter The Machine	\N	media/songs/Arch-Enemy/Enter-The-Machine.mp3	91
501	Enter The Machine v2	\N	media/songs/Arch-Enemy/Enter-The-Machine-v2.mp3	91
502	Hybrids Of Steel	\N	media/songs/Arch-Enemy/Hybrids-Of-Steel.mp3	91
503	I Am Legend Out For Blood	\N	media/songs/Arch-Enemy/I-Am-Legend-Out-For-Blood.mp3	91
504	Machtkampf	\N	media/songs/Arch-Enemy/Machtkampf.mp3	91
505	My Apocalypse	\N	media/songs/Arch-Enemy/My-Apocalypse.mp3	91
506	Nemesis	\N	media/songs/Arch-Enemy/Nemesis.mp3	91
507	Nemesis v2	\N	media/songs/Arch-Enemy/Nemesis-v2.mp3	91
508	Nemesis v3	\N	media/songs/Arch-Enemy/Nemesis-v3.mp3	91
509	Silverwing Live	\N	media/songs/Arch-Enemy/Silverwing-Live.mp3	91
510	Taking Back My Soul	\N	media/songs/Arch-Enemy/Taking-Back-My-Soul.mp3	91
511	505	\N	media/songs/Arctic-Monkeys/505.mp3	92
512	Brianstorm	\N	media/songs/Arctic-Monkeys/Brianstorm.mp3	92
513	Brianstorm v2	\N	media/songs/Arctic-Monkeys/Brianstorm-v2.mp3	92
514	Dancin Shoes	\N	media/songs/Arctic-Monkeys/Dancin-Shoes.mp3	92
515	Dont Sit Down Cause Ive Moved Your Chair	\N	media/songs/Arctic-Monkeys/Dont-Sit-Down-Cause-Ive-Moved-Your-Chair.mp3	92
516	I Bet You Look Good On The Dancefloor	\N	media/songs/Arctic-Monkeys/I-Bet-You-Look-Good-On-The-Dancefloor.mp3	92
517	I Bet You Look Good On The Dancefloor v2	\N	media/songs/Arctic-Monkeys/I-Bet-You-Look-Good-On-The-Dancefloor-v2.mp3	92
518	Mardy Bum	\N	media/songs/Arctic-Monkeys/Mardy-Bum.mp3	92
519	When The Sun Goes Down	\N	media/songs/Arctic-Monkeys/When-The-Sun-Goes-Down.mp3	92
520	Think	\N	media/songs/Aretha-Franklin/Think.mp3	93
521	Hold Your Head Up	\N	media/songs/Argent/Hold-Your-Head-Up.mp3	94
522	Burn The Sun	\N	media/songs/Ark/Burn-The-Sun.mp3	95
523	The Breaking Wheel	\N	media/songs/Artillery/The-Breaking-Wheel.mp3	96
524	Through Struggle	\N	media/songs/As-I-Lay-Dying/Through-Struggle.mp3	97
525	Orpheus	\N	media/songs/Ash/Orpheus.mp3	98
526	Heat Of The Moment	\N	media/songs/Asia/Heat-Of-The-Moment.mp3	99
527	Heat Of The Moment v2	\N	media/songs/Asia/Heat-Of-The-Moment-v2.mp3	99
528	Heat Of The Moment v3	\N	media/songs/Asia/Heat-Of-The-Moment-v3.mp3	99
529	Only Time Will Tell	\N	media/songs/Asia/Only-Time-Will-Tell.mp3	99
530	Usok	\N	media/songs/Asin/Usok.mp3	100
531	The Final Episode	\N	media/songs/Asking-Alexandria/The-Final-Episode.mp3	101
532	One Armed Scissor	\N	media/songs/At-The-Drive-In/One-Armed-Scissor.mp3	102
533	Blinded By Fear	\N	media/songs/At-The-Gates/Blinded-By-Fear.mp3	103
534	Blinded By Fear v2	\N	media/songs/At-The-Gates/Blinded-By-Fear-v2.mp3	103
535	Slaughter Of The Soul	\N	media/songs/At-The-Gates/Slaughter-Of-The-Soul.mp3	103
536	The Outsiders	\N	media/songs/Athlete/The-Outsiders.mp3	104
537	Homesick	\N	media/songs/Atlanta-Rhythm-Section/Homesick.mp3	105
538	Spooky	\N	media/songs/Atlanta-Rhythm-Section/Spooky.mp3	105
539	Spooky v2	\N	media/songs/Atlanta-Rhythm-Section/Spooky-v2.mp3	105
540	Exs And Ohs	\N	media/songs/Atreyu/Exs-And-Ohs.mp3	106
541	Exs And Ohs v2	\N	media/songs/Atreyu/Exs-And-Ohs-v2.mp3	106
542	Lose It	\N	media/songs/Atreyu/Lose-It.mp3	106
543	Ravenous	\N	media/songs/Atreyu/Ravenous.mp3	106
544	You And Me	\N	media/songs/Attack-Attack/You-And-Me.mp3	107
545	Haze	\N	media/songs/Attacking-The-Mind/Haze.mp3	108
546	Be Yourself	\N	media/songs/Audioslave/Be-Yourself.mp3	109
547	Be Yourself v2	\N	media/songs/Audioslave/Be-Yourself-v2.mp3	109
548	Be Yourself v3	\N	media/songs/Audioslave/Be-Yourself-v3.mp3	109
549	Cochise	\N	media/songs/Audioslave/Cochise.mp3	109
550	Cochise v2	\N	media/songs/Audioslave/Cochise-v2.mp3	109
551	Cochise v3	\N	media/songs/Audioslave/Cochise-v3.mp3	109
552	Doesnt Remind Me	\N	media/songs/Audioslave/Doesnt-Remind-Me.mp3	109
553	Doesnt Remind Me	\N	media/songs/Audioslave/Doesnt-Remind-Me.mp3	109
554	Gasoline	\N	media/songs/Audioslave/Gasoline.mp3	109
555	Getaway Car	\N	media/songs/Audioslave/Getaway-Car.mp3	109
556	Like A Stone	\N	media/songs/Audioslave/Like-A-Stone.mp3	109
557	Like A Stone v2	\N	media/songs/Audioslave/Like-A-Stone-v2.mp3	109
558	Like A Stone v3	\N	media/songs/Audioslave/Like-A-Stone-v3.mp3	109
559	Like A Stone v4	\N	media/songs/Audioslave/Like-A-Stone-v4.mp3	109
560	Like A Stone v5	\N	media/songs/Audioslave/Like-A-Stone-v5.mp3	109
561	Like A Stone v6	\N	media/songs/Audioslave/Like-A-Stone-v6.mp3	109
562	Man Or Animal	\N	media/songs/Audioslave/Man-Or-Animal.mp3	109
563	Man Or Animal v2	\N	media/songs/Audioslave/Man-Or-Animal-v2.mp3	109
564	Out Of Exile	\N	media/songs/Audioslave/Out-Of-Exile.mp3	109
565	Out Of Exile v2	\N	media/songs/Audioslave/Out-Of-Exile-v2.mp3	109
566	Set It Off	\N	media/songs/Audioslave/Set-It-Off.mp3	109
567	Set It Off v2	\N	media/songs/Audioslave/Set-It-Off-v2.mp3	109
568	Set It Off v3	\N	media/songs/Audioslave/Set-It-Off-v3.mp3	109
569	Show Me How To Live	\N	media/songs/Audioslave/Show-Me-How-To-Live.mp3	109
570	Yesterday To Tomorrow	\N	media/songs/Audioslave/Yesterday-To-Tomorrow.mp3	109
571	Yesterday To Tomorrow v2	\N	media/songs/Audioslave/Yesterday-To-Tomorrow-v2.mp3	109
572	Your Time Has Come	\N	media/songs/Audioslave/Your-Time-Has-Come.mp3	109
573	Your Time Has Come v2	\N	media/songs/Audioslave/Your-Time-Has-Come-v2.mp3	109
574	3	\N	media/songs/Audition/3.mp3	110
575	Bang	\N	media/songs/Audition/Bang.mp3	110
576	Be Together In Your World	\N	media/songs/Audition/Be-Together-In-Your-World.mp3	110
577	Dancing Queen	\N	media/songs/Audition/Dancing-Queen.mp3	110
578	Fathers Hands	\N	media/songs/Audition/Fathers-Hands.mp3	110
579	How To Say	\N	media/songs/Audition/How-To-Say.mp3	110
580	Maybe	\N	media/songs/Audition/Maybe.mp3	110
581	Sweden	\N	media/songs/Audition/Sweden.mp3	110
582	Symphony No 40	\N	media/songs/Audition/Symphony-No-40.mp3	110
583	With You	\N	media/songs/Audition/With-You.mp3	110
584	Meddler	\N	media/songs/August-Burns-Red/Meddler.mp3	111
585	No Regrets	\N	media/songs/Authority-Zero/No-Regrets.mp3	112
586	Turn Up The Radio	\N	media/songs/Autograph/Turn-Up-The-Radio.mp3	113
587	Turn Up The Radio v2	\N	media/songs/Autograph/Turn-Up-The-Radio-v2.mp3	113
588	Avantasia	\N	media/songs/Avantasia/Avantasia.mp3	114
589	Avantasia v2	\N	media/songs/Avantasia/Avantasia-v2.mp3	114
590	A Little Piece Of Heaven	\N	media/songs/Avenged-Sevenfold/A-Little-Piece-Of-Heaven.mp3	115
591	Afterlife	\N	media/songs/Avenged-Sevenfold/Afterlife.mp3	115
592	Afterlife v2	\N	media/songs/Avenged-Sevenfold/Afterlife-v2.mp3	115
593	Afterlife v3	\N	media/songs/Avenged-Sevenfold/Afterlife-v3.mp3	115
594	Almost Easy	\N	media/songs/Avenged-Sevenfold/Almost-Easy.mp3	115
595	Almost Easy v2	\N	media/songs/Avenged-Sevenfold/Almost-Easy-v2.mp3	115
596	Almost Easy v3	\N	media/songs/Avenged-Sevenfold/Almost-Easy-v3.mp3	115
597	Bat Country	\N	media/songs/Avenged-Sevenfold/Bat-Country.mp3	115
598	Bat Country v2	\N	media/songs/Avenged-Sevenfold/Bat-Country-v2.mp3	115
599	Bat Country v3	\N	media/songs/Avenged-Sevenfold/Bat-Country-v3.mp3	115
600	Beast And The Harlot	\N	media/songs/Avenged-Sevenfold/Beast-And-The-Harlot.mp3	115
601	Beast And The Harlot v2	\N	media/songs/Avenged-Sevenfold/Beast-And-The-Harlot-v2.mp3	115
602	Beast And The Harlot v3	\N	media/songs/Avenged-Sevenfold/Beast-And-The-Harlot-v3.mp3	115
603	Beast And The Harlot v4	\N	media/songs/Avenged-Sevenfold/Beast-And-The-Harlot-v4.mp3	115
604	Betrayed	\N	media/songs/Avenged-Sevenfold/Betrayed.mp3	115
605	Betrayed v2	\N	media/songs/Avenged-Sevenfold/Betrayed-v2.mp3	115
606	Buried Alive	\N	media/songs/Avenged-Sevenfold/Buried-Alive.mp3	115
607	Buried Alive v2	\N	media/songs/Avenged-Sevenfold/Buried-Alive-v2.mp3	115
608	Chapter Four	\N	media/songs/Avenged-Sevenfold/Chapter-Four.mp3	115
609	Chapter Four v2	\N	media/songs/Avenged-Sevenfold/Chapter-Four-v2.mp3	115
610	Chapter Four v3	\N	media/songs/Avenged-Sevenfold/Chapter-Four-v3.mp3	115
611	Chapter Four v4	\N	media/songs/Avenged-Sevenfold/Chapter-Four-v4.mp3	115
612	Critical Acclaim	\N	media/songs/Avenged-Sevenfold/Critical-Acclaim.mp3	115
613	Critical Acclaim v2	\N	media/songs/Avenged-Sevenfold/Critical-Acclaim-v2.mp3	115
614	Darkness Surrounding	\N	media/songs/Avenged-Sevenfold/Darkness-Surrounding.mp3	115
615	Gunslinger	\N	media/songs/Avenged-Sevenfold/Gunslinger.mp3	115
616	Gunslinger v2	\N	media/songs/Avenged-Sevenfold/Gunslinger-v2.mp3	115
617	Mia	\N	media/songs/Avenged-Sevenfold/Mia.mp3	115
618	Nightmare	\N	media/songs/Avenged-Sevenfold/Nightmare.mp3	115
619	Nightmare v2	\N	media/songs/Avenged-Sevenfold/Nightmare-v2.mp3	115
620	Nightmare v3	\N	media/songs/Avenged-Sevenfold/Nightmare-v3.mp3	115
621	Nightmare v4	\N	media/songs/Avenged-Sevenfold/Nightmare-v4.mp3	115
622	Not Ready To Die	\N	media/songs/Avenged-Sevenfold/Not-Ready-To-Die.mp3	115
623	Remenissions	\N	media/songs/Avenged-Sevenfold/Remenissions.mp3	115
624	Save Me	\N	media/songs/Avenged-Sevenfold/Save-Me.mp3	115
625	Save Me v2	\N	media/songs/Avenged-Sevenfold/Save-Me-v2.mp3	115
626	Scream	\N	media/songs/Avenged-Sevenfold/Scream.mp3	115
627	Scream v2	\N	media/songs/Avenged-Sevenfold/Scream-v2.mp3	115
628	Second Heartbeat	\N	media/songs/Avenged-Sevenfold/Second-Heartbeat.mp3	115
629	Seize The Day	\N	media/songs/Avenged-Sevenfold/Seize-The-Day.mp3	115
630	Seize The Day Live	\N	media/songs/Avenged-Sevenfold/Seize-The-Day-Live.mp3	115
631	Seize The Day v2	\N	media/songs/Avenged-Sevenfold/Seize-The-Day-v2.mp3	115
632	So Far Away	\N	media/songs/Avenged-Sevenfold/So-Far-Away.mp3	115
633	Trashed And Scattered	\N	media/songs/Avenged-Sevenfold/Trashed-And-Scattered.mp3	115
634	Unholy Confessions	\N	media/songs/Avenged-Sevenfold/Unholy-Confessions.mp3	115
635	Unholy Confessions v2	\N	media/songs/Avenged-Sevenfold/Unholy-Confessions-v2.mp3	115
636	Unholy Confessions v3	\N	media/songs/Avenged-Sevenfold/Unholy-Confessions-v3.mp3	115
637	Warmness On The Soul	\N	media/songs/Avenged-Sevenfold/Warmness-On-The-Soul.mp3	115
638	Warmness On The Soul v2	\N	media/songs/Avenged-Sevenfold/Warmness-On-The-Soul-v2.mp3	115
639	Welcome To The Family	\N	media/songs/Avenged-Sevenfold/Welcome-To-The-Family.mp3	115
640	Wicked End	\N	media/songs/Avenged-Sevenfold/Wicked-End.mp3	115
641	Girlfriend	\N	media/songs/Avril-Lavigne/Girlfriend.mp3	116
642	My Happy Ending	\N	media/songs/Avril-Lavigne/My-Happy-Ending.mp3	116
643	My Happy Ending v2	\N	media/songs/Avril-Lavigne/My-Happy-Ending-v2.mp3	116
644	The Silence Is Deafening	\N	media/songs/Awaken/The-Silence-Is-Deafening.mp3	117
645	Sail	\N	media/songs/AWOL-Nation/Sail.mp3	118
646	Lost My Music	\N	media/songs/Aya-Hirano/Lost-My-Music.mp3	119
647	Roam	\N	media/songs/B-52s/Roam.mp3	120
648	Rock Lobster	\N	media/songs/B-52s/Rock-Lobster.mp3	120
649	Killamangiro	\N	media/songs/Babyshambles/Killamangiro.mp3	121
650	Let It Ride	\N	media/songs/Bachman-Turner-Overdrive/Let-It-Ride.mp3	122
651	Let It Ride v2	\N	media/songs/Bachman-Turner-Overdrive/Let-It-Ride-v2.mp3	122
652	Takin Care Of Business	\N	media/songs/Bachman-Turner-Overdrive/Takin-Care-Of-Business.mp3	122
653	Degenerated	\N	media/songs/Backyard-Babies/Degenerated.mp3	123
654	Minus Celsius	\N	media/songs/Backyard-Babies/Minus-Celsius.mp3	123
655	Reignition Live	\N	media/songs/Bad-Brains/Reignition-Live.mp3	124
656	Bad Company	\N	media/songs/Bad-Company/Bad-Company.mp3	125
657	Bad Company v2	\N	media/songs/Bad-Company/Bad-Company-v2.mp3	125
658	Bad Company v3	\N	media/songs/Bad-Company/Bad-Company-v3.mp3	125
659	Cant Get Enough	\N	media/songs/Bad-Company/Cant-Get-Enough.mp3	125
660	Cant Get Enough v2	\N	media/songs/Bad-Company/Cant-Get-Enough-v2.mp3	125
661	Feel Like Makin Love	\N	media/songs/Bad-Company/Feel-Like-Makin-Love.mp3	125
662	Shooting Star	\N	media/songs/Bad-Company/Shooting-Star.mp3	125
663	21st Century Digital Boy	\N	media/songs/Bad-Religion/21st-Century-Digital-Boy.mp3	126
664	Infected	\N	media/songs/Bad-Religion/Infected.mp3	126
665	Sorrow	\N	media/songs/Bad-Religion/Sorrow.mp3	126
666	Dreams In The Dark	\N	media/songs/Badlands/Dreams-In-The-Dark.mp3	127
667	Cigarettes Wedding Bands	\N	media/songs/Band-Of-Horses/Cigarettes-Wedding-Bands.mp3	128
668	The Funeral	\N	media/songs/Band-Of-Horses/The-Funeral.mp3	128
669	I Know What I Am	\N	media/songs/Band-Of-Skulls/I-Know-What-I-Am.mp3	129
670	Night Lies	\N	media/songs/Bang-Camaro/Night-Lies.mp3	130
671	Pleasure Pleasure	\N	media/songs/Bang-Camaro/Pleasure-Pleasure.mp3	130
672	Pleasure Pleasure v2	\N	media/songs/Bang-Camaro/Pleasure-Pleasure-v2.mp3	130
673	Push Push Lady Lightning	\N	media/songs/Bang-Camaro/Push-Push-Lady-Lightning.mp3	130
674	Push Push Lady Lightning v2	\N	media/songs/Bang-Camaro/Push-Push-Lady-Lightning-v2.mp3	130
675	Rock Rebellion	\N	media/songs/Bang-Camaro/Rock-Rebellion.mp3	130
676	Rock Rebellion v2	\N	media/songs/Bang-Camaro/Rock-Rebellion-v2.mp3	130
677	Woman In Love	\N	media/songs/Barbara-Streisand/Woman-In-Love.mp3	131
678	Hanukkah Blessings	\N	media/songs/Barenaked-Ladies/Hanukkah-Blessings.mp3	132
679	Dis Moi	\N	media/songs/BB-Brunes/Dis-Moi.mp3	133
680	Bb King Style Backing	\N	media/songs/BB-King/Bb-King-Style-Backing.mp3	134
681	Everyday I Have The Blues	\N	media/songs/BB-King/Everyday-I-Have-The-Blues.mp3	134
682	Everyday I Have The Blues v2	\N	media/songs/BB-King/Everyday-I-Have-The-Blues-v2.mp3	134
981	Blue Guitar v3	\N	media/songs/Blue-Jays/Blue-Guitar-v3.mp3	183
683	Everyday I Have The Blues v3	\N	media/songs/BB-King/Everyday-I-Have-The-Blues-v3.mp3	134
684	How Blue Can You Get	\N	media/songs/BB-King/How-Blue-Can-You-Get.mp3	134
685	How Blue Can You Get v2	\N	media/songs/BB-King/How-Blue-Can-You-Get-v2.mp3	134
686	Rock Me Babe	\N	media/songs/BB-King/Rock-Me-Babe.mp3	134
687	Rock Me Baby	\N	media/songs/BB-King/Rock-Me-Baby.mp3	134
688	Rock Me Baby v2	\N	media/songs/BB-King/Rock-Me-Baby-v2.mp3	134
689	Rock Me Baby v3	\N	media/songs/BB-King/Rock-Me-Baby-v3.mp3	134
690	Rock Me Baby v4	\N	media/songs/BB-King/Rock-Me-Baby-v4.mp3	134
691	Royal Blues	\N	media/songs/BB-King/Royal-Blues.mp3	134
692	The Thrill Is Gone	\N	media/songs/BB-King/The-Thrill-Is-Gone.mp3	134
693	The Thrill Is Gone v2	\N	media/songs/BB-King/The-Thrill-Is-Gone-v2.mp3	134
694	The Thrill Is Gone v3	\N	media/songs/BB-King/The-Thrill-Is-Gone-v3.mp3	134
695	The Thrill Is Gone v4	\N	media/songs/BB-King/The-Thrill-Is-Gone-v4.mp3	134
696	The Thrill Is Gone v5	\N	media/songs/BB-King/The-Thrill-Is-Gone-v5.mp3	134
697	The Thrill Is Gone v6	\N	media/songs/BB-King/The-Thrill-Is-Gone-v6.mp3	134
698	The Thrill Is Gone v7	\N	media/songs/BB-King/The-Thrill-Is-Gone-v7.mp3	134
699	The Thrill Is Gone v8	\N	media/songs/BB-King/The-Thrill-Is-Gone-v8.mp3	134
700	Fun Fun Fun	\N	media/songs/Beach-Boys/Fun-Fun-Fun.mp3	135
701	Good Vibrations Live	\N	media/songs/Beach-Boys/Good-Vibrations-Live.mp3	135
702	No Sleep Till Brooklyn	\N	media/songs/Beastie-Boys/No-Sleep-Till-Brooklyn.mp3	136
703	Sabotage	\N	media/songs/Beastie-Boys/Sabotage.mp3	136
704	So Whatcha Want	\N	media/songs/Beastie-Boys/So-Whatcha-Want.mp3	136
705	Hail To The Freaks	\N	media/songs/Beatsteaks/Hail-To-The-Freaks.mp3	137
706	E Pro	\N	media/songs/Beck/E-Pro.mp3	138
707	Feel Good Time	\N	media/songs/Beck/Feel-Good-Time.mp3	138
708	Feel Good Time v2	\N	media/songs/Beck/Feel-Good-Time-v2.mp3	138
709	Gamma Ray	\N	media/songs/Beck/Gamma-Ray.mp3	138
710	Loser	\N	media/songs/Beck/Loser.mp3	138
711	Jive Talkin	\N	media/songs/Bee-Gees/Jive-Talkin.mp3	139
712	Night Fever	\N	media/songs/Bee-Gees/Night-Fever.mp3	139
713	Nights On Broadway	\N	media/songs/Bee-Gees/Nights-On-Broadway.mp3	139
714	Stayin Alive	\N	media/songs/Bee-Gees/Stayin-Alive.mp3	139
715	Stayin Alive v2	\N	media/songs/Bee-Gees/Stayin-Alive-v2.mp3	139
716	Stayin Alive v3	\N	media/songs/Bee-Gees/Stayin-Alive-v3.mp3	139
717	Tragedy	\N	media/songs/Bee-Gees/Tragedy.mp3	139
718	You Should Be Dancing	\N	media/songs/Bee-Gees/You-Should-Be-Dancing.mp3	139
719	Conquer All	\N	media/songs/Behemoth/Conquer-All.mp3	140
720	Ov Fire And The Void	\N	media/songs/Behemoth/Ov-Fire-And-The-Void.mp3	140
721	1 2 3 Go	\N	media/songs/Belanova/1-2-3-Go.mp3	141
722	Carta 20	\N	media/songs/Bell-U-H/Carta-20.mp3	142
723	Iglesias	\N	media/songs/Bell-U-H/Iglesias.mp3	142
724	Farol Das Estrelas	\N	media/songs/Belo/Farol-Das-Estrelas.mp3	143
725	Farol Das Estrelas v2	\N	media/songs/Belo/Farol-Das-Estrelas-v2.mp3	143
726	Stand By Me	\N	media/songs/Ben-E-King/Stand-By-Me.mp3	144
727	Fly One Time	\N	media/songs/Ben-Harper/Fly-One-Time.mp3	145
728	Mama Has Got A Girlfriend Now	\N	media/songs/Ben-Harper/Mama-Has-Got-A-Girlfriend-Now.mp3	145
729	Number With No Name	\N	media/songs/Ben-Harper/Number-With-No-Name.mp3	145
730	Shimmer And Shine	\N	media/songs/Ben-Harper/Shimmer-And-Shine.mp3	145
731	Steal My Kisses	\N	media/songs/Ben-Harper/Steal-My-Kisses.mp3	145
732	Steal My Kisses v2	\N	media/songs/Ben-Harper/Steal-My-Kisses-v2.mp3	145
733	Welcome To The Cruel World	\N	media/songs/Ben-Harper/Welcome-To-The-Cruel-World.mp3	145
734	Welcome To The Cruel World v2	\N	media/songs/Ben-Harper/Welcome-To-The-Cruel-World-v2.mp3	145
735	Welcome To The Cruel World v3	\N	media/songs/Ben-Harper/Welcome-To-The-Cruel-World-v3.mp3	145
736	Welcome To The Cruel World v4	\N	media/songs/Ben-Harper/Welcome-To-The-Cruel-World-v4.mp3	145
737	Catch My Disease	\N	media/songs/Ben-Lee/Catch-My-Disease.mp3	146
738	Catch My Disease v2	\N	media/songs/Ben-Lee/Catch-My-Disease-v2.mp3	146
739	Catch My Disease v3	\N	media/songs/Ben-Lee/Catch-My-Disease-v3.mp3	146
740	Rock Jam 1	\N	media/songs/Bent-Mindz/Rock-Jam-1.mp3	147
741	Rock Jam 2	\N	media/songs/Bent-Mindz/Rock-Jam-2.mp3	147
742	Desperately Wanting	\N	media/songs/Better-Than-Ezra/Desperately-Wanting.mp3	148
743	Prequel To The Sequel	\N	media/songs/Between-The-Buried-And-Me/Prequel-To-The-Sequel.mp3	149
744	Selkies The Endless Obsession	\N	media/songs/Between-The-Buried-And-Me/Selkies-The-Endless-Obsession.mp3	149
745	Many Of Horror	\N	media/songs/Biffy-Clyro/Many-Of-Horror.mp3	150
746	Save A Horse  Ride A Cowboy	\N	media/songs/Big-And-Rich/Save-A-Horse--Ride-A-Cowboy.mp3	151
747	Girl In Oslo	\N	media/songs/Big-Bang/Girl-In-Oslo.mp3	152
748	Girl In Oslo v2	\N	media/songs/Big-Bang/Girl-In-Oslo-v2.mp3	152
749	In A Big Country	\N	media/songs/Big-Country/In-A-Big-Country.mp3	153
750	Bittersweet	\N	media/songs/Big-Head-Todd-And-The-Monsters/Bittersweet.mp3	154
751	Broken Hearted Savior	\N	media/songs/Big-Head-Todd-And-The-Monsters/Broken-Hearted-Savior.mp3	154
752	Le Brio	\N	media/songs/Big-Soul/Le-Brio.mp3	155
753	Le Brio v2	\N	media/songs/Big-Soul/Le-Brio-v2.mp3	155
754	Rebel Girl	\N	media/songs/Bikini-Kill/Rebel-Girl.mp3	156
755	Thats How Country Boys Roll	\N	media/songs/Billy-Currington/Thats-How-Country-Boys-Roll.mp3	157
756	Dancing With Myself	\N	media/songs/Billy-Idol/Dancing-With-Myself.mp3	158
757	Dancing With Myself v2	\N	media/songs/Billy-Idol/Dancing-With-Myself-v2.mp3	158
758	Dancing With Myself v3	\N	media/songs/Billy-Idol/Dancing-With-Myself-v3.mp3	158
759	Eyes Without A Face	\N	media/songs/Billy-Idol/Eyes-Without-A-Face.mp3	158
760	Flesh For Fantasy	\N	media/songs/Billy-Idol/Flesh-For-Fantasy.mp3	158
761	Flesh For Fantasy v2	\N	media/songs/Billy-Idol/Flesh-For-Fantasy-v2.mp3	158
762	Rebel Yell	\N	media/songs/Billy-Idol/Rebel-Yell.mp3	158
763	Rebel Yell v2	\N	media/songs/Billy-Idol/Rebel-Yell-v2.mp3	158
764	Scream	\N	media/songs/Billy-Idol/Scream.mp3	158
765	White Wedding	\N	media/songs/Billy-Idol/White-Wedding.mp3	158
766	White Wedding v2	\N	media/songs/Billy-Idol/White-Wedding-v2.mp3	158
767	The Millionaire	\N	media/songs/Billy-J-Kramer-And-The-Dakotas/The-Millionaire.mp3	159
768	A Matter Of Trust	\N	media/songs/Billy-Joel/A-Matter-Of-Trust.mp3	160
769	A Matter Of Trust v2	\N	media/songs/Billy-Joel/A-Matter-Of-Trust-v2.mp3	160
770	Big Shot	\N	media/songs/Billy-Joel/Big-Shot.mp3	160
771	Captain Jack	\N	media/songs/Billy-Joel/Captain-Jack.mp3	160
772	I Go To Extremes	\N	media/songs/Billy-Joel/I-Go-To-Extremes.mp3	160
773	Its Still Rock And Roll To Me	\N	media/songs/Billy-Joel/Its-Still-Rock-And-Roll-To-Me.mp3	160
774	Its Still Rock N Roll To Me	\N	media/songs/Billy-Joel/Its-Still-Rock-N-Roll-To-Me.mp3	160
775	Keeping The Faith	\N	media/songs/Billy-Joel/Keeping-The-Faith.mp3	160
776	Movin Out Anthonys Song	\N	media/songs/Billy-Joel/Movin-Out-Anthonys-Song.mp3	160
777	My Life	\N	media/songs/Billy-Joel/My-Life.mp3	160
778	Only The Good Die Young	\N	media/songs/Billy-Joel/Only-The-Good-Die-Young.mp3	160
779	Piano Man	\N	media/songs/Billy-Joel/Piano-Man.mp3	160
780	Pressure	\N	media/songs/Billy-Joel/Pressure.mp3	160
781	Pressure v2	\N	media/songs/Billy-Joel/Pressure-v2.mp3	160
782	Say Goodbye To Hollywood	\N	media/songs/Billy-Joel/Say-Goodbye-To-Hollywood.mp3	160
783	Scenes From An Italian Restaurant	\N	media/songs/Billy-Joel/Scenes-From-An-Italian-Restaurant.mp3	160
784	Shes Always A Woman	\N	media/songs/Billy-Joel/Shes-Always-A-Woman.mp3	160
785	The Entertainer	\N	media/songs/Billy-Joel/The-Entertainer.mp3	160
786	The Stranger	\N	media/songs/Billy-Joel/The-Stranger.mp3	160
787	We Didnt Start The Fire	\N	media/songs/Billy-Joel/We-Didnt-Start-The-Fire.mp3	160
788	You May Be Right	\N	media/songs/Billy-Joel/You-May-Be-Right.mp3	160
789	You May Be Right v2	\N	media/songs/Billy-Joel/You-May-Be-Right-v2.mp3	160
790	You May Be Right v3	\N	media/songs/Billy-Joel/You-May-Be-Right-v3.mp3	160
791	You May Be Right v4	\N	media/songs/Billy-Joel/You-May-Be-Right-v4.mp3	160
792	Zanzibar	\N	media/songs/Billy-Joel/Zanzibar.mp3	160
793	Achy Breaky Heart	\N	media/songs/Billy-Ray-Cyrus/Achy-Breaky-Heart.mp3	161
794	Christmas Is The Time To Say I Love You	\N	media/songs/Billy-Squier/Christmas-Is-The-Time-To-Say-I-Love-You.mp3	162
795	Everybody Wants You	\N	media/songs/Billy-Squier/Everybody-Wants-You.mp3	162
796	Everybody Wants You v2	\N	media/songs/Billy-Squier/Everybody-Wants-You-v2.mp3	162
797	In The Dark	\N	media/songs/Billy-Squier/In-The-Dark.mp3	162
798	Lonely Is The Night	\N	media/songs/Billy-Squier/Lonely-Is-The-Night.mp3	162
799	The Stroke	\N	media/songs/Billy-Squier/The-Stroke.mp3	162
800	The Stroke v2	\N	media/songs/Billy-Squier/The-Stroke-v2.mp3	162
801	When She Comes To Me	\N	media/songs/Billy-Squier/When-She-Comes-To-Me.mp3	162
802	Definition Of Destiny	\N	media/songs/Billy-Talent/Definition-Of-Destiny.mp3	163
803	Devil On My Shoulder	\N	media/songs/Billy-Talent/Devil-On-My-Shoulder.mp3	163
804	Diamond On A Landmine	\N	media/songs/Billy-Talent/Diamond-On-A-Landmine.mp3	163
805	Fallen Leaves	\N	media/songs/Billy-Talent/Fallen-Leaves.mp3	163
806	Pins And Needles	\N	media/songs/Billy-Talent/Pins-And-Needles.mp3	163
807	Pocketful Of Dreams	\N	media/songs/Billy-Talent/Pocketful-Of-Dreams.mp3	163
808	Rusted From The Rain	\N	media/songs/Billy-Talent/Rusted-From-The-Rain.mp3	163
809	Saint Veronika	\N	media/songs/Billy-Talent/Saint-Veronika.mp3	163
810	Sudden Movements	\N	media/songs/Billy-Talent/Sudden-Movements.mp3	163
811	Tears Into Wine	\N	media/songs/Billy-Talent/Tears-Into-Wine.mp3	163
812	The Dead Cant Testify	\N	media/songs/Billy-Talent/The-Dead-Cant-Testify.mp3	163
813	This Suffering	\N	media/songs/Billy-Talent/This-Suffering.mp3	163
814	Try Honesty	\N	media/songs/Billy-Talent/Try-Honesty.mp3	163
815	Turn Your Back	\N	media/songs/Billy-Talent/Turn-Your-Back.mp3	163
816	White Sparrows	\N	media/songs/Billy-Talent/White-Sparrows.mp3	163
817	Worker Bees	\N	media/songs/Billy-Talent/Worker-Bees.mp3	163
818	I Can See Your Spirit Live	\N	media/songs/Black-Country-Communion/I-Can-See-Your-Spirit-Live.mp3	164
819	Hard To Handle	\N	media/songs/Black-Crowes/Hard-To-Handle.mp3	165
820	Hard To Handle v2	\N	media/songs/Black-Crowes/Hard-To-Handle-v2.mp3	165
821	Hard To Handle v3	\N	media/songs/Black-Crowes/Hard-To-Handle-v3.mp3	165
822	Hard To Handle v4	\N	media/songs/Black-Crowes/Hard-To-Handle-v4.mp3	165
823	Jealous Again	\N	media/songs/Black-Crowes/Jealous-Again.mp3	165
824	Make Glad	\N	media/songs/Black-Crowes/Make-Glad.mp3	165
825	Remedy	\N	media/songs/Black-Crowes/Remedy.mp3	165
826	Remedy v2	\N	media/songs/Black-Crowes/Remedy-v2.mp3	165
827	Twice As Hard	\N	media/songs/Black-Crowes/Twice-As-Hard.mp3	165
828	Closed Casket Requiem	\N	media/songs/Black-Dahlia-Murder/Closed-Casket-Requiem.mp3	166
829	Black Sunday	\N	media/songs/Black-Label-Society/Black-Sunday.mp3	167
830	Bleed For Me	\N	media/songs/Black-Label-Society/Bleed-For-Me.mp3	167
831	Crazy Horse	\N	media/songs/Black-Label-Society/Crazy-Horse.mp3	167
832	Demise Of Sanity	\N	media/songs/Black-Label-Society/Demise-Of-Sanity.mp3	167
833	Destruction Overdrive	\N	media/songs/Black-Label-Society/Destruction-Overdrive.mp3	167
834	Destruction Overdrive v2	\N	media/songs/Black-Label-Society/Destruction-Overdrive-v2.mp3	167
835	Fire It Up	\N	media/songs/Black-Label-Society/Fire-It-Up.mp3	167
836	Fire It Up v2	\N	media/songs/Black-Label-Society/Fire-It-Up-v2.mp3	167
837	Funeral Bell	\N	media/songs/Black-Label-Society/Funeral-Bell.mp3	167
838	Genocide Junkies	\N	media/songs/Black-Label-Society/Genocide-Junkies.mp3	167
839	In This River Live	\N	media/songs/Black-Label-Society/In-This-River-Live.mp3	167
840	Parade Of The Dead	\N	media/songs/Black-Label-Society/Parade-Of-The-Dead.mp3	167
841	Stillborn	\N	media/songs/Black-Label-Society/Stillborn.mp3	167
842	Stillborn v2	\N	media/songs/Black-Label-Society/Stillborn-v2.mp3	167
843	Stillborn v3	\N	media/songs/Black-Label-Society/Stillborn-v3.mp3	167
844	Stillborn v4	\N	media/songs/Black-Label-Society/Stillborn-v4.mp3	167
845	Suicide Messiah	\N	media/songs/Black-Label-Society/Suicide-Messiah.mp3	167
846	We Live No More	\N	media/songs/Black-Label-Society/We-Live-No-More.mp3	167
847	We Live No More v2	\N	media/songs/Black-Label-Society/We-Live-No-More-v2.mp3	167
848	Weapon Of Choice	\N	media/songs/Black-Rebel-Motorcycle-Club/Weapon-Of-Choice.mp3	168
849	After Forever	\N	media/songs/Black-Sabbath/After-Forever.mp3	169
850	Behind The Wall Of Sleep	\N	media/songs/Black-Sabbath/Behind-The-Wall-Of-Sleep.mp3	169
851	Behind The Wall Of Sleep v2	\N	media/songs/Black-Sabbath/Behind-The-Wall-Of-Sleep-v2.mp3	169
852	Black Sabbath	\N	media/songs/Black-Sabbath/Black-Sabbath.mp3	169
853	Black Sabbath v2	\N	media/songs/Black-Sabbath/Black-Sabbath-v2.mp3	169
854	Children Of The Grave	\N	media/songs/Black-Sabbath/Children-Of-The-Grave.mp3	169
855	Children Of The Grave v2	\N	media/songs/Black-Sabbath/Children-Of-The-Grave-v2.mp3	169
856	Children Of The Grave v3	\N	media/songs/Black-Sabbath/Children-Of-The-Grave-v3.mp3	169
857	Children Of The Sea	\N	media/songs/Black-Sabbath/Children-Of-The-Sea.mp3	169
858	Children Of The Sea v2	\N	media/songs/Black-Sabbath/Children-Of-The-Sea-v2.mp3	169
859	Country Girl	\N	media/songs/Black-Sabbath/Country-Girl.mp3	169
860	Country Girl v2	\N	media/songs/Black-Sabbath/Country-Girl-v2.mp3	169
861	Die Young	\N	media/songs/Black-Sabbath/Die-Young.mp3	169
862	Electric Funeral	\N	media/songs/Black-Sabbath/Electric-Funeral.mp3	169
863	Fairies Wear Boots	\N	media/songs/Black-Sabbath/Fairies-Wear-Boots.mp3	169
864	Fairies Wear Boots v2	\N	media/songs/Black-Sabbath/Fairies-Wear-Boots-v2.mp3	169
865	Fairies Wear Boots v3	\N	media/songs/Black-Sabbath/Fairies-Wear-Boots-v3.mp3	169
866	Fairies Wear Boots v4	\N	media/songs/Black-Sabbath/Fairies-Wear-Boots-v4.mp3	169
867	Heaven And Hell	\N	media/songs/Black-Sabbath/Heaven-And-Hell.mp3	169
868	Heaven And Hell v2	\N	media/songs/Black-Sabbath/Heaven-And-Hell-v2.mp3	169
869	Heaven And Hell v3	\N	media/songs/Black-Sabbath/Heaven-And-Hell-v3.mp3	169
870	Into The Void	\N	media/songs/Black-Sabbath/Into-The-Void.mp3	169
871	Into The Void v2	\N	media/songs/Black-Sabbath/Into-The-Void-v2.mp3	169
872	Into The Void v3	\N	media/songs/Black-Sabbath/Into-The-Void-v3.mp3	169
873	Iron Man	\N	media/songs/Black-Sabbath/Iron-Man.mp3	169
874	Iron Man v2	\N	media/songs/Black-Sabbath/Iron-Man-v2.mp3	169
875	Iron Man v3	\N	media/songs/Black-Sabbath/Iron-Man-v3.mp3	169
876	Iron Man v4	\N	media/songs/Black-Sabbath/Iron-Man-v4.mp3	169
877	Iron Man v5	\N	media/songs/Black-Sabbath/Iron-Man-v5.mp3	169
878	Lonely Is The Word	\N	media/songs/Black-Sabbath/Lonely-Is-The-Word.mp3	169
879	Neon Knights	\N	media/songs/Black-Sabbath/Neon-Knights.mp3	169
880	Neon Knights v2	\N	media/songs/Black-Sabbath/Neon-Knights-v2.mp3	169
881	Never Say Die	\N	media/songs/Black-Sabbath/Never-Say-Die.mp3	169
882	Nib	\N	media/songs/Black-Sabbath/Nib.mp3	169
883	Nib v2	\N	media/songs/Black-Sabbath/Nib-v2.mp3	169
884	Paranoid	\N	media/songs/Black-Sabbath/Paranoid.mp3	169
885	Paranoid v2	\N	media/songs/Black-Sabbath/Paranoid-v2.mp3	169
886	Paranoid v3	\N	media/songs/Black-Sabbath/Paranoid-v3.mp3	169
887	Paranoid v4	\N	media/songs/Black-Sabbath/Paranoid-v4.mp3	169
888	Paranoid v5	\N	media/songs/Black-Sabbath/Paranoid-v5.mp3	169
889	Paranoid v6	\N	media/songs/Black-Sabbath/Paranoid-v6.mp3	169
890	Paranoid v7	\N	media/songs/Black-Sabbath/Paranoid-v7.mp3	169
891	Paranoid v8	\N	media/songs/Black-Sabbath/Paranoid-v8.mp3	169
892	Paranoid v9	\N	media/songs/Black-Sabbath/Paranoid-v9.mp3	169
893	Planet Caravan	\N	media/songs/Black-Sabbath/Planet-Caravan.mp3	169
894	Planet Caravan v2	\N	media/songs/Black-Sabbath/Planet-Caravan-v2.mp3	169
895	Sabbath Bloody Sabbath	\N	media/songs/Black-Sabbath/Sabbath-Bloody-Sabbath.mp3	169
896	Sign Of The Southern Cross	\N	media/songs/Black-Sabbath/Sign-Of-The-Southern-Cross.mp3	169
897	Snowblind	\N	media/songs/Black-Sabbath/Snowblind.mp3	169
898	Snowblind v2	\N	media/songs/Black-Sabbath/Snowblind-v2.mp3	169
899	Snowblind v3	\N	media/songs/Black-Sabbath/Snowblind-v3.mp3	169
900	Snowblind v4	\N	media/songs/Black-Sabbath/Snowblind-v4.mp3	169
901	Snowblind v5	\N	media/songs/Black-Sabbath/Snowblind-v5.mp3	169
902	Solitude	\N	media/songs/Black-Sabbath/Solitude.mp3	169
903	Sweet Leaf	\N	media/songs/Black-Sabbath/Sweet-Leaf.mp3	169
904	Sweet Leaf v2	\N	media/songs/Black-Sabbath/Sweet-Leaf-v2.mp3	169
905	Sweet Leaf v3	\N	media/songs/Black-Sabbath/Sweet-Leaf-v3.mp3	169
906	Sweet Leaf v4	\N	media/songs/Black-Sabbath/Sweet-Leaf-v4.mp3	169
907	Symptom Of The Universe	\N	media/songs/Black-Sabbath/Symptom-Of-The-Universe.mp3	169
908	The Mob Rules	\N	media/songs/Black-Sabbath/The-Mob-Rules.mp3	169
909	The Wizard	\N	media/songs/Black-Sabbath/The-Wizard.mp3	169
910	The Wizard v2	\N	media/songs/Black-Sabbath/The-Wizard-v2.mp3	169
911	The Wizard v3	\N	media/songs/Black-Sabbath/The-Wizard-v3.mp3	169
912	Turn To Stone	\N	media/songs/Black-Sabbath/Turn-To-Stone.mp3	169
913	Voodoo	\N	media/songs/Black-Sabbath/Voodoo.mp3	169
914	War Pigs	\N	media/songs/Black-Sabbath/War-Pigs.mp3	169
915	War Pigs v2	\N	media/songs/Black-Sabbath/War-Pigs-v2.mp3	169
916	War Pigs v3	\N	media/songs/Black-Sabbath/War-Pigs-v3.mp3	169
917	War Pigs v4	\N	media/songs/Black-Sabbath/War-Pigs-v4.mp3	169
918	Zero The Hero	\N	media/songs/Black-Sabbath/Zero-The-Hero.mp3	169
919	Black Stone Cherry Blind Man	\N	media/songs/Black-Stone-Cherry/Black-Stone-Cherry-Blind-Man.mp3	170
920	Shockwave	\N	media/songs/Black-Tide/Shockwave.mp3	171
921	Fallen Angels	\N	media/songs/Black-Veil-Brides/Fallen-Angels.mp3	172
922	Knives And Pens	\N	media/songs/Black-Veil-Brides/Knives-And-Pens.mp3	172
923	Rebel Love Song	\N	media/songs/Black-Veil-Brides/Rebel-Love-Song.mp3	172
924	Highway Song	\N	media/songs/Blackfoot/Highway-Song.mp3	173
925	Wishing Well	\N	media/songs/Blackfoot/Wishing-Well.mp3	173
926	Some Beach	\N	media/songs/Blake-Shelton/Some-Beach.mp3	174
927	Hey Baby Heres That Song You Wanted	\N	media/songs/Blessthefall/Hey-Baby-Heres-That-Song-You-Wanted.mp3	175
928	A Past And Future Secret	\N	media/songs/Blind-Guardian/A-Past-And-Future-Secret.mp3	176
929	A Voice In The Dark	\N	media/songs/Blind-Guardian/A-Voice-In-The-Dark.mp3	176
930	A Voice In The Dark v2	\N	media/songs/Blind-Guardian/A-Voice-In-The-Dark-v2.mp3	176
931	Born In A Mourning Hall	\N	media/songs/Blind-Guardian/Born-In-A-Mourning-Hall.mp3	176
932	Into The Storm	\N	media/songs/Blind-Guardian/Into-The-Storm.mp3	176
933	Weird Dreams	\N	media/songs/Blind-Guardian/Weird-Dreams.mp3	176
934	No Rain	\N	media/songs/Blind-Melon/No-Rain.mp3	177
935	No Rain v2	\N	media/songs/Blind-Melon/No-Rain-v2.mp3	177
936	Tones Of Home	\N	media/songs/Blind-Melon/Tones-Of-Home.mp3	177
937	Adams Song	\N	media/songs/Blink-182/Adams-Song.mp3	178
938	Aliens Exist	\N	media/songs/Blink-182/Aliens-Exist.mp3	178
939	All The Small Things	\N	media/songs/Blink-182/All-The-Small-Things.mp3	178
940	All The Small Things v2	\N	media/songs/Blink-182/All-The-Small-Things-v2.mp3	178
941	All The Small Things v3	\N	media/songs/Blink-182/All-The-Small-Things-v3.mp3	178
942	All The Small Things v4	\N	media/songs/Blink-182/All-The-Small-Things-v4.mp3	178
943	All The Small Things v5	\N	media/songs/Blink-182/All-The-Small-Things-v5.mp3	178
944	Dammit	\N	media/songs/Blink-182/Dammit.mp3	178
945	Dammit v2	\N	media/songs/Blink-182/Dammit-v2.mp3	178
946	Dammit v3	\N	media/songs/Blink-182/Dammit-v3.mp3	178
947	Down	\N	media/songs/Blink-182/Down.mp3	178
948	Dumpweed	\N	media/songs/Blink-182/Dumpweed.mp3	178
949	Feeling This	\N	media/songs/Blink-182/Feeling-This.mp3	178
950	First Date	\N	media/songs/Blink-182/First-Date.mp3	178
951	First Date v2	\N	media/songs/Blink-182/First-Date-v2.mp3	178
952	I Miss You	\N	media/songs/Blink-182/I-Miss-You.mp3	178
953	Josie	\N	media/songs/Blink-182/Josie.mp3	178
954	Stay Together For The Kids	\N	media/songs/Blink-182/Stay-Together-For-The-Kids.mp3	178
955	The Rock Show	\N	media/songs/Blink-182/The-Rock-Show.mp3	178
956	Up All Night	\N	media/songs/Blink-182/Up-All-Night.mp3	178
957	Whats My Age Again	\N	media/songs/Blink-182/Whats-My-Age-Again.mp3	178
958	Whats My Age Again v2	\N	media/songs/Blink-182/Whats-My-Age-Again-v2.mp3	178
959	Whats My Age Again v3	\N	media/songs/Blink-182/Whats-My-Age-Again-v3.mp3	178
960	Whats My Age Again v4	\N	media/songs/Blink-182/Whats-My-Age-Again-v4.mp3	178
961	Banquet	\N	media/songs/Bloc-Party/Banquet.mp3	179
962	Flux	\N	media/songs/Bloc-Party/Flux.mp3	179
963	Helicopter	\N	media/songs/Bloc-Party/Helicopter.mp3	179
964	Hunting For Witches	\N	media/songs/Bloc-Party/Hunting-For-Witches.mp3	179
965	Atomic	\N	media/songs/Blondie/Atomic.mp3	180
966	Call Me	\N	media/songs/Blondie/Call-Me.mp3	180
967	Call Me v2	\N	media/songs/Blondie/Call-Me-v2.mp3	180
968	Call Me v3	\N	media/songs/Blondie/Call-Me-v3.mp3	180
969	Hangin On The Telephone	\N	media/songs/Blondie/Hangin-On-The-Telephone.mp3	180
970	Heart Of Glass	\N	media/songs/Blondie/Heart-Of-Glass.mp3	180
971	Maria	\N	media/songs/Blondie/Maria.mp3	180
972	One Way Or Another	\N	media/songs/Blondie/One-Way-Or-Another.mp3	180
973	No Show	\N	media/songs/Blood-Sweat-And-Tears/No-Show.mp3	181
974	No Show v2	\N	media/songs/Blood-Sweat-And-Tears/No-Show-v2.mp3	181
975	Ride Captain Ride	\N	media/songs/Blood-Sweat-And-Tears/Ride-Captain-Ride.mp3	181
976	Ride Captain Ride v2	\N	media/songs/Blood-Sweat-And-Tears/Ride-Captain-Ride-v2.mp3	181
977	Spinning Wheel	\N	media/songs/Blood-Sweat-And-Tears/Spinning-Wheel.mp3	181
978	Fire Water Burn	\N	media/songs/Bloodhound-Gang/Fire-Water-Burn.mp3	182
979	Blue Guitar	\N	media/songs/Blue-Jays/Blue-Guitar.mp3	183
980	Blue Guitar v2	\N	media/songs/Blue-Jays/Blue-Guitar-v2.mp3	183
982	Burnin For You	\N	media/songs/Blue-Oyster-Cult/Burnin-For-You.mp3	184
983	Burnin For You v2	\N	media/songs/Blue-Oyster-Cult/Burnin-For-You-v2.mp3	184
984	Burnin For You v3	\N	media/songs/Blue-Oyster-Cult/Burnin-For-You-v3.mp3	184
985	Burnin For You v4	\N	media/songs/Blue-Oyster-Cult/Burnin-For-You-v4.mp3	184
986	Cities On Flame With Rock N Roll	\N	media/songs/Blue-Oyster-Cult/Cities-On-Flame-With-Rock-N-Roll.mp3	184
987	Dont Fear The Reaper	\N	media/songs/Blue-Oyster-Cult/Dont-Fear-The-Reaper.mp3	184
988	Dont Fear The Reaper v2	\N	media/songs/Blue-Oyster-Cult/Dont-Fear-The-Reaper-v2.mp3	184
989	Dont Fear The Reaper v3	\N	media/songs/Blue-Oyster-Cult/Dont-Fear-The-Reaper-v3.mp3	184
990	Godzilla	\N	media/songs/Blue-Oyster-Cult/Godzilla.mp3	184
991	Godzilla v2	\N	media/songs/Blue-Oyster-Cult/Godzilla-v2.mp3	184
992	Godzilla v3	\N	media/songs/Blue-Oyster-Cult/Godzilla-v3.mp3	184
993	Transmaniacon Mc	\N	media/songs/Blue-Oyster-Cult/Transmaniacon-Mc.mp3	184
994	Rabbit Soup	\N	media/songs/Blue-Saraceno/Rabbit-Soup.mp3	185
995	Everybody Needs Somebody To Love	\N	media/songs/Blues-Brothers/Everybody-Needs-Somebody-To-Love.mp3	186
996	Everybody Needs Somebody To Love v2	\N	media/songs/Blues-Brothers/Everybody-Needs-Somebody-To-Love-v2.mp3	186
997	Going Back To Miami	\N	media/songs/Blues-Brothers/Going-Back-To-Miami.mp3	186
998	Going Back To Miami v2	\N	media/songs/Blues-Brothers/Going-Back-To-Miami-v2.mp3	186
999	Soul Finger	\N	media/songs/Blues-Brothers/Soul-Finger.mp3	186
1000	Soul Finger v2	\N	media/songs/Blues-Brothers/Soul-Finger-v2.mp3	186
1001	Soul Finger v3	\N	media/songs/Blues-Brothers/Soul-Finger-v3.mp3	186
1002	Soul Man	\N	media/songs/Blues-Brothers/Soul-Man.mp3	186
1003	Soul Man v2	\N	media/songs/Blues-Brothers/Soul-Man-v2.mp3	186
1004	Sweet Home Chicago	\N	media/songs/Blues-Brothers/Sweet-Home-Chicago.mp3	186
1005	Sweet Home Chicago v2	\N	media/songs/Blues-Brothers/Sweet-Home-Chicago-v2.mp3	186
1006	Sweet Home Chicago v3	\N	media/songs/Blues-Brothers/Sweet-Home-Chicago-v3.mp3	186
1007	Before The Storm	\N	media/songs/Blues-Saraceno/Before-The-Storm.mp3	187
1008	Rabbit Soup	\N	media/songs/Blues-Saraceno/Rabbit-Soup.mp3	187
1009	Tommy Gun	\N	media/songs/Blues-Saraceno/Tommy-Gun.mp3	187
1010	Run Around	\N	media/songs/Blues-Traveler/Run-Around.mp3	188
1011	Run Around v2	\N	media/songs/Blues-Traveler/Run-Around-v2.mp3	188
1012	Beetlebum	\N	media/songs/Blur/Beetlebum.mp3	189
1013	End Of A Century	\N	media/songs/Blur/End-Of-A-Century.mp3	189
1014	Girls And Boys	\N	media/songs/Blur/Girls-And-Boys.mp3	189
1015	Parklife	\N	media/songs/Blur/Parklife.mp3	189
1016	Parklife v2	\N	media/songs/Blur/Parklife-v2.mp3	189
1017	Song 2	\N	media/songs/Blur/Song-2.mp3	189
1018	Song 2 v2	\N	media/songs/Blur/Song-2-v2.mp3	189
1019	Song 2 v3	\N	media/songs/Blur/Song-2-v3.mp3	189
1020	Stereotypes	\N	media/songs/Blur/Stereotypes.mp3	189
1021	Theres No Other Way	\N	media/songs/Blur/Theres-No-Other-Way.mp3	189
1022	Not Fade Away	\N	media/songs/Bo-Diddley/Not-Fade-Away.mp3	190
1023	Not Fade Away v2	\N	media/songs/Bo-Diddley/Not-Fade-Away-v2.mp3	190
1024	All Along The Watchtower	\N	media/songs/Bob-Dylan/All-Along-The-Watchtower.mp3	191
1025	All Along The Watchtower v2	\N	media/songs/Bob-Dylan/All-Along-The-Watchtower-v2.mp3	191
1026	Knockin On Heavens Door	\N	media/songs/Bob-Dylan/Knockin-On-Heavens-Door.mp3	191
1027	Like A Rolling Stone	\N	media/songs/Bob-Dylan/Like-A-Rolling-Stone.mp3	191
1028	One More Cup Of Coffee	\N	media/songs/Bob-Dylan/One-More-Cup-Of-Coffee.mp3	191
1029	Subterranean Homesick Blues	\N	media/songs/Bob-Dylan/Subterranean-Homesick-Blues.mp3	191
1030	Tangled Up In Blue	\N	media/songs/Bob-Dylan/Tangled-Up-In-Blue.mp3	191
1031	The Man In The Long Black Coat	\N	media/songs/Bob-Dylan/The-Man-In-The-Long-Black-Coat.mp3	191
1032	Things Have Changed	\N	media/songs/Bob-Dylan/Things-Have-Changed.mp3	191
1033	Union Sundown	\N	media/songs/Bob-Dylan/Union-Sundown.mp3	191
1034	Airplanes	\N	media/songs/BoB-Feat-Harley-Williams/Airplanes.mp3	192
1035	No Woman No Cry	\N	media/songs/Bob-Marley/No-Woman-No-Cry.mp3	193
1036	No Woman No Cry v2	\N	media/songs/Bob-Marley/No-Woman-No-Cry-v2.mp3	193
1037	Exodus	\N	media/songs/Bob-Marley-And-The-Wailers/Exodus.mp3	194
1038	Get Up Stand Up	\N	media/songs/Bob-Marley-And-The-Wailers/Get-Up-Stand-Up.mp3	194
1039	I Shot The Sherif	\N	media/songs/Bob-Marley-And-The-Wailers/I-Shot-The-Sherif.mp3	194
1040	Is This Love	\N	media/songs/Bob-Marley-And-The-Wailers/Is-This-Love.mp3	194
1041	Jamming	\N	media/songs/Bob-Marley-And-The-Wailers/Jamming.mp3	194
1042	Lively Up Yourself	\N	media/songs/Bob-Marley-And-The-Wailers/Lively-Up-Yourself.mp3	194
1043	No Woman No Cry	\N	media/songs/Bob-Marley-And-The-Wailers/No-Woman-No-Cry.mp3	194
1044	One Love	\N	media/songs/Bob-Marley-And-The-Wailers/One-Love.mp3	194
1045	Satisfy My Soul	\N	media/songs/Bob-Marley-And-The-Wailers/Satisfy-My-Soul.mp3	194
1046	Stir It Up	\N	media/songs/Bob-Marley-And-The-Wailers/Stir-It-Up.mp3	194
1047	Three Little Birds	\N	media/songs/Bob-Marley-And-The-Wailers/Three-Little-Birds.mp3	194
1048	Waiting In Vain	\N	media/songs/Bob-Marley-And-The-Wailers/Waiting-In-Vain.mp3	194
1049	Against The Wind	\N	media/songs/Bob-Seger/Against-The-Wind.mp3	195
1050	Betty Lou	\N	media/songs/Bob-Seger/Betty-Lou.mp3	195
1051	Get Out Of Denver	\N	media/songs/Bob-Seger/Get-Out-Of-Denver.mp3	195
1052	Her Strut	\N	media/songs/Bob-Seger/Her-Strut.mp3	195
1053	Hollywood Nights	\N	media/songs/Bob-Seger/Hollywood-Nights.mp3	195
1054	Hollywood Nights v2	\N	media/songs/Bob-Seger/Hollywood-Nights-v2.mp3	195
1055	Mainstreet	\N	media/songs/Bob-Seger/Mainstreet.mp3	195
1056	Night Moves	\N	media/songs/Bob-Seger/Night-Moves.mp3	195
1057	Old Time Rock And Roll	\N	media/songs/Bob-Seger/Old-Time-Rock-And-Roll.mp3	195
1058	Old Time Rock And Roll v2	\N	media/songs/Bob-Seger/Old-Time-Rock-And-Roll-v2.mp3	195
1059	Old Time Rock And Roll v3	\N	media/songs/Bob-Seger/Old-Time-Rock-And-Roll-v3.mp3	195
1060	Rock And Roll	\N	media/songs/Bob-Seger/Rock-And-Roll.mp3	195
1061	Still The Same	\N	media/songs/Bob-Seger/Still-The-Same.mp3	195
1062	Sunspot Baby	\N	media/songs/Bob-Seger/Sunspot-Baby.mp3	195
1063	Turn The Page	\N	media/songs/Bob-Seger/Turn-The-Page.mp3	195
1064	I Fought The Law	\N	media/songs/Bobby-Fuller-Four/I-Fought-The-Law.mp3	196
1065	Dont Fear The Reaper	\N	media/songs/BOC/Dont-Fear-The-Reaper.mp3	197
1066	All About Loving You	\N	media/songs/Bon-Jovi/All-About-Loving-You.mp3	198
1067	All About Loving You v2	\N	media/songs/Bon-Jovi/All-About-Loving-You-v2.mp3	198
1068	Always	\N	media/songs/Bon-Jovi/Always.mp3	198
1069	Always v2	\N	media/songs/Bon-Jovi/Always-v2.mp3	198
1070	Always v3	\N	media/songs/Bon-Jovi/Always-v3.mp3	198
1071	Always v4	\N	media/songs/Bon-Jovi/Always-v4.mp3	198
1072	Always v5	\N	media/songs/Bon-Jovi/Always-v5.mp3	198
1073	Bad Medicine	\N	media/songs/Bon-Jovi/Bad-Medicine.mp3	198
1074	Bad Medicine v2	\N	media/songs/Bon-Jovi/Bad-Medicine-v2.mp3	198
1075	Bad Medicine v3	\N	media/songs/Bon-Jovi/Bad-Medicine-v3.mp3	198
1076	Bad Medicine v4	\N	media/songs/Bon-Jovi/Bad-Medicine-v4.mp3	198
1077	Bed Of Roses	\N	media/songs/Bon-Jovi/Bed-Of-Roses.mp3	198
1078	Bed Of Roses v2	\N	media/songs/Bon-Jovi/Bed-Of-Roses-v2.mp3	198
1079	Bed Of Roses v3	\N	media/songs/Bon-Jovi/Bed-Of-Roses-v3.mp3	198
1080	Blaze Of Glory	\N	media/songs/Bon-Jovi/Blaze-Of-Glory.mp3	198
1081	Blaze Of Glory v2	\N	media/songs/Bon-Jovi/Blaze-Of-Glory-v2.mp3	198
1082	Blaze Of Glory v3	\N	media/songs/Bon-Jovi/Blaze-Of-Glory-v3.mp3	198
1083	Blaze Of Glory v4	\N	media/songs/Bon-Jovi/Blaze-Of-Glory-v4.mp3	198
1084	Born To Be My Baby	\N	media/songs/Bon-Jovi/Born-To-Be-My-Baby.mp3	198
1085	Born To Be My Baby v2	\N	media/songs/Bon-Jovi/Born-To-Be-My-Baby-v2.mp3	198
1086	Dry County	\N	media/songs/Bon-Jovi/Dry-County.mp3	198
1087	Everyday	\N	media/songs/Bon-Jovi/Everyday.mp3	198
1088	Everyday v2	\N	media/songs/Bon-Jovi/Everyday-v2.mp3	198
1089	Have A Nice Day	\N	media/songs/Bon-Jovi/Have-A-Nice-Day.mp3	198
1090	Id Die For You	\N	media/songs/Bon-Jovi/Id-Die-For-You.mp3	198
1091	Id Die For You v2	\N	media/songs/Bon-Jovi/Id-Die-For-You-v2.mp3	198
1092	Id Die For You v3	\N	media/songs/Bon-Jovi/Id-Die-For-You-v3.mp3	198
1093	Id Die For You v4	\N	media/songs/Bon-Jovi/Id-Die-For-You-v4.mp3	198
1094	Ill Be There For You	\N	media/songs/Bon-Jovi/Ill-Be-There-For-You.mp3	198
1095	Ill Be There For You v2	\N	media/songs/Bon-Jovi/Ill-Be-There-For-You-v2.mp3	198
1096	In And Out Of Love	\N	media/songs/Bon-Jovi/In-And-Out-Of-Love.mp3	198
1097	In And Out Of Love v2	\N	media/songs/Bon-Jovi/In-And-Out-Of-Love-v2.mp3	198
1098	In These Arms	\N	media/songs/Bon-Jovi/In-These-Arms.mp3	198
1099	In These Arms Tonight	\N	media/songs/Bon-Jovi/In-These-Arms-Tonight.mp3	198
1100	Its Hard Letting You Go	\N	media/songs/Bon-Jovi/Its-Hard-Letting-You-Go.mp3	198
1101	Its My Life	\N	media/songs/Bon-Jovi/Its-My-Life.mp3	198
1102	Its My Life v2	\N	media/songs/Bon-Jovi/Its-My-Life-v2.mp3	198
1103	Its My Life v3	\N	media/songs/Bon-Jovi/Its-My-Life-v3.mp3	198
1104	Keep The Faith	\N	media/songs/Bon-Jovi/Keep-The-Faith.mp3	198
1105	Lay Your Hands On Me	\N	media/songs/Bon-Jovi/Lay-Your-Hands-On-Me.mp3	198
1106	Lay Your Hands On Me v2	\N	media/songs/Bon-Jovi/Lay-Your-Hands-On-Me-v2.mp3	198
1107	Lay Your Hands On Me v3	\N	media/songs/Bon-Jovi/Lay-Your-Hands-On-Me-v3.mp3	198
1108	Lie To Me	\N	media/songs/Bon-Jovi/Lie-To-Me.mp3	198
1109	Lie To Me v2	\N	media/songs/Bon-Jovi/Lie-To-Me-v2.mp3	198
1110	Lie To Me v3	\N	media/songs/Bon-Jovi/Lie-To-Me-v3.mp3	198
1111	Livin On A Prayer	\N	media/songs/Bon-Jovi/Livin-On-A-Prayer.mp3	198
1112	Livin On A Prayer v2	\N	media/songs/Bon-Jovi/Livin-On-A-Prayer-v2.mp3	198
1113	Livin On A Prayer v3	\N	media/songs/Bon-Jovi/Livin-On-A-Prayer-v3.mp3	198
1114	Livin On A Prayer v4	\N	media/songs/Bon-Jovi/Livin-On-A-Prayer-v4.mp3	198
1115	Livin On A Prayer v5	\N	media/songs/Bon-Jovi/Livin-On-A-Prayer-v5.mp3	198
1116	Livin On A Prayer v6	\N	media/songs/Bon-Jovi/Livin-On-A-Prayer-v6.mp3	198
1117	Love Is A Social Disease	\N	media/songs/Bon-Jovi/Love-Is-A-Social-Disease.mp3	198
1118	Never Say Good Bye	\N	media/songs/Bon-Jovi/Never-Say-Good-Bye.mp3	198
1119	Never Say Good Bye v2	\N	media/songs/Bon-Jovi/Never-Say-Good-Bye-v2.mp3	198
1120	No Apologies	\N	media/songs/Bon-Jovi/No-Apologies.mp3	198
1121	No Apologies v2	\N	media/songs/Bon-Jovi/No-Apologies-v2.mp3	198
1122	One Wild Night	\N	media/songs/Bon-Jovi/One-Wild-Night.mp3	198
1123	One Wild Night v2	\N	media/songs/Bon-Jovi/One-Wild-Night-v2.mp3	198
1124	Runaway	\N	media/songs/Bon-Jovi/Runaway.mp3	198
1125	Runaway v2	\N	media/songs/Bon-Jovi/Runaway-v2.mp3	198
1126	Runaway v3	\N	media/songs/Bon-Jovi/Runaway-v3.mp3	198
1127	Runaway v4	\N	media/songs/Bon-Jovi/Runaway-v4.mp3	198
1128	Runaway v5	\N	media/songs/Bon-Jovi/Runaway-v5.mp3	198
1129	Social Disease	\N	media/songs/Bon-Jovi/Social-Disease.mp3	198
1349	Concerto	\N	media/songs/Cacophony/Concerto.mp3	235
1130	Something For The Pain	\N	media/songs/Bon-Jovi/Something-For-The-Pain.mp3	198
1131	Something For The Pain v2	\N	media/songs/Bon-Jovi/Something-For-The-Pain-v2.mp3	198
1132	Superman Tonight	\N	media/songs/Bon-Jovi/Superman-Tonight.mp3	198
1133	The Distance	\N	media/songs/Bon-Jovi/The-Distance.mp3	198
1134	This Aint A Love Song	\N	media/songs/Bon-Jovi/This-Aint-A-Love-Song.mp3	198
1135	This Aint A Love Song v2	\N	media/songs/Bon-Jovi/This-Aint-A-Love-Song-v2.mp3	198
1136	Undivided	\N	media/songs/Bon-Jovi/Undivided.mp3	198
1137	Wanted Dead Or Alive	\N	media/songs/Bon-Jovi/Wanted-Dead-Or-Alive.mp3	198
1138	Wanted Dead Or Alive v2	\N	media/songs/Bon-Jovi/Wanted-Dead-Or-Alive-v2.mp3	198
1139	Wanted Dead Or Alive v3	\N	media/songs/Bon-Jovi/Wanted-Dead-Or-Alive-v3.mp3	198
1140	Wanted Dead Or Alive v4	\N	media/songs/Bon-Jovi/Wanted-Dead-Or-Alive-v4.mp3	198
1141	We Werent Born To Follow	\N	media/songs/Bon-Jovi/We-Werent-Born-To-Follow.mp3	198
1142	We Werent Born To Follow v2	\N	media/songs/Bon-Jovi/We-Werent-Born-To-Follow-v2.mp3	198
1143	What Do You Got	\N	media/songs/Bon-Jovi/What-Do-You-Got.mp3	198
1144	Who Says You Cant Go Home	\N	media/songs/Bon-Jovi/Who-Says-You-Cant-Go-Home.mp3	198
1145	You Give Love A Bad Name	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name.mp3	198
1146	You Give Love A Bad Name v2	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v2.mp3	198
1147	You Give Love A Bad Name v3	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v3.mp3	198
1148	You Give Love A Bad Name v4	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v4.mp3	198
1149	You Give Love A Bad Name v5	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v5.mp3	198
1150	You Give Love A Bad Name v6	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v6.mp3	198
1151	You Give Love A Bad Name v7	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v7.mp3	198
1152	You Give Love A Bad Name v8	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v8.mp3	198
1153	You Give Love A Bad Name v9	\N	media/songs/Bon-Jovi/You-Give-Love-A-Bad-Name-v9.mp3	198
1154	Cry On My Shoulder	\N	media/songs/Bonnie-Raitt/Cry-On-My-Shoulder.mp3	199
1155	Have A Heart	\N	media/songs/Bonnie-Raitt/Have-A-Heart.mp3	199
1156	Love Letter	\N	media/songs/Bonnie-Raitt/Love-Letter.mp3	199
1157	Nick Of Time	\N	media/songs/Bonnie-Raitt/Nick-Of-Time.mp3	199
1158	Nobodys Girl	\N	media/songs/Bonnie-Raitt/Nobodys-Girl.mp3	199
1159	Too Soon To Tell	\N	media/songs/Bonnie-Raitt/Too-Soon-To-Tell.mp3	199
1160	Total Eclipse Of The Heart	\N	media/songs/Bonnie-Tyler/Total-Eclipse-Of-The-Heart.mp3	200
1161	Total Eclipse Of The Heart v2	\N	media/songs/Bonnie-Tyler/Total-Eclipse-Of-The-Heart-v2.mp3	200
1162	Amanda	\N	media/songs/Boston/Amanda.mp3	201
1163	Amanda v2	\N	media/songs/Boston/Amanda-v2.mp3	201
1164	Foreplay Long Time	\N	media/songs/Boston/Foreplay-Long-Time.mp3	201
1165	Foreplay Long Time v2	\N	media/songs/Boston/Foreplay-Long-Time-v2.mp3	201
1166	Foreplay Longtime	\N	media/songs/Boston/Foreplay-Longtime.mp3	201
1167	Hitch A Ride	\N	media/songs/Boston/Hitch-A-Ride.mp3	201
1168	Hitch A Ride v2	\N	media/songs/Boston/Hitch-A-Ride-v2.mp3	201
1169	Long Time	\N	media/songs/Boston/Long-Time.mp3	201
1170	Long Time v2	\N	media/songs/Boston/Long-Time-v2.mp3	201
1171	More Than A Feeling	\N	media/songs/Boston/More-Than-A-Feeling.mp3	201
1172	More Than A Feeling v2	\N	media/songs/Boston/More-Than-A-Feeling-v2.mp3	201
1173	More Than A Feeling v3	\N	media/songs/Boston/More-Than-A-Feeling-v3.mp3	201
1174	More Than A Feeling v4	\N	media/songs/Boston/More-Than-A-Feeling-v4.mp3	201
1175	More Than A Feeling v5	\N	media/songs/Boston/More-Than-A-Feeling-v5.mp3	201
1176	More Than A Feeling v6	\N	media/songs/Boston/More-Than-A-Feeling-v6.mp3	201
1177	More Than A Feeling v7	\N	media/songs/Boston/More-Than-A-Feeling-v7.mp3	201
1178	Peace Of Mind	\N	media/songs/Boston/Peace-Of-Mind.mp3	201
1179	Peace Of Mind v2	\N	media/songs/Boston/Peace-Of-Mind-v2.mp3	201
1180	Peace Of Mind v3	\N	media/songs/Boston/Peace-Of-Mind-v3.mp3	201
1181	Peace Of Mind v4	\N	media/songs/Boston/Peace-Of-Mind-v4.mp3	201
1182	Peace Of Mind v5	\N	media/songs/Boston/Peace-Of-Mind-v5.mp3	201
1183	Rock And Roll Band	\N	media/songs/Boston/Rock-And-Roll-Band.mp3	201
1184	Rock And Roll Band v2	\N	media/songs/Boston/Rock-And-Roll-Band-v2.mp3	201
1185	Rock And Roll Band v3	\N	media/songs/Boston/Rock-And-Roll-Band-v3.mp3	201
1186	Smokin	\N	media/songs/Boston/Smokin.mp3	201
1187	Smokin v2	\N	media/songs/Boston/Smokin-v2.mp3	201
1188	Smokin v3	\N	media/songs/Boston/Smokin-v3.mp3	201
1189	Smokin v4	\N	media/songs/Boston/Smokin-v4.mp3	201
1190	Something About You	\N	media/songs/Boston/Something-About-You.mp3	201
1191	I Feel So	\N	media/songs/Box-Car-Racer/I-Feel-So.mp3	202
1192	Thunder	\N	media/songs/Boys-Like-Girls/Thunder.mp3	203
1193	Baby  Can I Hold You Tonight	\N	media/songs/BoyZone/Baby--Can-I-Hold-You-Tonight.mp3	204
1194	Baby  Can I Hold You Tonight v2	\N	media/songs/BoyZone/Baby--Can-I-Hold-You-Tonight-v2.mp3	204
1195	Ju	\N	media/songs/Brad-Paisley/Ju.mp3	205
1196	Mud On The Tires	\N	media/songs/Brad-Paisley/Mud-On-The-Tires.mp3	205
1197	Mud On The Tires v2	\N	media/songs/Brad-Paisley/Mud-On-The-Tires-v2.mp3	205
1198	Ticks	\N	media/songs/Brad-Paisley/Ticks.mp3	205
1199	Water	\N	media/songs/Brad-Paisley/Water.mp3	205
1200	Dropping Out Of School	\N	media/songs/Brad-Sucks/Dropping-Out-Of-School.mp3	206
1201	Understood By Your Dad	\N	media/songs/Brad-Sucks/Understood-By-Your-Dad.mp3	206
1202	Sic Transit Gloria Glory Fades	\N	media/songs/Brand-New/Sic-Transit-Gloria-Glory-Fades.mp3	207
1203	Sowing Season Yeah	\N	media/songs/Brand-New/Sowing-Season-Yeah.mp3	207
1204	Believe	\N	media/songs/Bravery/Believe.mp3	208
1205	Mother Freedom	\N	media/songs/Bread/Mother-Freedom.mp3	209
1206	Truckin	\N	media/songs/Bread/Truckin.mp3	209
1207	Diary Of Jane	\N	media/songs/Breaking-Benjamin/Diary-Of-Jane.mp3	210
1208	Give Me A Sign	\N	media/songs/Breaking-Benjamin/Give-Me-A-Sign.mp3	210
1209	Give Me A Sign v2	\N	media/songs/Breaking-Benjamin/Give-Me-A-Sign-v2.mp3	210
1210	Sooner Or Later	\N	media/songs/Breaking-Benjamin/Sooner-Or-Later.mp3	210
1211	Until The End	\N	media/songs/Breaking-Benjamin/Until-The-End.mp3	210
1212	One For The Road	\N	media/songs/Breaking-Wheel/One-For-The-Road.mp3	211
1213	Shoulder To The Plow	\N	media/songs/Breaking-Wheel/Shoulder-To-The-Plow.mp3	211
1214	Gemini	\N	media/songs/Brian-Kahanek/Gemini.mp3	212
1215	Gemini v2	\N	media/songs/Brian-Kahanek/Gemini-v2.mp3	212
1216	Last Horizon	\N	media/songs/Brian-May/Last-Horizon.mp3	213
1217	Mack The Knife	\N	media/songs/Brian-Setzer-Orchestra/Mack-The-Knife.mp3	214
1218	Mack The Knife v2	\N	media/songs/Brian-Setzer-Orchestra/Mack-The-Knife-v2.mp3	214
1219	Rock This Town	\N	media/songs/Brian-Setzer-Orchestra/Rock-This-Town.mp3	214
1220	Rock This Town v2	\N	media/songs/Brian-Setzer-Orchestra/Rock-This-Town-v2.mp3	214
1221	A Lot Like Vegas	\N	media/songs/Bring-Me-The-Horizon/A-Lot-Like-Vegas.mp3	215
1222	Chelsea Smile	\N	media/songs/Bring-Me-The-Horizon/Chelsea-Smile.mp3	215
1223	Diamonds Are Forever	\N	media/songs/Bring-Me-The-Horizon/Diamonds-Are-Forever.mp3	215
1224	Baby One More Time	\N	media/songs/Britney-Spears/Baby-One-More-Time.mp3	216
1225	Oops I Did It Again	\N	media/songs/Britney-Spears/Oops-I-Did-It-Again.mp3	216
1226	Hillbilly Deluxe	\N	media/songs/Brooks-and-Dunn/Hillbilly-Deluxe.mp3	217
1227	Hillbilly Deluxe v2	\N	media/songs/Brooks-and-Dunn/Hillbilly-Deluxe-v2.mp3	217
1228	Play Something Country	\N	media/songs/Brooks-and-Dunn/Play-Something-Country.mp3	217
1229	Tears Of The Dragon	\N	media/songs/Bruce-Dickinson/Tears-Of-The-Dragon.mp3	218
1230	Badlands	\N	media/songs/Bruce-Springsteen/Badlands.mp3	219
1231	Born In The Usa	\N	media/songs/Bruce-Springsteen/Born-In-The-Usa.mp3	219
1232	Born To Run	\N	media/songs/Bruce-Springsteen/Born-To-Run.mp3	219
1233	Born To Run v2	\N	media/songs/Bruce-Springsteen/Born-To-Run-v2.mp3	219
1234	Dancing In The Dark	\N	media/songs/Bruce-Springsteen/Dancing-In-The-Dark.mp3	219
1235	Glory Days	\N	media/songs/Bruce-Springsteen/Glory-Days.mp3	219
1236	My Lucky Day	\N	media/songs/Bruce-Springsteen/My-Lucky-Day.mp3	219
1237	Radio Nowhere	\N	media/songs/Bruce-Springsteen/Radio-Nowhere.mp3	219
1238	The River	\N	media/songs/Bruce-Springsteen/The-River.mp3	219
1239	Grenade	\N	media/songs/Bruno-Mars/Grenade.mp3	220
1240	Marry You	\N	media/songs/Bruno-Mars/Marry-You.mp3	220
1241	Beat It	\N	media/songs/Bryan-Adams/Beat-It.mp3	221
1242	Cant Stop This Thing We Started	\N	media/songs/Bryan-Adams/Cant-Stop-This-Thing-We-Started.mp3	221
1243	Cuts Like A Knife	\N	media/songs/Bryan-Adams/Cuts-Like-A-Knife.mp3	221
1244	Cuts Like A Knife v2	\N	media/songs/Bryan-Adams/Cuts-Like-A-Knife-v2.mp3	221
1245	Cuts Like A Knife v3	\N	media/songs/Bryan-Adams/Cuts-Like-A-Knife-v3.mp3	221
1246	Everything I Do	\N	media/songs/Bryan-Adams/Everything-I-Do.mp3	221
1247	Everything I Do v2	\N	media/songs/Bryan-Adams/Everything-I-Do-v2.mp3	221
1248	Heaven	\N	media/songs/Bryan-Adams/Heaven.mp3	221
1249	Heaven v2	\N	media/songs/Bryan-Adams/Heaven-v2.mp3	221
1250	Its Only Love	\N	media/songs/Bryan-Adams/Its-Only-Love.mp3	221
1251	Its Only Love v2	\N	media/songs/Bryan-Adams/Its-Only-Love-v2.mp3	221
1252	Kids Wanna Rock	\N	media/songs/Bryan-Adams/Kids-Wanna-Rock.mp3	221
1253	Kids Wanna Rock v2	\N	media/songs/Bryan-Adams/Kids-Wanna-Rock-v2.mp3	221
1254	Run To You	\N	media/songs/Bryan-Adams/Run-To-You.mp3	221
1255	Run To You v2	\N	media/songs/Bryan-Adams/Run-To-You-v2.mp3	221
1256	Run To You v3	\N	media/songs/Bryan-Adams/Run-To-You-v3.mp3	221
1257	Run To You v4	\N	media/songs/Bryan-Adams/Run-To-You-v4.mp3	221
1258	Run To You v5	\N	media/songs/Bryan-Adams/Run-To-You-v5.mp3	221
1259	Somebody	\N	media/songs/Bryan-Adams/Somebody.mp3	221
1260	Somebody v2	\N	media/songs/Bryan-Adams/Somebody-v2.mp3	221
1261	Summer Of 69	\N	media/songs/Bryan-Adams/Summer-Of-69.mp3	221
1262	Summer Of 69 v2	\N	media/songs/Bryan-Adams/Summer-Of-69-v2.mp3	221
1263	Summer Of 69 v3	\N	media/songs/Bryan-Adams/Summer-Of-69-v3.mp3	221
1264	Summer Of 69 v4	\N	media/songs/Bryan-Adams/Summer-Of-69-v4.mp3	221
1265	Summer Of 69 v5	\N	media/songs/Bryan-Adams/Summer-Of-69-v5.mp3	221
1266	The Only Thing That Looks Good On You	\N	media/songs/Bryan-Adams/The-Only-Thing-That-Looks-Good-On-You.mp3	221
1267	The Only Thing That Looks Good On You v2	\N	media/songs/Bryan-Adams/The-Only-Thing-That-Looks-Good-On-You-v2.mp3	221
1268	Lit Up	\N	media/songs/Buckcherry/Lit-Up.mp3	222
1269	Rescue Me	\N	media/songs/Buckcherry/Rescue-Me.mp3	222
1270	Rescue Me v2	\N	media/songs/Buckcherry/Rescue-Me-v2.mp3	222
1271	Binge And Grab	\N	media/songs/Buckethead/Binge-And-Grab.mp3	223
1272	Brewer In The Air	\N	media/songs/Buckethead/Brewer-In-The-Air.mp3	223
1273	Final Wars	\N	media/songs/Buckethead/Final-Wars.mp3	223
1274	Jordan	\N	media/songs/Buckethead/Jordan.mp3	223
1275	Jordan v2	\N	media/songs/Buckethead/Jordan-v2.mp3	223
1276	King James	\N	media/songs/Buckethead/King-James.mp3	223
1277	Night Of The Slunk	\N	media/songs/Buckethead/Night-Of-The-Slunk.mp3	223
1278	Nottingham Lace	\N	media/songs/Buckethead/Nottingham-Lace.mp3	223
1279	Shadows Between The Sky	\N	media/songs/Buckethead/Shadows-Between-The-Sky.mp3	223
1280	Siege Engine	\N	media/songs/Buckethead/Siege-Engine.mp3	223
1281	Soothsayer	\N	media/songs/Buckethead/Soothsayer.mp3	223
1282	The Redeem Team	\N	media/songs/Buckethead/The-Redeem-Team.mp3	223
1283	Welcome To Bucketheadland	\N	media/songs/Buckethead/Welcome-To-Bucketheadland.mp3	223
1284	Whitewash	\N	media/songs/Buckethead/Whitewash.mp3	223
1285	Whitewash v2	\N	media/songs/Buckethead/Whitewash-v2.mp3	223
1286	Feels Like Rain	\N	media/songs/Buddy-Guy/Feels-Like-Rain.mp3	224
1287	Mustang Sally	\N	media/songs/Buddy-Guy/Mustang-Sally.mp3	224
1288	Mustang Sally v2	\N	media/songs/Buddy-Guy/Mustang-Sally-v2.mp3	224
1289	Stone Crazy	\N	media/songs/Buddy-Guy/Stone-Crazy.mp3	224
1290	Every Day	\N	media/songs/Buddy-Holly/Every-Day.mp3	225
1291	Heartbeat	\N	media/songs/Buddy-Holly/Heartbeat.mp3	225
1292	It Doesnt Matter Anymore	\N	media/songs/Buddy-Holly/It-Doesnt-Matter-Anymore.mp3	225
1293	Oh Boy	\N	media/songs/Buddy-Holly/Oh-Boy.mp3	225
1294	Peggy Sue	\N	media/songs/Buddy-Holly/Peggy-Sue.mp3	225
1295	Thatll Be The Day	\N	media/songs/Buddy-Holly/Thatll-Be-The-Day.mp3	225
1296	Crash Course In Brain Surgery	\N	media/songs/Budgie/Crash-Course-In-Brain-Surgery.mp3	226
1297	For What Its Worth	\N	media/songs/Buffalo-Springfield/For-What-Its-Worth.mp3	227
1298	10 Years Today	\N	media/songs/Bullet-For-My-Valentine/10-Years-Today.mp3	228
1299	A Place Where You Belong	\N	media/songs/Bullet-For-My-Valentine/A-Place-Where-You-Belong.mp3	228
1300	A Place Where You Belong v2	\N	media/songs/Bullet-For-My-Valentine/A-Place-Where-You-Belong-v2.mp3	228
1301	All These Things I Hate	\N	media/songs/Bullet-For-My-Valentine/All-These-Things-I-Hate.mp3	228
1302	Ashes Of The Innocent	\N	media/songs/Bullet-For-My-Valentine/Ashes-Of-The-Innocent.mp3	228
1303	Begging For Mercy	\N	media/songs/Bullet-For-My-Valentine/Begging-For-Mercy.mp3	228
1304	Bittersweet Memories	\N	media/songs/Bullet-For-My-Valentine/Bittersweet-Memories.mp3	228
1305	Cries In Vain	\N	media/songs/Bullet-For-My-Valentine/Cries-In-Vain.mp3	228
1306	Four Words To Choke Upon	\N	media/songs/Bullet-For-My-Valentine/Four-Words-To-Choke-Upon.mp3	228
1307	Four Words To Choke Upon v2	\N	media/songs/Bullet-For-My-Valentine/Four-Words-To-Choke-Upon-v2.mp3	228
1308	Hand Of Blood	\N	media/songs/Bullet-For-My-Valentine/Hand-Of-Blood.mp3	228
1309	Hand Of Blood v2	\N	media/songs/Bullet-For-My-Valentine/Hand-Of-Blood-v2.mp3	228
1310	Hearts Burst Into Fire	\N	media/songs/Bullet-For-My-Valentine/Hearts-Burst-Into-Fire.mp3	228
1311	Hearts Burst Into Flames	\N	media/songs/Bullet-For-My-Valentine/Hearts-Burst-Into-Flames.mp3	228
1312	Her Voice Resides	\N	media/songs/Bullet-For-My-Valentine/Her-Voice-Resides.mp3	228
1313	Her Voice Resides v2	\N	media/songs/Bullet-For-My-Valentine/Her-Voice-Resides-v2.mp3	228
1314	My Fist Your Mouth Her Scars	\N	media/songs/Bullet-For-My-Valentine/My-Fist-Your-Mouth-Her-Scars.mp3	228
1315	No Control	\N	media/songs/Bullet-For-My-Valentine/No-Control.mp3	228
1316	Room 409	\N	media/songs/Bullet-For-My-Valentine/Room-409.mp3	228
1317	Scream Aim Fire	\N	media/songs/Bullet-For-My-Valentine/Scream-Aim-Fire.mp3	228
1318	Scream Aim Fire v2	\N	media/songs/Bullet-For-My-Valentine/Scream-Aim-Fire-v2.mp3	228
1319	Scream Aim Fire v3	\N	media/songs/Bullet-For-My-Valentine/Scream-Aim-Fire-v3.mp3	228
1320	Spit You Out	\N	media/songs/Bullet-For-My-Valentine/Spit-You-Out.mp3	228
1321	Suffocating Under Words Of Sorrow	\N	media/songs/Bullet-For-My-Valentine/Suffocating-Under-Words-Of-Sorrow.mp3	228
1322	Tears Dont Fall	\N	media/songs/Bullet-For-My-Valentine/Tears-Dont-Fall.mp3	228
1323	The End	\N	media/songs/Bullet-For-My-Valentine/The-End.mp3	228
1324	The Last Fight	\N	media/songs/Bullet-For-My-Valentine/The-Last-Fight.mp3	228
1325	The Poison	\N	media/songs/Bullet-For-My-Valentine/The-Poison.mp3	228
1326	Waking The Demon	\N	media/songs/Bullet-For-My-Valentine/Waking-The-Demon.mp3	228
1327	Waking The Demon v2	\N	media/songs/Bullet-For-My-Valentine/Waking-The-Demon-v2.mp3	228
1328	Waking The Demon v3	\N	media/songs/Bullet-For-My-Valentine/Waking-The-Demon-v3.mp3	228
1329	Your Betrayal	\N	media/songs/Bullet-For-My-Valentine/Your-Betrayal.mp3	228
1330	Your Betrayal v2	\N	media/songs/Bullet-For-My-Valentine/Your-Betrayal-v2.mp3	228
1331	Mafalda	\N	media/songs/Bumblefoot/Mafalda.mp3	229
1332	Mafalda v2	\N	media/songs/Bumblefoot/Mafalda-v2.mp3	229
1333	Lemon Frosting	\N	media/songs/Bunny-Knutson/Lemon-Frosting.mp3	230
1334	Heart Full Of Black	\N	media/songs/Burning-Brides/Heart-Full-Of-Black.mp3	231
1335	Alt Jam	\N	media/songs/Bush/Alt-Jam.mp3	232
1336	Comedown	\N	media/songs/Bush/Comedown.mp3	232
1337	Comedown v2	\N	media/songs/Bush/Comedown-v2.mp3	232
1338	Comedown v3	\N	media/songs/Bush/Comedown-v3.mp3	232
1339	Comedown v4	\N	media/songs/Bush/Comedown-v4.mp3	232
1340	Little Things	\N	media/songs/Bush/Little-Things.mp3	232
1341	Little Things v2	\N	media/songs/Bush/Little-Things-v2.mp3	232
1342	Machine Head	\N	media/songs/Bush/Machine-Head.mp3	232
1343	Machine Head v2	\N	media/songs/Bush/Machine-Head-v2.mp3	232
1344	Swallowed	\N	media/songs/Bush/Swallowed.mp3	232
1345	Swallowed v2	\N	media/songs/Bush/Swallowed-v2.mp3	232
1346	What I Go To School For	\N	media/songs/Busted/What-I-Go-To-School-For.mp3	233
1347	What I Go To School For v2	\N	media/songs/Busted/What-I-Go-To-School-For-v2.mp3	233
1348	Minnie The Moocher	\N	media/songs/Cab-Calloway/Minnie-The-Moocher.mp3	234
1350	Concerto v2	\N	media/songs/Cacophony/Concerto-v2.mp3	235
1351	Desert Island	\N	media/songs/Cacophony/Desert-Island.mp3	235
1352	Images	\N	media/songs/Cacophony/Images.mp3	235
1353	Images v2	\N	media/songs/Cacophony/Images-v2.mp3	235
1354	Jerk It Out	\N	media/songs/Caesars/Jerk-It-Out.mp3	236
1355	Afuera	\N	media/songs/Caifanes/Afuera.mp3	237
1356	Aqui No Es Asi	\N	media/songs/Caifanes/Aqui-No-Es-Asi.mp3	237
1357	Ayer Me Dijo Un Ave	\N	media/songs/Caifanes/Ayer-Me-Dijo-Un-Ave.mp3	237
1358	Short Skirt Long Jacket	\N	media/songs/Cake/Short-Skirt-Long-Jacket.mp3	238
1359	End This Sickness	\N	media/songs/Caliban/End-This-Sickness.mp3	239
1360	Its Our Burden To Bleed	\N	media/songs/Caliban/Its-Our-Burden-To-Bleed.mp3	239
1361	Nothing Is Forever	\N	media/songs/Caliban/Nothing-Is-Forever.mp3	239
1362	Earthrise	\N	media/songs/Camel/Earthrise.mp3	240
1363	Ice	\N	media/songs/Camel/Ice.mp3	240
1364	Lawrence	\N	media/songs/Camel/Lawrence.mp3	240
1365	Nimrodel	\N	media/songs/Camel/Nimrodel.mp3	240
1366	Snow Goose	\N	media/songs/Camel/Snow-Goose.mp3	240
1367	Stationary Traveller	\N	media/songs/Camel/Stationary-Traveller.mp3	240
1368	Stationary Traveller v2	\N	media/songs/Camel/Stationary-Traveller-v2.mp3	240
1369	Word Up	\N	media/songs/Cameo/Word-Up.mp3	241
1370	Far Behind	\N	media/songs/Candlebox/Far-Behind.mp3	242
1371	Far Behind v2	\N	media/songs/Candlebox/Far-Behind-v2.mp3	242
1372	Far Behind v3	\N	media/songs/Candlebox/Far-Behind-v3.mp3	242
1373	You	\N	media/songs/Candlebox/You.mp3	242
1374	You v2	\N	media/songs/Candlebox/You-v2.mp3	242
1375	Frantic Disembowelment	\N	media/songs/Cannibal-Corpse/Frantic-Disembowelment.mp3	243
1376	Hammer Smashed Face	\N	media/songs/Cannibal-Corpse/Hammer-Smashed-Face.mp3	243
1377	Hammer Smashed Face v2	\N	media/songs/Cannibal-Corpse/Hammer-Smashed-Face-v2.mp3	243
1378	A Sua Maneira	\N	media/songs/Capital-Inicial/A-Sua-Maneira.mp3	244
1379	Low Day	\N	media/songs/Capra/Low-Day.mp3	245
1380	Sanitarios	\N	media/songs/Caramelos-De-Cianuro/Sanitarios.mp3	246
1381	Heartwork	\N	media/songs/Carcass/Heartwork.mp3	247
1382	Kung Fu Fighting	\N	media/songs/Carl-Douglas/Kung-Fu-Fighting.mp3	248
1383	Kung Fu Fighting v2	\N	media/songs/Carl-Douglas/Kung-Fu-Fighting-v2.mp3	248
1384	Merry Christmas Medley	\N	media/songs/Carlo-Bardoli/Merry-Christmas-Medley.mp3	249
1385	Africa Bamba	\N	media/songs/Carlos-Santana/Africa-Bamba.mp3	250
1386	All I Ever Wanted	\N	media/songs/Carlos-Santana/All-I-Ever-Wanted.mp3	250
1387	Aqua Marine	\N	media/songs/Carlos-Santana/Aqua-Marine.mp3	250
1388	Bella	\N	media/songs/Carlos-Santana/Bella.mp3	250
1389	Black Magic Woman	\N	media/songs/Carlos-Santana/Black-Magic-Woman.mp3	250
1390	Black Magic Woman v2	\N	media/songs/Carlos-Santana/Black-Magic-Woman-v2.mp3	250
1391	Black Magic Woman v3	\N	media/songs/Carlos-Santana/Black-Magic-Woman-v3.mp3	250
1392	Black Magic Woman v4	\N	media/songs/Carlos-Santana/Black-Magic-Woman-v4.mp3	250
1393	Black Magic Woman v5	\N	media/songs/Carlos-Santana/Black-Magic-Woman-v5.mp3	250
1394	Blues For Salvador	\N	media/songs/Carlos-Santana/Blues-For-Salvador.mp3	250
1395	Blues Latino	\N	media/songs/Carlos-Santana/Blues-Latino.mp3	250
1396	Carnival Let The Children Play Jugando	\N	media/songs/Carlos-Santana/Carnival-Let-The-Children-Play-Jugando.mp3	250
1397	Corazon Espinado	\N	media/songs/Carlos-Santana/Corazon-Espinado.mp3	250
1398	Corazon Espinado v2	\N	media/songs/Carlos-Santana/Corazon-Espinado-v2.mp3	250
1399	Corazon Espinado v3	\N	media/songs/Carlos-Santana/Corazon-Espinado-v3.mp3	250
1400	Corazon Espinado v4	\N	media/songs/Carlos-Santana/Corazon-Espinado-v4.mp3	250
1401	Curacion	\N	media/songs/Carlos-Santana/Curacion.mp3	250
1402	Da Le Yalleo	\N	media/songs/Carlos-Santana/Da-Le-Yalleo.mp3	250
1403	Day Of Celebration	\N	media/songs/Carlos-Santana/Day-Of-Celebration.mp3	250
1404	Do You Like The Way	\N	media/songs/Carlos-Santana/Do-You-Like-The-Way.mp3	250
1405	El Farol	\N	media/songs/Carlos-Santana/El-Farol.mp3	250
1406	En Aranjuez Con Tu Amor	\N	media/songs/Carlos-Santana/En-Aranjuez-Con-Tu-Amor.mp3	250
1407	En Aranjuez Con Tu Amor v2	\N	media/songs/Carlos-Santana/En-Aranjuez-Con-Tu-Amor-v2.mp3	250
1408	En Aranjuez Con Tu Amor v3	\N	media/songs/Carlos-Santana/En-Aranjuez-Con-Tu-Amor-v3.mp3	250
1409	Europa	\N	media/songs/Carlos-Santana/Europa.mp3	250
1410	Europa v2	\N	media/songs/Carlos-Santana/Europa-v2.mp3	250
1411	Europa v3	\N	media/songs/Carlos-Santana/Europa-v3.mp3	250
1412	Evil Ways	\N	media/songs/Carlos-Santana/Evil-Ways.mp3	250
1413	Full Moon	\N	media/songs/Carlos-Santana/Full-Moon.mp3	250
1414	Hannibal	\N	media/songs/Carlos-Santana/Hannibal.mp3	250
1415	Hold On	\N	media/songs/Carlos-Santana/Hold-On.mp3	250
1416	I Love You Much Too Much	\N	media/songs/Carlos-Santana/I-Love-You-Much-Too-Much.mp3	250
1417	I Love You Much Too Much v2	\N	media/songs/Carlos-Santana/I-Love-You-Much-Too-Much-v2.mp3	250
1418	I Love You Much Too Much v3	\N	media/songs/Carlos-Santana/I-Love-You-Much-Too-Much-v3.mp3	250
1419	Incident At Neshibur	\N	media/songs/Carlos-Santana/Incident-At-Neshibur.mp3	250
1420	Into The Night	\N	media/songs/Carlos-Santana/Into-The-Night.mp3	250
1421	Jingo	\N	media/songs/Carlos-Santana/Jingo.mp3	250
1422	Jungle Strut	\N	media/songs/Carlos-Santana/Jungle-Strut.mp3	250
1423	Life Is A Lady Holiday	\N	media/songs/Carlos-Santana/Life-Is-A-Lady-Holiday.mp3	250
1424	Life Is A Lady Holiday v2	\N	media/songs/Carlos-Santana/Life-Is-A-Lady-Holiday-v2.mp3	250
1425	Love Is You	\N	media/songs/Carlos-Santana/Love-Is-You.mp3	250
1426	Love Of My Life	\N	media/songs/Carlos-Santana/Love-Of-My-Life.mp3	250
1427	Love Of My Life v2	\N	media/songs/Carlos-Santana/Love-Of-My-Life-v2.mp3	250
1428	Make Somebody Happy	\N	media/songs/Carlos-Santana/Make-Somebody-Happy.mp3	250
1429	Maria Maria	\N	media/songs/Carlos-Santana/Maria-Maria.mp3	250
1430	Maria Maria v2	\N	media/songs/Carlos-Santana/Maria-Maria-v2.mp3	250
1431	Moonflower	\N	media/songs/Carlos-Santana/Moonflower.mp3	250
1432	Moonflower v2	\N	media/songs/Carlos-Santana/Moonflower-v2.mp3	250
1433	Moonflower v3	\N	media/songs/Carlos-Santana/Moonflower-v3.mp3	250
1434	No One To Depend On	\N	media/songs/Carlos-Santana/No-One-To-Depend-On.mp3	250
1435	Oye Como Va	\N	media/songs/Carlos-Santana/Oye-Como-Va.mp3	250
1436	Oye Como Va v2	\N	media/songs/Carlos-Santana/Oye-Como-Va-v2.mp3	250
1437	Oye Como Va v3	\N	media/songs/Carlos-Santana/Oye-Como-Va-v3.mp3	250
1438	Persuasion	\N	media/songs/Carlos-Santana/Persuasion.mp3	250
1439	Put Your Lights On	\N	media/songs/Carlos-Santana/Put-Your-Lights-On.mp3	250
1440	Put Your Lights On v2	\N	media/songs/Carlos-Santana/Put-Your-Lights-On-v2.mp3	250
1441	Revelations	\N	media/songs/Carlos-Santana/Revelations.mp3	250
1442	Samba Pa Ti	\N	media/songs/Carlos-Santana/Samba-Pa-Ti.mp3	250
1443	Samba Pa Ti v2	\N	media/songs/Carlos-Santana/Samba-Pa-Ti-v2.mp3	250
1444	Samba Pa Ti v3	\N	media/songs/Carlos-Santana/Samba-Pa-Ti-v3.mp3	250
1445	Samba Pa Ti v4	\N	media/songs/Carlos-Santana/Samba-Pa-Ti-v4.mp3	250
1446	Samba Pa Ti v5	\N	media/songs/Carlos-Santana/Samba-Pa-Ti-v5.mp3	250
1447	Sensitive Kind	\N	media/songs/Carlos-Santana/Sensitive-Kind.mp3	250
1448	She	\N	media/songs/Carlos-Santana/She.mp3	250
1449	Shes Not There	\N	media/songs/Carlos-Santana/Shes-Not-There.mp3	250
1450	Shes Not There v2	\N	media/songs/Carlos-Santana/Shes-Not-There-v2.mp3	250
1451	Shes Not There v3	\N	media/songs/Carlos-Santana/Shes-Not-There-v3.mp3	250
1452	Smooth	\N	media/songs/Carlos-Santana/Smooth.mp3	250
1453	Smooth v2	\N	media/songs/Carlos-Santana/Smooth-v2.mp3	250
1454	Smooth v3	\N	media/songs/Carlos-Santana/Smooth-v3.mp3	250
1455	Smooth v4	\N	media/songs/Carlos-Santana/Smooth-v4.mp3	250
1456	Smooth v5	\N	media/songs/Carlos-Santana/Smooth-v5.mp3	250
1457	Song Of The Wind	\N	media/songs/Carlos-Santana/Song-Of-The-Wind.mp3	250
1458	Soul Sacrifice	\N	media/songs/Carlos-Santana/Soul-Sacrifice.mp3	250
1459	Soul Sacrifice v2	\N	media/songs/Carlos-Santana/Soul-Sacrifice-v2.mp3	250
1460	Soul Sacrifice v3	\N	media/songs/Carlos-Santana/Soul-Sacrifice-v3.mp3	250
1461	The Game Of Love	\N	media/songs/Carlos-Santana/The-Game-Of-Love.mp3	250
1462	The Healer	\N	media/songs/Carlos-Santana/The-Healer.mp3	250
1463	Victory Is Won	\N	media/songs/Carlos-Santana/Victory-Is-Won.mp3	250
1464	Wishing It Was	\N	media/songs/Carlos-Santana/Wishing-It-Was.mp3	250
1465	Them Changes Live	\N	media/songs/Carlos-Santana-And-Buddy-Miles/Them-Changes-Live.mp3	251
1466	Them Changes Live v2	\N	media/songs/Carlos-Santana-And-Buddy-Miles/Them-Changes-Live-v2.mp3	251
1467	Home Sweet Home	\N	media/songs/Carrie-Underwood/Home-Sweet-Home.mp3	252
1468	Home Sweet Home v2	\N	media/songs/Carrie-Underwood/Home-Sweet-Home-v2.mp3	252
1469	Home Sweet Home v3	\N	media/songs/Carrie-Underwood/Home-Sweet-Home-v3.mp3	252
1470	Nazareth	\N	media/songs/Cast-of-nativity/Nazareth.mp3	253
1471	Wild World	\N	media/songs/Cat-Stevens/Wild-World.mp3	254
1472	Wild World v2	\N	media/songs/Cat-Stevens/Wild-World-v2.mp3	254
1473	O Meu Lugar E O Ceu	\N	media/songs/Catolicas/O-Meu-Lugar-E-O-Ceu.mp3	255
1474	Hearts Of Darkness Live	\N	media/songs/Cavalera-Conspiracy/Hearts-Of-Darkness-Live.mp3	256
1475	Refuse Resist Live	\N	media/songs/Cavalera-Conspiracy/Refuse-Resist-Live.mp3	256
1476	Territory Live	\N	media/songs/Cavalera-Conspiracy/Territory-Live.mp3	256
1477	Bad Moon Rising	\N	media/songs/CCR/Bad-Moon-Rising.mp3	257
1478	Born On The Bayou	\N	media/songs/CCR/Born-On-The-Bayou.mp3	257
1479	Down On The Corner	\N	media/songs/CCR/Down-On-The-Corner.mp3	257
1480	Fortunate Son	\N	media/songs/CCR/Fortunate-Son.mp3	257
1481	Green River	\N	media/songs/CCR/Green-River.mp3	257
1482	Forget You	\N	media/songs/Cee-Lo-Green/Forget-You.mp3	258
1483	Dethroned Emperor	\N	media/songs/Celtic-Frost/Dethroned-Emperor.mp3	259
1484	Devil Went Down To Georgia	\N	media/songs/Charlie-Daniels-Band/Devil-Went-Down-To-Georgia.mp3	260
1485	The Devil Went Down To Georgia	\N	media/songs/Charlie-Daniels-Band/The-Devil-Went-Down-To-Georgia.mp3	260
1486	Billies Bounce	\N	media/songs/Charlie-Parker/Billies-Bounce.mp3	261
1487	Billies Bounce v2	\N	media/songs/Charlie-Parker/Billies-Bounce-v2.mp3	261
1488	Colder	\N	media/songs/Charon/Colder.mp3	262
1489	Dream Police	\N	media/songs/Cheap-Trick/Dream-Police.mp3	263
1490	Ghost Town	\N	media/songs/Cheap-Trick/Ghost-Town.mp3	263
1491	Hello There	\N	media/songs/Cheap-Trick/Hello-There.mp3	263
1492	I Want You To Want Me	\N	media/songs/Cheap-Trick/I-Want-You-To-Want-Me.mp3	263
1493	I Want You To Want Me Live	\N	media/songs/Cheap-Trick/I-Want-You-To-Want-Me-Live.mp3	263
1494	I Want You To Want Me v2	\N	media/songs/Cheap-Trick/I-Want-You-To-Want-Me-v2.mp3	263
1495	Reach Out	\N	media/songs/Cheap-Trick/Reach-Out.mp3	263
1496	Surrender	\N	media/songs/Cheap-Trick/Surrender.mp3	263
1497	Surrender v2	\N	media/songs/Cheap-Trick/Surrender-v2.mp3	263
1498	Single White Female	\N	media/songs/Chely-Wright/Single-White-Female.mp3	264
1574	Khe Sahn	\N	media/songs/Cold-Chisel/Khe-Sahn.mp3	287
1499	Zoot Suit Riot	\N	media/songs/Cherry-Poppin-Daddies/Zoot-Suit-Riot.mp3	265
1500	Zoot Suit Riot v2	\N	media/songs/Cherry-Poppin-Daddies/Zoot-Suit-Riot-v2.mp3	265
1501	Zoot Suit Riot v3	\N	media/songs/Cherry-Poppin-Daddies/Zoot-Suit-Riot-v3.mp3	265
1502	Waterfront Waltz	\N	media/songs/Chet-Atkins/Waterfront-Waltz.mp3	266
1503	Waterfront Waltz v2	\N	media/songs/Chet-Atkins/Waterfront-Waltz-v2.mp3	266
1504	Closure	\N	media/songs/Chevelle/Closure.mp3	267
1505	Face To The Floor	\N	media/songs/Chevelle/Face-To-The-Floor.mp3	267
1506	I Get It	\N	media/songs/Chevelle/I-Get-It.mp3	267
1507	Panic Prone	\N	media/songs/Chevelle/Panic-Prone.mp3	267
1508	The Red	\N	media/songs/Chevelle/The-Red.mp3	267
1509	Well Enough Alone	\N	media/songs/Chevelle/Well-Enough-Alone.mp3	267
1510	25 Or 6 To 4	\N	media/songs/Chicago/25-Or-6-To-4.mp3	268
1511	Aire	\N	media/songs/Chicago/Aire.mp3	268
1512	Aire v2	\N	media/songs/Chicago/Aire-v2.mp3	268
1513	Call On Me	\N	media/songs/Chicago/Call-On-Me.mp3	268
1514	Devils Sweet	\N	media/songs/Chicago/Devils-Sweet.mp3	268
1515	Devils Sweet v2	\N	media/songs/Chicago/Devils-Sweet-v2.mp3	268
1516	Happy Man	\N	media/songs/Chicago/Happy-Man.mp3	268
1517	I Dont Wanna Live Without Your Love	\N	media/songs/Chicago/I-Dont-Wanna-Live-Without-Your-Love.mp3	268
1518	Italian From New York	\N	media/songs/Chicago/Italian-From-New-York.mp3	268
1519	Italian From New York v2	\N	media/songs/Chicago/Italian-From-New-York-v2.mp3	268
1520	Life Saver	\N	media/songs/Chicago/Life-Saver.mp3	268
1521	Life Saver v2	\N	media/songs/Chicago/Life-Saver-v2.mp3	268
1522	State Of The Union	\N	media/songs/Chicago/State-Of-The-Union.mp3	268
1523	While The City Sleeps	\N	media/songs/Chicago/While-The-City-Sleeps.mp3	268
1524	Wishing You Were Here	\N	media/songs/Chicago/Wishing-You-Were-Here.mp3	268
1525	Woman Dont Want To Love Me	\N	media/songs/Chicago/Woman-Dont-Want-To-Love-Me.mp3	268
1526	Woman Dont Want To Love Me v2	\N	media/songs/Chicago/Woman-Dont-Want-To-Love-Me-v2.mp3	268
1527	Dubai Blues	\N	media/songs/Chickenfoot/Dubai-Blues.mp3	269
1528	Dubai Blues v2	\N	media/songs/Chickenfoot/Dubai-Blues-v2.mp3	269
1529	Dubai Blues v3	\N	media/songs/Chickenfoot/Dubai-Blues-v3.mp3	269
1530	Turnin Left	\N	media/songs/Chickenfoot/Turnin-Left.mp3	269
1531	Turnin Left v2	\N	media/songs/Chickenfoot/Turnin-Left-v2.mp3	269
1532	On Broken Glass	\N	media/songs/Chimaira/On-Broken-Glass.mp3	270
1533	Chicks Dig It	\N	media/songs/Chris-Cagle/Chicks-Dig-It.mp3	271
1534	Somewhere Over The Rainbow	\N	media/songs/Chris-Impellitteri/Somewhere-Over-The-Rainbow.mp3	272
1535	Somewhere Over The Rainbow v2	\N	media/songs/Chris-Impellitteri/Somewhere-Over-The-Rainbow-v2.mp3	272
1536	Blue Hotel	\N	media/songs/Chris-Isaak/Blue-Hotel.mp3	273
1537	Wicked Game	\N	media/songs/Chris-Isaak/Wicked-Game.mp3	273
1538	Wicked Game v2	\N	media/songs/Chris-Isaak/Wicked-Game-v2.mp3	273
1539	On The Beach	\N	media/songs/Chris-Rea/On-The-Beach.mp3	274
1540	On The Beach v2	\N	media/songs/Chris-Rea/On-The-Beach-v2.mp3	274
1541	Road To Hell	\N	media/songs/Chris-Rea/Road-To-Hell.mp3	274
1542	Warm And Tender Love	\N	media/songs/Chris-Rea/Warm-And-Tender-Love.mp3	274
1543	Fighter	\N	media/songs/Christina-Aguilera/Fighter.mp3	275
1544	Tenderoni	\N	media/songs/Chromeo/Tenderoni.mp3	276
1545	Carol	\N	media/songs/Chuck-Berry/Carol.mp3	277
1546	Johnny B Goode	\N	media/songs/Chuck-Berry/Johnny-B-Goode.mp3	277
1547	Johnny B Goode v2	\N	media/songs/Chuck-Berry/Johnny-B-Goode-v2.mp3	277
1548	Johnny B Goode v3	\N	media/songs/Chuck-Berry/Johnny-B-Goode-v3.mp3	277
1549	Johnny B Goode v4	\N	media/songs/Chuck-Berry/Johnny-B-Goode-v4.mp3	277
1550	Johnny B Goode v5	\N	media/songs/Chuck-Berry/Johnny-B-Goode-v5.mp3	277
1551	No Particular Place To Go	\N	media/songs/Chuck-Berry/No-Particular-Place-To-Go.mp3	277
1552	No Particular Place To Go v2	\N	media/songs/Chuck-Berry/No-Particular-Place-To-Go-v2.mp3	277
1553	Reelin And Rockin	\N	media/songs/Chuck-Berry/Reelin-And-Rockin.mp3	277
1554	Reelin And Rockin v2	\N	media/songs/Chuck-Berry/Reelin-And-Rockin-v2.mp3	277
1555	Wild Frontiers	\N	media/songs/Chuck-Berry/Wild-Frontiers.mp3	277
1556	Feels So Good	\N	media/songs/Chuck-Mangione/Feels-So-Good.mp3	278
1557	Feels So Good v2	\N	media/songs/Chuck-Mangione/Feels-So-Good-v2.mp3	278
1558	Tubthumping	\N	media/songs/Chumbawamba/Tubthumping.mp3	279
1559	Gypsy Road	\N	media/songs/Cinderella/Gypsy-Road.mp3	280
1560	Heartbreak Station	\N	media/songs/Cinderella/Heartbreak-Station.mp3	280
1561	Shake Me	\N	media/songs/Cinderella/Shake-Me.mp3	280
1562	Somebody Save Me	\N	media/songs/Cinderella/Somebody-Save-Me.mp3	280
1563	Guns	\N	media/songs/Civil-War/Guns.mp3	281
1564	96 Quite Bitter Beings	\N	media/songs/CKY/96-Quite-Bitter-Beings.mp3	282
1565	Etude Op31 N6 In Em	\N	media/songs/Classical/Etude-Op31-N6-In-Em.mp3	283
1566	Moto	\N	media/songs/Classical/Moto.mp3	283
1567	Tainted Love	\N	media/songs/Coco-Electric/Tainted-Love.mp3	284
1568	Look Good In Leather	\N	media/songs/Cody-Chesnutt/Look-Good-In-Leather.mp3	285
1569	A Favor House Atlantic	\N	media/songs/Coheed-And-Cambria/A-Favor-House-Atlantic.mp3	286
1570	A Favor House Atlantic v2	\N	media/songs/Coheed-And-Cambria/A-Favor-House-Atlantic-v2.mp3	286
1571	Welcome Home	\N	media/songs/Coheed-And-Cambria/Welcome-Home.mp3	286
1572	Welcome Home v2	\N	media/songs/Coheed-And-Cambria/Welcome-Home-v2.mp3	286
1573	Welcome Home v3	\N	media/songs/Coheed-And-Cambria/Welcome-Home-v3.mp3	286
1575	Khe Sahn v2	\N	media/songs/Cold-Chisel/Khe-Sahn-v2.mp3	287
1576	Hang Me Up To Dry	\N	media/songs/Cold-War-Kids/Hang-Me-Up-To-Dry.mp3	288
1577	Clocks	\N	media/songs/Coldplay/Clocks.mp3	289
1578	Clocks v2	\N	media/songs/Coldplay/Clocks-v2.mp3	289
1579	Clocks v3	\N	media/songs/Coldplay/Clocks-v3.mp3	289
1580	Clocks v4	\N	media/songs/Coldplay/Clocks-v4.mp3	289
1581	Clocks v5	\N	media/songs/Coldplay/Clocks-v5.mp3	289
1582	Every Teardrop Is A Waterfall	\N	media/songs/Coldplay/Every-Teardrop-Is-A-Waterfall.mp3	289
1583	Fix You	\N	media/songs/Coldplay/Fix-You.mp3	289
1584	God Put A Smile On Your Face	\N	media/songs/Coldplay/God-Put-A-Smile-On-Your-Face.mp3	289
1585	God Put A Smile Upon Your Face	\N	media/songs/Coldplay/God-Put-A-Smile-Upon-Your-Face.mp3	289
1586	In My Place	\N	media/songs/Coldplay/In-My-Place.mp3	289
1587	In My Place v2	\N	media/songs/Coldplay/In-My-Place-v2.mp3	289
1588	In My Place v3	\N	media/songs/Coldplay/In-My-Place-v3.mp3	289
1589	Shiver	\N	media/songs/Coldplay/Shiver.mp3	289
1590	The Scientist	\N	media/songs/Coldplay/The-Scientist.mp3	289
1591	The Scientist v2	\N	media/songs/Coldplay/The-Scientist-v2.mp3	289
1592	Trouble	\N	media/songs/Coldplay/Trouble.mp3	289
1593	Trouble v2	\N	media/songs/Coldplay/Trouble-v2.mp3	289
1594	Violet Hill	\N	media/songs/Coldplay/Violet-Hill.mp3	289
1595	Viva La Vida	\N	media/songs/Coldplay/Viva-La-Vida.mp3	289
1596	Viva La Vida v2	\N	media/songs/Coldplay/Viva-La-Vida-v2.mp3	289
1597	Yellow	\N	media/songs/Coldplay/Yellow.mp3	289
1598	Yellow v2	\N	media/songs/Coldplay/Yellow-v2.mp3	289
1599	Yellow v3	\N	media/songs/Coldplay/Yellow-v3.mp3	289
1600	Yellow v4	\N	media/songs/Coldplay/Yellow-v4.mp3	289
1601	Begin The Beguine	\N	media/songs/Cole-Porter/Begin-The-Beguine.mp3	290
1602	Counting The Days	\N	media/songs/Collective-Soul/Counting-The-Days.mp3	291
1603	December	\N	media/songs/Collective-Soul/December.mp3	291
1604	December v2	\N	media/songs/Collective-Soul/December-v2.mp3	291
1605	December v3	\N	media/songs/Collective-Soul/December-v3.mp3	291
1606	Disciplined Breakdown	\N	media/songs/Collective-Soul/Disciplined-Breakdown.mp3	291
1607	Disciplined Breakdown v2	\N	media/songs/Collective-Soul/Disciplined-Breakdown-v2.mp3	291
1608	Gel	\N	media/songs/Collective-Soul/Gel.mp3	291
1609	Gel v2	\N	media/songs/Collective-Soul/Gel-v2.mp3	291
1610	Run	\N	media/songs/Collective-Soul/Run.mp3	291
1611	Shine	\N	media/songs/Collective-Soul/Shine.mp3	291
1612	Shine v2	\N	media/songs/Collective-Soul/Shine-v2.mp3	291
1613	Shine v3	\N	media/songs/Collective-Soul/Shine-v3.mp3	291
1614	World I Know	\N	media/songs/Collective-Soul/World-I-Know.mp3	291
1615	Waiting Game	\N	media/songs/Cooper-Temple-Clause/Waiting-Game.mp3	292
1616	Transitions	\N	media/songs/Corey-Fluhrer/Transitions.mp3	293
1617	Put Your Records On	\N	media/songs/Corinne-Bailey-Rae/Put-Your-Records-On.mp3	294
1618	Albatross	\N	media/songs/Corrosion-Of-Conformity/Albatross.mp3	295
1619	Crazy Running	\N	media/songs/Cosimo-Valentini/Crazy-Running.mp3	296
1620	Sad Love	\N	media/songs/Cosimo-Valentini/Sad-Love.mp3	296
1621	Radium Eyes	\N	media/songs/Count-Zero/Radium-Eyes.mp3	297
1622	Shake	\N	media/songs/Count-Zero/Shake.mp3	297
1623	Accidentally In Love	\N	media/songs/Counting-Crows/Accidentally-In-Love.mp3	298
1624	Accidentally In Love v2	\N	media/songs/Counting-Crows/Accidentally-In-Love-v2.mp3	298
1625	Accidentally In Love v3	\N	media/songs/Counting-Crows/Accidentally-In-Love-v3.mp3	298
1626	Angels Of The Silences	\N	media/songs/Counting-Crows/Angels-Of-The-Silences.mp3	298
1627	Angels Of The Silences v2	\N	media/songs/Counting-Crows/Angels-Of-The-Silences-v2.mp3	298
1628	Round Here	\N	media/songs/Counting-Crows/Round-Here.mp3	298
1629	Round Here v2	\N	media/songs/Counting-Crows/Round-Here-v2.mp3	298
1630	Low	\N	media/songs/Cracker/Low.mp3	299
1631	Riot In Everyone	\N	media/songs/Crashdiet/Riot-In-Everyone.mp3	300
1632	Badge	\N	media/songs/Cream/Badge.mp3	301
1633	Badge v2	\N	media/songs/Cream/Badge-v2.mp3	301
1634	Badge v3	\N	media/songs/Cream/Badge-v3.mp3	301
1635	Crossroads	\N	media/songs/Cream/Crossroads.mp3	301
1636	Crossroads v2	\N	media/songs/Cream/Crossroads-v2.mp3	301
1637	I Feel Free	\N	media/songs/Cream/I-Feel-Free.mp3	301
1638	I Feel Free v2	\N	media/songs/Cream/I-Feel-Free-v2.mp3	301
1639	Politician	\N	media/songs/Cream/Politician.mp3	301
1640	Politician v2	\N	media/songs/Cream/Politician-v2.mp3	301
1641	Sitting On Top Of The World	\N	media/songs/Cream/Sitting-On-Top-Of-The-World.mp3	301
1642	Strange Brew	\N	media/songs/Cream/Strange-Brew.mp3	301
1643	Sunshine Of Your Love	\N	media/songs/Cream/Sunshine-Of-Your-Love.mp3	301
1644	Sunshine Of Your Love v2	\N	media/songs/Cream/Sunshine-Of-Your-Love-v2.mp3	301
1645	Sunshine Of Your Love v3	\N	media/songs/Cream/Sunshine-Of-Your-Love-v3.mp3	301
1646	Sunshine Of Your Love v4	\N	media/songs/Cream/Sunshine-Of-Your-Love-v4.mp3	301
1647	Tales Of Brave Ulysses	\N	media/songs/Cream/Tales-Of-Brave-Ulysses.mp3	301
1648	Whats This Life For	\N	media/songs/Cream/Whats-This-Life-For.mp3	301
1649	White Room	\N	media/songs/Cream/White-Room.mp3	301
1650	White Room v2	\N	media/songs/Cream/White-Room-v2.mp3	301
1651	White Room v3	\N	media/songs/Cream/White-Room-v3.mp3	301
1652	White Room v4	\N	media/songs/Cream/White-Room-v4.mp3	301
1653	White Room v5	\N	media/songs/Cream/White-Room-v5.mp3	301
1654	Higher	\N	media/songs/Creed/Higher.mp3	302
1655	Higher   Fixed	\N	media/songs/Creed/Higher---Fixed.mp3	302
1656	Higher   Fixed v2	\N	media/songs/Creed/Higher---Fixed-v2.mp3	302
1657	Higher v2	\N	media/songs/Creed/Higher-v2.mp3	302
1658	My Own Prison	\N	media/songs/Creed/My-Own-Prison.mp3	302
1659	My Sacrifice	\N	media/songs/Creed/My-Sacrifice.mp3	302
1660	My Sacrifice v2	\N	media/songs/Creed/My-Sacrifice-v2.mp3	302
1661	My Sacrifice v3	\N	media/songs/Creed/My-Sacrifice-v3.mp3	302
1662	Mysacrifice	\N	media/songs/Creed/Mysacrifice.mp3	302
1663	Torn	\N	media/songs/Creed/Torn.mp3	302
1664	Torn v2	\N	media/songs/Creed/Torn-v2.mp3	302
1665	What If	\N	media/songs/Creed/What-If.mp3	302
1666	What If v2	\N	media/songs/Creed/What-If-v2.mp3	302
1667	Whats This Life For	\N	media/songs/Creed/Whats-This-Life-For.mp3	302
1668	Whats This Life For v2	\N	media/songs/Creed/Whats-This-Life-For-v2.mp3	302
1669	With Arms Wide Open	\N	media/songs/Creed/With-Arms-Wide-Open.mp3	302
1670	With Arms Wide Open v2	\N	media/songs/Creed/With-Arms-Wide-Open-v2.mp3	302
1671	Bad Moon Rising	\N	media/songs/Creedence-Clearwater-Revival/Bad-Moon-Rising.mp3	303
1672	Bad Moon Rising v2	\N	media/songs/Creedence-Clearwater-Revival/Bad-Moon-Rising-v2.mp3	303
1673	Bad Moon Rising v3	\N	media/songs/Creedence-Clearwater-Revival/Bad-Moon-Rising-v3.mp3	303
1674	Bad Moon Rising v4	\N	media/songs/Creedence-Clearwater-Revival/Bad-Moon-Rising-v4.mp3	303
1675	Born On The Bayou	\N	media/songs/Creedence-Clearwater-Revival/Born-On-The-Bayou.mp3	303
1676	Born On The Bayou v2	\N	media/songs/Creedence-Clearwater-Revival/Born-On-The-Bayou-v2.mp3	303
1677	Commotion	\N	media/songs/Creedence-Clearwater-Revival/Commotion.mp3	303
1678	Cotton Fields	\N	media/songs/Creedence-Clearwater-Revival/Cotton-Fields.mp3	303
1679	Cotton Fields v2	\N	media/songs/Creedence-Clearwater-Revival/Cotton-Fields-v2.mp3	303
1680	Down On The Corner	\N	media/songs/Creedence-Clearwater-Revival/Down-On-The-Corner.mp3	303
1681	Down On The Corner v2	\N	media/songs/Creedence-Clearwater-Revival/Down-On-The-Corner-v2.mp3	303
1682	Fortunate Son	\N	media/songs/Creedence-Clearwater-Revival/Fortunate-Son.mp3	303
1683	Fortunate Son v2	\N	media/songs/Creedence-Clearwater-Revival/Fortunate-Son-v2.mp3	303
1684	Fortunate Son v3	\N	media/songs/Creedence-Clearwater-Revival/Fortunate-Son-v3.mp3	303
1685	Green River	\N	media/songs/Creedence-Clearwater-Revival/Green-River.mp3	303
1686	Green River v2	\N	media/songs/Creedence-Clearwater-Revival/Green-River-v2.mp3	303
1687	Have You Ever Seen The Rain	\N	media/songs/Creedence-Clearwater-Revival/Have-You-Ever-Seen-The-Rain.mp3	303
1688	Have You Ever Seen The Rain v2	\N	media/songs/Creedence-Clearwater-Revival/Have-You-Ever-Seen-The-Rain-v2.mp3	303
1689	Have You Ever Seen The Rain v3	\N	media/songs/Creedence-Clearwater-Revival/Have-You-Ever-Seen-The-Rain-v3.mp3	303
1690	I Put A Spell On You	\N	media/songs/Creedence-Clearwater-Revival/I-Put-A-Spell-On-You.mp3	303
1691	I Putt Spell On You	\N	media/songs/Creedence-Clearwater-Revival/I-Putt-Spell-On-You.mp3	303
1692	Keep On Chooglin	\N	media/songs/Creedence-Clearwater-Revival/Keep-On-Chooglin.mp3	303
1693	Molina	\N	media/songs/Creedence-Clearwater-Revival/Molina.mp3	303
1694	Pagan Baby	\N	media/songs/Creedence-Clearwater-Revival/Pagan-Baby.mp3	303
1695	Proud Mary	\N	media/songs/Creedence-Clearwater-Revival/Proud-Mary.mp3	303
1696	Run Through The Jungle	\N	media/songs/Creedence-Clearwater-Revival/Run-Through-The-Jungle.mp3	303
1697	Travellin Band	\N	media/songs/Creedence-Clearwater-Revival/Travellin-Band.mp3	303
1698	Travellin Band v2	\N	media/songs/Creedence-Clearwater-Revival/Travellin-Band-v2.mp3	303
1699	Travellin Band v3	\N	media/songs/Creedence-Clearwater-Revival/Travellin-Band-v3.mp3	303
1700	Up Around The Bend	\N	media/songs/Creedence-Clearwater-Revival/Up-Around-The-Bend.mp3	303
1701	Up Around The Bend v2	\N	media/songs/Creedence-Clearwater-Revival/Up-Around-The-Bend-v2.mp3	303
1702	Up Around The Bend v3	\N	media/songs/Creedence-Clearwater-Revival/Up-Around-The-Bend-v3.mp3	303
1703	Wholl Stop The Rain	\N	media/songs/Creedence-Clearwater-Revival/Wholl-Stop-The-Rain.mp3	303
1704	Gone	\N	media/songs/Crooked-X/Gone.mp3	304
1705	Nightmare	\N	media/songs/Crooked-X/Nightmare.mp3	304
1706	Rock N Roll Dream	\N	media/songs/Crooked-X/Rock-N-Roll-Dream.mp3	304
1707	Almost Cut My Hair	\N	media/songs/Crosby-Stills-Nash-And-Young/Almost-Cut-My-Hair.mp3	305
1708	Carry On	\N	media/songs/Crosby-Stills-Nash-And-Young/Carry-On.mp3	305
1709	Woodstock	\N	media/songs/Crosby-Stills-Nash-And-Young/Woodstock.mp3	305
1710	Cry Lonely	\N	media/songs/Cross-Canadian-Radweed/Cry-Lonely.mp3	306
1711	Lasting Dose	\N	media/songs/Crowbar/Lasting-Dose.mp3	307
1712	Lasting Dose v2	\N	media/songs/Crowbar/Lasting-Dose-v2.mp3	307
1713	Always Take The Weather	\N	media/songs/Crowded-House/Always-Take-The-Weather.mp3	308
1714	Dont Dream Its Over	\N	media/songs/Crowded-House/Dont-Dream-Its-Over.mp3	308
1715	Ai Wo Torimodose	\N	media/songs/Crystal-King/Ai-Wo-Torimodose.mp3	309
1716	Suggestive One	\N	media/songs/Csaiopea/Suggestive-One.mp3	310
1717	Do You Really Want To Hurt Me	\N	media/songs/Culture-Club/Do-You-Really-Want-To-Hurt-Me.mp3	311
1718	Am Dm	\N	media/songs/Cyber-Jammers/Am-Dm.mp3	312
1719	Biarkan Gitar Ku Menangis	\N	media/songs/Cyber-Jammers/Biarkan-Gitar-Ku-Menangis.mp3	312
1720	Black Nebula	\N	media/songs/Cyber-Jammers/Black-Nebula.mp3	312
1721	Canon Nusantara	\N	media/songs/Cyber-Jammers/Canon-Nusantara.mp3	312
1722	Doa Perjuangan Dan Harapan	\N	media/songs/Cyber-Jammers/Doa-Perjuangan-Dan-Harapan.mp3	312
1879	Highway Star	\N	media/songs/Deep-Purple/Highway-Star.mp3	349
1723	Flying Through The Clouds	\N	media/songs/Cyber-Jammers/Flying-Through-The-Clouds.mp3	312
1724	I Really Dont Belong Here	\N	media/songs/Cyber-Jammers/I-Really-Dont-Belong-Here.mp3	312
1725	Mencari Al Farabi	\N	media/songs/Cyber-Jammers/Mencari-Al-Farabi.mp3	312
1726	Sleeping My Day Away	\N	media/songs/DAD/Sleeping-My-Day-Away.mp3	313
1727	Aerodynamic	\N	media/songs/Daft-Punk/Aerodynamic.mp3	314
1728	Aerodynamic v2	\N	media/songs/Daft-Punk/Aerodynamic-v2.mp3	314
1729	Digital Love	\N	media/songs/Daft-Punk/Digital-Love.mp3	314
1730	Digital Love v2	\N	media/songs/Daft-Punk/Digital-Love-v2.mp3	314
1731	Robot Rock	\N	media/songs/Daft-Punk/Robot-Rock.mp3	314
1732	Robot Rock v2	\N	media/songs/Daft-Punk/Robot-Rock-v2.mp3	314
1733	Progressive Baby	\N	media/songs/Daisuke-Kurosawa/Progressive-Baby.mp3	315
1734	Hauskaro	\N	media/songs/DalekSam/Hauskaro.mp3	316
1735	Breathing New Life	\N	media/songs/Damageplan/Breathing-New-Life.mp3	317
1736	Pride	\N	media/songs/Damageplan/Pride.mp3	317
1737	Volcano	\N	media/songs/Damien-Rice/Volcano.mp3	318
1738	Volcano v2	\N	media/songs/Damien-Rice/Volcano-v2.mp3	318
1739	Bohemian Like You	\N	media/songs/Dandy-Warhols/Bohemian-Like-You.mp3	319
1740	Bohemian Like You v2	\N	media/songs/Dandy-Warhols/Bohemian-Like-You-v2.mp3	319
1741	Harlem Nocturne	\N	media/songs/Danny-Gatton/Harlem-Nocturne.mp3	320
1742	Harlem Nocturne v2	\N	media/songs/Danny-Gatton/Harlem-Nocturne-v2.mp3	320
1743	Ghost Train	\N	media/songs/Danny-Nasra/Ghost-Train.mp3	321
1744	Mother	\N	media/songs/Danzig/Mother.mp3	322
1745	Mother v2	\N	media/songs/Danzig/Mother-v2.mp3	322
1746	Twist Of Cain	\N	media/songs/Danzig/Twist-Of-Cain.mp3	322
1747	Alright	\N	media/songs/Darius-Rucker/Alright.mp3	323
1748	Blue Day	\N	media/songs/Darker-My-Love/Blue-Day.mp3	324
1749	Demon	\N	media/songs/Darkest-Hour/Demon.mp3	325
1750	Shhh	\N	media/songs/Darkest-Of-The-Hillside-Thickets/Shhh.mp3	326
1751	Way Too Late To Cry	\N	media/songs/Darrell-Tetar/Way-Too-Late-To-Cry.mp3	327
1752	Flight Of Icarus	\N	media/songs/Darrrells-Guitar-Garage-project/Flight-Of-Icarus.mp3	328
1753	Awful Beautiful Life	\N	media/songs/Darryl-Worley/Awful-Beautiful-Life.mp3	329
1754	Dont Wait	\N	media/songs/Dashboard-Confessional/Dont-Wait.mp3	330
1755	Hands Down	\N	media/songs/Dashboard-Confessional/Hands-Down.mp3	330
1756	What I Want	\N	media/songs/Daughtry/What-I-Want.mp3	331
1757	Take Five	\N	media/songs/Dave-Brubeck/Take-Five.mp3	332
1758	Take Five v2	\N	media/songs/Dave-Brubeck/Take-Five-v2.mp3	332
1759	Take Five v3	\N	media/songs/Dave-Brubeck/Take-Five-v3.mp3	332
1760	Take Five v4	\N	media/songs/Dave-Brubeck/Take-Five-v4.mp3	332
1761	Sabre Dance	\N	media/songs/Dave-Edmunds/Sabre-Dance.mp3	333
1762	Fame	\N	media/songs/David-Bowie/Fame.mp3	334
1763	Fame v2	\N	media/songs/David-Bowie/Fame-v2.mp3	334
1764	Fame v3	\N	media/songs/David-Bowie/Fame-v3.mp3	334
1765	Golden Years	\N	media/songs/David-Bowie/Golden-Years.mp3	334
1766	Heroes	\N	media/songs/David-Bowie/Heroes.mp3	334
1767	Heroes v2	\N	media/songs/David-Bowie/Heroes-v2.mp3	334
1768	Heroes v3	\N	media/songs/David-Bowie/Heroes-v3.mp3	334
1769	Lets Dance	\N	media/songs/David-Bowie/Lets-Dance.mp3	334
1770	Lets Dance v2	\N	media/songs/David-Bowie/Lets-Dance-v2.mp3	334
1771	Lets Dance v3	\N	media/songs/David-Bowie/Lets-Dance-v3.mp3	334
1772	Moonage Daydream	\N	media/songs/David-Bowie/Moonage-Daydream.mp3	334
1773	Moonage Daydream v2	\N	media/songs/David-Bowie/Moonage-Daydream-v2.mp3	334
1774	Moonage Daydream v3	\N	media/songs/David-Bowie/Moonage-Daydream-v3.mp3	334
1775	Moonage Daydream v4	\N	media/songs/David-Bowie/Moonage-Daydream-v4.mp3	334
1776	Rebel Rebel	\N	media/songs/David-Bowie/Rebel-Rebel.mp3	334
1777	Rebel Rebel v2	\N	media/songs/David-Bowie/Rebel-Rebel-v2.mp3	334
1778	Space Oddity	\N	media/songs/David-Bowie/Space-Oddity.mp3	334
1779	Suffragette City	\N	media/songs/David-Bowie/Suffragette-City.mp3	334
1780	Suffragette City v2	\N	media/songs/David-Bowie/Suffragette-City-v2.mp3	334
1781	Suffragette City v3	\N	media/songs/David-Bowie/Suffragette-City-v3.mp3	334
1782	Suffragette City v4	\N	media/songs/David-Bowie/Suffragette-City-v4.mp3	334
1783	The Jean Genie	\N	media/songs/David-Bowie/The-Jean-Genie.mp3	334
1784	The Jean Genie v2	\N	media/songs/David-Bowie/The-Jean-Genie-v2.mp3	334
1785	The Jean Genie v3	\N	media/songs/David-Bowie/The-Jean-Genie-v3.mp3	334
1786	The Man Who Sold The World	\N	media/songs/David-Bowie/The-Man-Who-Sold-The-World.mp3	334
1787	Vertige De L Amour	\N	media/songs/David-Bowie/Vertige-De-L-Amour.mp3	334
1788	Vertige De L Amour v2	\N	media/songs/David-Bowie/Vertige-De-L-Amour-v2.mp3	334
1789	Ziggy Stardust	\N	media/songs/David-Bowie/Ziggy-Stardust.mp3	334
1790	Ziggy Stardust v2	\N	media/songs/David-Bowie/Ziggy-Stardust-v2.mp3	334
1791	Ziggy Stardust v3	\N	media/songs/David-Bowie/Ziggy-Stardust-v3.mp3	334
1792	Ziggy Stardust v4	\N	media/songs/David-Bowie/Ziggy-Stardust-v4.mp3	334
1793	Ziggy Stardust v5	\N	media/songs/David-Bowie/Ziggy-Stardust-v5.mp3	334
1794	Sunday Rider	\N	media/songs/David-Gates/Sunday-Rider.mp3	335
1795	All Lovers Are Deranged	\N	media/songs/David-Gilmour/All-Lovers-Are-Deranged.mp3	336
1796	Castellorizon	\N	media/songs/David-Gilmour/Castellorizon.mp3	336
1797	Near The End	\N	media/songs/David-Gilmour/Near-The-End.mp3	336
1798	Near The End v2	\N	media/songs/David-Gilmour/Near-The-End-v2.mp3	336
1799	On An Island	\N	media/songs/David-Gilmour/On-An-Island.mp3	336
1800	On An Island v2	\N	media/songs/David-Gilmour/On-An-Island-v2.mp3	336
1801	On An Island v3	\N	media/songs/David-Gilmour/On-An-Island-v3.mp3	336
1802	On An Island v4	\N	media/songs/David-Gilmour/On-An-Island-v4.mp3	336
1803	Raise My Rent	\N	media/songs/David-Gilmour/Raise-My-Rent.mp3	336
1804	Smile	\N	media/songs/David-Gilmour/Smile.mp3	336
1805	The Blue	\N	media/songs/David-Gilmour/The-Blue.mp3	336
1806	Where We Start	\N	media/songs/David-Gilmour/Where-We-Start.mp3	336
1807	Babylon	\N	media/songs/David-Gray/Babylon.mp3	337
1808	Babylon v2	\N	media/songs/David-Gray/Babylon-v2.mp3	337
1809	Neighborhood	\N	media/songs/David-Hidalgo/Neighborhood.mp3	338
1810	Big Trouble	\N	media/songs/David-Lee-Roth/Big-Trouble.mp3	339
1811	Just Like Paradise	\N	media/songs/David-Lee-Roth/Just-Like-Paradise.mp3	339
1812	Shy Boy	\N	media/songs/David-Lee-Roth/Shy-Boy.mp3	339
1813	Shy Boy v2	\N	media/songs/David-Lee-Roth/Shy-Boy-v2.mp3	339
1814	Shy Boy v3	\N	media/songs/David-Lee-Roth/Shy-Boy-v3.mp3	339
1815	Stand Up	\N	media/songs/David-Lee-Roth/Stand-Up.mp3	339
1816	Tobacco Road	\N	media/songs/David-Lee-Roth/Tobacco-Road.mp3	339
1817	Tobacco Road v2	\N	media/songs/David-Lee-Roth/Tobacco-Road-v2.mp3	339
1818	Yankee Rose	\N	media/songs/David-Lee-Roth/Yankee-Rose.mp3	339
1819	Downtown Came Uptown	\N	media/songs/David-Wilcox/Downtown-Came-Uptown.mp3	340
1820	You Really Like Me	\N	media/songs/Davidicus/You-Really-Like-Me.mp3	341
1821	What Can I Say	\N	media/songs/Dead-By-April/What-Can-I-Say.mp3	342
1822	California Uber Alles	\N	media/songs/Dead-Kennedys/California-Uber-Alles.mp3	343
1823	Holiday In Cambodia	\N	media/songs/Dead-Kennedys/Holiday-In-Cambodia.mp3	343
1824	Police Truck	\N	media/songs/Dead-Kennedys/Police-Truck.mp3	343
1825	Database Corrupted	\N	media/songs/Dealership/Database-Corrupted.mp3	344
1826	Thats Amore	\N	media/songs/Dean-Martin/Thats-Amore.mp3	345
1827	Bite The Pain	\N	media/songs/Death/Bite-The-Pain.mp3	346
1828	Bite The Pain v2	\N	media/songs/Death/Bite-The-Pain-v2.mp3	346
1829	Cosmic Sea	\N	media/songs/Death/Cosmic-Sea.mp3	346
1830	Crystal Mountain	\N	media/songs/Death/Crystal-Mountain.mp3	346
1831	Crystal Mountain v2	\N	media/songs/Death/Crystal-Mountain-v2.mp3	346
1832	Left To Die	\N	media/songs/Death/Left-To-Die.mp3	346
1833	Leprosy	\N	media/songs/Death/Leprosy.mp3	346
1834	Sacred Serenity	\N	media/songs/Death/Sacred-Serenity.mp3	346
1835	Spirit Crusher	\N	media/songs/Death/Spirit-Crusher.mp3	346
1836	Symbolic	\N	media/songs/Death/Symbolic.mp3	346
1837	Symbolic v2	\N	media/songs/Death/Symbolic-v2.mp3	346
1838	The Philosopher	\N	media/songs/Death/The-Philosopher.mp3	346
1839	The Philosopher v2	\N	media/songs/Death/The-Philosopher-v2.mp3	346
1840	Trapped In A Corner	\N	media/songs/Death/Trapped-In-A-Corner.mp3	346
1841	Voice Of The Soul	\N	media/songs/Death/Voice-Of-The-Soul.mp3	346
1842	Within The Mind	\N	media/songs/Death/Within-The-Mind.mp3	346
1843	Cant Hold Us	\N	media/songs/Death-Of-The-Cool/Cant-Hold-Us.mp3	347
1844	Cant Let Go	\N	media/songs/Death-Of-The-Cool/Cant-Let-Go.mp3	347
1845	Cant Let Go v2	\N	media/songs/Death-Of-The-Cool/Cant-Let-Go-v2.mp3	347
1846	Breafast At Tiffanys	\N	media/songs/Deep-Blue-Something/Breafast-At-Tiffanys.mp3	348
1847	Anya	\N	media/songs/Deep-Purple/Anya.mp3	349
1848	Anya v2	\N	media/songs/Deep-Purple/Anya-v2.mp3	349
1849	Black Knight	\N	media/songs/Deep-Purple/Black-Knight.mp3	349
1850	Black Night	\N	media/songs/Deep-Purple/Black-Night.mp3	349
1851	Black Night Live	\N	media/songs/Deep-Purple/Black-Night-Live.mp3	349
1852	Black Night v2	\N	media/songs/Deep-Purple/Black-Night-v2.mp3	349
1853	Black Night v3	\N	media/songs/Deep-Purple/Black-Night-v3.mp3	349
1854	Black Night v4	\N	media/songs/Deep-Purple/Black-Night-v4.mp3	349
1855	Black Night v5	\N	media/songs/Deep-Purple/Black-Night-v5.mp3	349
1856	Bloodsucker	\N	media/songs/Deep-Purple/Bloodsucker.mp3	349
1857	Bloodsucker v2	\N	media/songs/Deep-Purple/Bloodsucker-v2.mp3	349
1858	Burn	\N	media/songs/Deep-Purple/Burn.mp3	349
1859	Burn v2	\N	media/songs/Deep-Purple/Burn-v2.mp3	349
1860	Burn v3	\N	media/songs/Deep-Purple/Burn-v3.mp3	349
1861	Cascades I M Not Your Lover	\N	media/songs/Deep-Purple/Cascades-I-M-Not-Your-Lover.mp3	349
1862	Child In Time	\N	media/songs/Deep-Purple/Child-In-Time.mp3	349
1863	Child In Time v2	\N	media/songs/Deep-Purple/Child-In-Time-v2.mp3	349
1864	Child In Time v3	\N	media/songs/Deep-Purple/Child-In-Time-v3.mp3	349
1865	Child In Time v4	\N	media/songs/Deep-Purple/Child-In-Time-v4.mp3	349
1866	Child In Time v5	\N	media/songs/Deep-Purple/Child-In-Time-v5.mp3	349
1867	Child In Time v6	\N	media/songs/Deep-Purple/Child-In-Time-v6.mp3	349
1868	Demons Eye	\N	media/songs/Deep-Purple/Demons-Eye.mp3	349
1869	Demons Eye v2	\N	media/songs/Deep-Purple/Demons-Eye-v2.mp3	349
1870	Demons Eye v3	\N	media/songs/Deep-Purple/Demons-Eye-v3.mp3	349
1871	Fireball	\N	media/songs/Deep-Purple/Fireball.mp3	349
1872	Fireball v2	\N	media/songs/Deep-Purple/Fireball-v2.mp3	349
1873	Flight Of The Rat	\N	media/songs/Deep-Purple/Flight-Of-The-Rat.mp3	349
1874	Flight Of The Rat v2	\N	media/songs/Deep-Purple/Flight-Of-The-Rat-v2.mp3	349
1875	Fools	\N	media/songs/Deep-Purple/Fools.mp3	349
1876	Fools v2	\N	media/songs/Deep-Purple/Fools-v2.mp3	349
1877	Gypsys Kiss	\N	media/songs/Deep-Purple/Gypsys-Kiss.mp3	349
1878	Gypsys Kiss v2	\N	media/songs/Deep-Purple/Gypsys-Kiss-v2.mp3	349
1880	Highway Star v2	\N	media/songs/Deep-Purple/Highway-Star-v2.mp3	349
1881	Highway Star v3	\N	media/songs/Deep-Purple/Highway-Star-v3.mp3	349
1882	Highway Star v4	\N	media/songs/Deep-Purple/Highway-Star-v4.mp3	349
1883	Highway Star v5	\N	media/songs/Deep-Purple/Highway-Star-v5.mp3	349
1884	Highway Star v6	\N	media/songs/Deep-Purple/Highway-Star-v6.mp3	349
1885	Highway Star v7	\N	media/songs/Deep-Purple/Highway-Star-v7.mp3	349
1886	Highway Star v8	\N	media/songs/Deep-Purple/Highway-Star-v8.mp3	349
1887	Highway Star v9	\N	media/songs/Deep-Purple/Highway-Star-v9.mp3	349
1888	Hush	\N	media/songs/Deep-Purple/Hush.mp3	349
1889	Hush v2	\N	media/songs/Deep-Purple/Hush-v2.mp3	349
1890	Hush v3	\N	media/songs/Deep-Purple/Hush-v3.mp3	349
1891	Im Not Your Lover	\N	media/songs/Deep-Purple/Im-Not-Your-Lover.mp3	349
1892	Into The Fire	\N	media/songs/Deep-Purple/Into-The-Fire.mp3	349
1893	Into The Fire v2	\N	media/songs/Deep-Purple/Into-The-Fire-v2.mp3	349
1894	King Of Dreams	\N	media/songs/Deep-Purple/King-Of-Dreams.mp3	349
1895	King Of Dreams v2	\N	media/songs/Deep-Purple/King-Of-Dreams-v2.mp3	349
1896	Knocking At Your Back Door	\N	media/songs/Deep-Purple/Knocking-At-Your-Back-Door.mp3	349
1897	Knocking At Your Back Door Live	\N	media/songs/Deep-Purple/Knocking-At-Your-Back-Door-Live.mp3	349
1898	Knocking At Your Back Door v2	\N	media/songs/Deep-Purple/Knocking-At-Your-Back-Door-v2.mp3	349
1899	Knocking At Your Back Door v3	\N	media/songs/Deep-Purple/Knocking-At-Your-Back-Door-v3.mp3	349
1900	Lady Double Dealer Live	\N	media/songs/Deep-Purple/Lady-Double-Dealer-Live.mp3	349
1901	Lay Down Stay Down	\N	media/songs/Deep-Purple/Lay-Down-Stay-Down.mp3	349
1902	Lay Down Stay Down v2	\N	media/songs/Deep-Purple/Lay-Down-Stay-Down-v2.mp3	349
1903	Lazy	\N	media/songs/Deep-Purple/Lazy.mp3	349
1904	Lazy v2	\N	media/songs/Deep-Purple/Lazy-v2.mp3	349
1905	Lazy v3	\N	media/songs/Deep-Purple/Lazy-v3.mp3	349
1906	Lazy v4	\N	media/songs/Deep-Purple/Lazy-v4.mp3	349
1907	Lazy v5	\N	media/songs/Deep-Purple/Lazy-v5.mp3	349
1908	Lazy v6	\N	media/songs/Deep-Purple/Lazy-v6.mp3	349
1909	Lazy v7	\N	media/songs/Deep-Purple/Lazy-v7.mp3	349
1910	Loosen My Strings	\N	media/songs/Deep-Purple/Loosen-My-Strings.mp3	349
1911	Loosen My Strings v2	\N	media/songs/Deep-Purple/Loosen-My-Strings-v2.mp3	349
1912	Love Conquers All	\N	media/songs/Deep-Purple/Love-Conquers-All.mp3	349
1913	Love Conquers All v2	\N	media/songs/Deep-Purple/Love-Conquers-All-v2.mp3	349
1914	Mary Long	\N	media/songs/Deep-Purple/Mary-Long.mp3	349
1915	Mary Long v2	\N	media/songs/Deep-Purple/Mary-Long-v2.mp3	349
1916	Maybe Im A Leo	\N	media/songs/Deep-Purple/Maybe-Im-A-Leo.mp3	349
1917	Maybe Im A Leo v2	\N	media/songs/Deep-Purple/Maybe-Im-A-Leo-v2.mp3	349
1918	Maybe Im A Leo v3	\N	media/songs/Deep-Purple/Maybe-Im-A-Leo-v3.mp3	349
1919	Maybe Im A Leo v4	\N	media/songs/Deep-Purple/Maybe-Im-A-Leo-v4.mp3	349
1920	Mistreated	\N	media/songs/Deep-Purple/Mistreated.mp3	349
1921	Mistreated v2	\N	media/songs/Deep-Purple/Mistreated-v2.mp3	349
1922	Never Before	\N	media/songs/Deep-Purple/Never-Before.mp3	349
1923	No No No	\N	media/songs/Deep-Purple/No-No-No.mp3	349
1924	Nobodys Home	\N	media/songs/Deep-Purple/Nobodys-Home.mp3	349
1925	Nobodys Home v2	\N	media/songs/Deep-Purple/Nobodys-Home-v2.mp3	349
1926	Perfect Strangers	\N	media/songs/Deep-Purple/Perfect-Strangers.mp3	349
1927	Perfect Strangers v2	\N	media/songs/Deep-Purple/Perfect-Strangers-v2.mp3	349
1928	Pictures Of Home	\N	media/songs/Deep-Purple/Pictures-Of-Home.mp3	349
1929	Pictures Of Home v2	\N	media/songs/Deep-Purple/Pictures-Of-Home-v2.mp3	349
1930	Place In Line	\N	media/songs/Deep-Purple/Place-In-Line.mp3	349
1931	Rapture Of The Deep	\N	media/songs/Deep-Purple/Rapture-Of-The-Deep.mp3	349
1932	Rapture Of The Deep v2	\N	media/songs/Deep-Purple/Rapture-Of-The-Deep-v2.mp3	349
1933	Rat Bat Blue	\N	media/songs/Deep-Purple/Rat-Bat-Blue.mp3	349
1934	Rat Bat Blue v2	\N	media/songs/Deep-Purple/Rat-Bat-Blue-v2.mp3	349
1935	Since Youve Been Gone	\N	media/songs/Deep-Purple/Since-Youve-Been-Gone.mp3	349
1936	Smoke On The Water	\N	media/songs/Deep-Purple/Smoke-On-The-Water.mp3	349
1937	Smoke On The Water v2	\N	media/songs/Deep-Purple/Smoke-On-The-Water-v2.mp3	349
1938	Smoke On The Water v3	\N	media/songs/Deep-Purple/Smoke-On-The-Water-v3.mp3	349
1939	Smoke On The Water v4	\N	media/songs/Deep-Purple/Smoke-On-The-Water-v4.mp3	349
1940	Smoke On The Water v5	\N	media/songs/Deep-Purple/Smoke-On-The-Water-v5.mp3	349
1941	Smoke On The Water v6	\N	media/songs/Deep-Purple/Smoke-On-The-Water-v6.mp3	349
1942	Smoke On The Water v7	\N	media/songs/Deep-Purple/Smoke-On-The-Water-v7.mp3	349
1943	Soldier Of Fortune	\N	media/songs/Deep-Purple/Soldier-Of-Fortune.mp3	349
1944	Soldier Of Fortune v2	\N	media/songs/Deep-Purple/Soldier-Of-Fortune-v2.mp3	349
1945	Soldier Of Fortune v3	\N	media/songs/Deep-Purple/Soldier-Of-Fortune-v3.mp3	349
1946	Soldier Of Fortune v4	\N	media/songs/Deep-Purple/Soldier-Of-Fortune-v4.mp3	349
1947	Sometimes I Feel Like Screaming	\N	media/songs/Deep-Purple/Sometimes-I-Feel-Like-Screaming.mp3	349
1948	Sometimes I Feel Like Screaming v2	\N	media/songs/Deep-Purple/Sometimes-I-Feel-Like-Screaming-v2.mp3	349
1949	Space Truckin	\N	media/songs/Deep-Purple/Space-Truckin.mp3	349
1950	Space Truckin v2	\N	media/songs/Deep-Purple/Space-Truckin-v2.mp3	349
1951	Space Truckin v3	\N	media/songs/Deep-Purple/Space-Truckin-v3.mp3	349
1952	Space Truckin v4	\N	media/songs/Deep-Purple/Space-Truckin-v4.mp3	349
1953	Speed King	\N	media/songs/Deep-Purple/Speed-King.mp3	349
1954	Speed King v2	\N	media/songs/Deep-Purple/Speed-King-v2.mp3	349
1955	Stormbringer	\N	media/songs/Deep-Purple/Stormbringer.mp3	349
1956	Stormbringer v2	\N	media/songs/Deep-Purple/Stormbringer-v2.mp3	349
1957	Strange Kind Of Woman	\N	media/songs/Deep-Purple/Strange-Kind-Of-Woman.mp3	349
1958	Strange Kind Of Woman v2	\N	media/songs/Deep-Purple/Strange-Kind-Of-Woman-v2.mp3	349
1959	Strange Kind Of Woman v3	\N	media/songs/Deep-Purple/Strange-Kind-Of-Woman-v3.mp3	349
1960	Strange Kind Of Woman v4	\N	media/songs/Deep-Purple/Strange-Kind-Of-Woman-v4.mp3	349
1961	Ted The Mechanic	\N	media/songs/Deep-Purple/Ted-The-Mechanic.mp3	349
1962	Ted The Mechanic v2	\N	media/songs/Deep-Purple/Ted-The-Mechanic-v2.mp3	349
1963	The Battle Rages On	\N	media/songs/Deep-Purple/The-Battle-Rages-On.mp3	349
1964	The Battle Rages On v2	\N	media/songs/Deep-Purple/The-Battle-Rages-On-v2.mp3	349
1965	The Battle Rages On v3	\N	media/songs/Deep-Purple/The-Battle-Rages-On-v3.mp3	349
1966	The Battle Rages On v4	\N	media/songs/Deep-Purple/The-Battle-Rages-On-v4.mp3	349
1967	The Cut Runs Deep	\N	media/songs/Deep-Purple/The-Cut-Runs-Deep.mp3	349
1968	The Cut Runs Deep v2	\N	media/songs/Deep-Purple/The-Cut-Runs-Deep-v2.mp3	349
1969	Under The Gun	\N	media/songs/Deep-Purple/Under-The-Gun.mp3	349
1970	Under The Gun v2	\N	media/songs/Deep-Purple/Under-The-Gun-v2.mp3	349
1971	Wasted Sunset	\N	media/songs/Deep-Purple/Wasted-Sunset.mp3	349
1972	Wasted Sunset v2	\N	media/songs/Deep-Purple/Wasted-Sunset-v2.mp3	349
1973	Whats Going On Here	\N	media/songs/Deep-Purple/Whats-Going-On-Here.mp3	349
1974	When A Blind Man Cries	\N	media/songs/Deep-Purple/When-A-Blind-Man-Cries.mp3	349
1975	When A Blind Man Cries v2	\N	media/songs/Deep-Purple/When-A-Blind-Man-Cries-v2.mp3	349
1976	When A Blind Man Cries v3	\N	media/songs/Deep-Purple/When-A-Blind-Man-Cries-v3.mp3	349
1977	When A Blind Man Cries v4	\N	media/songs/Deep-Purple/When-A-Blind-Man-Cries-v4.mp3	349
1978	Woman From Tokyo	\N	media/songs/Deep-Purple/Woman-From-Tokyo.mp3	349
1979	Woman From Tokyo v2	\N	media/songs/Deep-Purple/Woman-From-Tokyo-v2.mp3	349
1980	Woman From Tokyo v3	\N	media/songs/Deep-Purple/Woman-From-Tokyo-v3.mp3	349
1981	Woman From Tokyo v4	\N	media/songs/Deep-Purple/Woman-From-Tokyo-v4.mp3	349
1982	Wring That Neck	\N	media/songs/Deep-Purple/Wring-That-Neck.mp3	349
1983	You Fool No One	\N	media/songs/Deep-Purple/You-Fool-No-One.mp3	349
1984	Animal	\N	media/songs/Def-Leppard/Animal.mp3	350
1985	Animal v2	\N	media/songs/Def-Leppard/Animal-v2.mp3	350
1986	Bringing On The Heartbreak	\N	media/songs/Def-Leppard/Bringing-On-The-Heartbreak.mp3	350
1987	Bringing On The Heartbreak v2	\N	media/songs/Def-Leppard/Bringing-On-The-Heartbreak-v2.mp3	350
1988	Bringing On The Heartbreak v3	\N	media/songs/Def-Leppard/Bringing-On-The-Heartbreak-v3.mp3	350
1989	Foolin	\N	media/songs/Def-Leppard/Foolin.mp3	350
1990	Heaven Is	\N	media/songs/Def-Leppard/Heaven-Is.mp3	350
1991	Heaven Is v2	\N	media/songs/Def-Leppard/Heaven-Is-v2.mp3	350
1992	Hysteria	\N	media/songs/Def-Leppard/Hysteria.mp3	350
1993	Hysteria v2	\N	media/songs/Def-Leppard/Hysteria-v2.mp3	350
1994	Love Bites	\N	media/songs/Def-Leppard/Love-Bites.mp3	350
1995	Love Bites v2	\N	media/songs/Def-Leppard/Love-Bites-v2.mp3	350
1996	Love Bites v3	\N	media/songs/Def-Leppard/Love-Bites-v3.mp3	350
1997	Nine Lives	\N	media/songs/Def-Leppard/Nine-Lives.mp3	350
1998	Photograph	\N	media/songs/Def-Leppard/Photograph.mp3	350
1999	Photograph v2	\N	media/songs/Def-Leppard/Photograph-v2.mp3	350
2000	Photograph v3	\N	media/songs/Def-Leppard/Photograph-v3.mp3	350
2001	Photograph v4	\N	media/songs/Def-Leppard/Photograph-v4.mp3	350
2002	Photograph v5	\N	media/songs/Def-Leppard/Photograph-v5.mp3	350
2003	Photograph v6	\N	media/songs/Def-Leppard/Photograph-v6.mp3	350
2004	Photograph v7	\N	media/songs/Def-Leppard/Photograph-v7.mp3	350
2005	Photograph v8	\N	media/songs/Def-Leppard/Photograph-v8.mp3	350
2006	Pour Some Sugar On Me	\N	media/songs/Def-Leppard/Pour-Some-Sugar-On-Me.mp3	350
2007	Pour Some Sugar On Me v2	\N	media/songs/Def-Leppard/Pour-Some-Sugar-On-Me-v2.mp3	350
2008	Pour Some Sugar On Me v3	\N	media/songs/Def-Leppard/Pour-Some-Sugar-On-Me-v3.mp3	350
2009	Pour Some Sugar On Me v4	\N	media/songs/Def-Leppard/Pour-Some-Sugar-On-Me-v4.mp3	350
2010	Pour Some Sugar On Me v5	\N	media/songs/Def-Leppard/Pour-Some-Sugar-On-Me-v5.mp3	350
2011	Promises	\N	media/songs/Def-Leppard/Promises.mp3	350
2012	Rock Of Ages	\N	media/songs/Def-Leppard/Rock-Of-Ages.mp3	350
2013	Stagefright	\N	media/songs/Def-Leppard/Stagefright.mp3	350
2014	Switch 625	\N	media/songs/Def-Leppard/Switch-625.mp3	350
2015	Switch 625 v2	\N	media/songs/Def-Leppard/Switch-625-v2.mp3	350
2016	When Love And Hate Collide	\N	media/songs/Def-Leppard/When-Love-And-Hate-Collide.mp3	350
2017	You Got Me Runnin	\N	media/songs/Def-Leppard/You-Got-Me-Runnin.mp3	350
2018	Runaway	\N	media/songs/Del-Shannon/Runaway.mp3	351
2019	Dualing Banjos	\N	media/songs/Deliverance/Dualing-Banjos.mp3	352
2020	Dueling Banjos	\N	media/songs/Deliverance/Dueling-Banjos.mp3	352
2021	Here We Go Again	\N	media/songs/Demi-Lovato/Here-We-Go-Again.mp3	353
2022	Pegasus Fantasy	\N	media/songs/Demiang/Pegasus-Fantasy.mp3	354
2023	Blood On My Hands	\N	media/songs/Demons-And-Wizards/Blood-On-My-Hands.mp3	355
2024	Blood On My Hands v2	\N	media/songs/Demons-And-Wizards/Blood-On-My-Hands-v2.mp3	355
2025	A Pain That Im Used To	\N	media/songs/Depeche-Mode/A-Pain-That-Im-Used-To.mp3	356
2026	Never Let Me Down Again	\N	media/songs/Depeche-Mode/Never-Let-Me-Down-Again.mp3	356
2027	Policy Of Truth	\N	media/songs/Depeche-Mode/Policy-Of-Truth.mp3	356
2028	Layla	\N	media/songs/Derek-And-The-Dominoes/Layla.mp3	357
2029	Young Funk	\N	media/songs/Derek-Trucks-Band/Young-Funk.mp3	358
2030	Layla	\N	media/songs/Derrick-and-the-Dominoes/Layla.mp3	359
2031	Bestial Invasion	\N	media/songs/Destruction/Bestial-Invasion.mp3	360
2032	Thrash Attack	\N	media/songs/Destruction/Thrash-Attack.mp3	360
2033	Thrash Attack v2	\N	media/songs/Destruction/Thrash-Attack-v2.mp3	360
2034	Thrash Attack v3	\N	media/songs/Destruction/Thrash-Attack-v3.mp3	360
2035	Awaken	\N	media/songs/Dethklok/Awaken.mp3	361
2036	Awaken Mustakrakish	\N	media/songs/Dethklok/Awaken-Mustakrakish.mp3	361
2037	Bloodlines	\N	media/songs/Dethklok/Bloodlines.mp3	361
2038	Deththeme	\N	media/songs/Dethklok/Deththeme.mp3	361
2039	Duncan Hills Coffee	\N	media/songs/Dethklok/Duncan-Hills-Coffee.mp3	361
2040	Go Into The Water	\N	media/songs/Dethklok/Go-Into-The-Water.mp3	361
2041	Laser Cannon Deth Sentence	\N	media/songs/Dethklok/Laser-Cannon-Deth-Sentence.mp3	361
2042	Laser Cannon Deth Sentence v2	\N	media/songs/Dethklok/Laser-Cannon-Deth-Sentence-v2.mp3	361
2043	The Lost Vikings	\N	media/songs/Dethklok/The-Lost-Vikings.mp3	361
2044	Thunderhorse	\N	media/songs/Dethklok/Thunderhorse.mp3	361
2045	Thunderhorse v2	\N	media/songs/Dethklok/Thunderhorse-v2.mp3	361
2046	Thunderhorse v3	\N	media/songs/Dethklok/Thunderhorse-v3.mp3	361
2047	Rock City	\N	media/songs/Detroit/Rock-City.mp3	362
2048	Girl U Want	\N	media/songs/Devo/Girl-U-Want.mp3	363
2049	Girl U Want v2	\N	media/songs/Devo/Girl-U-Want-v2.mp3	363
2050	Through Being Cool	\N	media/songs/Devo/Through-Being-Cool.mp3	363
2051	Through Being Cool v2	\N	media/songs/Devo/Through-Being-Cool-v2.mp3	363
2052	Uncontrollable Urge	\N	media/songs/Devo/Uncontrollable-Urge.mp3	363
2053	Whip It	\N	media/songs/Devo/Whip-It.mp3	363
2054	Johnny	\N	media/songs/Di-Rect/Johnny.mp3	364
2055	Am I Evil	\N	media/songs/Diamond-Head/Am-I-Evil.mp3	365
2056	Me Ama	\N	media/songs/Diante-do-trono/Me-Ama.mp3	366
2057	Ernten Was Wir Saen	\N	media/songs/Die-Fantastischen-Vier/Ernten-Was-Wir-Saen.mp3	367
2058	Hier Kommt Alex	\N	media/songs/Die-Toten-Hosen/Hier-Kommt-Alex.mp3	368
2059	Hier Kommt Alex v2	\N	media/songs/Die-Toten-Hosen/Hier-Kommt-Alex-v2.mp3	368
2060	Free And Easy Down The Road I Go	\N	media/songs/Dierks-Bentley/Free-And-Easy-Down-The-Road-I-Go.mp3	369
2061	Sideways	\N	media/songs/Dierks-Bentley/Sideways.mp3	369
2062	Blessings Upon The Throne Of Tyranny	\N	media/songs/Dimmu-Borgir/Blessings-Upon-The-Throne-Of-Tyranny.mp3	370
2063	Gateways	\N	media/songs/Dimmu-Borgir/Gateways.mp3	370
2064	Kings Of The Carnival Creation	\N	media/songs/Dimmu-Borgir/Kings-Of-The-Carnival-Creation.mp3	370
2065	Puritania	\N	media/songs/Dimmu-Borgir/Puritania.mp3	370
2066	Puritania v2	\N	media/songs/Dimmu-Borgir/Puritania-v2.mp3	370
2067	The Sacrilegious Scorn	\N	media/songs/Dimmu-Borgir/The-Sacrilegious-Scorn.mp3	370
2068	Fly On The Wall	\N	media/songs/Din/Fly-On-The-Wall.mp3	371
2069	Feel The Pain	\N	media/songs/Dinosaur-Jr/Feel-The-Pain.mp3	372
2070	Freak Scene	\N	media/songs/Dinosaur-Jr/Freak-Scene.mp3	372
2071	Little Furry Things	\N	media/songs/Dinosaur-Jr/Little-Furry-Things.mp3	372
2072	Dont Talk To Strangers	\N	media/songs/Dio/Dont-Talk-To-Strangers.mp3	373
2073	Dream Evil	\N	media/songs/Dio/Dream-Evil.mp3	373
2074	Holy Diver	\N	media/songs/Dio/Holy-Diver.mp3	373
2075	Holy Diver v2	\N	media/songs/Dio/Holy-Diver-v2.mp3	373
2076	Holy Diver v3	\N	media/songs/Dio/Holy-Diver-v3.mp3	373
2077	Holy Diver v4	\N	media/songs/Dio/Holy-Diver-v4.mp3	373
2078	Holy Diver v5	\N	media/songs/Dio/Holy-Diver-v5.mp3	373
2079	Killing The Dragon	\N	media/songs/Dio/Killing-The-Dragon.mp3	373
2080	Push	\N	media/songs/Dio/Push.mp3	373
2081	Rainbow In The Dark	\N	media/songs/Dio/Rainbow-In-The-Dark.mp3	373
2082	Rainbow In The Dark v2	\N	media/songs/Dio/Rainbow-In-The-Dark-v2.mp3	373
2083	Rainbow In The Dark v3	\N	media/songs/Dio/Rainbow-In-The-Dark-v3.mp3	373
2084	Rock And Roll Children	\N	media/songs/Dio/Rock-And-Roll-Children.mp3	373
2085	Stand Up And Shout	\N	media/songs/Dio/Stand-Up-And-Shout.mp3	373
2086	Stand Up And Shout v2	\N	media/songs/Dio/Stand-Up-And-Shout-v2.mp3	373
2087	Stand Up And Shout v3	\N	media/songs/Dio/Stand-Up-And-Shout-v3.mp3	373
2088	Straight Through The Heart	\N	media/songs/Dio/Straight-Through-The-Heart.mp3	373
2089	The Last In Line	\N	media/songs/Dio/The-Last-In-Line.mp3	373
2090	Heartbreaker	\N	media/songs/Dionne-Warwick/Heartbreaker.mp3	374
2091	Down With The Sickness	\N	media/songs/Disturbed/Down-With-The-Sickness.mp3	375
2092	Down With The Sickness v2	\N	media/songs/Disturbed/Down-With-The-Sickness-v2.mp3	375
2093	Indestructible	\N	media/songs/Disturbed/Indestructible.mp3	375
2094	Inside The Fire	\N	media/songs/Disturbed/Inside-The-Fire.mp3	375
2095	Inside The Fire v2	\N	media/songs/Disturbed/Inside-The-Fire-v2.mp3	375
2096	Inside The Fire v3	\N	media/songs/Disturbed/Inside-The-Fire-v3.mp3	375
2097	Perfect Insanity	\N	media/songs/Disturbed/Perfect-Insanity.mp3	375
2098	Stricken	\N	media/songs/Disturbed/Stricken.mp3	375
2099	Stricken v2	\N	media/songs/Disturbed/Stricken-v2.mp3	375
2100	Stupify	\N	media/songs/Disturbed/Stupify.mp3	375
2101	The Animal	\N	media/songs/Disturbed/The-Animal.mp3	375
2102	Voices	\N	media/songs/Disturbed/Voices.mp3	375
2103	Perfect Love Song	\N	media/songs/Divine-Comedy/Perfect-Love-Song.mp3	376
2104	Sin Wagon	\N	media/songs/Dixie-Chicks/Sin-Wagon.mp3	377
2105	Cruise Control	\N	media/songs/Dixie-Dregs/Cruise-Control.mp3	378
2106	Take It Off The Top	\N	media/songs/Dixie-Dregs/Take-It-Off-The-Top.mp3	378
2107	Mi Amor	\N	media/songs/DJ-Ashba/Mi-Amor.mp3	379
2108	The Ballad Of Death	\N	media/songs/DJ-Ashba/The-Ballad-Of-Death.mp3	379
2109	All The Things You Are	\N	media/songs/Django-Reinhardt/All-The-Things-You-Are.mp3	380
2110	Minor Swing	\N	media/songs/Django-Reinhardt/Minor-Swing.mp3	380
2111	Nuages	\N	media/songs/Django-Reinhardt/Nuages.mp3	380
2112	Nuages v2	\N	media/songs/Django-Reinhardt/Nuages-v2.mp3	380
2113	Nuages v3	\N	media/songs/Django-Reinhardt/Nuages-v3.mp3	380
2114	Drift Away	\N	media/songs/Dobie-Gray/Drift-Away.mp3	381
2115	NV	\N	media/songs/Doctor-Doctor/NV.mp3	382
2116	Alone Again	\N	media/songs/Dokken/Alone-Again.mp3	383
2117	Alone Again Live	\N	media/songs/Dokken/Alone-Again-Live.mp3	383
2118	Breaking The Chains	\N	media/songs/Dokken/Breaking-The-Chains.mp3	383
2119	Breaking The Chains v2	\N	media/songs/Dokken/Breaking-The-Chains-v2.mp3	383
2120	Breaking The Chains v3	\N	media/songs/Dokken/Breaking-The-Chains-v3.mp3	383
2121	Dream Warriors	\N	media/songs/Dokken/Dream-Warriors.mp3	383
2122	Dream Warriors v2	\N	media/songs/Dokken/Dream-Warriors-v2.mp3	383
2123	Dream Warriors v3	\N	media/songs/Dokken/Dream-Warriors-v3.mp3	383
2124	In My Dreams	\N	media/songs/Dokken/In-My-Dreams.mp3	383
2125	In My Dreams v2	\N	media/songs/Dokken/In-My-Dreams-v2.mp3	383
2126	In My Dreams v3	\N	media/songs/Dokken/In-My-Dreams-v3.mp3	383
2127	Into The Fire	\N	media/songs/Dokken/Into-The-Fire.mp3	383
2128	Into The Fire v2	\N	media/songs/Dokken/Into-The-Fire-v2.mp3	383
2129	Its Not Love	\N	media/songs/Dokken/Its-Not-Love.mp3	383
2130	Mr Scary	\N	media/songs/Dokken/Mr-Scary.mp3	383
2131	Mr Scary	\N	media/songs/Dokken/Mr-Scary.mp3	383
2132	Mr Scary v2	\N	media/songs/Dokken/Mr-Scary-v2.mp3	383
2133	Mr Scary v3	\N	media/songs/Dokken/Mr-Scary-v3.mp3	383
2134	The Hunter	\N	media/songs/Dokken/The-Hunter.mp3	383
2135	Tooth And Nail	\N	media/songs/Dokken/Tooth-And-Nail.mp3	383
2136	Tooth And Nail Live	\N	media/songs/Dokken/Tooth-And-Nail-Live.mp3	383
2137	Unchain The Night	\N	media/songs/Dokken/Unchain-The-Night.mp3	383
2138	Unchain The Night Live	\N	media/songs/Dokken/Unchain-The-Night-Live.mp3	383
2139	Unchain The Night v2	\N	media/songs/Dokken/Unchain-The-Night-v2.mp3	383
2140	Love Holds It Down	\N	media/songs/Dom-Liberati/Love-Holds-It-Down.mp3	384
2141	1000 Miles Away	\N	media/songs/Don-Dokken/1000-Miles-Away.mp3	385
2142	Stay	\N	media/songs/Don-Dokken/Stay.mp3	385
2143	Heavy Metal Takin A Ride	\N	media/songs/Don-Felder/Heavy-Metal-Takin-A-Ride.mp3	386
2144	Dirty Laundry	\N	media/songs/Don-Henley/Dirty-Laundry.mp3	387
2145	The Boys Of Summer	\N	media/songs/Don-Henley/The-Boys-Of-Summer.mp3	387
2146	The Boys Of Summer v2	\N	media/songs/Don-Henley/The-Boys-Of-Summer-v2.mp3	387
2147	American Pie	\N	media/songs/Don-Mclean/American-Pie.mp3	388
2148	Nothing For Me Here	\N	media/songs/Dope/Nothing-For-Me-Here.mp3	389
2149	King George	\N	media/songs/Dover/King-George.mp3	390
2150	Stone The Crow	\N	media/songs/Down/Stone-The-Crow.mp3	391
2151	Green Light Girl	\N	media/songs/Doyle-Bramhall-II/Green-Light-Girl.mp3	392
2152	Milk And Alcohol	\N	media/songs/Dr-Feelgood/Milk-And-Alcohol.mp3	393
2153	She Does It Right	\N	media/songs/Dr-Feelgood/She-Does-It-Right.mp3	393
2154	Isolated Solo	\N	media/songs/Dr-Sin/Isolated-Solo.mp3	394
2155	Title 1	\N	media/songs/Dr-Sin/Title-1.mp3	394
2156	UNKNOWN	\N	media/songs/Dr-Sin/UNKNOWN.mp3	394
2157	Fury Of The Storm	\N	media/songs/Dragonforce/Fury-Of-The-Storm.mp3	395
2158	Fury Of The Storm v2	\N	media/songs/Dragonforce/Fury-Of-The-Storm-v2.mp3	395
2159	Fury Of The Storm v3	\N	media/songs/Dragonforce/Fury-Of-The-Storm-v3.mp3	395
2160	Prepare For War	\N	media/songs/Dragonforce/Prepare-For-War.mp3	395
2161	Through The Fire And Flames	\N	media/songs/Dragonforce/Through-The-Fire-And-Flames.mp3	395
2162	Through The Fire And Flames v2	\N	media/songs/Dragonforce/Through-The-Fire-And-Flames-v2.mp3	395
2163	Through The Fire And Flames v3	\N	media/songs/Dragonforce/Through-The-Fire-And-Flames-v3.mp3	395
2164	Trail Of Broken Hearts	\N	media/songs/Dragonforce/Trail-Of-Broken-Hearts.mp3	395
2165	Anything	\N	media/songs/Dramarama/Anything.mp3	396
2166	6 O Clock	\N	media/songs/Dream-Theater/6-O-Clock.mp3	397
2167	6 O Clock v2	\N	media/songs/Dream-Theater/6-O-Clock-v2.mp3	397
2168	6 O Clock v3	\N	media/songs/Dream-Theater/6-O-Clock-v3.mp3	397
2169	A Change Of Seasons	\N	media/songs/Dream-Theater/A-Change-Of-Seasons.mp3	397
2170	A Fortune In Lies	\N	media/songs/Dream-Theater/A-Fortune-In-Lies.mp3	397
2171	A Fortune In Lies v2	\N	media/songs/Dream-Theater/A-Fortune-In-Lies-v2.mp3	397
2172	A Nightmare To Remember	\N	media/songs/Dream-Theater/A-Nightmare-To-Remember.mp3	397
2173	A Rite Of Passage	\N	media/songs/Dream-Theater/A-Rite-Of-Passage.mp3	397
2174	About To Crash	\N	media/songs/Dream-Theater/About-To-Crash.mp3	397
2175	Acos	\N	media/songs/Dream-Theater/Acos.mp3	397
2176	Afterlife	\N	media/songs/Dream-Theater/Afterlife.mp3	397
2177	Afterlife v2	\N	media/songs/Dream-Theater/Afterlife-v2.mp3	397
2178	Afterlife v3	\N	media/songs/Dream-Theater/Afterlife-v3.mp3	397
2179	Aiabacking	\N	media/songs/Dream-Theater/Aiabacking.mp3	397
2180	Aiaphase	\N	media/songs/Dream-Theater/Aiaphase.mp3	397
2181	Another Day	\N	media/songs/Dream-Theater/Another-Day.mp3	397
2182	Another Day Solo	\N	media/songs/Dream-Theater/Another-Day-Solo.mp3	397
2183	Another Day v2	\N	media/songs/Dream-Theater/Another-Day-v2.mp3	397
2184	Another Won	\N	media/songs/Dream-Theater/Another-Won.mp3	397
2185	As I Am	\N	media/songs/Dream-Theater/As-I-Am.mp3	397
2186	As I Am v2	\N	media/songs/Dream-Theater/As-I-Am-v2.mp3	397
2187	As I Am v3	\N	media/songs/Dream-Theater/As-I-Am-v3.mp3	397
2188	As I Am v4	\N	media/songs/Dream-Theater/As-I-Am-v4.mp3	397
2189	Beyond This Life Live	\N	media/songs/Dream-Theater/Beyond-This-Life-Live.mp3	397
2190	Burning My Soul	\N	media/songs/Dream-Theater/Burning-My-Soul.mp3	397
2191	Burning My Soul v2	\N	media/songs/Dream-Theater/Burning-My-Soul-v2.mp3	397
2192	Caught In A Web	\N	media/songs/Dream-Theater/Caught-In-A-Web.mp3	397
2193	Caught In A Web v2	\N	media/songs/Dream-Theater/Caught-In-A-Web-v2.mp3	397
2194	Caught In A Web v3	\N	media/songs/Dream-Theater/Caught-In-A-Web-v3.mp3	397
2195	Constant Motion	\N	media/songs/Dream-Theater/Constant-Motion.mp3	397
2196	Constant Motion v2	\N	media/songs/Dream-Theater/Constant-Motion-v2.mp3	397
2197	Constant Motion v3	\N	media/songs/Dream-Theater/Constant-Motion-v3.mp3	397
2198	Constant Motion v4	\N	media/songs/Dream-Theater/Constant-Motion-v4.mp3	397
2199	Dark Eternal Night	\N	media/songs/Dream-Theater/Dark-Eternal-Night.mp3	397
2200	Dark Eternal Night v2	\N	media/songs/Dream-Theater/Dark-Eternal-Night-v2.mp3	397
2201	Erotomania	\N	media/songs/Dream-Theater/Erotomania.mp3	397
2202	Erotomania v2	\N	media/songs/Dream-Theater/Erotomania-v2.mp3	397
2203	Erotomania v3	\N	media/songs/Dream-Theater/Erotomania-v3.mp3	397
2204	Erotomania v4	\N	media/songs/Dream-Theater/Erotomania-v4.mp3	397
2205	Erotomania v5	\N	media/songs/Dream-Theater/Erotomania-v5.mp3	397
2206	Eve	\N	media/songs/Dream-Theater/Eve.mp3	397
2207	Fatal Tragedy	\N	media/songs/Dream-Theater/Fatal-Tragedy.mp3	397
2208	Fatal Tragedy v2	\N	media/songs/Dream-Theater/Fatal-Tragedy-v2.mp3	397
2209	Fatal Tragedy v3	\N	media/songs/Dream-Theater/Fatal-Tragedy-v3.mp3	397
2210	Forsaken	\N	media/songs/Dream-Theater/Forsaken.mp3	397
2211	Forsaken v2	\N	media/songs/Dream-Theater/Forsaken-v2.mp3	397
2212	Forsaken v3	\N	media/songs/Dream-Theater/Forsaken-v3.mp3	397
2213	Goodnight Kiss	\N	media/songs/Dream-Theater/Goodnight-Kiss.mp3	397
2214	Goodnight Kiss v2	\N	media/songs/Dream-Theater/Goodnight-Kiss-v2.mp3	397
2215	Goodnight Kiss v3	\N	media/songs/Dream-Theater/Goodnight-Kiss-v3.mp3	397
2216	Hells Kitchen	\N	media/songs/Dream-Theater/Hells-Kitchen.mp3	397
2217	Hells Kitchen v2	\N	media/songs/Dream-Theater/Hells-Kitchen-v2.mp3	397
2218	Hells Kitchen v3	\N	media/songs/Dream-Theater/Hells-Kitchen-v3.mp3	397
2219	Hells Kitchen v4	\N	media/songs/Dream-Theater/Hells-Kitchen-v4.mp3	397
2220	Hells Kitchen v5	\N	media/songs/Dream-Theater/Hells-Kitchen-v5.mp3	397
2221	Hollow Years Live	\N	media/songs/Dream-Theater/Hollow-Years-Live.mp3	397
2222	Home	\N	media/songs/Dream-Theater/Home.mp3	397
2223	Home v2	\N	media/songs/Dream-Theater/Home-v2.mp3	397
2224	Home v3	\N	media/songs/Dream-Theater/Home-v3.mp3	397
2225	Honor Thy Father	\N	media/songs/Dream-Theater/Honor-Thy-Father.mp3	397
2226	Hourglass	\N	media/songs/Dream-Theater/Hourglass.mp3	397
2227	Hourglass v2	\N	media/songs/Dream-Theater/Hourglass-v2.mp3	397
2228	I Walk Beside You	\N	media/songs/Dream-Theater/I-Walk-Beside-You.mp3	397
2229	Innocence Faded	\N	media/songs/Dream-Theater/Innocence-Faded.mp3	397
2230	Innocence Faded v2	\N	media/songs/Dream-Theater/Innocence-Faded-v2.mp3	397
2231	Instrumedley Live	\N	media/songs/Dream-Theater/Instrumedley-Live.mp3	397
2232	Just Let Me Breathe	\N	media/songs/Dream-Theater/Just-Let-Me-Breathe.mp3	397
2233	Learning To Live	\N	media/songs/Dream-Theater/Learning-To-Live.mp3	397
2234	Learning To Live v2	\N	media/songs/Dream-Theater/Learning-To-Live-v2.mp3	397
2235	Lie	\N	media/songs/Dream-Theater/Lie.mp3	397
2236	Lie v2	\N	media/songs/Dream-Theater/Lie-v2.mp3	397
2237	Lie v3	\N	media/songs/Dream-Theater/Lie-v3.mp3	397
2238	Lie v4	\N	media/songs/Dream-Theater/Lie-v4.mp3	397
2239	Lifting Shadows Of A Dream	\N	media/songs/Dream-Theater/Lifting-Shadows-Of-A-Dream.mp3	397
2240	Lifting Shadows Of A Dream v2	\N	media/songs/Dream-Theater/Lifting-Shadows-Of-A-Dream-v2.mp3	397
2241	Lifting Shadows Of A Dream v3	\N	media/songs/Dream-Theater/Lifting-Shadows-Of-A-Dream-v3.mp3	397
2242	Metropolis Pt 1	\N	media/songs/Dream-Theater/Metropolis-Pt-1.mp3	397
2243	Metropolis Pt 1 v2	\N	media/songs/Dream-Theater/Metropolis-Pt-1-v2.mp3	397
2244	Ministry Of Lost Souls	\N	media/songs/Dream-Theater/Ministry-Of-Lost-Souls.mp3	397
2245	Misunderstood	\N	media/songs/Dream-Theater/Misunderstood.mp3	397
2246	Misunderstood v2	\N	media/songs/Dream-Theater/Misunderstood-v2.mp3	397
2247	Never Enough	\N	media/songs/Dream-Theater/Never-Enough.mp3	397
2248	Never Enough v2	\N	media/songs/Dream-Theater/Never-Enough-v2.mp3	397
2249	Octavarium	\N	media/songs/Dream-Theater/Octavarium.mp3	397
2250	Octavarium v2	\N	media/songs/Dream-Theater/Octavarium-v2.mp3	397
2251	On The Backs Of Angels	\N	media/songs/Dream-Theater/On-The-Backs-Of-Angels.mp3	397
2252	On The Backs Of Angels v2	\N	media/songs/Dream-Theater/On-The-Backs-Of-Angels-v2.mp3	397
2253	On The Backs Of Angels v3	\N	media/songs/Dream-Theater/On-The-Backs-Of-Angels-v3.mp3	397
2254	On The Backs Of Angels v4	\N	media/songs/Dream-Theater/On-The-Backs-Of-Angels-v4.mp3	397
2255	One Last Time	\N	media/songs/Dream-Theater/One-Last-Time.mp3	397
2256	One Last Time v2	\N	media/songs/Dream-Theater/One-Last-Time-v2.mp3	397
2257	Overture 1928	\N	media/songs/Dream-Theater/Overture-1928.mp3	397
2258	Overture 1928 v2	\N	media/songs/Dream-Theater/Overture-1928-v2.mp3	397
2259	Overture 1928 v3	\N	media/songs/Dream-Theater/Overture-1928-v3.mp3	397
2260	Overture 1928 v4	\N	media/songs/Dream-Theater/Overture-1928-v4.mp3	397
2261	Overture 1928 v5	\N	media/songs/Dream-Theater/Overture-1928-v5.mp3	397
2262	Overture 1928 v6	\N	media/songs/Dream-Theater/Overture-1928-v6.mp3	397
2263	Panic Attack	\N	media/songs/Dream-Theater/Panic-Attack.mp3	397
2264	Panic Attack v2	\N	media/songs/Dream-Theater/Panic-Attack-v2.mp3	397
2265	Panic Attack v3	\N	media/songs/Dream-Theater/Panic-Attack-v3.mp3	397
2266	Peruvian Skies	\N	media/songs/Dream-Theater/Peruvian-Skies.mp3	397
2267	Peruvian Skies v2	\N	media/songs/Dream-Theater/Peruvian-Skies-v2.mp3	397
2268	Peruvian Skies v3	\N	media/songs/Dream-Theater/Peruvian-Skies-v3.mp3	397
2269	Pull Me Under	\N	media/songs/Dream-Theater/Pull-Me-Under.mp3	397
2270	Pull Me Under v2	\N	media/songs/Dream-Theater/Pull-Me-Under-v2.mp3	397
2271	Pull Me Under v3	\N	media/songs/Dream-Theater/Pull-Me-Under-v3.mp3	397
2272	Pull Me Under v4	\N	media/songs/Dream-Theater/Pull-Me-Under-v4.mp3	397
2273	Pull Me Under v5	\N	media/songs/Dream-Theater/Pull-Me-Under-v5.mp3	397
2274	Pull Me Under v6	\N	media/songs/Dream-Theater/Pull-Me-Under-v6.mp3	397
2275	Regression	\N	media/songs/Dream-Theater/Regression.mp3	397
2276	Regression v2	\N	media/songs/Dream-Theater/Regression-v2.mp3	397
2277	Scarred	\N	media/songs/Dream-Theater/Scarred.mp3	397
2278	Scarred v2	\N	media/songs/Dream-Theater/Scarred-v2.mp3	397
2279	Scarred v3	\N	media/songs/Dream-Theater/Scarred-v3.mp3	397
2280	Six O Clock	\N	media/songs/Dream-Theater/Six-O-Clock.mp3	397
2281	Solitary Shell	\N	media/songs/Dream-Theater/Solitary-Shell.mp3	397
2282	State Of Grace	\N	media/songs/Dream-Theater/State-Of-Grace.mp3	397
2283	Strange Deja Vu	\N	media/songs/Dream-Theater/Strange-Deja-Vu.mp3	397
2284	Strange Deja Vu v2	\N	media/songs/Dream-Theater/Strange-Deja-Vu-v2.mp3	397
2285	Strange Deja Vu v3	\N	media/songs/Dream-Theater/Strange-Deja-Vu-v3.mp3	397
2286	Stream Of Consciousness	\N	media/songs/Dream-Theater/Stream-Of-Consciousness.mp3	397
2287	Stream Of Consciousness v2	\N	media/songs/Dream-Theater/Stream-Of-Consciousness-v2.mp3	397
2288	Stream Of Consciousness v3	\N	media/songs/Dream-Theater/Stream-Of-Consciousness-v3.mp3	397
2289	Surrounded	\N	media/songs/Dream-Theater/Surrounded.mp3	397
2290	Surrounded v2	\N	media/songs/Dream-Theater/Surrounded-v2.mp3	397
2291	Take The Time	\N	media/songs/Dream-Theater/Take-The-Time.mp3	397
2292	Take The Time v2	\N	media/songs/Dream-Theater/Take-The-Time-v2.mp3	397
2293	The Answer Lies Within	\N	media/songs/Dream-Theater/The-Answer-Lies-Within.mp3	397
2294	The Answer Lies Within v2	\N	media/songs/Dream-Theater/The-Answer-Lies-Within-v2.mp3	397
2295	The Best Of Times	\N	media/songs/Dream-Theater/The-Best-Of-Times.mp3	397
2296	The Best Of Times v2	\N	media/songs/Dream-Theater/The-Best-Of-Times-v2.mp3	397
2297	The Count Of Tuscany	\N	media/songs/Dream-Theater/The-Count-Of-Tuscany.mp3	397
2298	The Count Of Tuscany v2	\N	media/songs/Dream-Theater/The-Count-Of-Tuscany-v2.mp3	397
2299	The Dance Of Eternity	\N	media/songs/Dream-Theater/The-Dance-Of-Eternity.mp3	397
2300	The Dance Of Eternity v2	\N	media/songs/Dream-Theater/The-Dance-Of-Eternity-v2.mp3	397
2301	The Root Of All Evil	\N	media/songs/Dream-Theater/The-Root-Of-All-Evil.mp3	397
2302	The Shattered Fortress	\N	media/songs/Dream-Theater/The-Shattered-Fortress.mp3	397
2303	The Spirit Carries On	\N	media/songs/Dream-Theater/The-Spirit-Carries-On.mp3	397
2304	The Spirit Carries On v2	\N	media/songs/Dream-Theater/The-Spirit-Carries-On-v2.mp3	397
2305	The Test That Stumped All	\N	media/songs/Dream-Theater/The-Test-That-Stumped-All.mp3	397
2306	The Test That Stumped Them All	\N	media/songs/Dream-Theater/The-Test-That-Stumped-Them-All.mp3	397
2307	These Walls	\N	media/songs/Dream-Theater/These-Walls.mp3	397
2308	These Walls v2	\N	media/songs/Dream-Theater/These-Walls-v2.mp3	397
2309	These Walls v3	\N	media/songs/Dream-Theater/These-Walls-v3.mp3	397
2310	This Dying Soul	\N	media/songs/Dream-Theater/This-Dying-Soul.mp3	397
2311	This Dying Soul v2	\N	media/songs/Dream-Theater/This-Dying-Soul-v2.mp3	397
2312	Through Her Eyes	\N	media/songs/Dream-Theater/Through-Her-Eyes.mp3	397
2313	Through Her Eyes v2	\N	media/songs/Dream-Theater/Through-Her-Eyes-v2.mp3	397
2314	Through My Words	\N	media/songs/Dream-Theater/Through-My-Words.mp3	397
2315	Through My Words v2	\N	media/songs/Dream-Theater/Through-My-Words-v2.mp3	397
2316	Tsco Solo	\N	media/songs/Dream-Theater/Tsco-Solo.mp3	397
2317	Under A Glass Moon	\N	media/songs/Dream-Theater/Under-A-Glass-Moon.mp3	397
2318	Under A Glass Moon v2	\N	media/songs/Dream-Theater/Under-A-Glass-Moon-v2.mp3	397
2319	Under A Glass Moon v3	\N	media/songs/Dream-Theater/Under-A-Glass-Moon-v3.mp3	397
2320	Wait For Sleep	\N	media/songs/Dream-Theater/Wait-For-Sleep.mp3	397
2321	Wait For Sleep v2	\N	media/songs/Dream-Theater/Wait-For-Sleep-v2.mp3	397
2322	Wither	\N	media/songs/Dream-Theater/Wither.mp3	397
2323	Wither v2	\N	media/songs/Dream-Theater/Wither-v2.mp3	397
2324	Wither v3	\N	media/songs/Dream-Theater/Wither-v3.mp3	397
2325	You Not Me	\N	media/songs/Dream-Theater/You-Not-Me.mp3	397
2326	You Not Me v2	\N	media/songs/Dream-Theater/You-Not-Me-v2.mp3	397
2327	Ytse Jam	\N	media/songs/Dream-Theater/Ytse-Jam.mp3	397
2328	Ytse Jam v2	\N	media/songs/Dream-Theater/Ytse-Jam-v2.mp3	397
2329	Dream Warriors	\N	media/songs/Dream-Warriors/Dream-Warriors.mp3	398
2330	Dream Warriors v2	\N	media/songs/Dream-Warriors/Dream-Warriors-v2.mp3	398
2331	Gathering Pebbles	\N	media/songs/Dredg/Gathering-Pebbles.mp3	399
2332	Arterial Black	\N	media/songs/Drist/Arterial-Black.mp3	400
2333	Decontrol	\N	media/songs/Drist/Decontrol.mp3	400
2334	3 Dimes Down	\N	media/songs/Drive-By-Truckers/3-Dimes-Down.mp3	401
2335	Fly Me Courageous	\N	media/songs/Drivin-N-Cryin/Fly-Me-Courageous.mp3	402
2336	Fly Me Courageous v2	\N	media/songs/Drivin-N-Cryin/Fly-Me-Courageous-v2.mp3	402
2337	Famous For Nothing	\N	media/songs/Dropkick-Murphys/Famous-For-Nothing.mp3	403
2338	Flannigans Ball	\N	media/songs/Dropkick-Murphys/Flannigans-Ball.mp3	403
2339	Im Shipping Up To Boston	\N	media/songs/Dropkick-Murphys/Im-Shipping-Up-To-Boston.mp3	403
2340	Im Shipping Up To Boston v2	\N	media/songs/Dropkick-Murphys/Im-Shipping-Up-To-Boston-v2.mp3	403
2341	Johnny I Hardly Knew Ya	\N	media/songs/Dropkick-Murphys/Johnny-I-Hardly-Knew-Ya.mp3	403
2342	The State Of Massachusetts	\N	media/songs/Dropkick-Murphys/The-State-Of-Massachusetts.mp3	403
2343	Bodies	\N	media/songs/Drowning-Pool/Bodies.mp3	404
2344	Bodies v10	\N	media/songs/Drowning-Pool/Bodies-v10.mp3	404
2345	Bodies v11	\N	media/songs/Drowning-Pool/Bodies-v11.mp3	404
2346	Bodies v12	\N	media/songs/Drowning-Pool/Bodies-v12.mp3	404
2347	Bodies v13	\N	media/songs/Drowning-Pool/Bodies-v13.mp3	404
2348	Bodies v2	\N	media/songs/Drowning-Pool/Bodies-v2.mp3	404
2349	Bodies v3	\N	media/songs/Drowning-Pool/Bodies-v3.mp3	404
2350	Bodies v4	\N	media/songs/Drowning-Pool/Bodies-v4.mp3	404
2351	Bodies v5	\N	media/songs/Drowning-Pool/Bodies-v5.mp3	404
2352	Bodies v6	\N	media/songs/Drowning-Pool/Bodies-v6.mp3	404
2353	Bodies v7	\N	media/songs/Drowning-Pool/Bodies-v7.mp3	404
2354	Bodies v8	\N	media/songs/Drowning-Pool/Bodies-v8.mp3	404
2355	Bodies v9	\N	media/songs/Drowning-Pool/Bodies-v9.mp3	404
2356	Rebel Rouser	\N	media/songs/Duane-Eddy/Rebel-Rouser.mp3	405
2357	Warwick Avenue	\N	media/songs/Duffy/Warwick-Avenue.mp3	406
2358	Warwick Avenue v2	\N	media/songs/Duffy/Warwick-Avenue-v2.mp3	406
2359	In A Sentimental Mood	\N	media/songs/Duke-Ellington/In-A-Sentimental-Mood.mp3	407
2360	In A Sentimental Mood v2	\N	media/songs/Duke-Ellington/In-A-Sentimental-Mood-v2.mp3	407
2361	Girls On Film	\N	media/songs/Duran-Duran/Girls-On-Film.mp3	408
2362	Hungry Like The Wolf	\N	media/songs/Duran-Duran/Hungry-Like-The-Wolf.mp3	408
2363	Hungry Like The Wolf v2	\N	media/songs/Duran-Duran/Hungry-Like-The-Wolf-v2.mp3	408
2364	Rio	\N	media/songs/Duran-Duran/Rio.mp3	408
2365	Rio v2	\N	media/songs/Duran-Duran/Rio-v2.mp3	408
2366	Save A Prayer	\N	media/songs/Duran-Duran/Save-A-Prayer.mp3	408
2367	Save A Prayer v2	\N	media/songs/Duran-Duran/Save-A-Prayer-v2.mp3	408
2368	Intentional Heartache	\N	media/songs/Dwight-Yoakam/Intentional-Heartache.mp3	409
2369	Nothings Changed Here	\N	media/songs/Dwight-Yoakam/Nothings-Changed-Here.mp3	409
2370	Save Tonight	\N	media/songs/Eagle-Eye-Cherry/Save-Tonight.mp3	410
2371	Anything Cept The Truth	\N	media/songs/Eagles-Of-Death-Metal/Anything-Cept-The-Truth.mp3	411
2372	Anything Cept The Truth v2	\N	media/songs/Eagles-Of-Death-Metal/Anything-Cept-The-Truth-v2.mp3	411
2373	Cherry Cola	\N	media/songs/Eagles-Of-Death-Metal/Cherry-Cola.mp3	411
2374	Cherry Cola v2	\N	media/songs/Eagles-Of-Death-Metal/Cherry-Cola-v2.mp3	411
2375	I Only Want You	\N	media/songs/Eagles-Of-Death-Metal/I-Only-Want-You.mp3	411
2376	I Only Want You v2	\N	media/songs/Eagles-Of-Death-Metal/I-Only-Want-You-v2.mp3	411
2377	Wannabe In La	\N	media/songs/Eagles-Of-Death-Metal/Wannabe-In-La.mp3	411
2378	Wannabe In La v2	\N	media/songs/Eagles-Of-Death-Metal/Wannabe-In-La-v2.mp3	411
2379	The Killing Moon	\N	media/songs/Echo-And-The-Bunnymen/The-Killing-Moon.mp3	412
2380	20 Flight Rock	\N	media/songs/Eddie-Cochran/20-Flight-Rock.mp3	413
2381	Cmon Everybody	\N	media/songs/Eddie-Cochran/Cmon-Everybody.mp3	413
2382	Summertime Blues	\N	media/songs/Eddie-Cochran/Summertime-Blues.mp3	413
2383	Shakin	\N	media/songs/Eddie-Money/Shakin.mp3	414
2384	Two Tickets To Paradise	\N	media/songs/Eddie-Money/Two-Tickets-To-Paradise.mp3	414
2385	Ive Got News For You	\N	media/songs/Edgar-Winter/Ive-Got-News-For-You.mp3	415
2386	Ive Got News For You v2	\N	media/songs/Edgar-Winter/Ive-Got-News-For-You-v2.mp3	415
2387	Lets Get It On	\N	media/songs/Edgar-Winter/Lets-Get-It-On.mp3	415
2388	Lets Get It On v2	\N	media/songs/Edgar-Winter/Lets-Get-It-On-v2.mp3	415
2389	Little Brother	\N	media/songs/Edgar-Winter/Little-Brother.mp3	415
2390	Frankenstein	\N	media/songs/Edgar-Winter-Group/Frankenstein.mp3	416
2391	Munich	\N	media/songs/Editors/Munich.mp3	417
2392	Catch Us If You Can	\N	media/songs/Edu-Ardanuy/Catch-Us-If-You-Can.mp3	418
2393	Frankenstein	\N	media/songs/Edu-Ardanuy/Frankenstein.mp3	418
2394	On The Road	\N	media/songs/Edu-Ardanuy/On-The-Road.mp3	418
2395	On The Road v2	\N	media/songs/Edu-Ardanuy/On-The-Road-v2.mp3	418
2396	Searching For Light	\N	media/songs/Edu-Ardanuy/Searching-For-Light.mp3	418
2397	Searching For Light v2	\N	media/songs/Edu-Ardanuy/Searching-For-Light-v2.mp3	418
2398	Girl Like You	\N	media/songs/Edwin-Collins/Girl-Like-You.mp3	419
2399	Girl Like You v2	\N	media/songs/Edwin-Collins/Girl-Like-You-v2.mp3	419
2400	The Chains Are On	\N	media/songs/Egypt/The-Chains-Are-On.mp3	420
2401	The Chains Are On v2	\N	media/songs/Egypt/The-Chains-Are-On-v2.mp3	420
2402	Stranger	\N	media/songs/Electric-Light-Orchestra/Stranger.mp3	421
2475	Cocaine	\N	media/songs/Eric-Clapton/Cocaine.mp3	444
2403	Wild West Hero	\N	media/songs/Electric-Light-Orchestra/Wild-West-Hero.mp3	421
2404	Gay Bar	\N	media/songs/Electric-Six/Gay-Bar.mp3	422
2405	Material Girl	\N	media/songs/Eliza-Doolittle/Material-Girl.mp3	423
2406	La	\N	media/songs/Elliott-Smith/La.mp3	424
2407	Dust My Broom	\N	media/songs/Elmore-James/Dust-My-Broom.mp3	425
2408	Dust My Broom v2	\N	media/songs/Elmore-James/Dust-My-Broom-v2.mp3	425
2409	Dont Bring Me Down	\N	media/songs/ELO/Dont-Bring-Me-Down.mp3	426
2410	Evil Woman	\N	media/songs/ELO/Evil-Woman.mp3	426
2411	No Boundaries	\N	media/songs/ELO/No-Boundaries.mp3	426
2412	Sweet Talkin Woman	\N	media/songs/ELO/Sweet-Talkin-Woman.mp3	426
2413	Bennie And The Jets	\N	media/songs/Elton-John/Bennie-And-The-Jets.mp3	427
2414	Bennie And The Jets v2	\N	media/songs/Elton-John/Bennie-And-The-Jets-v2.mp3	427
2415	Can You Feel The Love Tonight	\N	media/songs/Elton-John/Can-You-Feel-The-Love-Tonight.mp3	427
2416	Crocodile Rock	\N	media/songs/Elton-John/Crocodile-Rock.mp3	427
2417	Daniel	\N	media/songs/Elton-John/Daniel.mp3	427
2418	Goodbye Yellow Brick Road	\N	media/songs/Elton-John/Goodbye-Yellow-Brick-Road.mp3	427
2419	Madman Across The Water	\N	media/songs/Elton-John/Madman-Across-The-Water.mp3	427
2420	Sorry Seems To Be The Hardest Word	\N	media/songs/Elton-John/Sorry-Seems-To-Be-The-Hardest-Word.mp3	427
2421	Dont Go Breaking My Heart	\N	media/songs/Elton-John-And-Kiki-Dee/Dont-Go-Breaking-My-Heart.mp3	428
2422	Fooled Around And Fell In Love	\N	media/songs/Elvin-Bishop/Fooled-Around-And-Fell-In-Love.mp3	429
2423	Pump It Up	\N	media/songs/Elvis-Costello/Pump-It-Up.mp3	430
2424	Watching The Detectives	\N	media/songs/Elvis-Costello/Watching-The-Detectives.mp3	430
2425	Watching The Detectives v2	\N	media/songs/Elvis-Costello/Watching-The-Detectives-v2.mp3	430
2426	Watching The Detectives v3	\N	media/songs/Elvis-Costello/Watching-The-Detectives-v3.mp3	430
2427	Whats So Funny About Peace  Love And Understanding	\N	media/songs/Elvis-Costello/Whats-So-Funny-About-Peace--Love-And-Understanding.mp3	430
2428	Whats So Funny About Peace  Love And Understanding v2	\N	media/songs/Elvis-Costello/Whats-So-Funny-About-Peace--Love-And-Understanding-v2.mp3	430
2429	Burning Love	\N	media/songs/Elvis-Presley/Burning-Love.mp3	431
2430	Hound Dog	\N	media/songs/Elvis-Presley/Hound-Dog.mp3	431
2431	Jailhouse Rock	\N	media/songs/Elvis-Presley/Jailhouse-Rock.mp3	431
2432	Jailhouse Rock v2	\N	media/songs/Elvis-Presley/Jailhouse-Rock-v2.mp3	431
2433	Such A Night	\N	media/songs/Elvis-Presley/Such-A-Night.mp3	431
2434	Such A Night v2	\N	media/songs/Elvis-Presley/Such-A-Night-v2.mp3	431
2435	Karn Evil 9 Welcome Back My Friends To The Show That Never Ends	\N	media/songs/Emerson-Lake-And-Palmer/Karn-Evil-9-Welcome-Back-My-Friends-To-The-Show-That-Never-Ends.mp3	432
2436	Unbelievable	\N	media/songs/EMF/Unbelievable.mp3	433
2437	We Are The People	\N	media/songs/Empire-Of-The-Sun/We-Are-The-People.mp3	434
2438	Lamento Boliviano	\N	media/songs/Enanitos-Verdes/Lamento-Boliviano.mp3	435
2439	I Wanna Be Your Man	\N	media/songs/Endeverafter/I-Wanna-Be-Your-Man.mp3	436
2440	Enemigo	\N	media/songs/Enjambre/Enemigo.mp3	437
2441	Enemigo v2	\N	media/songs/Enjambre/Enemigo-v2.mp3	437
2442	Madrugada	\N	media/songs/Enjambre/Madrugada.mp3	437
2443	Madrugada v2	\N	media/songs/Enjambre/Madrugada-v2.mp3	437
2444	Sanguijuela	\N	media/songs/Enjambre/Sanguijuela.mp3	437
2445	Sanguijuela v2	\N	media/songs/Enjambre/Sanguijuela-v2.mp3	437
2446	Abandoned	\N	media/songs/Ensiferum/Abandoned.mp3	438
2447	One More Magic Potion	\N	media/songs/Ensiferum/One-More-Magic-Potion.mp3	438
2448	Sorry Youre Not A Winner	\N	media/songs/Enter-Shikari/Sorry-Youre-Not-A-Winner.mp3	439
2449	Never Enough	\N	media/songs/Epica/Never-Enough.mp3	440
2450	The Obsessive Devotion	\N	media/songs/Epica/The-Obsessive-Devotion.mp3	440
2451	The Phantom Agony	\N	media/songs/Epica/The-Phantom-Agony.mp3	440
2452	Blut Im Auge	\N	media/songs/Equilibrium/Blut-Im-Auge.mp3	441
2453	Devore Amante Solo	\N	media/songs/Era/Devore-Amante-Solo.mp3	442
2454	Impera	\N	media/songs/Era/Impera.mp3	442
2455	A Little Respect	\N	media/songs/Erasure/A-Little-Respect.mp3	443
2456	After Midnight	\N	media/songs/Eric-Clapton/After-Midnight.mp3	444
2457	Alberta	\N	media/songs/Eric-Clapton/Alberta.mp3	444
2458	Alberta v2	\N	media/songs/Eric-Clapton/Alberta-v2.mp3	444
2459	Alberta v3	\N	media/songs/Eric-Clapton/Alberta-v3.mp3	444
2460	All Your Love	\N	media/songs/Eric-Clapton/All-Your-Love.mp3	444
2461	All Your Love v2	\N	media/songs/Eric-Clapton/All-Your-Love-v2.mp3	444
2462	Bad Love	\N	media/songs/Eric-Clapton/Bad-Love.mp3	444
2463	Bad Love v2	\N	media/songs/Eric-Clapton/Bad-Love-v2.mp3	444
2464	Bad Love v3	\N	media/songs/Eric-Clapton/Bad-Love-v3.mp3	444
2465	Badge	\N	media/songs/Eric-Clapton/Badge.mp3	444
2466	Badge v2	\N	media/songs/Eric-Clapton/Badge-v2.mp3	444
2467	Before You Accuse Me	\N	media/songs/Eric-Clapton/Before-You-Accuse-Me.mp3	444
2468	Before You Accuse Me Unplugged	\N	media/songs/Eric-Clapton/Before-You-Accuse-Me-Unplugged.mp3	444
2469	Before You Accuse Me Unplugged v2	\N	media/songs/Eric-Clapton/Before-You-Accuse-Me-Unplugged-v2.mp3	444
2470	Before You Accuse Me v2	\N	media/songs/Eric-Clapton/Before-You-Accuse-Me-v2.mp3	444
2471	Born Under A Bad Sign Dm	\N	media/songs/Eric-Clapton/Born-Under-A-Bad-Sign-Dm.mp3	444
2472	Change The World	\N	media/songs/Eric-Clapton/Change-The-World.mp3	444
2473	Change The World v2	\N	media/songs/Eric-Clapton/Change-The-World-v2.mp3	444
2474	Change The World v3	\N	media/songs/Eric-Clapton/Change-The-World-v3.mp3	444
2476	Cocaine v2	\N	media/songs/Eric-Clapton/Cocaine-v2.mp3	444
2477	Cocaine v3	\N	media/songs/Eric-Clapton/Cocaine-v3.mp3	444
2478	Cocaine v4	\N	media/songs/Eric-Clapton/Cocaine-v4.mp3	444
2479	Cocaine v5	\N	media/songs/Eric-Clapton/Cocaine-v5.mp3	444
2480	Cocaine v6	\N	media/songs/Eric-Clapton/Cocaine-v6.mp3	444
2481	Cocaine v7	\N	media/songs/Eric-Clapton/Cocaine-v7.mp3	444
2482	Cocaine v8	\N	media/songs/Eric-Clapton/Cocaine-v8.mp3	444
2483	Cocaine v9	\N	media/songs/Eric-Clapton/Cocaine-v9.mp3	444
2484	Crossroads	\N	media/songs/Eric-Clapton/Crossroads.mp3	444
2485	Crossroads v2	\N	media/songs/Eric-Clapton/Crossroads-v2.mp3	444
2486	Crossroads v3	\N	media/songs/Eric-Clapton/Crossroads-v3.mp3	444
2487	Crossroads v4	\N	media/songs/Eric-Clapton/Crossroads-v4.mp3	444
2488	Crossroads v5	\N	media/songs/Eric-Clapton/Crossroads-v5.mp3	444
2489	Danger	\N	media/songs/Eric-Clapton/Danger.mp3	444
2490	Double Trouble	\N	media/songs/Eric-Clapton/Double-Trouble.mp3	444
2491	Edge Of Darkness	\N	media/songs/Eric-Clapton/Edge-Of-Darkness.mp3	444
2492	Edge Of Darkness Live	\N	media/songs/Eric-Clapton/Edge-Of-Darkness-Live.mp3	444
2493	Five Long Years	\N	media/songs/Eric-Clapton/Five-Long-Years.mp3	444
2494	Forever Man	\N	media/songs/Eric-Clapton/Forever-Man.mp3	444
2495	Further On Up The Road	\N	media/songs/Eric-Clapton/Further-On-Up-The-Road.mp3	444
2496	Goin Away Baby	\N	media/songs/Eric-Clapton/Goin-Away-Baby.mp3	444
2497	Have You Ever Loved A Woman	\N	media/songs/Eric-Clapton/Have-You-Ever-Loved-A-Woman.mp3	444
2498	Hideaway	\N	media/songs/Eric-Clapton/Hideaway.mp3	444
2499	Hideaway v2	\N	media/songs/Eric-Clapton/Hideaway-v2.mp3	444
2500	Hideaway v3	\N	media/songs/Eric-Clapton/Hideaway-v3.mp3	444
2501	Hideaway v4	\N	media/songs/Eric-Clapton/Hideaway-v4.mp3	444
2502	Hideaway v5	\N	media/songs/Eric-Clapton/Hideaway-v5.mp3	444
2503	Hideaway v6	\N	media/songs/Eric-Clapton/Hideaway-v6.mp3	444
2504	Hideaway v7	\N	media/songs/Eric-Clapton/Hideaway-v7.mp3	444
2505	Hideaway v8	\N	media/songs/Eric-Clapton/Hideaway-v8.mp3	444
2506	Hideaway v9	\N	media/songs/Eric-Clapton/Hideaway-v9.mp3	444
2507	Holy Mother	\N	media/songs/Eric-Clapton/Holy-Mother.mp3	444
2508	How Long Blues	\N	media/songs/Eric-Clapton/How-Long-Blues.mp3	444
2509	How Long Blues v2	\N	media/songs/Eric-Clapton/How-Long-Blues-v2.mp3	444
2510	I Shot The Sheriff	\N	media/songs/Eric-Clapton/I-Shot-The-Sheriff.mp3	444
2511	I Shot The Sheriff v2	\N	media/songs/Eric-Clapton/I-Shot-The-Sheriff-v2.mp3	444
2512	I Shot The Sheriff v3	\N	media/songs/Eric-Clapton/I-Shot-The-Sheriff-v3.mp3	444
2513	I Shot The Sheriff v4	\N	media/songs/Eric-Clapton/I-Shot-The-Sheriff-v4.mp3	444
2514	I Shot The Sheriff v5	\N	media/songs/Eric-Clapton/I-Shot-The-Sheriff-v5.mp3	444
2515	It Hurts Me Too	\N	media/songs/Eric-Clapton/It-Hurts-Me-Too.mp3	444
2516	It Hurts Me Too v2	\N	media/songs/Eric-Clapton/It-Hurts-Me-Too-v2.mp3	444
2517	Key To The Highway	\N	media/songs/Eric-Clapton/Key-To-The-Highway.mp3	444
2518	Key To The Highway v2	\N	media/songs/Eric-Clapton/Key-To-The-Highway-v2.mp3	444
2519	Key To The Highway v3	\N	media/songs/Eric-Clapton/Key-To-The-Highway-v3.mp3	444
2520	Knocking On Heavens Door	\N	media/songs/Eric-Clapton/Knocking-On-Heavens-Door.mp3	444
2521	Lay Down Sally	\N	media/songs/Eric-Clapton/Lay-Down-Sally.mp3	444
2522	Lay Down Sally v2	\N	media/songs/Eric-Clapton/Lay-Down-Sally-v2.mp3	444
2523	Layla	\N	media/songs/Eric-Clapton/Layla.mp3	444
2524	Layla Unplugged	\N	media/songs/Eric-Clapton/Layla-Unplugged.mp3	444
2525	Layla Unplugged v2	\N	media/songs/Eric-Clapton/Layla-Unplugged-v2.mp3	444
2526	Layla v2	\N	media/songs/Eric-Clapton/Layla-v2.mp3	444
2527	Layla v3	\N	media/songs/Eric-Clapton/Layla-v3.mp3	444
2528	Layla v4	\N	media/songs/Eric-Clapton/Layla-v4.mp3	444
2529	Layla v5	\N	media/songs/Eric-Clapton/Layla-v5.mp3	444
2530	Layla v6	\N	media/songs/Eric-Clapton/Layla-v6.mp3	444
2531	Layla v7	\N	media/songs/Eric-Clapton/Layla-v7.mp3	444
2532	Lonely Stranger	\N	media/songs/Eric-Clapton/Lonely-Stranger.mp3	444
2533	Lonely Stranger v2	\N	media/songs/Eric-Clapton/Lonely-Stranger-v2.mp3	444
2534	Lonely Stranger v3	\N	media/songs/Eric-Clapton/Lonely-Stranger-v3.mp3	444
2535	May You Never	\N	media/songs/Eric-Clapton/May-You-Never.mp3	444
2536	Nobody Knows You	\N	media/songs/Eric-Clapton/Nobody-Knows-You.mp3	444
2537	Nobody Knows You When Youre Down And Out	\N	media/songs/Eric-Clapton/Nobody-Knows-You-When-Youre-Down-And-Out.mp3	444
2538	Old Love	\N	media/songs/Eric-Clapton/Old-Love.mp3	444
2539	Old Love Live	\N	media/songs/Eric-Clapton/Old-Love-Live.mp3	444
2540	Reconsider Baby	\N	media/songs/Eric-Clapton/Reconsider-Baby.mp3	444
2541	Reconsider Baby v2	\N	media/songs/Eric-Clapton/Reconsider-Baby-v2.mp3	444
2542	Reptile	\N	media/songs/Eric-Clapton/Reptile.mp3	444
2543	Riding With The King	\N	media/songs/Eric-Clapton/Riding-With-The-King.mp3	444
2544	River Of Tears	\N	media/songs/Eric-Clapton/River-Of-Tears.mp3	444
2545	River Of Tears v2	\N	media/songs/Eric-Clapton/River-Of-Tears-v2.mp3	444
2546	Running On Faith	\N	media/songs/Eric-Clapton/Running-On-Faith.mp3	444
2547	Running On Faith v2	\N	media/songs/Eric-Clapton/Running-On-Faith-v2.mp3	444
2548	Signe	\N	media/songs/Eric-Clapton/Signe.mp3	444
2549	Signe v2	\N	media/songs/Eric-Clapton/Signe-v2.mp3	444
2550	Signe v3	\N	media/songs/Eric-Clapton/Signe-v3.mp3	444
2551	Signe v4	\N	media/songs/Eric-Clapton/Signe-v4.mp3	444
2552	Someday After A While	\N	media/songs/Eric-Clapton/Someday-After-A-While.mp3	444
2553	Someday After A While v2	\N	media/songs/Eric-Clapton/Someday-After-A-While-v2.mp3	444
2554	Stop Breaking Down Blues	\N	media/songs/Eric-Clapton/Stop-Breaking-Down-Blues.mp3	444
2555	Sunshine Of Your Love	\N	media/songs/Eric-Clapton/Sunshine-Of-Your-Love.mp3	444
2556	Sunshine Of Your Love v2	\N	media/songs/Eric-Clapton/Sunshine-Of-Your-Love-v2.mp3	444
2557	Sunshine Of Your Love v3	\N	media/songs/Eric-Clapton/Sunshine-Of-Your-Love-v3.mp3	444
2558	Sunshine Of Your Love v4	\N	media/songs/Eric-Clapton/Sunshine-Of-Your-Love-v4.mp3	444
2559	Tears In Heaven	\N	media/songs/Eric-Clapton/Tears-In-Heaven.mp3	444
2560	Tears In Heaven v2	\N	media/songs/Eric-Clapton/Tears-In-Heaven-v2.mp3	444
2561	Tears In Heaven v3	\N	media/songs/Eric-Clapton/Tears-In-Heaven-v3.mp3	444
2562	The Sky Is Crying	\N	media/songs/Eric-Clapton/The-Sky-Is-Crying.mp3	444
2563	Tore Down	\N	media/songs/Eric-Clapton/Tore-Down.mp3	444
2564	Tore Down v2	\N	media/songs/Eric-Clapton/Tore-Down-v2.mp3	444
2565	White Room	\N	media/songs/Eric-Clapton/White-Room.mp3	444
2566	White Room v2	\N	media/songs/Eric-Clapton/White-Room-v2.mp3	444
2567	Wonderful Tonight	\N	media/songs/Eric-Clapton/Wonderful-Tonight.mp3	444
2568	Wonderful Tonight  Acoustic	\N	media/songs/Eric-Clapton/Wonderful-Tonight--Acoustic.mp3	444
2569	Wonderful Tonight  Acoustic v2	\N	media/songs/Eric-Clapton/Wonderful-Tonight--Acoustic-v2.mp3	444
2570	Wonderful Tonight Live	\N	media/songs/Eric-Clapton/Wonderful-Tonight-Live.mp3	444
2571	Wonderful Tonight v2	\N	media/songs/Eric-Clapton/Wonderful-Tonight-v2.mp3	444
2572	Wonderful Tonight v3	\N	media/songs/Eric-Clapton/Wonderful-Tonight-v3.mp3	444
2573	Wonderful Tonight v4	\N	media/songs/Eric-Clapton/Wonderful-Tonight-v4.mp3	444
2574	Wonderful Tonight v5	\N	media/songs/Eric-Clapton/Wonderful-Tonight-v5.mp3	444
2575	Boogie King	\N	media/songs/Eric-Johnson/Boogie-King.mp3	445
2576	Boogie King v2	\N	media/songs/Eric-Johnson/Boogie-King-v2.mp3	445
2577	Camels Night Out	\N	media/songs/Eric-Johnson/Camels-Night-Out.mp3	445
2578	Cliffs Of Dover	\N	media/songs/Eric-Johnson/Cliffs-Of-Dover.mp3	445
2579	Cliffs Of Dover v2	\N	media/songs/Eric-Johnson/Cliffs-Of-Dover-v2.mp3	445
2580	Cliffs Of Dover v3	\N	media/songs/Eric-Johnson/Cliffs-Of-Dover-v3.mp3	445
2581	Cliffs Of Dover v4	\N	media/songs/Eric-Johnson/Cliffs-Of-Dover-v4.mp3	445
2582	Cliffs Of Dover v5	\N	media/songs/Eric-Johnson/Cliffs-Of-Dover-v5.mp3	445
2583	Cliffs Of Dover v6	\N	media/songs/Eric-Johnson/Cliffs-Of-Dover-v6.mp3	445
2584	Desert Rose	\N	media/songs/Eric-Johnson/Desert-Rose.mp3	445
2585	East Wes	\N	media/songs/Eric-Johnson/East-Wes.mp3	445
2586	East Wes v2	\N	media/songs/Eric-Johnson/East-Wes-v2.mp3	445
2587	East Wes v3	\N	media/songs/Eric-Johnson/East-Wes-v3.mp3	445
2588	Manhattan	\N	media/songs/Eric-Johnson/Manhattan.mp3	445
2589	Manhattan v2	\N	media/songs/Eric-Johnson/Manhattan-v2.mp3	445
2590	Manhattan v3	\N	media/songs/Eric-Johnson/Manhattan-v3.mp3	445
2591	Rain	\N	media/songs/Eric-Johnson/Rain.mp3	445
2592	Righteous	\N	media/songs/Eric-Johnson/Righteous.mp3	445
2593	Righteous v2	\N	media/songs/Eric-Johnson/Righteous-v2.mp3	445
2594	Song For Life	\N	media/songs/Eric-Johnson/Song-For-Life.mp3	445
2595	Song For Life v2	\N	media/songs/Eric-Johnson/Song-For-Life-v2.mp3	445
2596	Soulful Terrain	\N	media/songs/Eric-Johnson/Soulful-Terrain.mp3	445
2597	Soulful Terrain v2	\N	media/songs/Eric-Johnson/Soulful-Terrain-v2.mp3	445
2598	SRV	\N	media/songs/Eric-Johnson/SRV.mp3	445
2599	SRV v2	\N	media/songs/Eric-Johnson/SRV-v2.mp3	445
2600	SRV v3	\N	media/songs/Eric-Johnson/SRV-v3.mp3	445
2601	Trademark	\N	media/songs/Eric-Johnson/Trademark.mp3	445
2602	Trademark v2	\N	media/songs/Eric-Johnson/Trademark-v2.mp3	445
2603	Trademark v3	\N	media/songs/Eric-Johnson/Trademark-v3.mp3	445
2604	Zap	\N	media/songs/Eric-Johnson/Zap.mp3	445
2605	Zap v2	\N	media/songs/Eric-Johnson/Zap-v2.mp3	445
2606	Exit 10	\N	media/songs/Eric-Mantel/Exit-10.mp3	446
2607	Finger Pickn Country	\N	media/songs/Eric-Mantel/Finger-Pickn-Country.mp3	446
2608	Tai Chi	\N	media/songs/Eric-Mantel/Tai-Chi.mp3	446
2609	The Real You	\N	media/songs/Eric-Mantel/The-Real-You.mp3	446
2610	There Are No Words	\N	media/songs/Eric-Mantel/There-Are-No-Words.mp3	446
2611	Tribute	\N	media/songs/Eric-Mantel/Tribute.mp3	446
2612	Under A Different Light	\N	media/songs/Eric-Mantel/Under-A-Different-Light.mp3	446
2613	Issues	\N	media/songs/Escape-The-Fate/Issues.mp3	447
2614	Always The Pretenders	\N	media/songs/Europe/Always-The-Pretenders.mp3	448
2615	Aphasia	\N	media/songs/Europe/Aphasia.mp3	448
2616	Aphasia Live	\N	media/songs/Europe/Aphasia-Live.mp3	448
2617	Aphasia v2	\N	media/songs/Europe/Aphasia-v2.mp3	448
2618	Aphasia v3	\N	media/songs/Europe/Aphasia-v3.mp3	448
2619	Boyazont	\N	media/songs/Europe/Boyazont.mp3	448
2620	Boyazont And Aphasia Live	\N	media/songs/Europe/Boyazont-And-Aphasia-Live.mp3	448
2621	Boyazont Live	\N	media/songs/Europe/Boyazont-Live.mp3	448
2622	Carrie	\N	media/songs/Europe/Carrie.mp3	448
2623	Carrie Live	\N	media/songs/Europe/Carrie-Live.mp3	448
2624	Carrie v2	\N	media/songs/Europe/Carrie-v2.mp3	448
2625	Carrie v3	\N	media/songs/Europe/Carrie-v3.mp3	448
2626	Cherokee	\N	media/songs/Europe/Cherokee.mp3	448
2627	Cherokee Live	\N	media/songs/Europe/Cherokee-Live.mp3	448
2628	Forever Travelling	\N	media/songs/Europe/Forever-Travelling.mp3	448
2629	Gonna Get Ready	\N	media/songs/Europe/Gonna-Get-Ready.mp3	448
2630	Gonna Get Ready Live	\N	media/songs/Europe/Gonna-Get-Ready-Live.mp3	448
2631	Got To Have Faith	\N	media/songs/Europe/Got-To-Have-Faith.mp3	448
2632	Heart Of Stone	\N	media/songs/Europe/Heart-Of-Stone.mp3	448
2633	Heart Of Stone Live	\N	media/songs/Europe/Heart-Of-Stone-Live.mp3	448
2634	In The Future To Come	\N	media/songs/Europe/In-The-Future-To-Come.mp3	448
2635	In The Future To Come Live	\N	media/songs/Europe/In-The-Future-To-Come-Live.mp3	448
2636	John Norum Solo Live Milano	\N	media/songs/Europe/John-Norum-Solo-Live-Milano.mp3	448
2637	Last Look At Eden	\N	media/songs/Europe/Last-Look-At-Eden.mp3	448
2638	Love Chaser	\N	media/songs/Europe/Love-Chaser.mp3	448
2639	Love Chaser Live	\N	media/songs/Europe/Love-Chaser-Live.mp3	448
2640	More Than Meets The Eye	\N	media/songs/Europe/More-Than-Meets-The-Eye.mp3	448
2641	More Than Meets The Eye Live	\N	media/songs/Europe/More-Than-Meets-The-Eye-Live.mp3	448
2642	New Love In Town	\N	media/songs/Europe/New-Love-In-Town.mp3	448
2643	Ninja	\N	media/songs/Europe/Ninja.mp3	448
2644	On The Loose	\N	media/songs/Europe/On-The-Loose.mp3	448
2645	On The Loose Live	\N	media/songs/Europe/On-The-Loose-Live.mp3	448
2646	Open Your Heart	\N	media/songs/Europe/Open-Your-Heart.mp3	448
2647	Open Your Heart Live	\N	media/songs/Europe/Open-Your-Heart-Live.mp3	448
2648	Prisoners In Paradise	\N	media/songs/Europe/Prisoners-In-Paradise.mp3	448
2649	Ready Or Not	\N	media/songs/Europe/Ready-Or-Not.mp3	448
2650	Ready Or Not Live	\N	media/songs/Europe/Ready-Or-Not-Live.mp3	448
2651	Rock The Night	\N	media/songs/Europe/Rock-The-Night.mp3	448
2652	Rock The Night v2	\N	media/songs/Europe/Rock-The-Night-v2.mp3	448
2653	Rock The Night v3	\N	media/songs/Europe/Rock-The-Night-v3.mp3	448
2654	Scream Of Anger	\N	media/songs/Europe/Scream-Of-Anger.mp3	448
2655	Scream Of Anger Live	\N	media/songs/Europe/Scream-Of-Anger-Live.mp3	448
2656	Seven Doors Hotel	\N	media/songs/Europe/Seven-Doors-Hotel.mp3	448
2657	Seven Doors Hotel Live	\N	media/songs/Europe/Seven-Doors-Hotel-Live.mp3	448
2658	Sign Of The Times Live	\N	media/songs/Europe/Sign-Of-The-Times-Live.mp3	448
2659	Start From The Dark	\N	media/songs/Europe/Start-From-The-Dark.mp3	448
2660	The Final Countdown	\N	media/songs/Europe/The-Final-Countdown.mp3	448
2661	The Final Countdown v2	\N	media/songs/Europe/The-Final-Countdown-v2.mp3	448
2662	The Final Countdown v3	\N	media/songs/Europe/The-Final-Countdown-v3.mp3	448
2663	The Final Countdown v4	\N	media/songs/Europe/The-Final-Countdown-v4.mp3	448
2664	The Final Countdown v5	\N	media/songs/Europe/The-Final-Countdown-v5.mp3	448
2665	The Final Countdown v6	\N	media/songs/Europe/The-Final-Countdown-v6.mp3	448
2666	The Final Countdown v7	\N	media/songs/Europe/The-Final-Countdown-v7.mp3	448
2667	The Final Countdown v8	\N	media/songs/Europe/The-Final-Countdown-v8.mp3	448
2668	Time Has Come	\N	media/songs/Europe/Time-Has-Come.mp3	448
2669	Bring Me To Life	\N	media/songs/Evanescence/Bring-Me-To-Life.mp3	449
2671	Bring Me To Life v2	\N	media/songs/Evanescence/Bring-Me-To-Life-v2.mp3	449
2672	Bring Me To Life v3	\N	media/songs/Evanescence/Bring-Me-To-Life-v3.mp3	449
2673	Bring Me To Life v4	\N	media/songs/Evanescence/Bring-Me-To-Life-v4.mp3	449
2674	Call Me When Youre Sober	\N	media/songs/Evanescence/Call-Me-When-Youre-Sober.mp3	449
2675	Everybodys Fool	\N	media/songs/Evanescence/Everybodys-Fool.mp3	449
2676	Imaginary	\N	media/songs/Evanescence/Imaginary.mp3	449
2677	Lithium	\N	media/songs/Evanescence/Lithium.mp3	449
2678	Lithium v2	\N	media/songs/Evanescence/Lithium-v2.mp3	449
2679	Lithium v3	\N	media/songs/Evanescence/Lithium-v3.mp3	449
2680	My Immortal	\N	media/songs/Evanescence/My-Immortal.mp3	449
2681	My Last Breath	\N	media/songs/Evanescence/My-Last-Breath.mp3	449
2682	Tourniquet	\N	media/songs/Evanescence/Tourniquet.mp3	449
2683	What You Want	\N	media/songs/Evanescence/What-You-Want.mp3	449
2684	Inside Out	\N	media/songs/Eve-6/Inside-Out.mp3	451
2685	Santa Monica	\N	media/songs/Everclear/Santa-Monica.mp3	452
2686	Santa Monica v2	\N	media/songs/Everclear/Santa-Monica-v2.mp3	452
2687	So Much For The Afterglow	\N	media/songs/Everclear/So-Much-For-The-Afterglow.mp3	452
2688	Real Wild Child	\N	media/songs/Everlife/Real-Wild-Child.mp3	453
2689	All I Have To Do Is Dream	\N	media/songs/Everly-Brothers/All-I-Have-To-Do-Is-Dream.mp3	454
2690	Let It Be Me	\N	media/songs/Everly-Brothers/Let-It-Be-Me.mp3	454
2691	The New Black	\N	media/songs/Every-Time-I-Die/The-New-Black.mp3	455
2692	Trasher	\N	media/songs/Evile/Trasher.mp3	456
2693	Am I Ever Gonna Change	\N	media/songs/Extreme/Am-I-Ever-Gonna-Change.mp3	457
2694	Cupids Dead	\N	media/songs/Extreme/Cupids-Dead.mp3	457
2695	Cupids Dead v2	\N	media/songs/Extreme/Cupids-Dead-v2.mp3	457
2696	Decadence Dance	\N	media/songs/Extreme/Decadence-Dance.mp3	457
2697	Get The Funk Out	\N	media/songs/Extreme/Get-The-Funk-Out.mp3	457
2698	Get The Funk Out v2	\N	media/songs/Extreme/Get-The-Funk-Out-v2.mp3	457
2699	Get The Funk Out v3	\N	media/songs/Extreme/Get-The-Funk-Out-v3.mp3	457
2700	He Man Woman Hater	\N	media/songs/Extreme/He-Man-Woman-Hater.mp3	457
2701	He Man Woman Hater Intro	\N	media/songs/Extreme/He-Man-Woman-Hater-Intro.mp3	457
2702	Hole Hearted	\N	media/songs/Extreme/Hole-Hearted.mp3	457
2703	Hole Hearted v2	\N	media/songs/Extreme/Hole-Hearted-v2.mp3	457
2704	Hole Hearted v3	\N	media/songs/Extreme/Hole-Hearted-v3.mp3	457
2705	Its A Monster	\N	media/songs/Extreme/Its-A-Monster.mp3	457
2706	Kid Ego	\N	media/songs/Extreme/Kid-Ego.mp3	457
2707	Kid Ego v2	\N	media/songs/Extreme/Kid-Ego-v2.mp3	457
2708	Midnight Express	\N	media/songs/Extreme/Midnight-Express.mp3	457
2709	Midnight Express v2	\N	media/songs/Extreme/Midnight-Express-v2.mp3	457
2710	More Than Words	\N	media/songs/Extreme/More-Than-Words.mp3	457
2711	More Than Words  Acoustic	\N	media/songs/Extreme/More-Than-Words--Acoustic.mp3	457
2712	Mutha Dont Wanna Go To School Today	\N	media/songs/Extreme/Mutha-Dont-Wanna-Go-To-School-Today.mp3	457
2713	Peacemaker Die	\N	media/songs/Extreme/Peacemaker-Die.mp3	457
2714	Play With Me	\N	media/songs/Extreme/Play-With-Me.mp3	457
2715	Play With Me v2	\N	media/songs/Extreme/Play-With-Me-v2.mp3	457
2716	Play With Me v3	\N	media/songs/Extreme/Play-With-Me-v3.mp3	457
2717	Politicalamity	\N	media/songs/Extreme/Politicalamity.mp3	457
2718	Rest In Peace	\N	media/songs/Extreme/Rest-In-Peace.mp3	457
2719	Rest In Peace v2	\N	media/songs/Extreme/Rest-In-Peace-v2.mp3	457
2720	Rest In Peace v3	\N	media/songs/Extreme/Rest-In-Peace-v3.mp3	457
2721	Suzi Wants Her All Day Sucka	\N	media/songs/Extreme/Suzi-Wants-Her-All-Day-Sucka.mp3	457
2722	Tragic Comic	\N	media/songs/Extreme/Tragic-Comic.mp3	457
2723	Who Cares	\N	media/songs/Extreme/Who-Cares.mp3	457
2724	So Payaso	\N	media/songs/Extremoduro/So-Payaso.mp3	458
2725	Disconnected	\N	media/songs/Face-To-Face/Disconnected.mp3	459
2726	Easy	\N	media/songs/Faith-No-More/Easy.mp3	460
2727	Easy v2	\N	media/songs/Faith-No-More/Easy-v2.mp3	460
2728	Epic	\N	media/songs/Faith-No-More/Epic.mp3	460
2729	Epic v2	\N	media/songs/Faith-No-More/Epic-v2.mp3	460
2730	From Out Of Nowhere	\N	media/songs/Faith-No-More/From-Out-Of-Nowhere.mp3	460
2731	Midlife Crisis	\N	media/songs/Faith-No-More/Midlife-Crisis.mp3	460
2732	We Care A Lot	\N	media/songs/Faith-No-More/We-Care-A-Lot.mp3	460
2733	Fcpremix	\N	media/songs/Fall-Of-Troy/Fcpremix.mp3	461
2734	Americas Suitehearts	\N	media/songs/Fall-Out-Boy/Americas-Suitehearts.mp3	462
2735	Dance Dance	\N	media/songs/Fall-Out-Boy/Dance-Dance.mp3	462
2736	Dead On Arrival	\N	media/songs/Fall-Out-Boy/Dead-On-Arrival.mp3	462
2737	Dead On Arrival v2	\N	media/songs/Fall-Out-Boy/Dead-On-Arrival-v2.mp3	462
2738	I Dont Care	\N	media/songs/Fall-Out-Boy/I-Dont-Care.mp3	462
2739	Sugar Were Going Down	\N	media/songs/Fall-Out-Boy/Sugar-Were-Going-Down.mp3	462
2740	Thanks For The Memories	\N	media/songs/Fall-Out-Boy/Thanks-For-The-Memories.mp3	462
2741	The Take Over The Breaks Over	\N	media/songs/Fall-Out-Boy/The-Take-Over-The-Breaks-Over.mp3	462
2742	This Aint A Scene Its An Arms Race	\N	media/songs/Fall-Out-Boy/This-Aint-A-Scene-Its-An-Arms-Race.mp3	462
2743	This Aint A Scene Its An Arms Race v2	\N	media/songs/Fall-Out-Boy/This-Aint-A-Scene-Its-An-Arms-Race-v2.mp3	462
2744	This Aint A Scene Its An Arms Race v3	\N	media/songs/Fall-Out-Boy/This-Aint-A-Scene-Its-An-Arms-Race-v3.mp3	462
2745	Thnks Fr Th Mmrs	\N	media/songs/Fall-Out-Boy/Thnks-Fr-Th-Mmrs.mp3	462
2746	The Way	\N	media/songs/Fastball/The-Way.mp3	463
2747	Say What You Will	\N	media/songs/Fastway/Say-What-You-Will.mp3	464
2748	Im Walkin	\N	media/songs/Fats-Domino/Im-Walkin.mp3	465
2749	Im Walkin v2	\N	media/songs/Fats-Domino/Im-Walkin-v2.mp3	465
2750	Cars	\N	media/songs/Fear-Factory/Cars.mp3	466
2751	Cars v2	\N	media/songs/Fear-Factory/Cars-v2.mp3	466
2752	Descent	\N	media/songs/Fear-Factory/Descent.mp3	466
2753	Descent v2	\N	media/songs/Fear-Factory/Descent-v2.mp3	466
2754	Come Back Around	\N	media/songs/Feeder/Come-Back-Around.mp3	467
2757	Floods	\N	media/songs/Fightstar/Floods.mp3	468
2758	Hey Man Nice Shot	\N	media/songs/Filter/Hey-Man-Nice-Shot.mp3	469
2759	Hey Man Nice Shot v2	\N	media/songs/Filter/Hey-Man-Nice-Shot-v2.mp3	469
2760	Take A Picture	\N	media/songs/Filter/Take-A-Picture.mp3	469
2761	Take A Picture v2	\N	media/songs/Filter/Take-A-Picture-v2.mp3	469
2762	Terra Theme	\N	media/songs/Final-Fantasy/Terra-Theme.mp3	470
2763	Paralyzer	\N	media/songs/Finger-Eleven/Paralyzer.mp3	471
2764	Paralyzer v2	\N	media/songs/Finger-Eleven/Paralyzer-v2.mp3	471
2765	Adrenalina	\N	media/songs/Finley/Adrenalina.mp3	472
2766	Tutto E Possibile	\N	media/songs/Finley/Tutto-E-Possibile.mp3	472
2767	Non Voglio Mica La Luna	\N	media/songs/Fiordaliso/Non-Voglio-Mica-La-Luna.mp3	473
2768	Dont Treat Me Bad	\N	media/songs/Firehouse/Dont-Treat-Me-Bad.mp3	474
2769	Love Of A Lifetime	\N	media/songs/Firehouse/Love-Of-A-Lifetime.mp3	474
2770	Love Of A Lifetime v2	\N	media/songs/Firehouse/Love-Of-A-Lifetime-v2.mp3	474
2771	World On Fire	\N	media/songs/Firewind/World-On-Fire.mp3	475
2772	Por La Boca Vive El Pez	\N	media/songs/Fito-Y-Fitipaldis/Por-La-Boca-Vive-El-Pez.mp3	476
2773	Soldadito Marinero	\N	media/songs/Fito-Y-Fitipaldis/Soldadito-Marinero.mp3	476
2774	Hard To See	\N	media/songs/Five-Finger-Death-Punch/Hard-To-See.mp3	477
2775	100 Years	\N	media/songs/Five-For-Fighting/100-Years.mp3	478
2776	Yeah Yeah Yeah Song	\N	media/songs/Flaming-Lips/Yeah-Yeah-Yeah-Song.mp3	479
2777	Yoshimi Battles The Pink Robots Pt 1	\N	media/songs/Flaming-Lips/Yoshimi-Battles-The-Pink-Robots-Pt-1.mp3	479
2778	Albatross	\N	media/songs/Fleetwood-Mac/Albatross.mp3	480
2779	Albatross v2	\N	media/songs/Fleetwood-Mac/Albatross-v2.mp3	480
2780	Albatross v3	\N	media/songs/Fleetwood-Mac/Albatross-v3.mp3	480
4229	Jato Unit	\N	media/songs/Jeff-Loomis/Jato-Unit.mp3	634
2781	Bleed To Love Her	\N	media/songs/Fleetwood-Mac/Bleed-To-Love-Her.mp3	480
2782	Destiny Rules	\N	media/songs/Fleetwood-Mac/Destiny-Rules.mp3	480
2783	Dont Stop	\N	media/songs/Fleetwood-Mac/Dont-Stop.mp3	480
2784	Dont Stop v2	\N	media/songs/Fleetwood-Mac/Dont-Stop-v2.mp3	480
2785	Dreams	\N	media/songs/Fleetwood-Mac/Dreams.mp3	480
2786	Dreams v2	\N	media/songs/Fleetwood-Mac/Dreams-v2.mp3	480
2787	Go Your Own Way	\N	media/songs/Fleetwood-Mac/Go-Your-Own-Way.mp3	480
2788	Go Your Own Way v2	\N	media/songs/Fleetwood-Mac/Go-Your-Own-Way-v2.mp3	480
2789	Gold Dust Woman	\N	media/songs/Fleetwood-Mac/Gold-Dust-Woman.mp3	480
2790	Gold Dust Woman v2	\N	media/songs/Fleetwood-Mac/Gold-Dust-Woman-v2.mp3	480
2791	Hypnotized	\N	media/songs/Fleetwood-Mac/Hypnotized.mp3	480
2792	Im So Afraid	\N	media/songs/Fleetwood-Mac/Im-So-Afraid.mp3	480
2793	Jigsaw Puzzle Blues	\N	media/songs/Fleetwood-Mac/Jigsaw-Puzzle-Blues.mp3	480
2794	Jigsaw Puzzle Blues v2	\N	media/songs/Fleetwood-Mac/Jigsaw-Puzzle-Blues-v2.mp3	480
2795	Landslide	\N	media/songs/Fleetwood-Mac/Landslide.mp3	480
2796	Miranda	\N	media/songs/Fleetwood-Mac/Miranda.mp3	480
2797	Need Your Love So Bad	\N	media/songs/Fleetwood-Mac/Need-Your-Love-So-Bad.mp3	480
2798	Need Your Love So Bad v2	\N	media/songs/Fleetwood-Mac/Need-Your-Love-So-Bad-v2.mp3	480
2799	Need Your Love So Bad v3	\N	media/songs/Fleetwood-Mac/Need-Your-Love-So-Bad-v3.mp3	480
2800	Need Your Love So Bad v4	\N	media/songs/Fleetwood-Mac/Need-Your-Love-So-Bad-v4.mp3	480
2801	Need Your Love So Bad v5	\N	media/songs/Fleetwood-Mac/Need-Your-Love-So-Bad-v5.mp3	480
2802	Oh Well Jam	\N	media/songs/Fleetwood-Mac/Oh-Well-Jam.mp3	480
2803	Peacekeeper	\N	media/songs/Fleetwood-Mac/Peacekeeper.mp3	480
2804	Rhiannon	\N	media/songs/Fleetwood-Mac/Rhiannon.mp3	480
2805	Rhiannon v2	\N	media/songs/Fleetwood-Mac/Rhiannon-v2.mp3	480
2806	Say You Will	\N	media/songs/Fleetwood-Mac/Say-You-Will.mp3	480
2807	Second Hand News	\N	media/songs/Fleetwood-Mac/Second-Hand-News.mp3	480
2808	Silver Girl	\N	media/songs/Fleetwood-Mac/Silver-Girl.mp3	480
2809	Tell Me Lies	\N	media/songs/Fleetwood-Mac/Tell-Me-Lies.mp3	480
2810	Tell Me Lies v2	\N	media/songs/Fleetwood-Mac/Tell-Me-Lies-v2.mp3	480
2811	Thrown Down	\N	media/songs/Fleetwood-Mac/Thrown-Down.mp3	480
2812	Business Time	\N	media/songs/Flight-Of-The-Conchords/Business-Time.mp3	481
2813	The Most Beautiful Girl In The Room	\N	media/songs/Flight-Of-The-Conchords/The-Most-Beautiful-Girl-In-The-Room.mp3	481
2814	Low Travis Barker Remix	\N	media/songs/Flo-Rida-Feat-T-Pain/Low-Travis-Barker-Remix.mp3	482
2815	Handlebars	\N	media/songs/Flobots/Handlebars.mp3	483
2816	I Ran So Far Away	\N	media/songs/Flock-Of-Seagulls/I-Ran-So-Far-Away.mp3	484
2817	No More Paddys Lament	\N	media/songs/Flogging-Molly/No-More-Paddys-Lament.mp3	485
2818	Requiem For A Dying Song	\N	media/songs/Flogging-Molly/Requiem-For-A-Dying-Song.mp3	485
2819	Seven Deadly Sins	\N	media/songs/Flogging-Molly/Seven-Deadly-Sins.mp3	485
2820	Youve Got The Love	\N	media/songs/Florence-And-The-Machine/Youve-Got-The-Love.mp3	486
2821	Again	\N	media/songs/Flyleaf/Again.mp3	487
2822	Im So Sick	\N	media/songs/Flyleaf/Im-So-Sick.mp3	487
2823	Tina	\N	media/songs/Flyleaf/Tina.mp3	487
2824	III Wishes	\N	media/songs/FML/III-Wishes.mp3	488
2825	III Wishes v2	\N	media/songs/FML/III-Wishes-v2.mp3	488
2826	Obscured By Clouds	\N	media/songs/FML/Obscured-By-Clouds.mp3	488
2827	Hocus Pocus	\N	media/songs/Focus/Hocus-Pocus.mp3	489
2828	Hocus Pocus v2	\N	media/songs/Focus/Hocus-Pocus-v2.mp3	489
2829	Sylvia	\N	media/songs/Focus/Sylvia.mp3	489
2830	Slow Ride	\N	media/songs/Foghat/Slow-Ride.mp3	490
2831	Slow Ride v2	\N	media/songs/Foghat/Slow-Ride-v2.mp3	490
2832	All My Life	\N	media/songs/Foo-Fighters/All-My-Life.mp3	491
2833	All My Life v2	\N	media/songs/Foo-Fighters/All-My-Life-v2.mp3	491
2834	All My Life v3	\N	media/songs/Foo-Fighters/All-My-Life-v3.mp3	491
2835	Alone Easy Target	\N	media/songs/Foo-Fighters/Alone-Easy-Target.mp3	491
2836	Arlandria	\N	media/songs/Foo-Fighters/Arlandria.mp3	491
2837	Arlandria v2	\N	media/songs/Foo-Fighters/Arlandria-v2.mp3	491
2838	Best Of You	\N	media/songs/Foo-Fighters/Best-Of-You.mp3	491
2839	Best Of You v2	\N	media/songs/Foo-Fighters/Best-Of-You-v2.mp3	491
2840	Best Of You v3	\N	media/songs/Foo-Fighters/Best-Of-You-v3.mp3	491
2841	Best Of You v4	\N	media/songs/Foo-Fighters/Best-Of-You-v4.mp3	491
2842	Best Of You v5	\N	media/songs/Foo-Fighters/Best-Of-You-v5.mp3	491
2843	Breakout	\N	media/songs/Foo-Fighters/Breakout.mp3	491
2844	Disenchanted Lullaby	\N	media/songs/Foo-Fighters/Disenchanted-Lullaby.mp3	491
2845	DOA	\N	media/songs/Foo-Fighters/DOA.mp3	491
2846	DOA v2	\N	media/songs/Foo-Fighters/DOA-v2.mp3	491
2847	DOA v3	\N	media/songs/Foo-Fighters/DOA-v3.mp3	491
2848	DOA v4	\N	media/songs/Foo-Fighters/DOA-v4.mp3	491
2849	DOA v5	\N	media/songs/Foo-Fighters/DOA-v5.mp3	491
2850	Doll	\N	media/songs/Foo-Fighters/Doll.mp3	491
2851	Enough Space	\N	media/songs/Foo-Fighters/Enough-Space.mp3	491
2852	Everlong	\N	media/songs/Foo-Fighters/Everlong.mp3	491
2853	Everlong v2	\N	media/songs/Foo-Fighters/Everlong-v2.mp3	491
2854	February Stars	\N	media/songs/Foo-Fighters/February-Stars.mp3	491
2855	Generator	\N	media/songs/Foo-Fighters/Generator.mp3	491
2856	Generator v2	\N	media/songs/Foo-Fighters/Generator-v2.mp3	491
2857	Hey Johnny Park	\N	media/songs/Foo-Fighters/Hey-Johnny-Park.mp3	491
4451	Imagine v3	\N	media/songs/John-Lennon/Imagine-v3.mp3	661
2858	Ill Stick Around	\N	media/songs/Foo-Fighters/Ill-Stick-Around.mp3	491
2859	Ill Stick Around v2	\N	media/songs/Foo-Fighters/Ill-Stick-Around-v2.mp3	491
2860	In Your Honor	\N	media/songs/Foo-Fighters/In-Your-Honor.mp3	491
2861	Learn To Fly	\N	media/songs/Foo-Fighters/Learn-To-Fly.mp3	491
2862	Learn To Fly v2	\N	media/songs/Foo-Fighters/Learn-To-Fly-v2.mp3	491
2863	Learn To Fly v3	\N	media/songs/Foo-Fighters/Learn-To-Fly-v3.mp3	491
2864	Learn To Fly v4	\N	media/songs/Foo-Fighters/Learn-To-Fly-v4.mp3	491
2865	Lonely As You	\N	media/songs/Foo-Fighters/Lonely-As-You.mp3	491
2866	Long Road To Ruin	\N	media/songs/Foo-Fighters/Long-Road-To-Ruin.mp3	491
2867	Long Road To Ruin v2	\N	media/songs/Foo-Fighters/Long-Road-To-Ruin-v2.mp3	491
2868	Long Road To Ruin v3	\N	media/songs/Foo-Fighters/Long-Road-To-Ruin-v3.mp3	491
2869	Low	\N	media/songs/Foo-Fighters/Low.mp3	491
2870	Monkey Wrench	\N	media/songs/Foo-Fighters/Monkey-Wrench.mp3	491
2871	Monkey Wrench v2	\N	media/songs/Foo-Fighters/Monkey-Wrench-v2.mp3	491
2872	Monkey Wrench v3	\N	media/songs/Foo-Fighters/Monkey-Wrench-v3.mp3	491
2873	My Hero	\N	media/songs/Foo-Fighters/My-Hero.mp3	491
2874	My Hero v2	\N	media/songs/Foo-Fighters/My-Hero-v2.mp3	491
2875	My Hero v3	\N	media/songs/Foo-Fighters/My-Hero-v3.mp3	491
2876	My Hero v4	\N	media/songs/Foo-Fighters/My-Hero-v4.mp3	491
2877	My Poor Brain	\N	media/songs/Foo-Fighters/My-Poor-Brain.mp3	491
2878	My_Hero	\N	media/songs/Foo-Fighters/My_Hero.mp3	491
2879	New Way Home	\N	media/songs/Foo-Fighters/New-Way-Home.mp3	491
2880	Next Year	\N	media/songs/Foo-Fighters/Next-Year.mp3	491
2881	No Way Back	\N	media/songs/Foo-Fighters/No-Way-Back.mp3	491
2882	Pretender	\N	media/songs/Foo-Fighters/Pretender.mp3	491
2883	Pretender v2	\N	media/songs/Foo-Fighters/Pretender-v2.mp3	491
2884	Pretender v3	\N	media/songs/Foo-Fighters/Pretender-v3.mp3	491
2885	Rope	\N	media/songs/Foo-Fighters/Rope.mp3	491
2886	Rope v2	\N	media/songs/Foo-Fighters/Rope-v2.mp3	491
2887	Rope v3	\N	media/songs/Foo-Fighters/Rope-v3.mp3	491
2888	See You	\N	media/songs/Foo-Fighters/See-You.mp3	491
2889	Stacked Actors	\N	media/songs/Foo-Fighters/Stacked-Actors.mp3	491
2890	Stacked Actors v2	\N	media/songs/Foo-Fighters/Stacked-Actors-v2.mp3	491
2891	Stacked Actors v3	\N	media/songs/Foo-Fighters/Stacked-Actors-v3.mp3	491
2892	The One	\N	media/songs/Foo-Fighters/The-One.mp3	491
2893	The One v2	\N	media/songs/Foo-Fighters/The-One-v2.mp3	491
2894	These Days	\N	media/songs/Foo-Fighters/These-Days.mp3	491
2895	This Is A Call	\N	media/songs/Foo-Fighters/This-Is-A-Call.mp3	491
2896	This Is A Call v2	\N	media/songs/Foo-Fighters/This-Is-A-Call-v2.mp3	491
2897	This Is A Call v3	\N	media/songs/Foo-Fighters/This-Is-A-Call-v3.mp3	491
2898	This Is A Call v4	\N	media/songs/Foo-Fighters/This-Is-A-Call-v4.mp3	491
2899	Times Like These	\N	media/songs/Foo-Fighters/Times-Like-These.mp3	491
2900	Times Like These v2	\N	media/songs/Foo-Fighters/Times-Like-These-v2.mp3	491
2901	Times Like These v3	\N	media/songs/Foo-Fighters/Times-Like-These-v3.mp3	491
2902	Times Like These v4	\N	media/songs/Foo-Fighters/Times-Like-These-v4.mp3	491
2903	Up In Arms	\N	media/songs/Foo-Fighters/Up-In-Arms.mp3	491
2904	Walk	\N	media/songs/Foo-Fighters/Walk.mp3	491
2905	Walk v2	\N	media/songs/Foo-Fighters/Walk-v2.mp3	491
2906	Walk v3	\N	media/songs/Foo-Fighters/Walk-v3.mp3	491
2907	Walking After You	\N	media/songs/Foo-Fighters/Walking-After-You.mp3	491
2908	Wheels	\N	media/songs/Foo-Fighters/Wheels.mp3	491
2909	Wheels v2	\N	media/songs/Foo-Fighters/Wheels-v2.mp3	491
2910	White Limo	\N	media/songs/Foo-Fighters/White-Limo.mp3	491
2911	Wind Up	\N	media/songs/Foo-Fighters/Wind-Up.mp3	491
2912	Blue Monday Blue Day	\N	media/songs/Foreigner/Blue-Monday-Blue-Day.mp3	492
2913	Blue Morning Blue Day	\N	media/songs/Foreigner/Blue-Morning-Blue-Day.mp3	492
2914	Blue Morning Blue Day v2	\N	media/songs/Foreigner/Blue-Morning-Blue-Day-v2.mp3	492
2915	Break It Up	\N	media/songs/Foreigner/Break-It-Up.mp3	492
2916	Cold As Ice	\N	media/songs/Foreigner/Cold-As-Ice.mp3	492
2917	Cold As Ice v2	\N	media/songs/Foreigner/Cold-As-Ice-v2.mp3	492
2918	Cold As Ice v3	\N	media/songs/Foreigner/Cold-As-Ice-v3.mp3	492
2919	Dont Let Go	\N	media/songs/Foreigner/Dont-Let-Go.mp3	492
2920	Double Vision	\N	media/songs/Foreigner/Double-Vision.mp3	492
2921	Feels Like The First Time	\N	media/songs/Foreigner/Feels-Like-The-First-Time.mp3	492
2922	Girl On The Moon	\N	media/songs/Foreigner/Girl-On-The-Moon.mp3	492
2923	Hot Blooded	\N	media/songs/Foreigner/Hot-Blooded.mp3	492
2924	Hot Blooded v2	\N	media/songs/Foreigner/Hot-Blooded-v2.mp3	492
2925	Hot Blooded v3	\N	media/songs/Foreigner/Hot-Blooded-v3.mp3	492
2926	I Wanna Know What Love Is	\N	media/songs/Foreigner/I-Wanna-Know-What-Love-Is.mp3	492
2927	I Wanna Know What Love Is v2	\N	media/songs/Foreigner/I-Wanna-Know-What-Love-Is-v2.mp3	492
2928	Juke Box Hero	\N	media/songs/Foreigner/Juke-Box-Hero.mp3	492
2929	Juke Box Hero v2	\N	media/songs/Foreigner/Juke-Box-Hero-v2.mp3	492
2930	Juke Box Hero v3	\N	media/songs/Foreigner/Juke-Box-Hero-v3.mp3	492
2931	Luanne	\N	media/songs/Foreigner/Luanne.mp3	492
2932	That Was Yesterday	\N	media/songs/Foreigner/That-Was-Yesterday.mp3	492
2933	Urgent	\N	media/songs/Foreigner/Urgent.mp3	492
2934	Urgent v2	\N	media/songs/Foreigner/Urgent-v2.mp3	492
2935	Urgent v3	\N	media/songs/Foreigner/Urgent-v3.mp3	492
2936	Waiting For A Girl Like You	\N	media/songs/Foreigner/Waiting-For-A-Girl-Like-You.mp3	492
2937	Pumped Up Kicks	\N	media/songs/Foster-The-People/Pumped-Up-Kicks.mp3	493
2938	Pumped Up Kicks v2	\N	media/songs/Foster-The-People/Pumped-Up-Kicks-v2.mp3	493
2939	Stacys Mom	\N	media/songs/Fountains-Of-Wayne/Stacys-Mom.mp3	494
2940	Stacys Mom v2	\N	media/songs/Fountains-Of-Wayne/Stacys-Mom-v2.mp3	494
2941	Stacys Mom v3	\N	media/songs/Fountains-Of-Wayne/Stacys-Mom-v3.mp3	494
2942	Stacys Mom v4	\N	media/songs/Fountains-Of-Wayne/Stacys-Mom-v4.mp3	494
2943	Men Are From Mars Women Are From Hell	\N	media/songs/Four-Year-Strong/Men-Are-From-Mars-Women-Are-From-Hell.mp3	495
2944	101 Eastbound	\N	media/songs/Fourplay/101-Eastbound.mp3	496
2945	Bali Run	\N	media/songs/Fourplay/Bali-Run.mp3	496
2946	Bali Run v2	\N	media/songs/Fourplay/Bali-Run-v2.mp3	496
2947	Fourplay	\N	media/songs/Fourplay/Fourplay.mp3	496
2948	Wish You Were Here	\N	media/songs/Fourplay/Wish-You-Were-Here.mp3	496
2949	Tous Les Garcons Et Les Filles	\N	media/songs/Francoise-Hardy/Tous-Les-Garcons-Et-Les-Filles.mp3	497
2950	Little Charmer	\N	media/songs/Frank-Gambale/Little-Charmer.mp3	498
2951	Passages	\N	media/songs/Frank-Gambale/Passages.mp3	498
2952	She Knows Me Well	\N	media/songs/Frank-Gambale/She-Knows-Me-Well.mp3	498
2953	Fly Me To The Moon	\N	media/songs/Frank-Sinatra/Fly-Me-To-The-Moon.mp3	499
2954	My Way	\N	media/songs/Frank-Sinatra/My-Way.mp3	499
2955	New York New York	\N	media/songs/Frank-Sinatra/New-York-New-York.mp3	499
2956	Chungas Revenge	\N	media/songs/Frank-Zappa/Chungas-Revenge.mp3	500
2957	Deathless Horsie	\N	media/songs/Frank-Zappa/Deathless-Horsie.mp3	500
2958	Filthy Habits	\N	media/songs/Frank-Zappa/Filthy-Habits.mp3	500
2959	Magic Fingers	\N	media/songs/Frank-Zappa/Magic-Fingers.mp3	500
2960	Montana	\N	media/songs/Frank-Zappa/Montana.mp3	500
2961	Muffin Man	\N	media/songs/Frank-Zappa/Muffin-Man.mp3	500
2962	My Guitar Wants To Kill You Mama	\N	media/songs/Frank-Zappa/My-Guitar-Wants-To-Kill-You-Mama.mp3	500
2963	Peaches En Regalia	\N	media/songs/Frank-Zappa/Peaches-En-Regalia.mp3	500
2964	Peaches En Regalia v2	\N	media/songs/Frank-Zappa/Peaches-En-Regalia-v2.mp3	500
2965	Pink Napkins	\N	media/songs/Frank-Zappa/Pink-Napkins.mp3	500
2966	Stevies Spanking	\N	media/songs/Frank-Zappa/Stevies-Spanking.mp3	500
2967	Watermelon In Easter Hay	\N	media/songs/Frank-Zappa/Watermelon-In-Easter-Hay.mp3	500
2968	Willie The Pimp	\N	media/songs/Frank-Zappa/Willie-The-Pimp.mp3	500
2969	Zoot Allures	\N	media/songs/Frank-Zappa/Zoot-Allures.mp3	500
2970	Relax	\N	media/songs/Frankie-Goes-To-Hollywood/Relax.mp3	501
2971	Take Me Out	\N	media/songs/Franz-Ferdinand/Take-Me-Out.mp3	502
2972	Take Me Out v2	\N	media/songs/Franz-Ferdinand/Take-Me-Out-v2.mp3	502
2973	Gibraltar	\N	media/songs/Freddie-Hubbard/Gibraltar.mp3	503
2974	Have You Ever Loved A Woman	\N	media/songs/Freddie-King/Have-You-Ever-Loved-A-Woman.mp3	504
2975	Hideaway	\N	media/songs/Freddie-King/Hideaway.mp3	504
2976	SanHoZay	\N	media/songs/Freddie-King/SanHoZay.mp3	504
2977	SanHoZay v2	\N	media/songs/Freddie-King/SanHoZay-v2.mp3	504
2978	The Stumble	\N	media/songs/Freddie-King/The-Stumble.mp3	504
2979	In My Defense	\N	media/songs/Freddie-Mercury/In-My-Defense.mp3	505
2980	All Right Now	\N	media/songs/Free/All-Right-Now.mp3	506
2981	All Right Now v2	\N	media/songs/Free/All-Right-Now-v2.mp3	506
2982	All Right Now v3	\N	media/songs/Free/All-Right-Now-v3.mp3	506
2983	All Right Now v4	\N	media/songs/Free/All-Right-Now-v4.mp3	506
2984	Wishing Well	\N	media/songs/Free/Wishing-Well.mp3	506
2985	Wishing Well v2	\N	media/songs/Free/Wishing-Well-v2.mp3	506
2986	Warriors	\N	media/songs/Freedom-Call/Warriors.mp3	507
2987	Brainpower	\N	media/songs/Freezepop/Brainpower.mp3	508
2988	Get Ready 2 Rokk	\N	media/songs/Freezepop/Get-Ready-2-Rokk.mp3	508
2989	I Am Not Your Gameboy	\N	media/songs/Freezepop/I-Am-Not-Your-Gameboy.mp3	508
2990	Less Talk More Rokk	\N	media/songs/Freezepop/Less-Talk-More-Rokk.mp3	508
2991	Eatin Dust	\N	media/songs/Fu-Manchu/Eatin-Dust.mp3	509
2992	Hell On Wheels	\N	media/songs/Fu-Manchu/Hell-On-Wheels.mp3	509
2993	Maggot Brain	\N	media/songs/Funkadelic/Maggot-Brain.mp3	510
2994	Maggot Brain v2	\N	media/songs/Funkadelic/Maggot-Brain-v2.mp3	510
2995	Maggot Brain v3	\N	media/songs/Funkadelic/Maggot-Brain-v3.mp3	510
2996	Going Down	\N	media/songs/G3/Going-Down.mp3	511
2997	My Guitar Wants To Kill You Mama	\N	media/songs/G3/My-Guitar-Wants-To-Kill-You-Mama.mp3	511
2998	Rockin In The Free World	\N	media/songs/G3/Rockin-In-The-Free-World.mp3	511
2999	Rockin In The Free World v2	\N	media/songs/G3/Rockin-In-The-Free-World-v2.mp3	511
3000	Help Myself Nous Ne Faisons Que Passer	\N	media/songs/Gaetan-Roussel/Help-Myself-Nous-Ne-Faisons-Que-Passer.mp3	512
3001	In The Belly Of A Shark	\N	media/songs/Gallows/In-The-Belly-Of-A-Shark.mp3	513
3002	In The Belly Of A Shark v2	\N	media/songs/Gallows/In-The-Belly-Of-A-Shark-v2.mp3	513
3003	I Think Im Paranoid	\N	media/songs/Garbage/I-Think-Im-Paranoid.mp3	514
3004	Only Happy When It Rains	\N	media/songs/Garbage/Only-Happy-When-It-Rains.mp3	514
3005	Only Happy When It Rains v2	\N	media/songs/Garbage/Only-Happy-When-It-Rains-v2.mp3	514
3006	Why Do You Love Me	\N	media/songs/Garbage/Why-Do-You-Love-Me.mp3	514
3007	Why Do You Love Me v2	\N	media/songs/Garbage/Why-Do-You-Love-Me-v2.mp3	514
3008	Why Do You Love Me v3	\N	media/songs/Garbage/Why-Do-You-Love-Me-v3.mp3	514
3009	Man Of Me	\N	media/songs/Gary-Allan/Man-Of-Me.mp3	515
3010	All Your Love	\N	media/songs/Gary-Moore/All-Your-Love.mp3	516
3011	Back On The Streets	\N	media/songs/Gary-Moore/Back-On-The-Streets.mp3	516
3012	Blues For Narada	\N	media/songs/Gary-Moore/Blues-For-Narada.mp3	516
3013	Cold Day In Hell	\N	media/songs/Gary-Moore/Cold-Day-In-Hell.mp3	516
3014	Cold Day In Hell v2	\N	media/songs/Gary-Moore/Cold-Day-In-Hell-v2.mp3	516
3015	Cold Hearted	\N	media/songs/Gary-Moore/Cold-Hearted.mp3	516
3016	Crying In The Shadows	\N	media/songs/Gary-Moore/Crying-In-The-Shadows.mp3	516
3017	Dont Believe A Word	\N	media/songs/Gary-Moore/Dont-Believe-A-Word.mp3	516
3018	Empty Rooms	\N	media/songs/Gary-Moore/Empty-Rooms.mp3	516
3019	Empty Rooms v2	\N	media/songs/Gary-Moore/Empty-Rooms-v2.mp3	516
3020	Jumping At Shadows	\N	media/songs/Gary-Moore/Jumping-At-Shadows.mp3	516
3021	Like Angels	\N	media/songs/Gary-Moore/Like-Angels.mp3	516
3022	Midnight Blues	\N	media/songs/Gary-Moore/Midnight-Blues.mp3	516
3023	Midnight Blues v2	\N	media/songs/Gary-Moore/Midnight-Blues-v2.mp3	516
3024	Midnight Blues v3	\N	media/songs/Gary-Moore/Midnight-Blues-v3.mp3	516
3025	Military Man	\N	media/songs/Gary-Moore/Military-Man.mp3	516
3026	Moving On	\N	media/songs/Gary-Moore/Moving-On.mp3	516
3027	Oh Pretty Woman	\N	media/songs/Gary-Moore/Oh-Pretty-Woman.mp3	516
3028	Oh Pretty Woman v2	\N	media/songs/Gary-Moore/Oh-Pretty-Woman-v2.mp3	516
3029	One Day	\N	media/songs/Gary-Moore/One-Day.mp3	516
3030	Out In The Fields	\N	media/songs/Gary-Moore/Out-In-The-Fields.mp3	516
3031	Out In The Fields v2	\N	media/songs/Gary-Moore/Out-In-The-Fields-v2.mp3	516
3032	Over The Hills And Far Away	\N	media/songs/Gary-Moore/Over-The-Hills-And-Far-Away.mp3	516
3033	Over The Hills And Far Away Live	\N	media/songs/Gary-Moore/Over-The-Hills-And-Far-Away-Live.mp3	516
3034	Parisienne Walkways	\N	media/songs/Gary-Moore/Parisienne-Walkways.mp3	516
3035	Parisienne Walkways v2	\N	media/songs/Gary-Moore/Parisienne-Walkways-v2.mp3	516
3036	Parisienne Walkways v3	\N	media/songs/Gary-Moore/Parisienne-Walkways-v3.mp3	516
3037	Parisienne Walkways v4	\N	media/songs/Gary-Moore/Parisienne-Walkways-v4.mp3	516
3038	Parisienne Walkways v5	\N	media/songs/Gary-Moore/Parisienne-Walkways-v5.mp3	516
3039	Parisienne Walkways v6	\N	media/songs/Gary-Moore/Parisienne-Walkways-v6.mp3	516
3040	Parisienne Walkways v7	\N	media/songs/Gary-Moore/Parisienne-Walkways-v7.mp3	516
3041	Parisienne Walkways v8	\N	media/songs/Gary-Moore/Parisienne-Walkways-v8.mp3	516
3042	Run For Cover	\N	media/songs/Gary-Moore/Run-For-Cover.mp3	516
3043	Seperate Ways	\N	media/songs/Gary-Moore/Seperate-Ways.mp3	516
3044	Spanish Guitar	\N	media/songs/Gary-Moore/Spanish-Guitar.mp3	516
3045	Spanish Guitar v2	\N	media/songs/Gary-Moore/Spanish-Guitar-v2.mp3	516
3046	Spanish Guitar v3	\N	media/songs/Gary-Moore/Spanish-Guitar-v3.mp3	516
3047	Still Got The Blues	\N	media/songs/Gary-Moore/Still-Got-The-Blues.mp3	516
3048	Still Got The Blues v2	\N	media/songs/Gary-Moore/Still-Got-The-Blues-v2.mp3	516
3049	Still Got The Blues v3	\N	media/songs/Gary-Moore/Still-Got-The-Blues-v3.mp3	516
3050	Still Got The Blues v4	\N	media/songs/Gary-Moore/Still-Got-The-Blues-v4.mp3	516
3051	Still Got The Blues v5	\N	media/songs/Gary-Moore/Still-Got-The-Blues-v5.mp3	516
3052	Still Got The Blues v6	\N	media/songs/Gary-Moore/Still-Got-The-Blues-v6.mp3	516
3053	Still Got The Blues v7	\N	media/songs/Gary-Moore/Still-Got-The-Blues-v7.mp3	516
3054	Stormy Monday	\N	media/songs/Gary-Moore/Stormy-Monday.mp3	516
3055	Story Of The Blues	\N	media/songs/Gary-Moore/Story-Of-The-Blues.mp3	516
3056	Story Of The Blues v2	\N	media/songs/Gary-Moore/Story-Of-The-Blues-v2.mp3	516
3057	Story Of The Blues v3	\N	media/songs/Gary-Moore/Story-Of-The-Blues-v3.mp3	516
3058	Sunset	\N	media/songs/Gary-Moore/Sunset.mp3	516
3059	Super Natural	\N	media/songs/Gary-Moore/Super-Natural.mp3	516
3060	That Kind Of Woman	\N	media/songs/Gary-Moore/That-Kind-Of-Woman.mp3	516
3061	The Loner	\N	media/songs/Gary-Moore/The-Loner.mp3	516
3062	The Loner v2	\N	media/songs/Gary-Moore/The-Loner-v2.mp3	516
3063	The Loner v3	\N	media/songs/Gary-Moore/The-Loner-v3.mp3	516
3064	The Loner v4	\N	media/songs/Gary-Moore/The-Loner-v4.mp3	516
3065	The Loner v5	\N	media/songs/Gary-Moore/The-Loner-v5.mp3	516
3066	The Loner v6	\N	media/songs/Gary-Moore/The-Loner-v6.mp3	516
3067	The Loner v7	\N	media/songs/Gary-Moore/The-Loner-v7.mp3	516
3068	The Messiah Will Come Again	\N	media/songs/Gary-Moore/The-Messiah-Will-Come-Again.mp3	516
3069	The Prophet	\N	media/songs/Gary-Moore/The-Prophet.mp3	516
3070	The Sky Is Crying	\N	media/songs/Gary-Moore/The-Sky-Is-Crying.mp3	516
3071	The Supernatural	\N	media/songs/Gary-Moore/The-Supernatural.mp3	516
3072	This Hurt Inside	\N	media/songs/Gary-Moore/This-Hurt-Inside.mp3	516
3073	Thunder Rising	\N	media/songs/Gary-Moore/Thunder-Rising.mp3	516
3074	Thunder Rising Live	\N	media/songs/Gary-Moore/Thunder-Rising-Live.mp3	516
3075	Too Tired	\N	media/songs/Gary-Moore/Too-Tired.mp3	516
3076	Walking By Myself	\N	media/songs/Gary-Moore/Walking-By-Myself.mp3	516
3077	Walking By Myself v2	\N	media/songs/Gary-Moore/Walking-By-Myself-v2.mp3	516
3078	Walking By Myself v3	\N	media/songs/Gary-Moore/Walking-By-Myself-v3.mp3	516
3079	Walking By Myself v4	\N	media/songs/Gary-Moore/Walking-By-Myself-v4.mp3	516
3080	Wild Frontier	\N	media/songs/Gary-Moore/Wild-Frontier.mp3	516
3081	Wishing Well	\N	media/songs/Gary-Moore/Wishing-Well.mp3	516
3082	Metal	\N	media/songs/Gary-numan/Metal.mp3	517
3083	Be Bop A Lula	\N	media/songs/Gene-Vincent/Be-Bop-A-Lula.mp3	518
4452	Imagine v4	\N	media/songs/John-Lennon/Imagine-v4.mp3	661
3084	Rocky Road Blues	\N	media/songs/Gene-Vincent/Rocky-Road-Blues.mp3	518
3085	Rocky Road Blues v2	\N	media/songs/Gene-Vincent/Rocky-Road-Blues-v2.mp3	518
3086	A Trick Of The Tail	\N	media/songs/Genesis/A-Trick-Of-The-Tail.mp3	519
3087	Blood On The Rooftops	\N	media/songs/Genesis/Blood-On-The-Rooftops.mp3	519
3088	Fly On A Windshield	\N	media/songs/Genesis/Fly-On-A-Windshield.mp3	519
3089	I Cant Dance	\N	media/songs/Genesis/I-Cant-Dance.mp3	519
3090	Lilywhite Lilith	\N	media/songs/Genesis/Lilywhite-Lilith.mp3	519
3091	Squonk	\N	media/songs/Genesis/Squonk.mp3	519
3092	The Carpet Crawl	\N	media/songs/Genesis/The-Carpet-Crawl.mp3	519
3093	The Colony Of Slippermen	\N	media/songs/Genesis/The-Colony-Of-Slippermen.mp3	519
3094	The Lamb Lies Down On Broadway	\N	media/songs/Genesis/The-Lamb-Lies-Down-On-Broadway.mp3	519
3095	Turn It On Again	\N	media/songs/Genesis/Turn-It-On-Again.mp3	519
3096	Affirmation	\N	media/songs/George-Benson/Affirmation.mp3	520
3097	Breezin	\N	media/songs/George-Benson/Breezin.mp3	520
3098	Breezin v2	\N	media/songs/George-Benson/Breezin-v2.mp3	520
3099	Breezin v3	\N	media/songs/George-Benson/Breezin-v3.mp3	520
3100	Breezin v4	\N	media/songs/George-Benson/Breezin-v4.mp3	520
3101	Lady Double Dealer	\N	media/songs/George-Benson/Lady-Double-Dealer.mp3	520
3102	Mimosa	\N	media/songs/George-Benson/Mimosa.mp3	520
3103	On Broadway	\N	media/songs/George-Benson/On-Broadway.mp3	520
3104	This Masquerade	\N	media/songs/George-Benson/This-Masquerade.mp3	520
3105	Badge	\N	media/songs/George-Harrison/Badge.mp3	521
3106	Cheerdown	\N	media/songs/George-Harrison/Cheerdown.mp3	521
3107	Roll Over Beethoven	\N	media/songs/George-Harrison/Roll-Over-Beethoven.mp3	521
3108	Something	\N	media/songs/George-Harrison/Something.mp3	521
3109	While My Guitar Gently Weeps	\N	media/songs/George-Harrison/While-My-Guitar-Gently-Weeps.mp3	521
3110	Mr Scary	\N	media/songs/George-Lynch/Mr-Scary.mp3	522
3111	Careless Whisper	\N	media/songs/George-Michael/Careless-Whisper.mp3	523
3112	Faith	\N	media/songs/George-Michael/Faith.mp3	523
3113	Freedom	\N	media/songs/George-Michael/Freedom.mp3	523
3114	Run	\N	media/songs/George-Strait/Run.mp3	524
3115	Twang	\N	media/songs/George-Strait/Twang.mp3	524
3116	Withhout Me Around	\N	media/songs/George-Strait/Withhout-Me-Around.mp3	524
3117	Bad To The Bone	\N	media/songs/George-Thorogood/Bad-To-The-Bone.mp3	525
3118	Move It On Over	\N	media/songs/George-Thorogood/Move-It-On-Over.mp3	525
3119	Move It On Over Live	\N	media/songs/George-Thorogood/Move-It-On-Over-Live.mp3	525
3120	Keep Your Hands To Yourself	\N	media/songs/Georgia-Satellites/Keep-Your-Hands-To-Yourself.mp3	526
3121	Keep Your Hands To Yourself v2	\N	media/songs/Georgia-Satellites/Keep-Your-Hands-To-Yourself-v2.mp3	526
3122	Blues For Yna Yna	\N	media/songs/Gerald-Wilson/Blues-For-Yna-Yna.mp3	527
3123	Baker Street	\N	media/songs/Gerry-Rafferty/Baker-Street.mp3	528
3124	Baker Street v2	\N	media/songs/Gerry-Rafferty/Baker-Street-v2.mp3	528
3125	Baker Street v3	\N	media/songs/Gerry-Rafferty/Baker-Street-v3.mp3	528
3126	Con Clavi Con Dio	\N	media/songs/Ghost/Con-Clavi-Con-Dio.mp3	529
3127	Con Clavi Con Dio v2	\N	media/songs/Ghost/Con-Clavi-Con-Dio-v2.mp3	529
3128	Con Clavi Con Dio v3	\N	media/songs/Ghost/Con-Clavi-Con-Dio-v3.mp3	529
3129	Death Knell	\N	media/songs/Ghost/Death-Knell.mp3	529
3130	Elizabeth	\N	media/songs/Ghost/Elizabeth.mp3	529
3131	Elizabeth v2	\N	media/songs/Ghost/Elizabeth-v2.mp3	529
3132	Elizabeth v3	\N	media/songs/Ghost/Elizabeth-v3.mp3	529
3133	Genesis	\N	media/songs/Ghost/Genesis.mp3	529
3134	Here Comes The Sun	\N	media/songs/Ghost/Here-Comes-The-Sun.mp3	529
3135	Prime Mover	\N	media/songs/Ghost/Prime-Mover.mp3	529
3136	Prime Mover v2	\N	media/songs/Ghost/Prime-Mover-v2.mp3	529
3137	Prime Mover v3	\N	media/songs/Ghost/Prime-Mover-v3.mp3	529
3138	Ritual	\N	media/songs/Ghost/Ritual.mp3	529
3139	Ritual v2	\N	media/songs/Ghost/Ritual-v2.mp3	529
3140	Ritual v3	\N	media/songs/Ghost/Ritual-v3.mp3	529
3141	Satan Prayer	\N	media/songs/Ghost/Satan-Prayer.mp3	529
3142	Stand By Him	\N	media/songs/Ghost/Stand-By-Him.mp3	529
3143	Ashes To Fire	\N	media/songs/Ghost-Hounds/Ashes-To-Fire.mp3	530
3144	As Long As It Matters	\N	media/songs/Gin-Blossoms/As-Long-As-It-Matters.mp3	531
3145	Found Out About You	\N	media/songs/Gin-Blossoms/Found-Out-About-You.mp3	531
3146	Till I Hear It From You	\N	media/songs/Gin-Blossoms/Till-I-Hear-It-From-You.mp3	531
3147	Still Alive	\N	media/songs/GLaDOS/Still-Alive.mp3	532
3148	Our Lips Are Sealed	\N	media/songs/Go-Gos/Our-Lips-Are-Sealed.mp3	533
3149	We Got The Beat	\N	media/songs/Go-Gos/We-Got-The-Beat.mp3	533
3150	Oroboros	\N	media/songs/Gojira/Oroboros.mp3	534
3151	Toxic Garbage Island	\N	media/songs/Gojira/Toxic-Garbage-Island.mp3	534
3152	Toxic Garbage Island v2	\N	media/songs/Gojira/Toxic-Garbage-Island-v2.mp3	534
3153	Radar Love	\N	media/songs/Golden-Earring/Radar-Love.mp3	535
3154	Radar Love v2	\N	media/songs/Golden-Earring/Radar-Love-v2.mp3	535
3155	Radar Love v3	\N	media/songs/Golden-Earring/Radar-Love-v3.mp3	535
3156	Radar Love v4	\N	media/songs/Golden-Earring/Radar-Love-v4.mp3	535
3157	Radar Love v5	\N	media/songs/Golden-Earring/Radar-Love-v5.mp3	535
3158	Radar Love v6	\N	media/songs/Golden-Earring/Radar-Love-v6.mp3	535
3159	Radar Love v7	\N	media/songs/Golden-Earring/Radar-Love-v7.mp3	535
3160	Twilight Zone	\N	media/songs/Golden-Earring/Twilight-Zone.mp3	535
3161	Iris  Acoustic	\N	media/songs/Goo-Goo-Dolls/Iris--Acoustic.mp3	536
3162	Name	\N	media/songs/Goo-Goo-Dolls/Name.mp3	536
3163	Dance Floor Anthem	\N	media/songs/Good-Charlotte/Dance-Floor-Anthem.mp3	537
3164	Girls And Boys	\N	media/songs/Good-Charlotte/Girls-And-Boys.mp3	537
3165	Girls And Boys v2	\N	media/songs/Good-Charlotte/Girls-And-Boys-v2.mp3	537
3166	I Just Wanna Live	\N	media/songs/Good-Charlotte/I-Just-Wanna-Live.mp3	537
3167	I Just Wanna Live v2	\N	media/songs/Good-Charlotte/I-Just-Wanna-Live-v2.mp3	537
3168	The River	\N	media/songs/Good-Charlotte/The-River.mp3	537
3169	Clint Eastwood	\N	media/songs/Gorillaz/Clint-Eastwood.mp3	538
3170	Feel Good Inc	\N	media/songs/Gorillaz/Feel-Good-Inc.mp3	538
3171	Streamline Woman	\N	media/songs/Govt-Mule/Streamline-Woman.mp3	539
3172	Streamline Woman v2	\N	media/songs/Govt-Mule/Streamline-Woman-v2.mp3	539
3173	Foot Stompin Music	\N	media/songs/Grand-Funk-Railroad/Foot-Stompin-Music.mp3	540
3174	Foot Stompin Music v2	\N	media/songs/Grand-Funk-Railroad/Foot-Stompin-Music-v2.mp3	540
3175	Some Kind Of Wonderful	\N	media/songs/Grand-Funk-Railroad/Some-Kind-Of-Wonderful.mp3	540
3176	Were An American Band	\N	media/songs/Grand-Funk-Railroad/Were-An-American-Band.mp3	540
3177	Alabama Getaway	\N	media/songs/Grateful-Dead/Alabama-Getaway.mp3	541
3178	Casey Jones	\N	media/songs/Grateful-Dead/Casey-Jones.mp3	541
3179	China Cat Sunflower	\N	media/songs/Grateful-Dead/China-Cat-Sunflower.mp3	541
3180	China Cat Sunflower v2	\N	media/songs/Grateful-Dead/China-Cat-Sunflower-v2.mp3	541
3181	Franklins Tower	\N	media/songs/Grateful-Dead/Franklins-Tower.mp3	541
3182	Franklins Tower v2	\N	media/songs/Grateful-Dead/Franklins-Tower-v2.mp3	541
3183	Hell In A Bucket	\N	media/songs/Grateful-Dead/Hell-In-A-Bucket.mp3	541
3184	I Need A Miracle	\N	media/songs/Grateful-Dead/I-Need-A-Miracle.mp3	541
3185	I Need A Miracle v2	\N	media/songs/Grateful-Dead/I-Need-A-Miracle-v2.mp3	541
3186	Sugar Magnolia	\N	media/songs/Grateful-Dead/Sugar-Magnolia.mp3	541
3187	Sugar Magnolia v2	\N	media/songs/Grateful-Dead/Sugar-Magnolia-v2.mp3	541
3188	Touch Of Grey	\N	media/songs/Grateful-Dead/Touch-Of-Grey.mp3	541
3189	Truckin	\N	media/songs/Grateful-Dead/Truckin.mp3	541
3190	Truckin v2	\N	media/songs/Grateful-Dead/Truckin-v2.mp3	541
3191	Hisingen Blues	\N	media/songs/Graveyard/Hisingen-Blues.mp3	542
3192	Cheat On The Church	\N	media/songs/Graveyard-BBQ/Cheat-On-The-Church.mp3	543
3193	Youre The One That I Want	\N	media/songs/Grease/Youre-The-One-That-I-Want.mp3	544
3194	Rock Me	\N	media/songs/Great-White/Rock-Me.mp3	545
3195	1000 Hours	\N	media/songs/Green-Day/1000-Hours.mp3	546
3196	16	\N	media/songs/Green-Day/16.mp3	546
3197	2000 Light Years Away	\N	media/songs/Green-Day/2000-Light-Years-Away.mp3	546
3198	21 Guns	\N	media/songs/Green-Day/21-Guns.mp3	546
3199	21 Guns v2	\N	media/songs/Green-Day/21-Guns-v2.mp3	546
3200	21 Guns v3	\N	media/songs/Green-Day/21-Guns-v3.mp3	546
3201	21st Century Breakdown	\N	media/songs/Green-Day/21st-Century-Breakdown.mp3	546
3202	409 In Your Coffeemaker	\N	media/songs/Green-Day/409-In-Your-Coffeemaker.mp3	546
3203	80	\N	media/songs/Green-Day/80.mp3	546
3204	American Eulogy	\N	media/songs/Green-Day/American-Eulogy.mp3	546
3205	American Eulogy v2	\N	media/songs/Green-Day/American-Eulogy-v2.mp3	546
3206	American Idiot	\N	media/songs/Green-Day/American-Idiot.mp3	546
3207	American Idiot v2	\N	media/songs/Green-Day/American-Idiot-v2.mp3	546
3208	American Idiot v3	\N	media/songs/Green-Day/American-Idiot-v3.mp3	546
3209	American Idiot v4	\N	media/songs/Green-Day/American-Idiot-v4.mp3	546
3210	American Idiot v5	\N	media/songs/Green-Day/American-Idiot-v5.mp3	546
3211	American Idiot v6	\N	media/songs/Green-Day/American-Idiot-v6.mp3	546
3212	Are We The Waiting	\N	media/songs/Green-Day/Are-We-The-Waiting.mp3	546
3213	Armatage Shanks	\N	media/songs/Green-Day/Armatage-Shanks.mp3	546
3214	Basket Case	\N	media/songs/Green-Day/Basket-Case.mp3	546
3215	Basket Case v2	\N	media/songs/Green-Day/Basket-Case-v2.mp3	546
3216	Basket Case v3	\N	media/songs/Green-Day/Basket-Case-v3.mp3	546
3217	Basket Case v4	\N	media/songs/Green-Day/Basket-Case-v4.mp3	546
3218	Boulevard Of Broken Dreams	\N	media/songs/Green-Day/Boulevard-Of-Broken-Dreams.mp3	546
3219	Boulevard Of Broken Dreams v2	\N	media/songs/Green-Day/Boulevard-Of-Broken-Dreams-v2.mp3	546
3220	Boulevard Of Broken Dreams v3	\N	media/songs/Green-Day/Boulevard-Of-Broken-Dreams-v3.mp3	546
3221	Boulevard Of Broken Dreams v4	\N	media/songs/Green-Day/Boulevard-Of-Broken-Dreams-v4.mp3	546
3222	Boulevard Of Broken Dreams v5	\N	media/songs/Green-Day/Boulevard-Of-Broken-Dreams-v5.mp3	546
3223	Boulevard Of Broken Dreams v6	\N	media/songs/Green-Day/Boulevard-Of-Broken-Dreams-v6.mp3	546
3224	Brain Stew	\N	media/songs/Green-Day/Brain-Stew.mp3	546
3225	Brat	\N	media/songs/Green-Day/Brat.mp3	546
3226	Burnout	\N	media/songs/Green-Day/Burnout.mp3	546
3227	Burnout v2	\N	media/songs/Green-Day/Burnout-v2.mp3	546
3228	Christians Inferno	\N	media/songs/Green-Day/Christians-Inferno.mp3	546
3229	Chump	\N	media/songs/Green-Day/Chump.mp3	546
3230	Chump Longview	\N	media/songs/Green-Day/Chump-Longview.mp3	546
3231	Coming Clean	\N	media/songs/Green-Day/Coming-Clean.mp3	546
3232	Disappearing Boy	\N	media/songs/Green-Day/Disappearing-Boy.mp3	546
3233	Emenius Sleepus	\N	media/songs/Green-Day/Emenius-Sleepus.mp3	546
3234	Emenius Sleepus v2	\N	media/songs/Green-Day/Emenius-Sleepus-v2.mp3	546
3235	Extraordinary Girl	\N	media/songs/Green-Day/Extraordinary-Girl.mp3	546
3236	FOD	\N	media/songs/Green-Day/FOD.mp3	546
3237	Geek Stink Breath	\N	media/songs/Green-Day/Geek-Stink-Breath.mp3	546
3238	Geek Stink Breath v2	\N	media/songs/Green-Day/Geek-Stink-Breath-v2.mp3	546
3239	Give Me Novacaine	\N	media/songs/Green-Day/Give-Me-Novacaine.mp3	546
3240	Give Me Novacaine   Shes A Rebel	\N	media/songs/Green-Day/Give-Me-Novacaine---Shes-A-Rebel.mp3	546
3241	Good Riddance Time Of Your Life	\N	media/songs/Green-Day/Good-Riddance-Time-Of-Your-Life.mp3	546
3242	Having A Blast	\N	media/songs/Green-Day/Having-A-Blast.mp3	546
3243	Hitchin A Ride	\N	media/songs/Green-Day/Hitchin-A-Ride.mp3	546
3244	Hitchin A Ride v2	\N	media/songs/Green-Day/Hitchin-A-Ride-v2.mp3	546
3245	Holiday	\N	media/songs/Green-Day/Holiday.mp3	546
3246	Holiday Live	\N	media/songs/Green-Day/Holiday-Live.mp3	546
3247	Holiday v2	\N	media/songs/Green-Day/Holiday-v2.mp3	546
3248	Holiday v3	\N	media/songs/Green-Day/Holiday-v3.mp3	546
3249	Holiday v4	\N	media/songs/Green-Day/Holiday-v4.mp3	546
3250	Homecoming	\N	media/songs/Green-Day/Homecoming.mp3	546
3251	Horseshoes And Handgrenades	\N	media/songs/Green-Day/Horseshoes-And-Handgrenades.mp3	546
3252	Horseshoes And Handgrenades v2	\N	media/songs/Green-Day/Horseshoes-And-Handgrenades-v2.mp3	546
3253	In The End	\N	media/songs/Green-Day/In-The-End.mp3	546
3254	In The End v2	\N	media/songs/Green-Day/In-The-End-v2.mp3	546
3255	Know Your Enemy	\N	media/songs/Green-Day/Know-Your-Enemy.mp3	546
3256	Know Your Enemy v2	\N	media/songs/Green-Day/Know-Your-Enemy-v2.mp3	546
3257	Last Night On Earth	\N	media/songs/Green-Day/Last-Night-On-Earth.mp3	546
3258	Last Night On Earth v2	\N	media/songs/Green-Day/Last-Night-On-Earth-v2.mp3	546
3259	Last Of The American Girls	\N	media/songs/Green-Day/Last-Of-The-American-Girls.mp3	546
3260	Last Of The American Girls v2	\N	media/songs/Green-Day/Last-Of-The-American-Girls-v2.mp3	546
3261	Letterbomb	\N	media/songs/Green-Day/Letterbomb.mp3	546
3262	Letterbomb v2	\N	media/songs/Green-Day/Letterbomb-v2.mp3	546
3263	Little Girl	\N	media/songs/Green-Day/Little-Girl.mp3	546
3264	Little Girl v2	\N	media/songs/Green-Day/Little-Girl-v2.mp3	546
3265	Longview	\N	media/songs/Green-Day/Longview.mp3	546
3266	Longview v2	\N	media/songs/Green-Day/Longview-v2.mp3	546
3267	Minority	\N	media/songs/Green-Day/Minority.mp3	546
3268	Minority v2	\N	media/songs/Green-Day/Minority-v2.mp3	546
3269	Murder City	\N	media/songs/Green-Day/Murder-City.mp3	546
3270	Murder City v2	\N	media/songs/Green-Day/Murder-City-v2.mp3	546
3271	Nice Guys Finish Last	\N	media/songs/Green-Day/Nice-Guys-Finish-Last.mp3	546
3272	Peacemaker	\N	media/songs/Green-Day/Peacemaker.mp3	546
3273	Peacemaker v2	\N	media/songs/Green-Day/Peacemaker-v2.mp3	546
3274	Poprocks And Coke	\N	media/songs/Green-Day/Poprocks-And-Coke.mp3	546
3275	Poprocks And Coke v2	\N	media/songs/Green-Day/Poprocks-And-Coke-v2.mp3	546
3276	Prosthetic Head	\N	media/songs/Green-Day/Prosthetic-Head.mp3	546
3277	Pulling Teeth	\N	media/songs/Green-Day/Pulling-Teeth.mp3	546
3278	Pulling Teeth v2	\N	media/songs/Green-Day/Pulling-Teeth-v2.mp3	546
3279	Restless Heart Syndrome	\N	media/songs/Green-Day/Restless-Heart-Syndrome.mp3	546
3280	Restless Heart Syndrome v2	\N	media/songs/Green-Day/Restless-Heart-Syndrome-v2.mp3	546
3281	Sassafras Roots	\N	media/songs/Green-Day/Sassafras-Roots.mp3	546
3282	Sassafras Roots v2	\N	media/songs/Green-Day/Sassafras-Roots-v2.mp3	546
3283	See The Light	\N	media/songs/Green-Day/See-The-Light.mp3	546
3284	See The Light v2	\N	media/songs/Green-Day/See-The-Light-v2.mp3	546
3285	She	\N	media/songs/Green-Day/She.mp3	546
3286	Shes A Rebel	\N	media/songs/Green-Day/Shes-A-Rebel.mp3	546
3287	St Jimmy	\N	media/songs/Green-Day/St-Jimmy.mp3	546
3288	Stuart And The Ave	\N	media/songs/Green-Day/Stuart-And-The-Ave.mp3	546
3289	The Simpsons Theme	\N	media/songs/Green-Day/The-Simpsons-Theme.mp3	546
3290	The Static Age	\N	media/songs/Green-Day/The-Static-Age.mp3	546
3291	The Static Age v2	\N	media/songs/Green-Day/The-Static-Age-v2.mp3	546
3292	Tired Of Waiting For You	\N	media/songs/Green-Day/Tired-Of-Waiting-For-You.mp3	546
3293	Viva La Gloria	\N	media/songs/Green-Day/Viva-La-Gloria.mp3	546
3294	Viva La Gloria v2	\N	media/songs/Green-Day/Viva-La-Gloria-v2.mp3	546
3295	Waiting	\N	media/songs/Green-Day/Waiting.mp3	546
3296	Wake Me Up When September Ends	\N	media/songs/Green-Day/Wake-Me-Up-When-September-Ends.mp3	546
3297	Wake Me Up When September Ends v2	\N	media/songs/Green-Day/Wake-Me-Up-When-September-Ends-v2.mp3	546
3298	Wake Me Up When September Ends v3	\N	media/songs/Green-Day/Wake-Me-Up-When-September-Ends-v3.mp3	546
3299	Wake Me Up When September Ends v4	\N	media/songs/Green-Day/Wake-Me-Up-When-September-Ends-v4.mp3	546
3300	Wake Me Up When September Ends v5	\N	media/songs/Green-Day/Wake-Me-Up-When-September-Ends-v5.mp3	546
3301	Warning	\N	media/songs/Green-Day/Warning.mp3	546
3302	Warning v2	\N	media/songs/Green-Day/Warning-v2.mp3	546
3303	Warning v3	\N	media/songs/Green-Day/Warning-v3.mp3	546
3304	Welcome To Paradise	\N	media/songs/Green-Day/Welcome-To-Paradise.mp3	546
3305	Whatsername	\N	media/songs/Green-Day/Whatsername.mp3	546
3306	Whatsername v2	\N	media/songs/Green-Day/Whatsername-v2.mp3	546
3307	When I Come Around	\N	media/songs/Green-Day/When-I-Come-Around.mp3	546
3308	When I Come Around v2	\N	media/songs/Green-Day/When-I-Come-Around-v2.mp3	546
3309	When I Come Around v3	\N	media/songs/Green-Day/When-I-Come-Around-v3.mp3	546
3310	When I Come Around v4	\N	media/songs/Green-Day/When-I-Come-Around-v4.mp3	546
3311	When I Come Around v5	\N	media/songs/Green-Day/When-I-Come-Around-v5.mp3	546
3312	When I Come Around v6	\N	media/songs/Green-Day/When-I-Come-Around-v6.mp3	546
3313	When September Ends	\N	media/songs/Green-Day/When-September-Ends.mp3	546
3314	Abrupt Terminal	\N	media/songs/Greg-Howe/Abrupt-Terminal.mp3	547
3315	Abrupt Terminal v2	\N	media/songs/Greg-Howe/Abrupt-Terminal-v2.mp3	547
3316	Bach Mock	\N	media/songs/Greg-Howe/Bach-Mock.mp3	547
3317	Bad Racket	\N	media/songs/Greg-Howe/Bad-Racket.mp3	547
3318	Bad Racket Full Version	\N	media/songs/Greg-Howe/Bad-Racket-Full-Version.mp3	547
3319	Etraction	\N	media/songs/Greg-Howe/Etraction.mp3	547
3320	High Gear	\N	media/songs/Greg-Howe/High-Gear.mp3	547
3321	Just Kidding	\N	media/songs/Greg-Howe/Just-Kidding.mp3	547
3322	The Pepper Shake	\N	media/songs/Greg-Howe/The-Pepper-Shake.mp3	547
3323	Toi Moi	\N	media/songs/Gregoire/Toi-Moi.mp3	548
3324	Guitar Battle Slash	\N	media/songs/Guitar-Hero/Guitar-Battle-Slash.mp3	549
3325	Guitar Battle Tom Morello	\N	media/songs/Guitar-Hero/Guitar-Battle-Tom-Morello.mp3	549
3326	Guitar Battle Tom Morello v2	\N	media/songs/Guitar-Hero/Guitar-Battle-Tom-Morello-v2.mp3	549
3327	Guitar Battle Tom Morello v3	\N	media/songs/Guitar-Hero/Guitar-Battle-Tom-Morello-v3.mp3	549
3328	Blues In B	\N	media/songs/Guitar-Playback/Blues-In-B.mp3	550
3329	Word Up	\N	media/songs/Gun/Word-Up.mp3	551
3330	Aint It Fun	\N	media/songs/Guns-N-Roses/Aint-It-Fun.mp3	552
3331	Anything Goes	\N	media/songs/Guns-N-Roses/Anything-Goes.mp3	552
3332	Better	\N	media/songs/Guns-N-Roses/Better.mp3	552
3333	Catcher In The Rye	\N	media/songs/Guns-N-Roses/Catcher-In-The-Rye.mp3	552
3334	Catcher In The Rye v2	\N	media/songs/Guns-N-Roses/Catcher-In-The-Rye-v2.mp3	552
3335	Chinese Democracy	\N	media/songs/Guns-N-Roses/Chinese-Democracy.mp3	552
3336	Chinese Democracy v2	\N	media/songs/Guns-N-Roses/Chinese-Democracy-v2.mp3	552
3337	Civil War	\N	media/songs/Guns-N-Roses/Civil-War.mp3	552
3338	Civil War v2	\N	media/songs/Guns-N-Roses/Civil-War-v2.mp3	552
3339	Civil War v3	\N	media/songs/Guns-N-Roses/Civil-War-v3.mp3	552
3340	Civil War v4	\N	media/songs/Guns-N-Roses/Civil-War-v4.mp3	552
3341	Coma	\N	media/songs/Guns-N-Roses/Coma.mp3	552
3342	Dead Horse	\N	media/songs/Guns-N-Roses/Dead-Horse.mp3	552
3343	Dont Cry	\N	media/songs/Guns-N-Roses/Dont-Cry.mp3	552
3344	Dont Cry v2	\N	media/songs/Guns-N-Roses/Dont-Cry-v2.mp3	552
3345	Dont Cry v3	\N	media/songs/Guns-N-Roses/Dont-Cry-v3.mp3	552
3346	Dont Cry v4	\N	media/songs/Guns-N-Roses/Dont-Cry-v4.mp3	552
3347	Dont Cry v5	\N	media/songs/Guns-N-Roses/Dont-Cry-v5.mp3	552
3348	Dont Cry v6	\N	media/songs/Guns-N-Roses/Dont-Cry-v6.mp3	552
3349	Dont Cry v7	\N	media/songs/Guns-N-Roses/Dont-Cry-v7.mp3	552
3350	Double Talkin Jive	\N	media/songs/Guns-N-Roses/Double-Talkin-Jive.mp3	552
3351	Estranged	\N	media/songs/Guns-N-Roses/Estranged.mp3	552
3352	Estranged v2	\N	media/songs/Guns-N-Roses/Estranged-v2.mp3	552
3353	Estranged v3	\N	media/songs/Guns-N-Roses/Estranged-v3.mp3	552
3354	Estranged v4	\N	media/songs/Guns-N-Roses/Estranged-v4.mp3	552
3355	If The World	\N	media/songs/Guns-N-Roses/If-The-World.mp3	552
3356	IRS	\N	media/songs/Guns-N-Roses/IRS.mp3	552
3357	Its So Easy	\N	media/songs/Guns-N-Roses/Its-So-Easy.mp3	552
3358	Its So Easy v2	\N	media/songs/Guns-N-Roses/Its-So-Easy-v2.mp3	552
3359	Jumpin Jack Flash	\N	media/songs/Guns-N-Roses/Jumpin-Jack-Flash.mp3	552
3360	Knockin On Heavans Door	\N	media/songs/Guns-N-Roses/Knockin-On-Heavans-Door.mp3	552
3361	Knockin On Heavens Door	\N	media/songs/Guns-N-Roses/Knockin-On-Heavens-Door.mp3	552
3362	Knockin On Heavens Door Live	\N	media/songs/Guns-N-Roses/Knockin-On-Heavens-Door-Live.mp3	552
3363	Knockin On Heavens Door v2	\N	media/songs/Guns-N-Roses/Knockin-On-Heavens-Door-v2.mp3	552
3364	Knockin On Heavens Door v3	\N	media/songs/Guns-N-Roses/Knockin-On-Heavens-Door-v3.mp3	552
3365	Knockin On Heavens Door v4	\N	media/songs/Guns-N-Roses/Knockin-On-Heavens-Door-v4.mp3	552
3366	Live And Let Die	\N	media/songs/Guns-N-Roses/Live-And-Let-Die.mp3	552
3367	Live And Let Die v2	\N	media/songs/Guns-N-Roses/Live-And-Let-Die-v2.mp3	552
3368	Madagascar	\N	media/songs/Guns-N-Roses/Madagascar.mp3	552
3369	Madagascar v2	\N	media/songs/Guns-N-Roses/Madagascar-v2.mp3	552
3370	Madagascar v3	\N	media/songs/Guns-N-Roses/Madagascar-v3.mp3	552
3371	Mr Brownstone	\N	media/songs/Guns-N-Roses/Mr-Brownstone.mp3	552
3372	Mr Brownstone Live	\N	media/songs/Guns-N-Roses/Mr-Brownstone-Live.mp3	552
3373	Mr Brownstone v2	\N	media/songs/Guns-N-Roses/Mr-Brownstone-v2.mp3	552
3374	Mr Brownstone v3	\N	media/songs/Guns-N-Roses/Mr-Brownstone-v3.mp3	552
3375	Mr Brownstone v4	\N	media/songs/Guns-N-Roses/Mr-Brownstone-v4.mp3	552
3376	My Michelle	\N	media/songs/Guns-N-Roses/My-Michelle.mp3	552
3377	My Michelle v2	\N	media/songs/Guns-N-Roses/My-Michelle-v2.mp3	552
3378	My Michelle v3	\N	media/songs/Guns-N-Roses/My-Michelle-v3.mp3	552
3379	Nightrain	\N	media/songs/Guns-N-Roses/Nightrain.mp3	552
3380	Nightrain v2	\N	media/songs/Guns-N-Roses/Nightrain-v2.mp3	552
3381	Nightrain v3	\N	media/songs/Guns-N-Roses/Nightrain-v3.mp3	552
3382	Nightrain v4	\N	media/songs/Guns-N-Roses/Nightrain-v4.mp3	552
3383	November Rain	\N	media/songs/Guns-N-Roses/November-Rain.mp3	552
3384	November Rain v2	\N	media/songs/Guns-N-Roses/November-Rain-v2.mp3	552
3385	November Rain v3	\N	media/songs/Guns-N-Roses/November-Rain-v3.mp3	552
3386	November Rain v4	\N	media/songs/Guns-N-Roses/November-Rain-v4.mp3	552
3387	November Rain v5	\N	media/songs/Guns-N-Roses/November-Rain-v5.mp3	552
3388	November Rain v6	\N	media/songs/Guns-N-Roses/November-Rain-v6.mp3	552
3389	November Rain v7	\N	media/songs/Guns-N-Roses/November-Rain-v7.mp3	552
3390	Out Ta Get Me	\N	media/songs/Guns-N-Roses/Out-Ta-Get-Me.mp3	552
3391	Out Ta Get Me v2	\N	media/songs/Guns-N-Roses/Out-Ta-Get-Me-v2.mp3	552
3392	Paradise City	\N	media/songs/Guns-N-Roses/Paradise-City.mp3	552
3393	Paradise City Live	\N	media/songs/Guns-N-Roses/Paradise-City-Live.mp3	552
3394	Paradise City v2	\N	media/songs/Guns-N-Roses/Paradise-City-v2.mp3	552
3395	Paradise City v3	\N	media/songs/Guns-N-Roses/Paradise-City-v3.mp3	552
3396	Paradise City v4	\N	media/songs/Guns-N-Roses/Paradise-City-v4.mp3	552
3397	Paradise City v5	\N	media/songs/Guns-N-Roses/Paradise-City-v5.mp3	552
3398	Paradise City v6	\N	media/songs/Guns-N-Roses/Paradise-City-v6.mp3	552
3399	Paradise City v7	\N	media/songs/Guns-N-Roses/Paradise-City-v7.mp3	552
3400	Paradise City v8	\N	media/songs/Guns-N-Roses/Paradise-City-v8.mp3	552
3401	Patience	\N	media/songs/Guns-N-Roses/Patience.mp3	552
3402	Patience  Acoustic	\N	media/songs/Guns-N-Roses/Patience--Acoustic.mp3	552
3403	Patience  Acoustic v2	\N	media/songs/Guns-N-Roses/Patience--Acoustic-v2.mp3	552
3404	Patience v2	\N	media/songs/Guns-N-Roses/Patience-v2.mp3	552
3405	Riad N The Bedouins	\N	media/songs/Guns-N-Roses/Riad-N-The-Bedouins.mp3	552
3406	Rocket Queen	\N	media/songs/Guns-N-Roses/Rocket-Queen.mp3	552
3407	Rocket Queen v2	\N	media/songs/Guns-N-Roses/Rocket-Queen-v2.mp3	552
3408	Rocket Queen v3	\N	media/songs/Guns-N-Roses/Rocket-Queen-v3.mp3	552
3409	Rocket Queen v4	\N	media/songs/Guns-N-Roses/Rocket-Queen-v4.mp3	552
3410	Shacklers Revenge	\N	media/songs/Guns-N-Roses/Shacklers-Revenge.mp3	552
3411	Shadow Of Your Love Live	\N	media/songs/Guns-N-Roses/Shadow-Of-Your-Love-Live.mp3	552
3412	Since I Dont Have You	\N	media/songs/Guns-N-Roses/Since-I-Dont-Have-You.mp3	552
3413	Sorry	\N	media/songs/Guns-N-Roses/Sorry.mp3	552
3414	Standard Tuning	\N	media/songs/Guns-N-Roses/Standard-Tuning.mp3	552
3415	Street Of Dreams	\N	media/songs/Guns-N-Roses/Street-Of-Dreams.mp3	552
3416	Street Of Dreams v2	\N	media/songs/Guns-N-Roses/Street-Of-Dreams-v2.mp3	552
3417	Sweet Child O Mine	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine.mp3	552
3418	Sweet Child O Mine v10	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v10.mp3	552
3419	Sweet Child O Mine v2	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v2.mp3	552
3420	Sweet Child O Mine v3	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v3.mp3	552
3421	Sweet Child O Mine v4	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v4.mp3	552
3422	Sweet Child O Mine v5	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v5.mp3	552
3423	Sweet Child O Mine v6	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v6.mp3	552
3424	Sweet Child O Mine v7	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v7.mp3	552
3425	Sweet Child O Mine v8	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v8.mp3	552
3426	Sweet Child O Mine v9	\N	media/songs/Guns-N-Roses/Sweet-Child-O-Mine-v9.mp3	552
3427	There Was A Time	\N	media/songs/Guns-N-Roses/There-Was-A-Time.mp3	552
3428	This I Love	\N	media/songs/Guns-N-Roses/This-I-Love.mp3	552
3429	This I Love v2	\N	media/songs/Guns-N-Roses/This-I-Love-v2.mp3	552
3430	Welcome To The Jungle	\N	media/songs/Guns-N-Roses/Welcome-To-The-Jungle.mp3	552
3431	Welcome To The Jungle v2	\N	media/songs/Guns-N-Roses/Welcome-To-The-Jungle-v2.mp3	552
3432	Welcome To The Jungle v3	\N	media/songs/Guns-N-Roses/Welcome-To-The-Jungle-v3.mp3	552
3433	Welcome To The Jungle v4	\N	media/songs/Guns-N-Roses/Welcome-To-The-Jungle-v4.mp3	552
3434	Welcome To The Jungle v5	\N	media/songs/Guns-N-Roses/Welcome-To-The-Jungle-v5.mp3	552
3435	Welcome To The Jungle v6	\N	media/songs/Guns-N-Roses/Welcome-To-The-Jungle-v6.mp3	552
3436	Wild Horses	\N	media/songs/Guns-N-Roses/Wild-Horses.mp3	552
3437	Wild Horses v2	\N	media/songs/Guns-N-Roses/Wild-Horses-v2.mp3	552
3438	Yesterdays	\N	media/songs/Guns-N-Roses/Yesterdays.mp3	552
3439	You Could Be Mine	\N	media/songs/Guns-N-Roses/You-Could-Be-Mine.mp3	552
3440	You Could Be Mine v2	\N	media/songs/Guns-N-Roses/You-Could-Be-Mine-v2.mp3	552
3441	You Could Be Mine v3	\N	media/songs/Guns-N-Roses/You-Could-Be-Mine-v3.mp3	552
3442	You Could Be Mine v4	\N	media/songs/Guns-N-Roses/You-Could-Be-Mine-v4.mp3	552
3443	Gor Gor	\N	media/songs/GWAR/Gor-Gor.mp3	553
3444	Nothing All The Time	\N	media/songs/H-Is-Orange/Nothing-All-The-Time.mp3	554
3445	Nothing All The Time v2	\N	media/songs/H-Is-Orange/Nothing-All-The-Time-v2.mp3	554
3446	Countdown To Insanity	\N	media/songs/H-Blockx/Countdown-To-Insanity.mp3	555
3447	Countdown To Insanity v2	\N	media/songs/H-Blockx/Countdown-To-Insanity-v2.mp3	555
3448	Countdown To Insanity v3	\N	media/songs/H-Blockx/Countdown-To-Insanity-v3.mp3	555
3449	I Want Out	\N	media/songs/Halloween/I-Want-Out.mp3	556
3450	Lady Soul	\N	media/songs/Hank-Crawford/Lady-Soul.mp3	557
3451	A Groovy Kind Of Love	\N	media/songs/Hank-Marvin/A-Groovy-Kind-Of-Love.mp3	558
3452	Cheguei Ao Ponto	\N	media/songs/Hany/Cheguei-Ao-Ponto.mp3	559
3453	Sua Culpa	\N	media/songs/Hany/Sua-Culpa.mp3	559
3454	Better Do Better	\N	media/songs/Hard-Fi/Better-Do-Better.mp3	560
3455	Better Do Better v2	\N	media/songs/Hard-Fi/Better-Do-Better-v2.mp3	560
3456	We Dont Celebrate Sundays	\N	media/songs/Hardcore-Superstar/We-Dont-Celebrate-Sundays.mp3	561
3457	Top Gun Anthem	\N	media/songs/Harold-Faltermayer-and-Steve-Sevens/Top-Gun-Anthem.mp3	562
3458	Master Of The Universe	\N	media/songs/Hawkwind/Master-Of-The-Universe.mp3	563
3459	Rescue Me	\N	media/songs/Hawthorne-Heights/Rescue-Me.mp3	564
3460	Pirates Of The Caribbean	\N	media/songs/Hayatebune/Pirates-Of-The-Caribbean.mp3	565
3461	Playgirl	\N	media/songs/Headset/Playgirl.mp3	566
3462	Alone	\N	media/songs/Heart/Alone.mp3	567
3463	Alone v2	\N	media/songs/Heart/Alone-v2.mp3	567
3464	Alone v3	\N	media/songs/Heart/Alone-v3.mp3	567
3465	Barracuda	\N	media/songs/Heart/Barracuda.mp3	567
3466	Barracuda v2	\N	media/songs/Heart/Barracuda-v2.mp3	567
3467	Barracuda v3	\N	media/songs/Heart/Barracuda-v3.mp3	567
3468	Crazy On You	\N	media/songs/Heart/Crazy-On-You.mp3	567
3469	Crazy On You v2	\N	media/songs/Heart/Crazy-On-You-v2.mp3	567
3470	Straight On	\N	media/songs/Heart/Straight-On.mp3	567
3471	Dr Stein	\N	media/songs/Helloween/Dr-Stein.mp3	568
3472	Eagle Fly Free	\N	media/songs/Helloween/Eagle-Fly-Free.mp3	568
3473	I Want Out	\N	media/songs/Helloween/I-Want-Out.mp3	568
3474	Im Alive	\N	media/songs/Helloween/Im-Alive.mp3	568
3475	Power	\N	media/songs/Helloween/Power.mp3	568
3476	Power v2	\N	media/songs/Helloween/Power-v2.mp3	568
3477	Unsung	\N	media/songs/Helmet/Unsung.mp3	569
3478	Unsung Live	\N	media/songs/Helmet/Unsung-Live.mp3	569
3479	Future In The Past	\N	media/songs/Helmy-Maulana/Future-In-The-Past.mp3	570
3480	Ghost In The Cell	\N	media/songs/Helmy-Maulana/Ghost-In-The-Cell.mp3	570
3481	Java Song	\N	media/songs/Helmy-Maulana/Java-Song.mp3	570
3482	Love Walks In	\N	media/songs/Helmy-Maulana/Love-Walks-In.mp3	570
3483	Robocop	\N	media/songs/Helmy-Maulana/Robocop.mp3	570
3484	The Pink Panther Theme	\N	media/songs/Henry-Mancini/The-Pink-Panther-Theme.mp3	571
3485	Cantaloupe Island	\N	media/songs/Herbie-Hancock/Cantaloupe-Island.mp3	572
3486	Avalancha	\N	media/songs/Heroes-Del-Silencio/Avalancha.mp3	573
3487	Entre Dos Tierras	\N	media/songs/Heroes-Del-Silencio/Entre-Dos-Tierras.mp3	573
3488	Heroe De Leyenda	\N	media/songs/Heroes-Del-Silencio/Heroe-De-Leyenda.mp3	573
3489	Ho	\N	media/songs/Hey/Ho.mp3	574
3490	Miss Ouri	\N	media/songs/Hey/Miss-Ouri.mp3	574
3491	Moll	\N	media/songs/Hey/Moll.mp3	574
3492	30 Days Speed Shred	\N	media/songs/Hidenori/30-Days-Speed-Shred.mp3	575
3493	So Yesterday	\N	media/songs/Hilary-Duff/So-Yesterday.mp3	576
3494	Join Me	\N	media/songs/Him/Join-Me.mp3	577
3495	Killing Loneliness	\N	media/songs/Him/Killing-Loneliness.mp3	577
3496	Razorblade Kiss	\N	media/songs/Him/Razorblade-Kiss.mp3	577
3497	Right Here In My Arms	\N	media/songs/Him/Right-Here-In-My-Arms.mp3	577
3498	Wicked Game	\N	media/songs/Him/Wicked-Game.mp3	577
3499	Wicked Game v2	\N	media/songs/Him/Wicked-Game-v2.mp3	577
3500	Wings Of A Butterfly	\N	media/songs/Him/Wings-Of-A-Butterfly.mp3	577
3501	Lips Of An Angel	\N	media/songs/Hinder/Lips-Of-An-Angel.mp3	578
3502	Use Me	\N	media/songs/Hinder/Use-Me.mp3	578
3503	Celebrity Skin	\N	media/songs/Hole/Celebrity-Skin.mp3	579
3504	Celebrity Skin v2	\N	media/songs/Hole/Celebrity-Skin-v2.mp3	579
3505	Young	\N	media/songs/Hollywood-Undead/Young.mp3	580
3506	I Get By	\N	media/songs/Honest-Bob-And-The-Factory-To-Dealer-Incentives/I-Get-By.mp3	581
3507	I Get By v2	\N	media/songs/Honest-Bob-And-The-Factory-To-Dealer-Incentives/I-Get-By-v2.mp3	581
3508	Soy Bomb	\N	media/songs/Honest-Bob-And-The-Factory-To-Dealer-Incentives/Soy-Bomb.mp3	581
3509	The Reason	\N	media/songs/Hoobastank/The-Reason.mp3	582
3510	The Reason v2	\N	media/songs/Hoobastank/The-Reason-v2.mp3	582
3511	The Reason v3	\N	media/songs/Hoobastank/The-Reason-v3.mp3	582
3512	Like Wow Wipeout	\N	media/songs/Hoodoo-Gurus/Like-Wow-Wipeout.mp3	583
3513	Senor Blues	\N	media/songs/Horace-Silver/Senor-Blues.mp3	584
3514	Bandages	\N	media/songs/Hot-Hot-Heat/Bandages.mp3	585
3515	Oh Yeah	\N	media/songs/House-De-Racket/Oh-Yeah.mp3	586
3516	Smokestack Lightnin	\N	media/songs/Howling-Wolf/Smokestack-Lightnin.mp3	587
3517	Air On A G String	\N	media/songs/HS-Lee/Air-On-A-G-String.mp3	588
3518	Power Of Love	\N	media/songs/Huey-Lewis/Power-Of-Love.mp3	589
3519	Heart Of Rock And Roll	\N	media/songs/Huey-Lewis-And-The-News/Heart-Of-Rock-And-Roll.mp3	590
3520	I Want A New Drug	\N	media/songs/Huey-Lewis-And-The-News/I-Want-A-New-Drug.mp3	590
3521	I Want A New Drug v2	\N	media/songs/Huey-Lewis-And-The-News/I-Want-A-New-Drug-v2.mp3	590
3522	If This Is It	\N	media/songs/Huey-Lewis-And-The-News/If-This-Is-It.mp3	590
3523	Power Of Love	\N	media/songs/Huey-Lewis-And-The-News/Power-Of-Love.mp3	590
3524	Power Of Love v2	\N	media/songs/Huey-Lewis-And-The-News/Power-Of-Love-v2.mp3	590
3525	Power Of Love v3	\N	media/songs/Huey-Lewis-And-The-News/Power-Of-Love-v3.mp3	590
3526	Workin For A Livin	\N	media/songs/Huey-Lewis-And-The-News/Workin-For-A-Livin.mp3	590
3527	Workin For A Livin v2	\N	media/songs/Huey-Lewis-And-The-News/Workin-For-A-Livin-v2.mp3	590
3528	Ill Never Know	\N	media/songs/Hundred-Reasons/Ill-Never-Know.mp3	591
3529	Ill Never Know v2	\N	media/songs/Hundred-Reasons/Ill-Never-Know-v2.mp3	591
3530	Youre Gonna Say Yeah	\N	media/songs/Hushpuppies/Youre-Gonna-Say-Yeah.mp3	592
3531	Viva La Resistance	\N	media/songs/Hypernova/Viva-La-Resistance.mp3	593
3532	No One Likes Superman	\N	media/songs/I-Fight-Dragons/No-One-Likes-Superman.mp3	594
3533	Levitate	\N	media/songs/I-Mother-Earth/Levitate.mp3	595
3534	Watching Over Me	\N	media/songs/Iced-Earth/Watching-Over-Me.mp3	596
3535	Watching Over Me v2	\N	media/songs/Iced-Earth/Watching-Over-Me-v2.mp3	596
3536	Vehicle	\N	media/songs/Ides-Of-March/Vehicle.mp3	597
3537	Lust For Life Live	\N	media/songs/Iggy-Pop/Lust-For-Life-Live.mp3	598
3538	Search And Destroy	\N	media/songs/Iggy-Pop/Search-And-Destroy.mp3	598
3539	The Passenger	\N	media/songs/Iggy-Pop/The-Passenger.mp3	598
3540	The Fall	\N	media/songs/Imagine-dragons/The-Fall.mp3	599
3541	Bullet Ride	\N	media/songs/In-Flames/Bullet-Ride.mp3	600
3542	Colony	\N	media/songs/In-Flames/Colony.mp3	600
3543	Dead Alone	\N	media/songs/In-Flames/Dead-Alone.mp3	600
3544	Dead Alone v2	\N	media/songs/In-Flames/Dead-Alone-v2.mp3	600
3545	December Flower	\N	media/songs/In-Flames/December-Flower.mp3	600
3546	Disconnected	\N	media/songs/In-Flames/Disconnected.mp3	600
3547	Disconnected v2	\N	media/songs/In-Flames/Disconnected-v2.mp3	600
3548	Gyroscope	\N	media/songs/In-Flames/Gyroscope.mp3	600
3549	Jotun	\N	media/songs/In-Flames/Jotun.mp3	600
3550	Swim	\N	media/songs/In-Flames/Swim.mp3	600
3551	Swim v2	\N	media/songs/In-Flames/Swim-v2.mp3	600
3552	Take This Life	\N	media/songs/In-Flames/Take-This-Life.mp3	600
3553	The Hive	\N	media/songs/In-Flames/The-Hive.mp3	600
3554	The Quiet Place	\N	media/songs/In-Flames/The-Quiet-Place.mp3	600
3555	The Quiet Place v2	\N	media/songs/In-Flames/The-Quiet-Place-v2.mp3	600
3556	Forever	\N	media/songs/In-This-Moment/Forever.mp3	601
3557	Anna Molly	\N	media/songs/Incubus/Anna-Molly.mp3	602
3558	Anna Molly v2	\N	media/songs/Incubus/Anna-Molly-v2.mp3	602
3559	Dig	\N	media/songs/Incubus/Dig.mp3	602
3560	Dig v2	\N	media/songs/Incubus/Dig-v2.mp3	602
3561	Dig v3	\N	media/songs/Incubus/Dig-v3.mp3	602
3562	Drive	\N	media/songs/Incubus/Drive.mp3	602
3563	Drive  Acoustic	\N	media/songs/Incubus/Drive--Acoustic.mp3	602
3564	Just A Phase	\N	media/songs/Incubus/Just-A-Phase.mp3	602
3565	New Skin	\N	media/songs/Incubus/New-Skin.mp3	602
3566	Stellar	\N	media/songs/Incubus/Stellar.mp3	602
3567	The Warmth	\N	media/songs/Incubus/The-Warmth.mp3	602
3568	The Warmth v2	\N	media/songs/Incubus/The-Warmth-v2.mp3	602
3569	Warning	\N	media/songs/Incubus/Warning.mp3	602
3570	Wish You Were Here	\N	media/songs/Incubus/Wish-You-Were-Here.mp3	602
3571	Wish You Were Here v2	\N	media/songs/Incubus/Wish-You-Were-Here-v2.mp3	602
3572	Wish You Were Here v3	\N	media/songs/Incubus/Wish-You-Were-Here-v3.mp3	602
3573	Wish You Were Here v4	\N	media/songs/Incubus/Wish-You-Were-Here-v4.mp3	602
3574	Die Tonight Live Forever	\N	media/songs/Innerpartysystem/Die-Tonight-Live-Forever.mp3	603
3575	Dont Stop	\N	media/songs/Innerpartysystem/Dont-Stop.mp3	603
3576	Homies	\N	media/songs/Insane-Clown-Posse/Homies.mp3	604
3577	Obstacle 1	\N	media/songs/Interpol/Obstacle-1.mp3	605
3578	Pda	\N	media/songs/Interpol/Pda.mp3	605
3579	Pioneer To The Falls	\N	media/songs/Interpol/Pioneer-To-The-Falls.mp3	605
3580	Pioneer To The Falls v2	\N	media/songs/Interpol/Pioneer-To-The-Falls-v2.mp3	605
3581	Slow Hands	\N	media/songs/Interpol/Slow-Hands.mp3	605
3582	By Your Side	\N	media/songs/INXS/By-Your-Side.mp3	606
3583	Devil Inside	\N	media/songs/INXS/Devil-Inside.mp3	606
3584	Dont Change	\N	media/songs/INXS/Dont-Change.mp3	606
3585	Dont Change v2	\N	media/songs/INXS/Dont-Change-v2.mp3	606
3586	I Need You Tonight	\N	media/songs/INXS/I-Need-You-Tonight.mp3	606
3587	Need You Tonight	\N	media/songs/INXS/Need-You-Tonight.mp3	606
3588	Need You Tonight v2	\N	media/songs/INXS/Need-You-Tonight-v2.mp3	606
3589	Original Sin	\N	media/songs/INXS/Original-Sin.mp3	606
3590	Original Sin v2	\N	media/songs/INXS/Original-Sin-v2.mp3	606
3591	Pretty Vegas	\N	media/songs/INXS/Pretty-Vegas.mp3	606
3592	Suicide Blonde	\N	media/songs/INXS/Suicide-Blonde.mp3	606
3593	In A Gadda Vida	\N	media/songs/Iron-Butterfly/In-A-Gadda-Vida.mp3	607
3594	In A Gadda Vida v2	\N	media/songs/Iron-Butterfly/In-A-Gadda-Vida-v2.mp3	607
3595	2 Minutes To Midnight	\N	media/songs/Iron-Maiden/2-Minutes-To-Midnight.mp3	608
3596	2 Minutes To Midnight v2	\N	media/songs/Iron-Maiden/2-Minutes-To-Midnight-v2.mp3	608
3597	2 Minutes To Midnight v3	\N	media/songs/Iron-Maiden/2-Minutes-To-Midnight-v3.mp3	608
3598	Aces High	\N	media/songs/Iron-Maiden/Aces-High.mp3	608
3599	Aces High v2	\N	media/songs/Iron-Maiden/Aces-High-v2.mp3	608
3600	Aces High v3	\N	media/songs/Iron-Maiden/Aces-High-v3.mp3	608
3601	Aces High v4	\N	media/songs/Iron-Maiden/Aces-High-v4.mp3	608
3602	Afraid To Shoot Strangers	\N	media/songs/Iron-Maiden/Afraid-To-Shoot-Strangers.mp3	608
3603	Alexander The Great	\N	media/songs/Iron-Maiden/Alexander-The-Great.mp3	608
3604	Be Quick Or Be Dead	\N	media/songs/Iron-Maiden/Be-Quick-Or-Be-Dead.mp3	608
3605	Blood Brothers	\N	media/songs/Iron-Maiden/Blood-Brothers.mp3	608
3606	Blood Brothers v2	\N	media/songs/Iron-Maiden/Blood-Brothers-v2.mp3	608
3607	Brave New World	\N	media/songs/Iron-Maiden/Brave-New-World.mp3	608
3608	Brighter Than A Thousand Suns	\N	media/songs/Iron-Maiden/Brighter-Than-A-Thousand-Suns.mp3	608
3609	Bring Your Daughter To The Slaughter	\N	media/songs/Iron-Maiden/Bring-Your-Daughter-To-The-Slaughter.mp3	608
3610	Bring Your Daughter To The Slaughter v2	\N	media/songs/Iron-Maiden/Bring-Your-Daughter-To-The-Slaughter-v2.mp3	608
3611	Can I Play With Madness	\N	media/songs/Iron-Maiden/Can-I-Play-With-Madness.mp3	608
3612	Can I Play With Madness v2	\N	media/songs/Iron-Maiden/Can-I-Play-With-Madness-v2.mp3	608
3613	Cani Play With Madness	\N	media/songs/Iron-Maiden/Cani-Play-With-Madness.mp3	608
3614	Caught Somewhere In Time	\N	media/songs/Iron-Maiden/Caught-Somewhere-In-Time.mp3	608
3615	Charlotte The Harlot	\N	media/songs/Iron-Maiden/Charlotte-The-Harlot.mp3	608
3616	Dance Of Death	\N	media/songs/Iron-Maiden/Dance-Of-Death.mp3	608
3617	Dance Of Death Live	\N	media/songs/Iron-Maiden/Dance-Of-Death-Live.mp3	608
3618	Dance Of Death v2	\N	media/songs/Iron-Maiden/Dance-Of-Death-v2.mp3	608
3619	Different World	\N	media/songs/Iron-Maiden/Different-World.mp3	608
3620	Drifter	\N	media/songs/Iron-Maiden/Drifter.mp3	608
3621	Fear Of The Dark	\N	media/songs/Iron-Maiden/Fear-Of-The-Dark.mp3	608
3622	Fear Of The Dark Live	\N	media/songs/Iron-Maiden/Fear-Of-The-Dark-Live.mp3	608
3623	Fear Of The Dark v2	\N	media/songs/Iron-Maiden/Fear-Of-The-Dark-v2.mp3	608
3624	Fear Of The Dark v3	\N	media/songs/Iron-Maiden/Fear-Of-The-Dark-v3.mp3	608
3625	Flash Of The Blade	\N	media/songs/Iron-Maiden/Flash-Of-The-Blade.mp3	608
3626	Flight Of Icarus	\N	media/songs/Iron-Maiden/Flight-Of-Icarus.mp3	608
3627	Flight Of Icarus v2	\N	media/songs/Iron-Maiden/Flight-Of-Icarus-v2.mp3	608
3628	Flight Of Icarus v3	\N	media/songs/Iron-Maiden/Flight-Of-Icarus-v3.mp3	608
3629	Flight Of Icarus v4	\N	media/songs/Iron-Maiden/Flight-Of-Icarus-v4.mp3	608
3630	Futureal	\N	media/songs/Iron-Maiden/Futureal.mp3	608
3631	Genghis Khan	\N	media/songs/Iron-Maiden/Genghis-Khan.mp3	608
3632	Ghost Of The Navigator	\N	media/songs/Iron-Maiden/Ghost-Of-The-Navigator.mp3	608
3633	Hallowed Be The Name	\N	media/songs/Iron-Maiden/Hallowed-Be-The-Name.mp3	608
3634	Hallowed Be Thy Name	\N	media/songs/Iron-Maiden/Hallowed-Be-Thy-Name.mp3	608
3635	Hallowed Be Thy Name Live	\N	media/songs/Iron-Maiden/Hallowed-Be-Thy-Name-Live.mp3	608
3636	Hallowed Be Thy Name v2	\N	media/songs/Iron-Maiden/Hallowed-Be-Thy-Name-v2.mp3	608
3637	Hallowed Be Thy Name v3	\N	media/songs/Iron-Maiden/Hallowed-Be-Thy-Name-v3.mp3	608
3638	Hallowed Be Thy Name v4	\N	media/songs/Iron-Maiden/Hallowed-Be-Thy-Name-v4.mp3	608
3639	Heaven Can Wait	\N	media/songs/Iron-Maiden/Heaven-Can-Wait.mp3	608
3640	Ides Of March	\N	media/songs/Iron-Maiden/Ides-Of-March.mp3	608
3641	Ides Of March v2	\N	media/songs/Iron-Maiden/Ides-Of-March-v2.mp3	608
3642	Infinite Dreams	\N	media/songs/Iron-Maiden/Infinite-Dreams.mp3	608
3643	Infinite Dreams v2	\N	media/songs/Iron-Maiden/Infinite-Dreams-v2.mp3	608
3644	Innocent Exile	\N	media/songs/Iron-Maiden/Innocent-Exile.mp3	608
3645	Invaders	\N	media/songs/Iron-Maiden/Invaders.mp3	608
3646	Iron Maiden	\N	media/songs/Iron-Maiden/Iron-Maiden.mp3	608
3647	Iron Maiden Live	\N	media/songs/Iron-Maiden/Iron-Maiden-Live.mp3	608
3648	Journeyman	\N	media/songs/Iron-Maiden/Journeyman.mp3	608
3649	Killers	\N	media/songs/Iron-Maiden/Killers.mp3	608
3650	Killers v2	\N	media/songs/Iron-Maiden/Killers-v2.mp3	608
3651	Loneliness Of The Long Distance Runner	\N	media/songs/Iron-Maiden/Loneliness-Of-The-Long-Distance-Runner.mp3	608
3652	Loneliness Of The Long Distance Runner v2	\N	media/songs/Iron-Maiden/Loneliness-Of-The-Long-Distance-Runner-v2.mp3	608
3653	Losfer Words	\N	media/songs/Iron-Maiden/Losfer-Words.mp3	608
3654	Losfer Words v2	\N	media/songs/Iron-Maiden/Losfer-Words-v2.mp3	608
3655	Moonchild	\N	media/songs/Iron-Maiden/Moonchild.mp3	608
3656	Murders In The Rue Morgue	\N	media/songs/Iron-Maiden/Murders-In-The-Rue-Morgue.mp3	608
3657	No More Lies	\N	media/songs/Iron-Maiden/No-More-Lies.mp3	608
3658	Out Of The Silent Planet	\N	media/songs/Iron-Maiden/Out-Of-The-Silent-Planet.mp3	608
3659	Paschendale	\N	media/songs/Iron-Maiden/Paschendale.mp3	608
3660	Phantom Of The Opera	\N	media/songs/Iron-Maiden/Phantom-Of-The-Opera.mp3	608
3661	Phantom Of The Opera v2	\N	media/songs/Iron-Maiden/Phantom-Of-The-Opera-v2.mp3	608
3662	Phantom Of The Opera v3	\N	media/songs/Iron-Maiden/Phantom-Of-The-Opera-v3.mp3	608
3663	Powerslave	\N	media/songs/Iron-Maiden/Powerslave.mp3	608
3664	Powerslave v2	\N	media/songs/Iron-Maiden/Powerslave-v2.mp3	608
3665	Powerslave v3	\N	media/songs/Iron-Maiden/Powerslave-v3.mp3	608
3666	Powerslave v4	\N	media/songs/Iron-Maiden/Powerslave-v4.mp3	608
3667	Powerslave v5	\N	media/songs/Iron-Maiden/Powerslave-v5.mp3	608
3668	Prowler	\N	media/songs/Iron-Maiden/Prowler.mp3	608
3669	Purgatory	\N	media/songs/Iron-Maiden/Purgatory.mp3	608
3670	Quest Of Fire	\N	media/songs/Iron-Maiden/Quest-Of-Fire.mp3	608
3671	Rainmaker	\N	media/songs/Iron-Maiden/Rainmaker.mp3	608
3672	Reincarnation Of Benjamin Breeg	\N	media/songs/Iron-Maiden/Reincarnation-Of-Benjamin-Breeg.mp3	608
3673	Revelations	\N	media/songs/Iron-Maiden/Revelations.mp3	608
3674	Revelations v2	\N	media/songs/Iron-Maiden/Revelations-v2.mp3	608
3675	Rime Of The Ancient Mariner	\N	media/songs/Iron-Maiden/Rime-Of-The-Ancient-Mariner.mp3	608
3676	Rime Of The Ancient Mariner v2	\N	media/songs/Iron-Maiden/Rime-Of-The-Ancient-Mariner-v2.mp3	608
3677	Run To The Hills	\N	media/songs/Iron-Maiden/Run-To-The-Hills.mp3	608
3678	Run To The Hills v2	\N	media/songs/Iron-Maiden/Run-To-The-Hills-v2.mp3	608
3679	Run To The Hills v3	\N	media/songs/Iron-Maiden/Run-To-The-Hills-v3.mp3	608
3680	Run To The Hills v4	\N	media/songs/Iron-Maiden/Run-To-The-Hills-v4.mp3	608
3681	Run To The Hills v5	\N	media/songs/Iron-Maiden/Run-To-The-Hills-v5.mp3	608
3682	Run To The Hills v6	\N	media/songs/Iron-Maiden/Run-To-The-Hills-v6.mp3	608
3683	Running Free	\N	media/songs/Iron-Maiden/Running-Free.mp3	608
3684	Running Free Live	\N	media/songs/Iron-Maiden/Running-Free-Live.mp3	608
3685	Running Free v2	\N	media/songs/Iron-Maiden/Running-Free-v2.mp3	608
3686	Sign Of The Cross	\N	media/songs/Iron-Maiden/Sign-Of-The-Cross.mp3	608
3687	Stranger In A Strange Land	\N	media/songs/Iron-Maiden/Stranger-In-A-Strange-Land.mp3	608
3688	Stranger In A Strangeland	\N	media/songs/Iron-Maiden/Stranger-In-A-Strangeland.mp3	608
3689	The Clairvoyant	\N	media/songs/Iron-Maiden/The-Clairvoyant.mp3	608
3690	The Clairvoyant v2	\N	media/songs/Iron-Maiden/The-Clairvoyant-v2.mp3	608
3691	The Duellists	\N	media/songs/Iron-Maiden/The-Duellists.mp3	608
3692	The Fallen Angel	\N	media/songs/Iron-Maiden/The-Fallen-Angel.mp3	608
3693	The Number Of The Beast	\N	media/songs/Iron-Maiden/The-Number-Of-The-Beast.mp3	608
3694	The Number Of The Beast v2	\N	media/songs/Iron-Maiden/The-Number-Of-The-Beast-v2.mp3	608
3695	The Number Of The Beast v3	\N	media/songs/Iron-Maiden/The-Number-Of-The-Beast-v3.mp3	608
3696	The Number Of The Beast v4	\N	media/songs/Iron-Maiden/The-Number-Of-The-Beast-v4.mp3	608
3697	The Prisoner	\N	media/songs/Iron-Maiden/The-Prisoner.mp3	608
3698	The Prisoner v2	\N	media/songs/Iron-Maiden/The-Prisoner-v2.mp3	608
3699	The Trooper	\N	media/songs/Iron-Maiden/The-Trooper.mp3	608
3700	The Trooper v2	\N	media/songs/Iron-Maiden/The-Trooper-v2.mp3	608
3701	The Trooper v3	\N	media/songs/Iron-Maiden/The-Trooper-v3.mp3	608
3702	The Trooper v4	\N	media/songs/Iron-Maiden/The-Trooper-v4.mp3	608
3703	The Trooper v5	\N	media/songs/Iron-Maiden/The-Trooper-v5.mp3	608
3704	The Trooper v6	\N	media/songs/Iron-Maiden/The-Trooper-v6.mp3	608
3705	The Trooper v7	\N	media/songs/Iron-Maiden/The-Trooper-v7.mp3	608
3706	The Wicker Man	\N	media/songs/Iron-Maiden/The-Wicker-Man.mp3	608
3707	The Wicker Man v2	\N	media/songs/Iron-Maiden/The-Wicker-Man-v2.mp3	608
3708	The Wicker Man v3	\N	media/songs/Iron-Maiden/The-Wicker-Man-v3.mp3	608
3709	The Wicker Man v4	\N	media/songs/Iron-Maiden/The-Wicker-Man-v4.mp3	608
3710	Transylvania	\N	media/songs/Iron-Maiden/Transylvania.mp3	608
3711	Transylvania v2	\N	media/songs/Iron-Maiden/Transylvania-v2.mp3	608
3712	Wasted Years	\N	media/songs/Iron-Maiden/Wasted-Years.mp3	608
3713	Wasted Years v2	\N	media/songs/Iron-Maiden/Wasted-Years-v2.mp3	608
3714	Wasted Years v3	\N	media/songs/Iron-Maiden/Wasted-Years-v3.mp3	608
3715	Wasted Years v4	\N	media/songs/Iron-Maiden/Wasted-Years-v4.mp3	608
3716	Wasted Years v5	\N	media/songs/Iron-Maiden/Wasted-Years-v5.mp3	608
3717	Wasted Years v6	\N	media/songs/Iron-Maiden/Wasted-Years-v6.mp3	608
3718	Wasting Love	\N	media/songs/Iron-Maiden/Wasting-Love.mp3	608
3719	Wasting Love Live	\N	media/songs/Iron-Maiden/Wasting-Love-Live.mp3	608
3720	Wasting Love v2	\N	media/songs/Iron-Maiden/Wasting-Love-v2.mp3	608
3721	Where Eagles Dare	\N	media/songs/Iron-Maiden/Where-Eagles-Dare.mp3	608
3722	Wrathchild	\N	media/songs/Iron-Maiden/Wrathchild.mp3	608
3723	Wrathchild v2	\N	media/songs/Iron-Maiden/Wrathchild-v2.mp3	608
3724	Wrathchild v3	\N	media/songs/Iron-Maiden/Wrathchild-v3.mp3	608
3725	Wrathchild v4	\N	media/songs/Iron-Maiden/Wrathchild-v4.mp3	608
3726	Blues In D	\N	media/songs/J--Regali/Blues-In-D.mp3	609
3727	Centerfold	\N	media/songs/J-Geils-Band/Centerfold.mp3	610
3728	Centerfold v2	\N	media/songs/J-Geils-Band/Centerfold-v2.mp3	610
3729	Freeze Frame	\N	media/songs/J-Geils-Band/Freeze-Frame.mp3	610
3730	Bad Things	\N	media/songs/Jace-Everett/Bad-Things.mp3	611
3731	Banana Pancakes	\N	media/songs/Jack-Johnson/Banana-Pancakes.mp3	612
3732	Banana Pancakes v2	\N	media/songs/Jack-Johnson/Banana-Pancakes-v2.mp3	612
3733	Flake	\N	media/songs/Jack-Johnson/Flake.mp3	612
3734	Flake v2	\N	media/songs/Jack-Johnson/Flake-v2.mp3	612
3735	Sitting Waiting Wishing	\N	media/songs/Jack-Johnson/Sitting-Waiting-Wishing.mp3	612
3736	Taylor	\N	media/songs/Jack-Johnson/Taylor.mp3	612
3737	Taylor v2	\N	media/songs/Jack-Johnson/Taylor-v2.mp3	612
3738	Another Way To Die	\N	media/songs/Jack-White-And-Alicia-Keys/Another-Way-To-Die.mp3	613
3739	Abc	\N	media/songs/Jackson-5/Abc.mp3	614
3740	Abc v2	\N	media/songs/Jackson-5/Abc-v2.mp3	614
3741	I Want You Back	\N	media/songs/Jackson-5/I-Want-You-Back.mp3	614
3742	Quand On Na Que Lamour	\N	media/songs/Jacques-Brel/Quand-On-Na-Que-Lamour.mp3	615
3743	Il Est Cinq Heures Paris Seveille	\N	media/songs/Jacques-Dutronc/Il-Est-Cinq-Heures-Paris-Seveille.mp3	616
3744	La Fille Du Pere Noel	\N	media/songs/Jacques-Dutronc/La-Fille-Du-Pere-Noel.mp3	616
3745	12 Bar Blues	\N	media/songs/Jam-Tracks/12-Bar-Blues.mp3	617
3746	12 Bar Blues Progression	\N	media/songs/Jam-Tracks/12-Bar-Blues-Progression.mp3	617
3747	12 Bar Blues Progression v2	\N	media/songs/Jam-Tracks/12-Bar-Blues-Progression-v2.mp3	617
3748	12 Bar Blues Rock	\N	media/songs/Jam-Tracks/12-Bar-Blues-Rock.mp3	617
3749	12 Bar Boogie E	\N	media/songs/Jam-Tracks/12-Bar-Boogie-E.mp3	617
3750	2 Slow	\N	media/songs/Jam-Tracks/2-Slow.mp3	617
3751	3s Wild	\N	media/songs/Jam-Tracks/3s-Wild.mp3	617
3752	50s Rock	\N	media/songs/Jam-Tracks/50s-Rock.mp3	617
3753	70s Rock	\N	media/songs/Jam-Tracks/70s-Rock.mp3	617
3754	80s Ballad	\N	media/songs/Jam-Tracks/80s-Ballad.mp3	617
3755	80s Em Jam	\N	media/songs/Jam-Tracks/80s-Em-Jam.mp3	617
3756	80s Rock	\N	media/songs/Jam-Tracks/80s-Rock.mp3	617
3757	80s Rock Ballad In D Minor	\N	media/songs/Jam-Tracks/80s-Rock-Ballad-In-D-Minor.mp3	617
3758	80s Rock Ballad Jam In Dm	\N	media/songs/Jam-Tracks/80s-Rock-Ballad-Jam-In-Dm.mp3	617
3759	A A La Santana	\N	media/songs/Jam-Tracks/A-A-La-Santana.mp3	617
3760	A Blues	\N	media/songs/Jam-Tracks/A-Blues.mp3	617
3761	A Dorian	\N	media/songs/Jam-Tracks/A-Dorian.mp3	617
3762	A Dorian Jam	\N	media/songs/Jam-Tracks/A-Dorian-Jam.mp3	617
3763	A Minor Jam	\N	media/songs/Jam-Tracks/A-Minor-Jam.mp3	617
3764	A Minor Jam v2	\N	media/songs/Jam-Tracks/A-Minor-Jam-v2.mp3	617
3765	Acoustic Blues	\N	media/songs/Jam-Tracks/Acoustic-Blues.mp3	617
3766	Acoustic Blues A	\N	media/songs/Jam-Tracks/Acoustic-Blues-A.mp3	617
3767	Acoustic Blues v2	\N	media/songs/Jam-Tracks/Acoustic-Blues-v2.mp3	617
3768	Acoutic Blues In G	\N	media/songs/Jam-Tracks/Acoutic-Blues-In-G.mp3	617
3769	Aeolian Jam	\N	media/songs/Jam-Tracks/Aeolian-Jam.mp3	617
3770	African Fusion	\N	media/songs/Jam-Tracks/African-Fusion.mp3	617
3771	Alt Meets Funk	\N	media/songs/Jam-Tracks/Alt-Meets-Funk.mp3	617
3772	Am Blues Jam	\N	media/songs/Jam-Tracks/Am-Blues-Jam.mp3	617
3773	Another Blues In G	\N	media/songs/Jam-Tracks/Another-Blues-In-G.mp3	617
3774	Aolian	\N	media/songs/Jam-Tracks/Aolian.mp3	617
3775	April Mae June	\N	media/songs/Jam-Tracks/April-Mae-June.mp3	617
3776	B Flat Blues	\N	media/songs/Jam-Tracks/B-Flat-Blues.mp3	617
3777	Bad Dog Blues	\N	media/songs/Jam-Tracks/Bad-Dog-Blues.mp3	617
3778	Balada Em	\N	media/songs/Jam-Tracks/Balada-Em.mp3	617
3779	Ballad	\N	media/songs/Jam-Tracks/Ballad.mp3	617
3780	Ballad Of Gc101	\N	media/songs/Jam-Tracks/Ballad-Of-Gc101.mp3	617
3781	Bb Blues	\N	media/songs/Jam-Tracks/Bb-Blues.mp3	617
3782	Been There  Done That	\N	media/songs/Jam-Tracks/Been-There--Done-That.mp3	617
3783	Blues	\N	media/songs/Jam-Tracks/Blues.mp3	617
3784	Blues 6x8 In C	\N	media/songs/Jam-Tracks/Blues-6x8-In-C.mp3	617
3785	Blues A	\N	media/songs/Jam-Tracks/Blues-A.mp3	617
3786	Blues Alegre E	\N	media/songs/Jam-Tracks/Blues-Alegre-E.mp3	617
3787	Blues Backing	\N	media/songs/Jam-Tracks/Blues-Backing.mp3	617
3788	Blues Backing In Am	\N	media/songs/Jam-Tracks/Blues-Backing-In-Am.mp3	617
3789	Blues Bm	\N	media/songs/Jam-Tracks/Blues-Bm.mp3	617
3790	Blues Boogie	\N	media/songs/Jam-Tracks/Blues-Boogie.mp3	617
3791	Blues E	\N	media/songs/Jam-Tracks/Blues-E.mp3	617
3792	Blues Funk	\N	media/songs/Jam-Tracks/Blues-Funk.mp3	617
3793	Blues Groove In D	\N	media/songs/Jam-Tracks/Blues-Groove-In-D.mp3	617
3794	Blues Harp	\N	media/songs/Jam-Tracks/Blues-Harp.mp3	617
3795	Blues In A	\N	media/songs/Jam-Tracks/Blues-In-A.mp3	617
3796	Blues In A Major	\N	media/songs/Jam-Tracks/Blues-In-A-Major.mp3	617
3797	Blues In C	\N	media/songs/Jam-Tracks/Blues-In-C.mp3	617
3798	Blues In C v2	\N	media/songs/Jam-Tracks/Blues-In-C-v2.mp3	617
3799	Blues In Cm	\N	media/songs/Jam-Tracks/Blues-In-Cm.mp3	617
3800	Blues In D	\N	media/songs/Jam-Tracks/Blues-In-D.mp3	617
3801	Blues In D Major	\N	media/songs/Jam-Tracks/Blues-In-D-Major.mp3	617
3802	Blues In G	\N	media/songs/Jam-Tracks/Blues-In-G.mp3	617
3803	Blues In G v2	\N	media/songs/Jam-Tracks/Blues-In-G-v2.mp3	617
3804	Blues In G v3	\N	media/songs/Jam-Tracks/Blues-In-G-v3.mp3	617
3805	Blues Jam	\N	media/songs/Jam-Tracks/Blues-Jam.mp3	617
3806	Blues Jam Boffaman Key A	\N	media/songs/Jam-Tracks/Blues-Jam-Boffaman-Key-A.mp3	617
3807	Blues Jam In C	\N	media/songs/Jam-Tracks/Blues-Jam-In-C.mp3	617
3808	Blues Jamtrack A	\N	media/songs/Jam-Tracks/Blues-Jamtrack-A.mp3	617
3809	Blues Key A	\N	media/songs/Jam-Tracks/Blues-Key-A.mp3	617
3810	Blues Key E	\N	media/songs/Jam-Tracks/Blues-Key-E.mp3	617
3811	Blues Medio Tiempo Em	\N	media/songs/Jam-Tracks/Blues-Medio-Tiempo-Em.mp3	617
3812	Blues Rapido Em	\N	media/songs/Jam-Tracks/Blues-Rapido-Em.mp3	617
3813	Blues Rock	\N	media/songs/Jam-Tracks/Blues-Rock.mp3	617
3814	Blues Rock In A	\N	media/songs/Jam-Tracks/Blues-Rock-In-A.mp3	617
3815	Blues Rock In E	\N	media/songs/Jam-Tracks/Blues-Rock-In-E.mp3	617
3816	Blues Rock Shuffle In A	\N	media/songs/Jam-Tracks/Blues-Rock-Shuffle-In-A.mp3	617
3817	Blues Shuffle	\N	media/songs/Jam-Tracks/Blues-Shuffle.mp3	617
3818	Blues Shuffle G	\N	media/songs/Jam-Tracks/Blues-Shuffle-G.mp3	617
3819	Blues Shuffle In A	\N	media/songs/Jam-Tracks/Blues-Shuffle-In-A.mp3	617
3820	Blues Shuffle In A v2	\N	media/songs/Jam-Tracks/Blues-Shuffle-In-A-v2.mp3	617
3821	Blues Shuffle In C	\N	media/songs/Jam-Tracks/Blues-Shuffle-In-C.mp3	617
3822	Blues Shuffle In E	\N	media/songs/Jam-Tracks/Blues-Shuffle-In-E.mp3	617
3823	Blues Shuffle In F	\N	media/songs/Jam-Tracks/Blues-Shuffle-In-F.mp3	617
3824	Blues Shuffle In G	\N	media/songs/Jam-Tracks/Blues-Shuffle-In-G.mp3	617
3825	Blues Shuffle v2	\N	media/songs/Jam-Tracks/Blues-Shuffle-v2.mp3	617
3826	Blues Slow Jam	\N	media/songs/Jam-Tracks/Blues-Slow-Jam.mp3	617
3827	Blues Soul	\N	media/songs/Jam-Tracks/Blues-Soul.mp3	617
3828	Blues Swingago	\N	media/songs/Jam-Tracks/Blues-Swingago.mp3	617
3829	Blues Track	\N	media/songs/Jam-Tracks/Blues-Track.mp3	617
3830	Blues v2	\N	media/songs/Jam-Tracks/Blues-v2.mp3	617
3831	Blues Waltz	\N	media/songs/Jam-Tracks/Blues-Waltz.mp3	617
3832	Blues Without Solo Guitar A	\N	media/songs/Jam-Tracks/Blues-Without-Solo-Guitar-A.mp3	617
3833	Bm Slow Blues	\N	media/songs/Jam-Tracks/Bm-Slow-Blues.mp3	617
3834	Bm Slow Blues v2	\N	media/songs/Jam-Tracks/Bm-Slow-Blues-v2.mp3	617
3835	Bo Diddley Blues	\N	media/songs/Jam-Tracks/Bo-Diddley-Blues.mp3	617
3836	Bo Diddley Style	\N	media/songs/Jam-Tracks/Bo-Diddley-Style.mp3	617
3837	Boardners Time	\N	media/songs/Jam-Tracks/Boardners-Time.mp3	617
3838	Boogie In E	\N	media/songs/Jam-Tracks/Boogie-In-E.mp3	617
3839	Boogie Shuffle Em	\N	media/songs/Jam-Tracks/Boogie-Shuffle-Em.mp3	617
3840	Breaking Down Blues	\N	media/songs/Jam-Tracks/Breaking-Down-Blues.mp3	617
3841	Bring On Da Funk	\N	media/songs/Jam-Tracks/Bring-On-Da-Funk.mp3	617
3842	Bucket O Rocks	\N	media/songs/Jam-Tracks/Bucket-O-Rocks.mp3	617
3843	C Blues Jam	\N	media/songs/Jam-Tracks/C-Blues-Jam.mp3	617
3844	Chicago Blues	\N	media/songs/Jam-Tracks/Chicago-Blues.mp3	617
3845	Chicago Blues G	\N	media/songs/Jam-Tracks/Chicago-Blues-G.mp3	617
3846	Chicago Blues v2	\N	media/songs/Jam-Tracks/Chicago-Blues-v2.mp3	617
3847	Chuck Berry Blues	\N	media/songs/Jam-Tracks/Chuck-Berry-Blues.mp3	617
3848	Claptonesque Ballad	\N	media/songs/Jam-Tracks/Claptonesque-Ballad.mp3	617
3849	Classic Rock Backing	\N	media/songs/Jam-Tracks/Classic-Rock-Backing.mp3	617
3850	Classic Rock Ballad	\N	media/songs/Jam-Tracks/Classic-Rock-Ballad.mp3	617
3851	Clear Road Blues	\N	media/songs/Jam-Tracks/Clear-Road-Blues.mp3	617
3852	Cloudy	\N	media/songs/Jam-Tracks/Cloudy.mp3	617
3853	Cm Blues	\N	media/songs/Jam-Tracks/Cm-Blues.mp3	617
3854	Concrete Skies	\N	media/songs/Jam-Tracks/Concrete-Skies.mp3	617
3855	Contemporary Jazz	\N	media/songs/Jam-Tracks/Contemporary-Jazz.mp3	617
3856	Crazy Not Broken	\N	media/songs/Jam-Tracks/Crazy-Not-Broken.mp3	617
3857	Crossroads Style Blues	\N	media/songs/Jam-Tracks/Crossroads-Style-Blues.mp3	617
3858	Dear Jay	\N	media/songs/Jam-Tracks/Dear-Jay.mp3	617
3859	Death Creeps	\N	media/songs/Jam-Tracks/Death-Creeps.mp3	617
3860	Deja Blue	\N	media/songs/Jam-Tracks/Deja-Blue.mp3	617
3861	Dirty Boyz	\N	media/songs/Jam-Tracks/Dirty-Boyz.mp3	617
3862	Disco Em	\N	media/songs/Jam-Tracks/Disco-Em.mp3	617
3863	Dm Jam	\N	media/songs/Jam-Tracks/Dm-Jam.mp3	617
3864	Dm Smoothness	\N	media/songs/Jam-Tracks/Dm-Smoothness.mp3	617
3865	Dominant Jazz	\N	media/songs/Jam-Tracks/Dominant-Jazz.mp3	617
3866	Domninant Scales	\N	media/songs/Jam-Tracks/Domninant-Scales.mp3	617
3867	Dont Be Late	\N	media/songs/Jam-Tracks/Dont-Be-Late.mp3	617
3868	Dont Mean A Thing	\N	media/songs/Jam-Tracks/Dont-Mean-A-Thing.mp3	617
3869	Doors Jam	\N	media/songs/Jam-Tracks/Doors-Jam.mp3	617
3870	Dream Circle	\N	media/songs/Jam-Tracks/Dream-Circle.mp3	617
3871	Driving On Casiotone	\N	media/songs/Jam-Tracks/Driving-On-Casiotone.mp3	617
3872	Drop D Jam	\N	media/songs/Jam-Tracks/Drop-D-Jam.mp3	617
3873	Drop Dead Blues	\N	media/songs/Jam-Tracks/Drop-Dead-Blues.mp3	617
3874	Dry County Solo Backing	\N	media/songs/Jam-Tracks/Dry-County-Solo-Backing.mp3	617
3875	E Dorian	\N	media/songs/Jam-Tracks/E-Dorian.mp3	617
3876	E Harmonic Minor Spanish Jam	\N	media/songs/Jam-Tracks/E-Harmonic-Minor-Spanish-Jam.mp3	617
3877	Early Chicago Blues In A	\N	media/songs/Jam-Tracks/Early-Chicago-Blues-In-A.mp3	617
3878	Easy Blues In A	\N	media/songs/Jam-Tracks/Easy-Blues-In-A.mp3	617
3879	Easy Blues In A v2	\N	media/songs/Jam-Tracks/Easy-Blues-In-A-v2.mp3	617
3880	Easy Blues In E	\N	media/songs/Jam-Tracks/Easy-Blues-In-E.mp3	617
3881	Electric Shuffle In A	\N	media/songs/Jam-Tracks/Electric-Shuffle-In-A.mp3	617
3882	Elton Ballad	\N	media/songs/Jam-Tracks/Elton-Ballad.mp3	617
3883	Em Rocker	\N	media/songs/Jam-Tracks/Em-Rocker.mp3	617
3884	Fast Blues In Bb	\N	media/songs/Jam-Tracks/Fast-Blues-In-Bb.mp3	617
3885	Filthy Blues In E	\N	media/songs/Jam-Tracks/Filthy-Blues-In-E.mp3	617
3886	Fleetwood Jam	\N	media/songs/Jam-Tracks/Fleetwood-Jam.mp3	617
3887	Flying High	\N	media/songs/Jam-Tracks/Flying-High.mp3	617
3888	For Some Fun	\N	media/songs/Jam-Tracks/For-Some-Fun.mp3	617
3889	Freddie King Blues In E	\N	media/songs/Jam-Tracks/Freddie-King-Blues-In-E.mp3	617
3890	Freddy King In E	\N	media/songs/Jam-Tracks/Freddy-King-In-E.mp3	617
3891	Funk	\N	media/songs/Jam-Tracks/Funk.mp3	617
3892	Funk Rock Backing	\N	media/songs/Jam-Tracks/Funk-Rock-Backing.mp3	617
3893	Funkrock	\N	media/songs/Jam-Tracks/Funkrock.mp3	617
3894	Funky A Flat	\N	media/songs/Jam-Tracks/Funky-A-Flat.mp3	617
3895	Funky Blues	\N	media/songs/Jam-Tracks/Funky-Blues.mp3	617
3896	Funky Blues C	\N	media/songs/Jam-Tracks/Funky-Blues-C.mp3	617
3897	Funky Blues G	\N	media/songs/Jam-Tracks/Funky-Blues-G.mp3	617
3898	Funky Blues In F	\N	media/songs/Jam-Tracks/Funky-Blues-In-F.mp3	617
3899	Funky Blues v2	\N	media/songs/Jam-Tracks/Funky-Blues-v2.mp3	617
3900	Funky Jam Boffaman Key A	\N	media/songs/Jam-Tracks/Funky-Jam-Boffaman-Key-A.mp3	617
3901	Funky Shuffle In G	\N	media/songs/Jam-Tracks/Funky-Shuffle-In-G.mp3	617
3902	Fusion Backing Track   For The Affair	\N	media/songs/Jam-Tracks/Fusion-Backing-Track---For-The-Affair.mp3	617
3903	Fusion Backing Track   Thinking Of Nicky	\N	media/songs/Jam-Tracks/Fusion-Backing-Track---Thinking-Of-Nicky.mp3	617
3904	Garage Rock Backing	\N	media/songs/Jam-Tracks/Garage-Rock-Backing.mp3	617
3905	Gary Moore Blues	\N	media/songs/Jam-Tracks/Gary-Moore-Blues.mp3	617
3906	Ghost Riders In The Sky	\N	media/songs/Jam-Tracks/Ghost-Riders-In-The-Sky.mp3	617
3907	Gilmour Rock	\N	media/songs/Jam-Tracks/Gilmour-Rock.mp3	617
3908	Ginger Pepper	\N	media/songs/Jam-Tracks/Ginger-Pepper.mp3	617
3909	Gnr Jam	\N	media/songs/Jam-Tracks/Gnr-Jam.mp3	617
3910	Gospel Blues In G	\N	media/songs/Jam-Tracks/Gospel-Blues-In-G.mp3	617
3911	Gospel Blues In G v2	\N	media/songs/Jam-Tracks/Gospel-Blues-In-G-v2.mp3	617
3912	Gracie	\N	media/songs/Jam-Tracks/Gracie.mp3	617
3913	Grunge Backing	\N	media/songs/Jam-Tracks/Grunge-Backing.mp3	617
3914	Guitar Jam Trax	\N	media/songs/Jam-Tracks/Guitar-Jam-Trax.mp3	617
3915	Ha Ha Ha	\N	media/songs/Jam-Tracks/Ha-Ha-Ha.mp3	617
3916	Hair Ballad	\N	media/songs/Jam-Tracks/Hair-Ballad.mp3	617
3917	Heavy Blues Diddey	\N	media/songs/Jam-Tracks/Heavy-Blues-Diddey.mp3	617
3918	Heavy Jam In A	\N	media/songs/Jam-Tracks/Heavy-Jam-In-A.mp3	617
3919	Heavy Melodico Em	\N	media/songs/Jam-Tracks/Heavy-Melodico-Em.mp3	617
3920	Heavy Metal Em	\N	media/songs/Jam-Tracks/Heavy-Metal-Em.mp3	617
3921	Holy Scubadiver	\N	media/songs/Jam-Tracks/Holy-Scubadiver.mp3	617
3922	I Do What I Want	\N	media/songs/Jam-Tracks/I-Do-What-I-Want.mp3	617
3923	Instrumental Rock Backing	\N	media/songs/Jam-Tracks/Instrumental-Rock-Backing.mp3	617
3924	Island Trails	\N	media/songs/Jam-Tracks/Island-Trails.mp3	617
3925	Jam	\N	media/songs/Jam-Tracks/Jam.mp3	617
3926	Jam Along With Yngwie	\N	media/songs/Jam-Tracks/Jam-Along-With-Yngwie.mp3	617
3927	Jam Backtrack	\N	media/songs/Jam-Tracks/Jam-Backtrack.mp3	617
3928	Jam With Vinnie Moore	\N	media/songs/Jam-Tracks/Jam-With-Vinnie-Moore.mp3	617
3929	Jamtrack	\N	media/songs/Jam-Tracks/Jamtrack.mp3	617
3930	Jamtrack v2	\N	media/songs/Jam-Tracks/Jamtrack-v2.mp3	617
3931	Jamtrack v3	\N	media/songs/Jam-Tracks/Jamtrack-v3.mp3	617
3932	Jamtrack v4	\N	media/songs/Jam-Tracks/Jamtrack-v4.mp3	617
3933	Jazz Blues In F	\N	media/songs/Jam-Tracks/Jazz-Blues-In-F.mp3	617
3934	Jazz Jam	\N	media/songs/Jam-Tracks/Jazz-Jam.mp3	617
3935	Jazzy Walking Bass	\N	media/songs/Jam-Tracks/Jazzy-Walking-Bass.mp3	617
3936	Jessie James	\N	media/songs/Jam-Tracks/Jessie-James.mp3	617
3937	Jingle Bells	\N	media/songs/Jam-Tracks/Jingle-Bells.mp3	617
3938	Jive Blues In A	\N	media/songs/Jam-Tracks/Jive-Blues-In-A.mp3	617
3939	Joe Zone	\N	media/songs/Jam-Tracks/Joe-Zone.mp3	617
3940	Johnny Winter Blues	\N	media/songs/Jam-Tracks/Johnny-Winter-Blues.mp3	617
3941	Johnny Winter Style Blues In Am	\N	media/songs/Jam-Tracks/Johnny-Winter-Style-Blues-In-Am.mp3	617
3942	Kotzen Style	\N	media/songs/Jam-Tracks/Kotzen-Style.mp3	617
3943	Krusty Rock	\N	media/songs/Jam-Tracks/Krusty-Rock.mp3	617
3944	Lazy Blues In A	\N	media/songs/Jam-Tracks/Lazy-Blues-In-A.mp3	617
3945	Led Zeppelin Style	\N	media/songs/Jam-Tracks/Led-Zeppelin-Style.mp3	617
3946	Little Wing Blues	\N	media/songs/Jam-Tracks/Little-Wing-Blues.mp3	617
3947	Lost In A Moment	\N	media/songs/Jam-Tracks/Lost-In-A-Moment.mp3	617
3948	Lw Pearson	\N	media/songs/Jam-Tracks/Lw-Pearson.mp3	617
3949	Maguila	\N	media/songs/Jam-Tracks/Maguila.mp3	617
3950	Make It Easy	\N	media/songs/Jam-Tracks/Make-It-Easy.mp3	617
3951	Make It Easy v2	\N	media/songs/Jam-Tracks/Make-It-Easy-v2.mp3	617
3952	Med Shuffle In A	\N	media/songs/Jam-Tracks/Med-Shuffle-In-A.mp3	617
3953	Medium Funky Blues	\N	media/songs/Jam-Tracks/Medium-Funky-Blues.mp3	617
3954	Mellow	\N	media/songs/Jam-Tracks/Mellow.mp3	617
3955	Mellow Ballad	\N	media/songs/Jam-Tracks/Mellow-Ballad.mp3	617
3956	Mellow Jam	\N	media/songs/Jam-Tracks/Mellow-Jam.mp3	617
3957	Memphis Blues In Bm	\N	media/songs/Jam-Tracks/Memphis-Blues-In-Bm.mp3	617
3958	Memphis Blues In Bm v2	\N	media/songs/Jam-Tracks/Memphis-Blues-In-Bm-v2.mp3	617
3959	Metal	\N	media/songs/Jam-Tracks/Metal.mp3	617
3960	Metal Backing	\N	media/songs/Jam-Tracks/Metal-Backing.mp3	617
3961	Metal Ballad Am	\N	media/songs/Jam-Tracks/Metal-Ballad-Am.mp3	617
3962	Metal Bounce	\N	media/songs/Jam-Tracks/Metal-Bounce.mp3	617
3963	Metal Dm Jam	\N	media/songs/Jam-Tracks/Metal-Dm-Jam.mp3	617
3964	Metal Head	\N	media/songs/Jam-Tracks/Metal-Head.mp3	617
3965	Metal Jam	\N	media/songs/Jam-Tracks/Metal-Jam.mp3	617
3966	Metalcore	\N	media/songs/Jam-Tracks/Metalcore.mp3	617
3967	Mile High Cafe	\N	media/songs/Jam-Tracks/Mile-High-Cafe.mp3	617
3968	Minor Blues In Bm	\N	media/songs/Jam-Tracks/Minor-Blues-In-Bm.mp3	617
3969	Minor Swing	\N	media/songs/Jam-Tracks/Minor-Swing.mp3	617
3970	Mob Man	\N	media/songs/Jam-Tracks/Mob-Man.mp3	617
3971	More Am Blues	\N	media/songs/Jam-Tracks/More-Am-Blues.mp3	617
3972	Never Ending Blues	\N	media/songs/Jam-Tracks/Never-Ending-Blues.mp3	617
3973	Nostalgia In Funky Time	\N	media/songs/Jam-Tracks/Nostalgia-In-Funky-Time.mp3	617
3974	O Come All Ye Faithful	\N	media/songs/Jam-Tracks/O-Come-All-Ye-Faithful.mp3	617
3975	On Down The Road	\N	media/songs/Jam-Tracks/On-Down-The-Road.mp3	617
3976	Peter Green Blues	\N	media/songs/Jam-Tracks/Peter-Green-Blues.mp3	617
3977	Plectrum Head	\N	media/songs/Jam-Tracks/Plectrum-Head.mp3	617
3978	Pop Rock	\N	media/songs/Jam-Tracks/Pop-Rock.mp3	617
3979	Poppy Shuffle In A	\N	media/songs/Jam-Tracks/Poppy-Shuffle-In-A.mp3	617
3980	Practice Track 01	\N	media/songs/Jam-Tracks/Practice-Track-01.mp3	617
3981	Practice Track 02	\N	media/songs/Jam-Tracks/Practice-Track-02.mp3	617
3982	Practice Track 03	\N	media/songs/Jam-Tracks/Practice-Track-03.mp3	617
3983	Practice Track 04	\N	media/songs/Jam-Tracks/Practice-Track-04.mp3	617
3984	Practice Track 05	\N	media/songs/Jam-Tracks/Practice-Track-05.mp3	617
3985	Practice Track 06	\N	media/songs/Jam-Tracks/Practice-Track-06.mp3	617
3986	Practice Track 07	\N	media/songs/Jam-Tracks/Practice-Track-07.mp3	617
3987	Practice Track 08	\N	media/songs/Jam-Tracks/Practice-Track-08.mp3	617
3988	Practice Track 09	\N	media/songs/Jam-Tracks/Practice-Track-09.mp3	617
3989	Practice Track 10	\N	media/songs/Jam-Tracks/Practice-Track-10.mp3	617
3990	Practice Track 11	\N	media/songs/Jam-Tracks/Practice-Track-11.mp3	617
3991	Practice Track 12	\N	media/songs/Jam-Tracks/Practice-Track-12.mp3	617
3992	Practice Track 13	\N	media/songs/Jam-Tracks/Practice-Track-13.mp3	617
3993	Practice Track 14	\N	media/songs/Jam-Tracks/Practice-Track-14.mp3	617
3994	Practice Track 15	\N	media/songs/Jam-Tracks/Practice-Track-15.mp3	617
3995	Practice Track 16	\N	media/songs/Jam-Tracks/Practice-Track-16.mp3	617
3996	Practice Track 17	\N	media/songs/Jam-Tracks/Practice-Track-17.mp3	617
3997	Practice Track 18	\N	media/songs/Jam-Tracks/Practice-Track-18.mp3	617
3998	Practice Track 19	\N	media/songs/Jam-Tracks/Practice-Track-19.mp3	617
3999	Practice Track 20	\N	media/songs/Jam-Tracks/Practice-Track-20.mp3	617
4000	Practice Tracks 1	\N	media/songs/Jam-Tracks/Practice-Tracks-1.mp3	617
4001	Practice Tracks 10	\N	media/songs/Jam-Tracks/Practice-Tracks-10.mp3	617
4002	Practice Tracks 11	\N	media/songs/Jam-Tracks/Practice-Tracks-11.mp3	617
4003	Practice Tracks 12	\N	media/songs/Jam-Tracks/Practice-Tracks-12.mp3	617
4004	Practice Tracks 13	\N	media/songs/Jam-Tracks/Practice-Tracks-13.mp3	617
4005	Practice Tracks 14	\N	media/songs/Jam-Tracks/Practice-Tracks-14.mp3	617
4006	Practice Tracks 15	\N	media/songs/Jam-Tracks/Practice-Tracks-15.mp3	617
4007	Practice Tracks 16	\N	media/songs/Jam-Tracks/Practice-Tracks-16.mp3	617
4008	Practice Tracks 17	\N	media/songs/Jam-Tracks/Practice-Tracks-17.mp3	617
4009	Practice Tracks 18	\N	media/songs/Jam-Tracks/Practice-Tracks-18.mp3	617
4010	Practice Tracks 19	\N	media/songs/Jam-Tracks/Practice-Tracks-19.mp3	617
4011	Practice Tracks 2	\N	media/songs/Jam-Tracks/Practice-Tracks-2.mp3	617
4012	Practice Tracks 20	\N	media/songs/Jam-Tracks/Practice-Tracks-20.mp3	617
4013	Practice Tracks 3	\N	media/songs/Jam-Tracks/Practice-Tracks-3.mp3	617
4014	Practice Tracks 4	\N	media/songs/Jam-Tracks/Practice-Tracks-4.mp3	617
4015	Practice Tracks 5	\N	media/songs/Jam-Tracks/Practice-Tracks-5.mp3	617
4016	Practice Tracks 6	\N	media/songs/Jam-Tracks/Practice-Tracks-6.mp3	617
4017	Practice Tracks 7	\N	media/songs/Jam-Tracks/Practice-Tracks-7.mp3	617
4018	Practice Tracks 8	\N	media/songs/Jam-Tracks/Practice-Tracks-8.mp3	617
4019	Practice Tracks 9	\N	media/songs/Jam-Tracks/Practice-Tracks-9.mp3	617
4020	Practice Trx	\N	media/songs/Jam-Tracks/Practice-Trx.mp3	617
4021	Practice Trx 01	\N	media/songs/Jam-Tracks/Practice-Trx-01.mp3	617
4022	Practice Trx 01 v2	\N	media/songs/Jam-Tracks/Practice-Trx-01-v2.mp3	617
4023	Practice Trx 02	\N	media/songs/Jam-Tracks/Practice-Trx-02.mp3	617
4024	Practice Trx 02 v2	\N	media/songs/Jam-Tracks/Practice-Trx-02-v2.mp3	617
4025	Practice Trx 03	\N	media/songs/Jam-Tracks/Practice-Trx-03.mp3	617
4026	Practice Trx 03 v2	\N	media/songs/Jam-Tracks/Practice-Trx-03-v2.mp3	617
4027	Practice Trx 04	\N	media/songs/Jam-Tracks/Practice-Trx-04.mp3	617
4028	Practice Trx 04 v2	\N	media/songs/Jam-Tracks/Practice-Trx-04-v2.mp3	617
4029	Practice Trx 05	\N	media/songs/Jam-Tracks/Practice-Trx-05.mp3	617
4030	Practice Trx 06	\N	media/songs/Jam-Tracks/Practice-Trx-06.mp3	617
4031	Practice Trx 07	\N	media/songs/Jam-Tracks/Practice-Trx-07.mp3	617
4032	Practice Trx 08	\N	media/songs/Jam-Tracks/Practice-Trx-08.mp3	617
4033	Practice Trx 09	\N	media/songs/Jam-Tracks/Practice-Trx-09.mp3	617
4034	Practice Trx 10	\N	media/songs/Jam-Tracks/Practice-Trx-10.mp3	617
4035	Practice Trx 11	\N	media/songs/Jam-Tracks/Practice-Trx-11.mp3	617
4036	Practice Trx 13	\N	media/songs/Jam-Tracks/Practice-Trx-13.mp3	617
4037	Practice Trx 14	\N	media/songs/Jam-Tracks/Practice-Trx-14.mp3	617
4038	Practice Trx 15	\N	media/songs/Jam-Tracks/Practice-Trx-15.mp3	617
4039	Practice Trx 16	\N	media/songs/Jam-Tracks/Practice-Trx-16.mp3	617
4040	Practice Trx 17	\N	media/songs/Jam-Tracks/Practice-Trx-17.mp3	617
4041	Practice Trx 18	\N	media/songs/Jam-Tracks/Practice-Trx-18.mp3	617
4042	Practice Trx 19	\N	media/songs/Jam-Tracks/Practice-Trx-19.mp3	617
4043	Practice Trx 20	\N	media/songs/Jam-Tracks/Practice-Trx-20.mp3	617
4044	Punk Pop Backing	\N	media/songs/Jam-Tracks/Punk-Pop-Backing.mp3	617
4045	Recado Bossa Nova	\N	media/songs/Jam-Tracks/Recado-Bossa-Nova.mp3	617
4046	Reflections	\N	media/songs/Jam-Tracks/Reflections.mp3	617
4047	Rider	\N	media/songs/Jam-Tracks/Rider.mp3	617
4048	Rippin Shuffle	\N	media/songs/Jam-Tracks/Rippin-Shuffle.mp3	617
4049	Rippin Shuffle v2	\N	media/songs/Jam-Tracks/Rippin-Shuffle-v2.mp3	617
4050	Robben Blues	\N	media/songs/Jam-Tracks/Robben-Blues.mp3	617
4051	Rock	\N	media/songs/Jam-Tracks/Rock.mp3	617
4052	Rock Ballad	\N	media/songs/Jam-Tracks/Rock-Ballad.mp3	617
4053	Rock Ballad v2	\N	media/songs/Jam-Tracks/Rock-Ballad-v2.mp3	617
4054	Rock Canero Em	\N	media/songs/Jam-Tracks/Rock-Canero-Em.mp3	617
4055	Rock Em	\N	media/songs/Jam-Tracks/Rock-Em.mp3	617
4056	Rock In Em	\N	media/songs/Jam-Tracks/Rock-In-Em.mp3	617
4057	Rock Jam	\N	media/songs/Jam-Tracks/Rock-Jam.mp3	617
4058	Rock Jam v2	\N	media/songs/Jam-Tracks/Rock-Jam-v2.mp3	617
4059	Rock Jam v3	\N	media/songs/Jam-Tracks/Rock-Jam-v3.mp3	617
4060	Rock N Roll Blues	\N	media/songs/Jam-Tracks/Rock-N-Roll-Blues.mp3	617
4061	Rock N Roll In E	\N	media/songs/Jam-Tracks/Rock-N-Roll-In-E.mp3	617
4062	Rock Shuffle	\N	media/songs/Jam-Tracks/Rock-Shuffle.mp3	617
4063	Rock Shuffle In A	\N	media/songs/Jam-Tracks/Rock-Shuffle-In-A.mp3	617
4064	Rockin Em	\N	media/songs/Jam-Tracks/Rockin-Em.mp3	617
4065	Rockin In E	\N	media/songs/Jam-Tracks/Rockin-In-E.mp3	617
4066	Rockin Jam In A	\N	media/songs/Jam-Tracks/Rockin-Jam-In-A.mp3	617
4067	Rolling Stones Jam	\N	media/songs/Jam-Tracks/Rolling-Stones-Jam.mp3	617
4068	Rolling Stones Style	\N	media/songs/Jam-Tracks/Rolling-Stones-Style.mp3	617
4069	Sad Melody	\N	media/songs/Jam-Tracks/Sad-Melody.mp3	617
4070	Shamans Blues	\N	media/songs/Jam-Tracks/Shamans-Blues.mp3	617
4071	Ship Captain Crew	\N	media/songs/Jam-Tracks/Ship-Captain-Crew.mp3	617
4072	Shuffle A	\N	media/songs/Jam-Tracks/Shuffle-A.mp3	617
4073	Shuffle Gm	\N	media/songs/Jam-Tracks/Shuffle-Gm.mp3	617
4074	Simple Shuffle	\N	media/songs/Jam-Tracks/Simple-Shuffle.mp3	617
4075	Slash Rock	\N	media/songs/Jam-Tracks/Slash-Rock.mp3	617
4076	Slash Rock v2	\N	media/songs/Jam-Tracks/Slash-Rock-v2.mp3	617
4077	Sloppy F	\N	media/songs/Jam-Tracks/Sloppy-F.mp3	617
4078	Slow 6x8 Blues In G	\N	media/songs/Jam-Tracks/Slow-6x8-Blues-In-G.mp3	617
4079	Slow Bb Jam	\N	media/songs/Jam-Tracks/Slow-Bb-Jam.mp3	617
4080	Slow Blues	\N	media/songs/Jam-Tracks/Slow-Blues.mp3	617
4081	Slow Blues Backing In E	\N	media/songs/Jam-Tracks/Slow-Blues-Backing-In-E.mp3	617
4082	Slow Blues Backing In E v2	\N	media/songs/Jam-Tracks/Slow-Blues-Backing-In-E-v2.mp3	617
4083	Slow Blues In A	\N	media/songs/Jam-Tracks/Slow-Blues-In-A.mp3	617
4084	Slow Blues In B Minor	\N	media/songs/Jam-Tracks/Slow-Blues-In-B-Minor.mp3	617
4085	Slow Blues In C	\N	media/songs/Jam-Tracks/Slow-Blues-In-C.mp3	617
4086	Slow Blues In E	\N	media/songs/Jam-Tracks/Slow-Blues-In-E.mp3	617
4087	Slow Blues In G	\N	media/songs/Jam-Tracks/Slow-Blues-In-G.mp3	617
4088	Slow Blues In G v2	\N	media/songs/Jam-Tracks/Slow-Blues-In-G-v2.mp3	617
4089	Slow Blues v2	\N	media/songs/Jam-Tracks/Slow-Blues-v2.mp3	617
4090	Slow Blues v3	\N	media/songs/Jam-Tracks/Slow-Blues-v3.mp3	617
4091	Slow Country	\N	media/songs/Jam-Tracks/Slow-Country.mp3	617
4092	Slow Country v2	\N	media/songs/Jam-Tracks/Slow-Country-v2.mp3	617
4093	Slow Minor 9 Blues	\N	media/songs/Jam-Tracks/Slow-Minor-9-Blues.mp3	617
4094	Slow Zeppelin Jam	\N	media/songs/Jam-Tracks/Slow-Zeppelin-Jam.mp3	617
4095	Slowblues	\N	media/songs/Jam-Tracks/Slowblues.mp3	617
4096	Slowrock	\N	media/songs/Jam-Tracks/Slowrock.mp3	617
4097	Smokey Blues	\N	media/songs/Jam-Tracks/Smokey-Blues.mp3	617
4099	Song To Cry	\N	media/songs/Jam-Tracks/Song-To-Cry.mp3	617
4100	Soon	\N	media/songs/Jam-Tracks/Soon.mp3	617
4101	Southern Rock	\N	media/songs/Jam-Tracks/Southern-Rock.mp3	617
4102	Srill Riffs	\N	media/songs/Jam-Tracks/Srill-Riffs.mp3	617
4103	Steve Ray E	\N	media/songs/Jam-Tracks/Steve-Ray-E.mp3	617
4104	Stevie Ray Blues	\N	media/songs/Jam-Tracks/Stevie-Ray-Blues.mp3	617
4105	Straight Minor Blues	\N	media/songs/Jam-Tracks/Straight-Minor-Blues.mp3	617
4106	Summertime Jam	\N	media/songs/Jam-Tracks/Summertime-Jam.mp3	617
4107	Sunny	\N	media/songs/Jam-Tracks/Sunny.mp3	617
4108	Sunset Saloon	\N	media/songs/Jam-Tracks/Sunset-Saloon.mp3	617
4109	Sweet Home Chicago	\N	media/songs/Jam-Tracks/Sweet-Home-Chicago.mp3	617
4110	T Bone Blues	\N	media/songs/Jam-Tracks/T-Bone-Blues.mp3	617
4111	Taptastic	\N	media/songs/Jam-Tracks/Taptastic.mp3	617
4112	Texas Shuffle In E	\N	media/songs/Jam-Tracks/Texas-Shuffle-In-E.mp3	617
4113	Texas Shuffle In E v2	\N	media/songs/Jam-Tracks/Texas-Shuffle-In-E-v2.mp3	617
4114	Thick And Thin	\N	media/songs/Jam-Tracks/Thick-And-Thin.mp3	617
4115	Thoughts Of Diana	\N	media/songs/Jam-Tracks/Thoughts-Of-Diana.mp3	617
4116	Time	\N	media/songs/Jam-Tracks/Time.mp3	617
4117	Top Gun Theme	\N	media/songs/Jam-Tracks/Top-Gun-Theme.mp3	617
4118	Track 01	\N	media/songs/Jam-Tracks/Track-01.mp3	617
4119	Track 02	\N	media/songs/Jam-Tracks/Track-02.mp3	617
4120	Track 03	\N	media/songs/Jam-Tracks/Track-03.mp3	617
4121	Track 04	\N	media/songs/Jam-Tracks/Track-04.mp3	617
4122	Track 06	\N	media/songs/Jam-Tracks/Track-06.mp3	617
4123	Track 07	\N	media/songs/Jam-Tracks/Track-07.mp3	617
4124	Track 08	\N	media/songs/Jam-Tracks/Track-08.mp3	617
4125	Track 09	\N	media/songs/Jam-Tracks/Track-09.mp3	617
4126	Track 10	\N	media/songs/Jam-Tracks/Track-10.mp3	617
4127	Track 11	\N	media/songs/Jam-Tracks/Track-11.mp3	617
4128	Track 12	\N	media/songs/Jam-Tracks/Track-12.mp3	617
4129	Track 13	\N	media/songs/Jam-Tracks/Track-13.mp3	617
4130	Track 14	\N	media/songs/Jam-Tracks/Track-14.mp3	617
4131	Track 15	\N	media/songs/Jam-Tracks/Track-15.mp3	617
4132	Track 16	\N	media/songs/Jam-Tracks/Track-16.mp3	617
4133	Track 17	\N	media/songs/Jam-Tracks/Track-17.mp3	617
4134	Track 18	\N	media/songs/Jam-Tracks/Track-18.mp3	617
4135	Track 19	\N	media/songs/Jam-Tracks/Track-19.mp3	617
4136	Track 20	\N	media/songs/Jam-Tracks/Track-20.mp3	617
4137	Track 21	\N	media/songs/Jam-Tracks/Track-21.mp3	617
4138	Track 22	\N	media/songs/Jam-Tracks/Track-22.mp3	617
4139	Traditional Jazz	\N	media/songs/Jam-Tracks/Traditional-Jazz.mp3	617
4140	Twelve Bar Rock N Roll Blues In C	\N	media/songs/Jam-Tracks/Twelve-Bar-Rock-N-Roll-Blues-In-C.mp3	617
4141	Tww	\N	media/songs/Jam-Tracks/Tww.mp3	617
4142	Uk Indie Backing	\N	media/songs/Jam-Tracks/Uk-Indie-Backing.mp3	617
4143	Up To Eleven	\N	media/songs/Jam-Tracks/Up-To-Eleven.mp3	617
4144	Vindas Place	\N	media/songs/Jam-Tracks/Vindas-Place.mp3	617
4145	Vinnie Moore Jam	\N	media/songs/Jam-Tracks/Vinnie-Moore-Jam.mp3	617
4146	White Stripes Jam	\N	media/songs/Jam-Tracks/White-Stripes-Jam.mp3	617
4147	White Stripes Style	\N	media/songs/Jam-Tracks/White-Stripes-Style.mp3	617
4148	Yet Another Blues In G	\N	media/songs/Jam-Tracks/Yet-Another-Blues-In-G.mp3	617
4149	Yngwie Jam	\N	media/songs/Jam-Tracks/Yngwie-Jam.mp3	617
4150	You Dont Know Me Well	\N	media/songs/Jam-Tracks/You-Dont-Know-Me-Well.mp3	617
4151	Zeppelin Blues Jam	\N	media/songs/Jam-Tracks/Zeppelin-Blues-Jam.mp3	617
4152	Zz Jam	\N	media/songs/Jam-Tracks/Zz-Jam.mp3	617
4153	Zz Top Style	\N	media/songs/Jam-Tracks/Zz-Top-Style.mp3	617
4154	Sit Down	\N	media/songs/James/Sit-Down.mp3	618
4155	Youre Beautiful	\N	media/songs/James-Blunt/Youre-Beautiful.mp3	619
4156	I Got You I Feel Good	\N	media/songs/James-Brown/I-Got-You-I-Feel-Good.mp3	620
4157	I Got You I Feel Good v2	\N	media/songs/James-Brown/I-Got-You-I-Feel-Good-v2.mp3	620
4158	I Got You I Feel Good v3	\N	media/songs/James-Brown/I-Got-You-I-Feel-Good-v3.mp3	620
4159	Funk 49	\N	media/songs/James-Gang/Funk-49.mp3	621
4160	Funk 49 v2	\N	media/songs/James-Gang/Funk-49-v2.mp3	621
4161	Walk Away	\N	media/songs/James-Gang/Walk-Away.mp3	621
4162	Walk Away v2	\N	media/songs/James-Gang/Walk-Away-v2.mp3	621
4163	Walk Away v3	\N	media/songs/James-Gang/Walk-Away-v3.mp3	621
4164	Love Foolosopy	\N	media/songs/Jamiraquai/Love-Foolosopy.mp3	622
4165	Been Caught Stealing	\N	media/songs/Janes-Addiction/Been-Caught-Stealing.mp3	623
4166	Irresistable Force	\N	media/songs/Janes-Addiction/Irresistable-Force.mp3	623
4167	Mountain Song	\N	media/songs/Janes-Addiction/Mountain-Song.mp3	623
4168	Mountain Song v2	\N	media/songs/Janes-Addiction/Mountain-Song-v2.mp3	623
4169	Stop	\N	media/songs/Janes-Addiction/Stop.mp3	623
4170	Stop v2	\N	media/songs/Janes-Addiction/Stop-v2.mp3	623
4171	Ted Just Admit It	\N	media/songs/Janes-Addiction/Ted-Just-Admit-It.mp3	623
4172	Black Cat	\N	media/songs/Janet-Jackson/Black-Cat.mp3	624
4173	Black Cat v2	\N	media/songs/Janet-Jackson/Black-Cat-v2.mp3	624
4174	Move Over	\N	media/songs/Janis-Joplin/Move-Over.mp3	625
4175	Piece Of My Heart	\N	media/songs/Janis-Joplin/Piece-Of-My-Heart.mp3	625
4176	Summertime	\N	media/songs/Janis-Joplin/Summertime.mp3	625
4177	Summertime v2	\N	media/songs/Janis-Joplin/Summertime-v2.mp3	625
4178	Crazy Town	\N	media/songs/Jason-Aldean/Crazy-Town.mp3	626
4179	Shes Country	\N	media/songs/Jason-Aldean/Shes-Country.mp3	626
4180	Air	\N	media/songs/Jason-Becker/Air.mp3	627
4181	Air v2	\N	media/songs/Jason-Becker/Air-v2.mp3	627
4182	Blue	\N	media/songs/Jason-Becker/Blue.mp3	627
4183	End Of The Beginning	\N	media/songs/Jason-Becker/End-Of-The-Beginning.mp3	627
4184	Perpetual Burn	\N	media/songs/Jason-Becker/Perpetual-Burn.mp3	627
4185	Perpetual Burn v2	\N	media/songs/Jason-Becker/Perpetual-Burn-v2.mp3	627
4186	Serrana Arpeggios	\N	media/songs/Jason-Becker/Serrana-Arpeggios.mp3	627
4187	Serrana Arpeggios v2	\N	media/songs/Jason-Becker/Serrana-Arpeggios-v2.mp3	627
4188	Dont Wanna Go Home	\N	media/songs/Jason-Derulo/Dont-Wanna-Go-Home.mp3	628
4189	El Vuelo Del Angel	\N	media/songs/Javier-Batiz/El-Vuelo-Del-Angel.mp3	629
4190	Juste Une Illusion	\N	media/songs/Jean-Louis-Aubert/Juste-Une-Illusion.mp3	630
4191	Air Blower	\N	media/songs/Jeff-Beck/Air-Blower.mp3	631
4192	Angel Footsteps	\N	media/songs/Jeff-Beck/Angel-Footsteps.mp3	631
4193	Becks Bolero	\N	media/songs/Jeff-Beck/Becks-Bolero.mp3	631
4194	Big Block	\N	media/songs/Jeff-Beck/Big-Block.mp3	631
4195	Black Cat Moan	\N	media/songs/Jeff-Beck/Black-Cat-Moan.mp3	631
4196	Brush With The Blues	\N	media/songs/Jeff-Beck/Brush-With-The-Blues.mp3	631
4197	Cause We Ve Ended As Lovers	\N	media/songs/Jeff-Beck/Cause-We-Ve-Ended-As-Lovers.mp3	631
4198	Cause Weve Ended As Lovers	\N	media/songs/Jeff-Beck/Cause-Weve-Ended-As-Lovers.mp3	631
4199	Constipated Duck	\N	media/songs/Jeff-Beck/Constipated-Duck.mp3	631
4200	Definitely Maybe	\N	media/songs/Jeff-Beck/Definitely-Maybe.mp3	631
4201	Diamond Dust	\N	media/songs/Jeff-Beck/Diamond-Dust.mp3	631
4202	Freeway Jam	\N	media/songs/Jeff-Beck/Freeway-Jam.mp3	631
4203	Freeway Jam v2	\N	media/songs/Jeff-Beck/Freeway-Jam-v2.mp3	631
4204	Goin Down	\N	media/songs/Jeff-Beck/Goin-Down.mp3	631
4205	Goin Down v2	\N	media/songs/Jeff-Beck/Goin-Down-v2.mp3	631
4206	Going Down	\N	media/songs/Jeff-Beck/Going-Down.mp3	631
4207	Hi Ho Silver Lining	\N	media/songs/Jeff-Beck/Hi-Ho-Silver-Lining.mp3	631
4208	I Got To Have A Song	\N	media/songs/Jeff-Beck/I-Got-To-Have-A-Song.mp3	631
4209	Ice Cream Cakes	\N	media/songs/Jeff-Beck/Ice-Cream-Cakes.mp3	631
4210	Im So Proud	\N	media/songs/Jeff-Beck/Im-So-Proud.mp3	631
4211	Led Boots	\N	media/songs/Jeff-Beck/Led-Boots.mp3	631
4212	Led Boots v2	\N	media/songs/Jeff-Beck/Led-Boots-v2.mp3	631
4213	Let Me Love You	\N	media/songs/Jeff-Beck/Let-Me-Love-You.mp3	631
4214	Nadia	\N	media/songs/Jeff-Beck/Nadia.mp3	631
4215	People Get Ready	\N	media/songs/Jeff-Beck/People-Get-Ready.mp3	631
4216	Pump	\N	media/songs/Jeff-Beck/Pump.mp3	631
4217	Savoy	\N	media/songs/Jeff-Beck/Savoy.mp3	631
4218	Scatterbrain	\N	media/songs/Jeff-Beck/Scatterbrain.mp3	631
4219	Shes A Woman	\N	media/songs/Jeff-Beck/Shes-A-Woman.mp3	631
4220	Sugar Cane	\N	media/songs/Jeff-Beck/Sugar-Cane.mp3	631
4221	The Pump	\N	media/songs/Jeff-Beck/The-Pump.mp3	631
4222	Thelonius	\N	media/songs/Jeff-Beck/Thelonius.mp3	631
4223	Tonight Ill Be Staying Here With You	\N	media/songs/Jeff-Beck/Tonight-Ill-Be-Staying-Here-With-You.mp3	631
4224	You Know What I Mean	\N	media/songs/Jeff-Beck/You-Know-What-I-Mean.mp3	631
4225	Grace	\N	media/songs/Jeff-Buckley/Grace.mp3	632
4226	Confidence Man	\N	media/songs/Jeff-Healey/Confidence-Man.mp3	633
4227	Confidence Man v2	\N	media/songs/Jeff-Healey/Confidence-Man-v2.mp3	633
4228	While My Guitar Gently Weeps	\N	media/songs/Jeff-Healey/While-My-Guitar-Gently-Weeps.mp3	633
4230	Have You Seen The Saucers Live	\N	media/songs/Jefferson-Airplane/Have-You-Seen-The-Saucers-Live.mp3	635
4231	White Rabbit	\N	media/songs/Jefferson-Airplane/White-Rabbit.mp3	635
4232	Jane	\N	media/songs/Jefferson-Starship/Jane.mp3	636
4233	All The Things You Are	\N	media/songs/Jerome-Kern/All-The-Things-You-Are.mp3	637
4234	Great Balls Of Fire	\N	media/songs/Jerry-Lee-Lewis/Great-Balls-Of-Fire.mp3	638
4235	Alien Walker	\N	media/songs/Jerryc/Alien-Walker.mp3	639
4236	Canon Rock	\N	media/songs/Jerryc/Canon-Rock.mp3	639
4237	Im Alright	\N	media/songs/Jerryc/Im-Alright.mp3	639
4238	Rock On	\N	media/songs/Jerryc/Rock-On.mp3	639
4239	Wedding In The Dream	\N	media/songs/Jerryc/Wedding-In-The-Dream.mp3	639
4240	Whose Autumn	\N	media/songs/Jerryc/Whose-Autumn.mp3	639
4241	Beautiful Soul	\N	media/songs/Jesse-Mccartney/Beautiful-Soul.mp3	640
4242	Are You Gonna Be My Girl	\N	media/songs/Jet/Are-You-Gonna-Be-My-Girl.mp3	641
4243	Are You Gonna Be My Girl v2	\N	media/songs/Jet/Are-You-Gonna-Be-My-Girl-v2.mp3	641
4244	Are You Gonna Be My Girl v3	\N	media/songs/Jet/Are-You-Gonna-Be-My-Girl-v3.mp3	641
4245	Last Chance	\N	media/songs/Jet/Last-Chance.mp3	641
4246	Lazy Gun	\N	media/songs/Jet/Lazy-Gun.mp3	641
4247	Look What Youve Done	\N	media/songs/Jet/Look-What-Youve-Done.mp3	641
4248	Rollover Dj	\N	media/songs/Jet/Rollover-Dj.mp3	641
4249	Shes A Genious	\N	media/songs/Jet/Shes-A-Genious.mp3	641
4250	Aqualung	\N	media/songs/Jethro-Tull/Aqualung.mp3	642
4251	Aqualung v2	\N	media/songs/Jethro-Tull/Aqualung-v2.mp3	642
4252	Hymn 43	\N	media/songs/Jethro-Tull/Hymn-43.mp3	642
4253	Living In The Past	\N	media/songs/Jethro-Tull/Living-In-The-Past.mp3	642
4254	Locomotive Breath	\N	media/songs/Jethro-Tull/Locomotive-Breath.mp3	642
4255	Locomotive Breath v2	\N	media/songs/Jethro-Tull/Locomotive-Breath-v2.mp3	642
4256	Thick As A Brick	\N	media/songs/Jethro-Tull/Thick-As-A-Brick.mp3	642
4257	Aint No Tellin	\N	media/songs/Jimi-Hendrix/Aint-No-Tellin.mp3	643
4258	All Along The Watchtower	\N	media/songs/Jimi-Hendrix/All-Along-The-Watchtower.mp3	643
4259	All Along The Watchtower v2	\N	media/songs/Jimi-Hendrix/All-Along-The-Watchtower-v2.mp3	643
4260	All Along The Watchtower v3	\N	media/songs/Jimi-Hendrix/All-Along-The-Watchtower-v3.mp3	643
4261	All Along The Watchtower v4	\N	media/songs/Jimi-Hendrix/All-Along-The-Watchtower-v4.mp3	643
4262	All Along The Watchtower v5	\N	media/songs/Jimi-Hendrix/All-Along-The-Watchtower-v5.mp3	643
4263	All Along The Watchtower v6	\N	media/songs/Jimi-Hendrix/All-Along-The-Watchtower-v6.mp3	643
4264	Angel	\N	media/songs/Jimi-Hendrix/Angel.mp3	643
4265	Angel v2	\N	media/songs/Jimi-Hendrix/Angel-v2.mp3	643
4266	Are You Experienced	\N	media/songs/Jimi-Hendrix/Are-You-Experienced.mp3	643
4267	Bleeding Heart	\N	media/songs/Jimi-Hendrix/Bleeding-Heart.mp3	643
4268	Bleeding Heart v2	\N	media/songs/Jimi-Hendrix/Bleeding-Heart-v2.mp3	643
4269	Bold As Love	\N	media/songs/Jimi-Hendrix/Bold-As-Love.mp3	643
4270	Bold As Love v2	\N	media/songs/Jimi-Hendrix/Bold-As-Love-v2.mp3	643
4271	Bold As Love v3	\N	media/songs/Jimi-Hendrix/Bold-As-Love-v3.mp3	643
4272	Bold As Love v4	\N	media/songs/Jimi-Hendrix/Bold-As-Love-v4.mp3	643
4273	Born Under A Bad Sign	\N	media/songs/Jimi-Hendrix/Born-Under-A-Bad-Sign.mp3	643
4274	Born Under A Bad Sign v2	\N	media/songs/Jimi-Hendrix/Born-Under-A-Bad-Sign-v2.mp3	643
4275	Castles Made Of Sand	\N	media/songs/Jimi-Hendrix/Castles-Made-Of-Sand.mp3	643
4276	Changes	\N	media/songs/Jimi-Hendrix/Changes.mp3	643
4277	Changes v2	\N	media/songs/Jimi-Hendrix/Changes-v2.mp3	643
4278	Crosstown Traffic	\N	media/songs/Jimi-Hendrix/Crosstown-Traffic.mp3	643
4279	Crosstown Traffic v2	\N	media/songs/Jimi-Hendrix/Crosstown-Traffic-v2.mp3	643
4280	Drivin South	\N	media/songs/Jimi-Hendrix/Drivin-South.mp3	643
4281	Drivin South v2	\N	media/songs/Jimi-Hendrix/Drivin-South-v2.mp3	643
4282	Fire	\N	media/songs/Jimi-Hendrix/Fire.mp3	643
4283	Fire v2	\N	media/songs/Jimi-Hendrix/Fire-v2.mp3	643
4284	Fire v3	\N	media/songs/Jimi-Hendrix/Fire-v3.mp3	643
4285	Fire v4	\N	media/songs/Jimi-Hendrix/Fire-v4.mp3	643
4286	Fire v5	\N	media/songs/Jimi-Hendrix/Fire-v5.mp3	643
4287	Foxy Lady	\N	media/songs/Jimi-Hendrix/Foxy-Lady.mp3	643
4288	Foxy Lady v2	\N	media/songs/Jimi-Hendrix/Foxy-Lady-v2.mp3	643
4289	Foxy Lady v3	\N	media/songs/Jimi-Hendrix/Foxy-Lady-v3.mp3	643
4290	Foxy Lady v4	\N	media/songs/Jimi-Hendrix/Foxy-Lady-v4.mp3	643
4291	Freedom	\N	media/songs/Jimi-Hendrix/Freedom.mp3	643
4292	Gloria	\N	media/songs/Jimi-Hendrix/Gloria.mp3	643
4293	Hear My Train A Comin	\N	media/songs/Jimi-Hendrix/Hear-My-Train-A-Comin.mp3	643
4294	Hey Baby	\N	media/songs/Jimi-Hendrix/Hey-Baby.mp3	643
4295	Hey Joe	\N	media/songs/Jimi-Hendrix/Hey-Joe.mp3	643
4296	Hey Joe v2	\N	media/songs/Jimi-Hendrix/Hey-Joe-v2.mp3	643
4297	Hey Joe v3	\N	media/songs/Jimi-Hendrix/Hey-Joe-v3.mp3	643
4298	Highway Chile	\N	media/songs/Jimi-Hendrix/Highway-Chile.mp3	643
4299	Highway Chile v2	\N	media/songs/Jimi-Hendrix/Highway-Chile-v2.mp3	643
4300	If 6 Was 9	\N	media/songs/Jimi-Hendrix/If-6-Was-9.mp3	643
4301	Johnny B Goode	\N	media/songs/Jimi-Hendrix/Johnny-B-Goode.mp3	643
4302	Johnny B Goode Live	\N	media/songs/Jimi-Hendrix/Johnny-B-Goode-Live.mp3	643
4303	Killing Floor	\N	media/songs/Jimi-Hendrix/Killing-Floor.mp3	643
4304	Killing Floor v2	\N	media/songs/Jimi-Hendrix/Killing-Floor-v2.mp3	643
4305	Killing Floor v3	\N	media/songs/Jimi-Hendrix/Killing-Floor-v3.mp3	643
4306	Little Miss Lover	\N	media/songs/Jimi-Hendrix/Little-Miss-Lover.mp3	643
4307	Little Miss Lover v2	\N	media/songs/Jimi-Hendrix/Little-Miss-Lover-v2.mp3	643
4308	Little Miss Lover v3	\N	media/songs/Jimi-Hendrix/Little-Miss-Lover-v3.mp3	643
4309	Little Miss Strange	\N	media/songs/Jimi-Hendrix/Little-Miss-Strange.mp3	643
4310	Little Miss Strange v2	\N	media/songs/Jimi-Hendrix/Little-Miss-Strange-v2.mp3	643
4311	Little Wing	\N	media/songs/Jimi-Hendrix/Little-Wing.mp3	643
4312	Little Wing v10	\N	media/songs/Jimi-Hendrix/Little-Wing-v10.mp3	643
4313	Little Wing v11	\N	media/songs/Jimi-Hendrix/Little-Wing-v11.mp3	643
4314	Little Wing v2	\N	media/songs/Jimi-Hendrix/Little-Wing-v2.mp3	643
4315	Little Wing v3	\N	media/songs/Jimi-Hendrix/Little-Wing-v3.mp3	643
4316	Little Wing v4	\N	media/songs/Jimi-Hendrix/Little-Wing-v4.mp3	643
4317	Little Wing v5	\N	media/songs/Jimi-Hendrix/Little-Wing-v5.mp3	643
4318	Little Wing v6	\N	media/songs/Jimi-Hendrix/Little-Wing-v6.mp3	643
4319	Little Wing v7	\N	media/songs/Jimi-Hendrix/Little-Wing-v7.mp3	643
4320	Little Wing v8	\N	media/songs/Jimi-Hendrix/Little-Wing-v8.mp3	643
4321	Little Wing v9	\N	media/songs/Jimi-Hendrix/Little-Wing-v9.mp3	643
4322	Long Hot Summer Nights	\N	media/songs/Jimi-Hendrix/Long-Hot-Summer-Nights.mp3	643
4323	Love Or Confusion	\N	media/songs/Jimi-Hendrix/Love-Or-Confusion.mp3	643
4324	Love Or Confusion v2	\N	media/songs/Jimi-Hendrix/Love-Or-Confusion-v2.mp3	643
4325	Love Or Confusion v3	\N	media/songs/Jimi-Hendrix/Love-Or-Confusion-v3.mp3	643
4326	Machine Gun	\N	media/songs/Jimi-Hendrix/Machine-Gun.mp3	643
4327	Machine Gun v2	\N	media/songs/Jimi-Hendrix/Machine-Gun-v2.mp3	643
4328	Machine Gun v3	\N	media/songs/Jimi-Hendrix/Machine-Gun-v3.mp3	643
4329	Manic Depression	\N	media/songs/Jimi-Hendrix/Manic-Depression.mp3	643
4330	Manic Depression v2	\N	media/songs/Jimi-Hendrix/Manic-Depression-v2.mp3	643
4331	May This Be Love	\N	media/songs/Jimi-Hendrix/May-This-Be-Love.mp3	643
4332	Message Of Love	\N	media/songs/Jimi-Hendrix/Message-Of-Love.mp3	643
4333	Message Of Love v2	\N	media/songs/Jimi-Hendrix/Message-Of-Love-v2.mp3	643
4334	Once I Had A Woman	\N	media/songs/Jimi-Hendrix/Once-I-Had-A-Woman.mp3	643
4335	Once I Had A Woman v2	\N	media/songs/Jimi-Hendrix/Once-I-Had-A-Woman-v2.mp3	643
4336	One Rainy Wish	\N	media/songs/Jimi-Hendrix/One-Rainy-Wish.mp3	643
4337	Pali Gap	\N	media/songs/Jimi-Hendrix/Pali-Gap.mp3	643
4338	Power To Love	\N	media/songs/Jimi-Hendrix/Power-To-Love.mp3	643
4339	Power To Love v2	\N	media/songs/Jimi-Hendrix/Power-To-Love-v2.mp3	643
4340	Power To Love v3	\N	media/songs/Jimi-Hendrix/Power-To-Love-v3.mp3	643
4341	Purple Haze	\N	media/songs/Jimi-Hendrix/Purple-Haze.mp3	643
4342	Purple Haze v10	\N	media/songs/Jimi-Hendrix/Purple-Haze-v10.mp3	643
4343	Purple Haze v2	\N	media/songs/Jimi-Hendrix/Purple-Haze-v2.mp3	643
4344	Purple Haze v3	\N	media/songs/Jimi-Hendrix/Purple-Haze-v3.mp3	643
4345	Purple Haze v4	\N	media/songs/Jimi-Hendrix/Purple-Haze-v4.mp3	643
4346	Purple Haze v5	\N	media/songs/Jimi-Hendrix/Purple-Haze-v5.mp3	643
4347	Purple Haze v6	\N	media/songs/Jimi-Hendrix/Purple-Haze-v6.mp3	643
4348	Purple Haze v7	\N	media/songs/Jimi-Hendrix/Purple-Haze-v7.mp3	643
4349	Purple Haze v8	\N	media/songs/Jimi-Hendrix/Purple-Haze-v8.mp3	643
4350	Purple Haze v9	\N	media/songs/Jimi-Hendrix/Purple-Haze-v9.mp3	643
4351	Red House	\N	media/songs/Jimi-Hendrix/Red-House.mp3	643
4352	Red House v2	\N	media/songs/Jimi-Hendrix/Red-House-v2.mp3	643
4353	Red House v3	\N	media/songs/Jimi-Hendrix/Red-House-v3.mp3	643
4354	Red House v4	\N	media/songs/Jimi-Hendrix/Red-House-v4.mp3	643
4355	Red House v5	\N	media/songs/Jimi-Hendrix/Red-House-v5.mp3	643
4356	Shes So Fine	\N	media/songs/Jimi-Hendrix/Shes-So-Fine.mp3	643
4357	Something	\N	media/songs/Jimi-Hendrix/Something.mp3	643
4358	Something v2	\N	media/songs/Jimi-Hendrix/Something-v2.mp3	643
4359	Spanish Castle Magic	\N	media/songs/Jimi-Hendrix/Spanish-Castle-Magic.mp3	643
4360	Spanish Castle Magic v2	\N	media/songs/Jimi-Hendrix/Spanish-Castle-Magic-v2.mp3	643
4361	Spanish Castle Magic v3	\N	media/songs/Jimi-Hendrix/Spanish-Castle-Magic-v3.mp3	643
4362	Spanish Castle Magic v4	\N	media/songs/Jimi-Hendrix/Spanish-Castle-Magic-v4.mp3	643
4363	Stone Free	\N	media/songs/Jimi-Hendrix/Stone-Free.mp3	643
4364	Stone Free v2	\N	media/songs/Jimi-Hendrix/Stone-Free-v2.mp3	643
4365	The Wind Cries Mary	\N	media/songs/Jimi-Hendrix/The-Wind-Cries-Mary.mp3	643
4366	The Wind Cries Mary v2	\N	media/songs/Jimi-Hendrix/The-Wind-Cries-Mary-v2.mp3	643
4367	The Wind Cries Mary v3	\N	media/songs/Jimi-Hendrix/The-Wind-Cries-Mary-v3.mp3	643
4368	The Wind Cries Mary v4	\N	media/songs/Jimi-Hendrix/The-Wind-Cries-Mary-v4.mp3	643
4369	Third Stone From The Sun	\N	media/songs/Jimi-Hendrix/Third-Stone-From-The-Sun.mp3	643
4370	Third Stone From The Sun v2	\N	media/songs/Jimi-Hendrix/Third-Stone-From-The-Sun-v2.mp3	643
4371	Up From The Skies	\N	media/songs/Jimi-Hendrix/Up-From-The-Skies.mp3	643
4372	Valleys Of Neptune	\N	media/songs/Jimi-Hendrix/Valleys-Of-Neptune.mp3	643
4373	Villanova Junction	\N	media/songs/Jimi-Hendrix/Villanova-Junction.mp3	643
4374	Voodoo Child	\N	media/songs/Jimi-Hendrix/Voodoo-Child.mp3	643
4375	Voodoo Child v2	\N	media/songs/Jimi-Hendrix/Voodoo-Child-v2.mp3	643
4376	Voodoo Child v3	\N	media/songs/Jimi-Hendrix/Voodoo-Child-v3.mp3	643
4377	Voodoo Child v4	\N	media/songs/Jimi-Hendrix/Voodoo-Child-v4.mp3	643
4378	Voodoo Child v5	\N	media/songs/Jimi-Hendrix/Voodoo-Child-v5.mp3	643
4453	Instant Karma	\N	media/songs/John-Lennon/Instant-Karma.mp3	661
4379	Voodoo Child v6	\N	media/songs/Jimi-Hendrix/Voodoo-Child-v6.mp3	643
4380	Wait Until Tomorrow	\N	media/songs/Jimi-Hendrix/Wait-Until-Tomorrow.mp3	643
4381	Wait Until Tomorrow v2	\N	media/songs/Jimi-Hendrix/Wait-Until-Tomorrow-v2.mp3	643
4382	Wait Until Tomorrow v3	\N	media/songs/Jimi-Hendrix/Wait-Until-Tomorrow-v3.mp3	643
4383	Who Knows	\N	media/songs/Jimi-Hendrix/Who-Knows.mp3	643
4384	Wild Thing	\N	media/songs/Jimi-Hendrix/Wild-Thing.mp3	643
4385	You Got Me Floatin	\N	media/songs/Jimi-Hendrix/You-Got-Me-Floatin.mp3	643
4386	Margaritaville	\N	media/songs/Jimmy-Buffett/Margaritaville.mp3	644
4387	Margaritaville v2	\N	media/songs/Jimmy-Buffett/Margaritaville-v2.mp3	644
4388	Margaritaville v3	\N	media/songs/Jimmy-Buffett/Margaritaville-v3.mp3	644
4389	Volcano	\N	media/songs/Jimmy-Buffett/Volcano.mp3	644
4390	Bleed American	\N	media/songs/Jimmy-Eat-World/Bleed-American.mp3	645
4391	My Best Theory	\N	media/songs/Jimmy-Eat-World/My-Best-Theory.mp3	645
4392	Pain	\N	media/songs/Jimmy-Eat-World/Pain.mp3	645
4393	The Middle	\N	media/songs/Jimmy-Eat-World/The-Middle.mp3	645
4394	The Middle v2	\N	media/songs/Jimmy-Eat-World/The-Middle-v2.mp3	645
4395	The Middle v3	\N	media/songs/Jimmy-Eat-World/The-Middle-v3.mp3	645
4396	Prelude	\N	media/songs/Jimmy-Page/Prelude.mp3	646
4397	I Hate Myself For Loving You	\N	media/songs/Joan-Jett/I-Hate-Myself-For-Loving-You.mp3	647
4398	I Love Rock And Roll	\N	media/songs/Joan-Jett/I-Love-Rock-And-Roll.mp3	647
4399	I Love Rock And Roll v2	\N	media/songs/Joan-Jett/I-Love-Rock-And-Roll-v2.mp3	647
4400	I Love Rock And Roll v3	\N	media/songs/Joan-Jett/I-Love-Rock-And-Roll-v3.mp3	647
4401	I Love Rock And Roll v4	\N	media/songs/Joan-Jett/I-Love-Rock-And-Roll-v4.mp3	647
4402	No Hago Otra Cosa Que Pensar En Ti	\N	media/songs/Joan-Manuel-Serrat/No-Hago-Otra-Cosa-Que-Pensar-En-Ti.mp3	648
4403	Blue And Evil	\N	media/songs/Joe-Bonamassa/Blue-And-Evil.mp3	649
4404	If Heartaches Were Nickels	\N	media/songs/Joe-Bonamassa/If-Heartaches-Were-Nickels.mp3	649
4405	Lonesome Road Blues	\N	media/songs/Joe-Bonamassa/Lonesome-Road-Blues.mp3	649
4406	Sloe Gin	\N	media/songs/Joe-Bonamassa/Sloe-Gin.mp3	649
4407	So Many Roads	\N	media/songs/Joe-Bonamassa/So-Many-Roads.mp3	649
4408	Spanish Boots	\N	media/songs/Joe-Bonamassa/Spanish-Boots.mp3	649
4409	Steal Your Heart Away	\N	media/songs/Joe-Bonamassa/Steal-Your-Heart-Away.mp3	649
4410	Stop	\N	media/songs/Joe-Bonamassa/Stop.mp3	649
4411	Story Of A Quarryman	\N	media/songs/Joe-Bonamassa/Story-Of-A-Quarryman.mp3	649
4412	Is She Really Going Out With Him	\N	media/songs/Joe-Jackson/Is-She-Really-Going-Out-With-Him.mp3	650
4413	Mercy	\N	media/songs/Joe-Perry/Mercy.mp3	651
4414	Shakin My Cage	\N	media/songs/Joe-Perry/Shakin-My-Cage.mp3	651
4415	Talk Talkin	\N	media/songs/Joe-Perry/Talk-Talkin.mp3	651
4416	All Night Long	\N	media/songs/Joe-Walsh/All-Night-Long.mp3	652
4417	Rocky Mountain Way	\N	media/songs/Joe-Walsh/Rocky-Mountain-Way.mp3	652
4418	Rocky Mountain Way v2	\N	media/songs/Joe-Walsh/Rocky-Mountain-Way-v2.mp3	652
4419	Rocky Mountain Way v3	\N	media/songs/Joe-Walsh/Rocky-Mountain-Way-v3.mp3	652
4420	Rocky Mountain Way v4	\N	media/songs/Joe-Walsh/Rocky-Mountain-Way-v4.mp3	652
4421	Rocky Mountain Way v5	\N	media/songs/Joe-Walsh/Rocky-Mountain-Way-v5.mp3	652
4422	A Night Together	\N	media/songs/Johan-Paul/A-Night-Together.mp3	653
4423	Canon Short Freestyle	\N	media/songs/Johan-Paul/Canon-Short-Freestyle.mp3	653
4424	Evening Jam	\N	media/songs/Johan-Paul/Evening-Jam.mp3	653
4425	My Story	\N	media/songs/Johan-Paul/My-Story.mp3	653
4426	Sea And Sky	\N	media/songs/Johan-Paul/Sea-And-Sky.mp3	653
4427	Teenage Mutant Ninja Turtles Metal	\N	media/songs/Johan-Paul/Teenage-Mutant-Ninja-Turtles-Metal.mp3	653
4428	The Return Of Gunman Joe	\N	media/songs/Johan-Paul/The-Return-Of-Gunman-Joe.mp3	653
4429	Those Days	\N	media/songs/Johan-Paul/Those-Days.mp3	653
4430	Turkish March Rondo Alla Turca	\N	media/songs/Johan-Paul/Turkish-March-Rondo-Alla-Turca.mp3	653
4431	Damaged	\N	media/songs/John-5/Damaged.mp3	654
4432	Flatlines Thin Lines	\N	media/songs/John-5/Flatlines-Thin-Lines.mp3	654
4433	Black Widow Of La Porte	\N	media/songs/John-5-Feat-Jim-Root/Black-Widow-Of-La-Porte.mp3	655
4434	Black Widow Of La Porte v2	\N	media/songs/John-5-Feat-Jim-Root/Black-Widow-Of-La-Porte-v2.mp3	655
4435	Happy Xmas War Is Over	\N	media/songs/John-And-Ono-The-Plastic-Ono-Band/Happy-Xmas-War-Is-Over.mp3	656
4436	On The Dark Side	\N	media/songs/John-Cafferty-And-The-Beaver-Brown-Band/On-The-Dark-Side.mp3	657
4437	Giant Steps	\N	media/songs/John-Coltrane/Giant-Steps.mp3	658
4438	Country Roads	\N	media/songs/John-Denver/Country-Roads.mp3	659
4439	Centerfield	\N	media/songs/John-Fogerty/Centerfield.mp3	660
4440	The Old Man Down The Road	\N	media/songs/John-Fogerty/The-Old-Man-Down-The-Road.mp3	660
4441	Cold Turkey	\N	media/songs/John-Lennon/Cold-Turkey.mp3	661
4442	Crippled Inside	\N	media/songs/John-Lennon/Crippled-Inside.mp3	661
4443	Give Me Some Truth	\N	media/songs/John-Lennon/Give-Me-Some-Truth.mp3	661
4444	Give Me Some Truth v2	\N	media/songs/John-Lennon/Give-Me-Some-Truth-v2.mp3	661
4445	Happy Xmas War Is Over	\N	media/songs/John-Lennon/Happy-Xmas-War-Is-Over.mp3	661
4446	How	\N	media/songs/John-Lennon/How.mp3	661
4447	How Do You Sleep	\N	media/songs/John-Lennon/How-Do-You-Sleep.mp3	661
4448	I Dont Want To Be A Soldier Mama	\N	media/songs/John-Lennon/I-Dont-Want-To-Be-A-Soldier-Mama.mp3	661
4449	Imagine	\N	media/songs/John-Lennon/Imagine.mp3	661
4450	Imagine v2	\N	media/songs/John-Lennon/Imagine-v2.mp3	661
4454	Instant Karma v2	\N	media/songs/John-Lennon/Instant-Karma-v2.mp3	661
4455	Its So Hard	\N	media/songs/John-Lennon/Its-So-Hard.mp3	661
4456	Jealous Guy	\N	media/songs/John-Lennon/Jealous-Guy.mp3	661
4457	Just Like Starting Over	\N	media/songs/John-Lennon/Just-Like-Starting-Over.mp3	661
4458	Just Like Starting Over v2	\N	media/songs/John-Lennon/Just-Like-Starting-Over-v2.mp3	661
4459	Oh My Love	\N	media/songs/John-Lennon/Oh-My-Love.mp3	661
4460	Oh Yoko	\N	media/songs/John-Lennon/Oh-Yoko.mp3	661
4461	Starting Over	\N	media/songs/John-Lennon/Starting-Over.mp3	661
4462	Watching The Wheels	\N	media/songs/John-Lennon/Watching-The-Wheels.mp3	661
4463	Watching The Wheels v2	\N	media/songs/John-Lennon/Watching-The-Wheels-v2.mp3	661
4464	Woman	\N	media/songs/John-Lennon/Woman.mp3	661
4465	Steppin Out	\N	media/songs/John-Mayall-And-The-Bluesbreakers/Steppin-Out.mp3	662
4466	Belief	\N	media/songs/John-Mayer/Belief.mp3	663
4467	Belief v2	\N	media/songs/John-Mayer/Belief-v2.mp3	663
4468	Belief v3	\N	media/songs/John-Mayer/Belief-v3.mp3	663
4469	Bold As Love	\N	media/songs/John-Mayer/Bold-As-Love.mp3	663
4470	Bold As Love v2	\N	media/songs/John-Mayer/Bold-As-Love-v2.mp3	663
4471	Gravity	\N	media/songs/John-Mayer/Gravity.mp3	663
4472	Gravity v2	\N	media/songs/John-Mayer/Gravity-v2.mp3	663
4473	Gravity v3	\N	media/songs/John-Mayer/Gravity-v3.mp3	663
4474	Heartbreak Warfare	\N	media/songs/John-Mayer/Heartbreak-Warfare.mp3	663
4475	Heartbreak Warfare v2	\N	media/songs/John-Mayer/Heartbreak-Warfare-v2.mp3	663
4476	Heartbreak Warfare v3	\N	media/songs/John-Mayer/Heartbreak-Warfare-v3.mp3	663
4477	I Dont Trust Myself With Loving You	\N	media/songs/John-Mayer/I-Dont-Trust-Myself-With-Loving-You.mp3	663
4478	I Dont Trust Myself With Loving You v2	\N	media/songs/John-Mayer/I-Dont-Trust-Myself-With-Loving-You-v2.mp3	663
4479	I Dont Trust Myself With Loving You v3	\N	media/songs/John-Mayer/I-Dont-Trust-Myself-With-Loving-You-v3.mp3	663
4480	Neon	\N	media/songs/John-Mayer/Neon.mp3	663
4481	Neon v2	\N	media/songs/John-Mayer/Neon-v2.mp3	663
4482	Slow Dancing In A Burning Room	\N	media/songs/John-Mayer/Slow-Dancing-In-A-Burning-Room.mp3	663
4483	Vultures	\N	media/songs/John-Mayer/Vultures.mp3	663
4484	Wait Till Tomorrow	\N	media/songs/John-Mayer/Wait-Till-Tomorrow.mp3	663
4485	Waiting On The World To Change	\N	media/songs/John-Mayer/Waiting-On-The-World-To-Change.mp3	663
4486	Waiting On The World To Change v2	\N	media/songs/John-Mayer/Waiting-On-The-World-To-Change-v2.mp3	663
4487	Why Georgia	\N	media/songs/John-Mayer/Why-Georgia.mp3	663
4488	Why Georgia v2	\N	media/songs/John-Mayer/Why-Georgia-v2.mp3	663
4489	Aint Even Done With The Night	\N	media/songs/John-Mellencamp/Aint-Even-Done-With-The-Night.mp3	664
4490	Hurts So Good	\N	media/songs/John-Mellencamp/Hurts-So-Good.mp3	664
4491	Hurts So Good v2	\N	media/songs/John-Mellencamp/Hurts-So-Good-v2.mp3	664
4492	I Need A Lover	\N	media/songs/John-Mellencamp/I-Need-A-Lover.mp3	664
4493	Jack And Diane	\N	media/songs/John-Mellencamp/Jack-And-Diane.mp3	664
4494	Jack And Diane v2	\N	media/songs/John-Mellencamp/Jack-And-Diane-v2.mp3	664
4495	Little Pink Houses	\N	media/songs/John-Mellencamp/Little-Pink-Houses.mp3	664
4496	Rock In The Usa	\N	media/songs/John-Mellencamp/Rock-In-The-Usa.mp3	664
4497	The Authority Song	\N	media/songs/John-Mellencamp/The-Authority-Song.mp3	664
4498	Wild Night	\N	media/songs/John-Mellencamp/Wild-Night.mp3	664
4499	Damage Control	\N	media/songs/John-Petrucci/Damage-Control.mp3	665
4500	Damage Control  v3	\N	media/songs/John-Petrucci/Damage-Control--v3.mp3	665
4501	Damage Control v2	\N	media/songs/John-Petrucci/Damage-Control-v2.mp3	665
4502	Damage Control v4	\N	media/songs/John-Petrucci/Damage-Control-v4.mp3	665
4503	Glasgow Kiss	\N	media/songs/John-Petrucci/Glasgow-Kiss.mp3	665
4504	Glasgow Kiss v2	\N	media/songs/John-Petrucci/Glasgow-Kiss-v2.mp3	665
4505	Glasgow Kiss v3	\N	media/songs/John-Petrucci/Glasgow-Kiss-v3.mp3	665
4506	Glasgow Kiss v4	\N	media/songs/John-Petrucci/Glasgow-Kiss-v4.mp3	665
4507	Glassgow Kiss	\N	media/songs/John-Petrucci/Glassgow-Kiss.mp3	665
4508	IBS	\N	media/songs/John-Petrucci/IBS.mp3	665
4509	IBS v2	\N	media/songs/John-Petrucci/IBS-v2.mp3	665
4510	Jaws Of Life	\N	media/songs/John-Petrucci/Jaws-Of-Life.mp3	665
4511	Jaws Of Life v2	\N	media/songs/John-Petrucci/Jaws-Of-Life-v2.mp3	665
4512	Jaws Of Life v3	\N	media/songs/John-Petrucci/Jaws-Of-Life-v3.mp3	665
4513	Jaws Of Life v4	\N	media/songs/John-Petrucci/Jaws-Of-Life-v4.mp3	665
4514	Lost Without You	\N	media/songs/John-Petrucci/Lost-Without-You.mp3	665
4515	Lost Without You v2	\N	media/songs/John-Petrucci/Lost-Without-You-v2.mp3	665
4516	Necronomicon Ep	\N	media/songs/John-Petrucci/Necronomicon-Ep.mp3	665
4517	Necronomicon Epilogue	\N	media/songs/John-Petrucci/Necronomicon-Epilogue.mp3	665
4518	Purple Rain	\N	media/songs/John-Petrucci/Purple-Rain.mp3	665
4519	Purple Rain v2	\N	media/songs/John-Petrucci/Purple-Rain-v2.mp3	665
4520	Wishful Thinking	\N	media/songs/John-Petrucci/Wishful-Thinking.mp3	665
4521	Wishful Thinking v2	\N	media/songs/John-Petrucci/Wishful-Thinking-v2.mp3	665
4522	Missing You	\N	media/songs/John-Waite/Missing-You.mp3	666
4523	Cry Cry Cry	\N	media/songs/Johnny-Cash/Cry-Cry-Cry.mp3	667
4524	Dont Take Your Guns To Town	\N	media/songs/Johnny-Cash/Dont-Take-Your-Guns-To-Town.mp3	667
4525	Five Feet High And Rising	\N	media/songs/Johnny-Cash/Five-Feet-High-And-Rising.mp3	667
4526	Folsom Prison Blues	\N	media/songs/Johnny-Cash/Folsom-Prison-Blues.mp3	667
4527	Folsom Prison Blues v2	\N	media/songs/Johnny-Cash/Folsom-Prison-Blues-v2.mp3	667
4528	I Got Stripes	\N	media/songs/Johnny-Cash/I-Got-Stripes.mp3	667
4529	I Walk The Line	\N	media/songs/Johnny-Cash/I-Walk-The-Line.mp3	667
4530	I Walk The Line v2	\N	media/songs/Johnny-Cash/I-Walk-The-Line-v2.mp3	667
4531	Medley Folsom Walk The Line Ring Of Fire	\N	media/songs/Johnny-Cash/Medley-Folsom-Walk-The-Line-Ring-Of-Fire.mp3	667
4532	Ring Of Fire	\N	media/songs/Johnny-Cash/Ring-Of-Fire.mp3	667
4533	Tennessee Flat Top Box	\N	media/songs/Johnny-Cash/Tennessee-Flat-Top-Box.mp3	667
4534	The Ballad Of Ira Hayes	\N	media/songs/Johnny-Cash/The-Ballad-Of-Ira-Hayes.mp3	667
4535	Lenvie	\N	media/songs/Johnny-Hallyday/Lenvie.mp3	668
4536	Oh Ma Jolie Sarah	\N	media/songs/Johnny-Hallyday/Oh-Ma-Jolie-Sarah.mp3	668
4537	Midnight Blues	\N	media/songs/Johnny-Jones/Midnight-Blues.mp3	669
4538	Secret Agent Man	\N	media/songs/Johnny-Rivers/Secret-Agent-Man.mp3	670
4539	Feel Good Blues In C	\N	media/songs/Johnny-Vaughan/Feel-Good-Blues-In-C.mp3	671
4540	Johnny Guitar	\N	media/songs/Johnny-Winter/Johnny-Guitar.mp3	672
4541	Rock And Roll Hoochie Koo	\N	media/songs/Johnny-Winter/Rock-And-Roll-Hoochie-Koo.mp3	672
4542	Rock And Roll Hoochie Koo v2	\N	media/songs/Johnny-Winter/Rock-And-Roll-Hoochie-Koo-v2.mp3	672
4543	Rock And Roll Hoochie Koo v3	\N	media/songs/Johnny-Winter/Rock-And-Roll-Hoochie-Koo-v3.mp3	672
4544	Wholesome Jail	\N	media/songs/Johny-Cash/Wholesome-Jail.mp3	673
4545	A Talk With George	\N	media/songs/Jonathan-Coulton/A-Talk-With-George.mp3	674
4546	Baby Got Back	\N	media/songs/Jonathan-Coulton/Baby-Got-Back.mp3	674
4547	Chiron Beta Prime	\N	media/songs/Jonathan-Coulton/Chiron-Beta-Prime.mp3	674
4548	Code Monkey	\N	media/songs/Jonathan-Coulton/Code-Monkey.mp3	674
4549	Creepy Doll	\N	media/songs/Jonathan-Coulton/Creepy-Doll.mp3	674
4550	First Of May	\N	media/songs/Jonathan-Coulton/First-Of-May.mp3	674
4551	I Crush Everything	\N	media/songs/Jonathan-Coulton/I-Crush-Everything.mp3	674
4552	I Feel Fantastic	\N	media/songs/Jonathan-Coulton/I-Feel-Fantastic.mp3	674
4553	Ikea	\N	media/songs/Jonathan-Coulton/Ikea.mp3	674
4554	Im Your Moon	\N	media/songs/Jonathan-Coulton/Im-Your-Moon.mp3	674
4555	Mandelbrot Set	\N	media/songs/Jonathan-Coulton/Mandelbrot-Set.mp3	674
4556	Mr Fancy Pants	\N	media/songs/Jonathan-Coulton/Mr-Fancy-Pants.mp3	674
4557	Re Your Brains	\N	media/songs/Jonathan-Coulton/Re-Your-Brains.mp3	674
4558	Shop Vac	\N	media/songs/Jonathan-Coulton/Shop-Vac.mp3	674
4559	Skullcrusher Mountain	\N	media/songs/Jonathan-Coulton/Skullcrusher-Mountain.mp3	674
4560	The Future Soon	\N	media/songs/Jonathan-Coulton/The-Future-Soon.mp3	674
4561	Tom Cruise Crazy	\N	media/songs/Jonathan-Coulton/Tom-Cruise-Crazy.mp3	674
4562	You Ruined Everything	\N	media/songs/Jonathan-Coulton/You-Ruined-Everything.mp3	674
4563	Super Duper	\N	media/songs/Joss-Stone/Super-Duper.mp3	675
4564	You Had Me	\N	media/songs/Joss-Stone/You-Had-Me.mp3	675
4565	Any Way You Want It	\N	media/songs/Journey/Any-Way-You-Want-It.mp3	676
4566	Any Way You Want It v2	\N	media/songs/Journey/Any-Way-You-Want-It-v2.mp3	676
4567	Any Way You Want It v3	\N	media/songs/Journey/Any-Way-You-Want-It-v3.mp3	676
4568	Any Way You Want It v4	\N	media/songs/Journey/Any-Way-You-Want-It-v4.mp3	676
4569	Anyway You Want It	\N	media/songs/Journey/Anyway-You-Want-It.mp3	676
4570	Dont Stop Believing	\N	media/songs/Journey/Dont-Stop-Believing.mp3	676
4571	Dont Stop Believing v2	\N	media/songs/Journey/Dont-Stop-Believing-v2.mp3	676
4572	Dont Stop Believing v3	\N	media/songs/Journey/Dont-Stop-Believing-v3.mp3	676
4573	Dont Stop Believing v4	\N	media/songs/Journey/Dont-Stop-Believing-v4.mp3	676
4574	Faithfully	\N	media/songs/Journey/Faithfully.mp3	676
4575	Faithfully v2	\N	media/songs/Journey/Faithfully-v2.mp3	676
4576	Faithfully v3	\N	media/songs/Journey/Faithfully-v3.mp3	676
4577	Feeling That Way	\N	media/songs/Journey/Feeling-That-Way.mp3	676
4578	Lights	\N	media/songs/Journey/Lights.mp3	676
4579	Send Her My Love	\N	media/songs/Journey/Send-Her-My-Love.mp3	676
4580	Send Her My Love v2	\N	media/songs/Journey/Send-Her-My-Love-v2.mp3	676
4581	Separate Ways	\N	media/songs/Journey/Separate-Ways.mp3	676
4582	Separate Ways v2	\N	media/songs/Journey/Separate-Ways-v2.mp3	676
4583	Separate Ways v3	\N	media/songs/Journey/Separate-Ways-v3.mp3	676
4584	Separate Ways v4	\N	media/songs/Journey/Separate-Ways-v4.mp3	676
4585	Stone In Love	\N	media/songs/Journey/Stone-In-Love.mp3	676
4586	Stone In Love v2	\N	media/songs/Journey/Stone-In-Love-v2.mp3	676
4587	Wheel In The Sky Live	\N	media/songs/Journey/Wheel-In-The-Sky-Live.mp3	676
4588	When The Lights Go Down In The City	\N	media/songs/Journey/When-The-Lights-Go-Down-In-The-City.mp3	676
4589	Whos Crying Now	\N	media/songs/Journey/Whos-Crying-Now.mp3	676
4590	Love Will Tear Us Apart	\N	media/songs/Joy-Division/Love-Will-Tear-Us-Apart.mp3	677
4591	Love Will Tear Us Apart v2	\N	media/songs/Joy-Division/Love-Will-Tear-Us-Apart-v2.mp3	677
4592	No Love Lost	\N	media/songs/Joy-Division/No-Love-Lost.mp3	677
4593	Me Enamora	\N	media/songs/Juanes/Me-Enamora.mp3	678
4594	Between The Hammer And The Anvil	\N	media/songs/Judas-Priest/Between-The-Hammer-And-The-Anvil.mp3	679
4595	Beyond The Realms Of Death	\N	media/songs/Judas-Priest/Beyond-The-Realms-Of-Death.mp3	679
4596	Bloodstone	\N	media/songs/Judas-Priest/Bloodstone.mp3	679
4597	Breaking The Law	\N	media/songs/Judas-Priest/Breaking-The-Law.mp3	679
4598	Breaking The Law Live	\N	media/songs/Judas-Priest/Breaking-The-Law-Live.mp3	679
4599	Breaking The Law v2	\N	media/songs/Judas-Priest/Breaking-The-Law-v2.mp3	679
4600	Breaking The Law v3	\N	media/songs/Judas-Priest/Breaking-The-Law-v3.mp3	679
4601	Deal With The Devil Live	\N	media/songs/Judas-Priest/Deal-With-The-Devil-Live.mp3	679
4602	Desert Plains	\N	media/songs/Judas-Priest/Desert-Plains.mp3	679
4603	Diamonds And Rust	\N	media/songs/Judas-Priest/Diamonds-And-Rust.mp3	679
4604	Dissident Aggressor	\N	media/songs/Judas-Priest/Dissident-Aggressor.mp3	679
4605	Electric Eye	\N	media/songs/Judas-Priest/Electric-Eye.mp3	679
4606	Fever	\N	media/songs/Judas-Priest/Fever.mp3	679
4607	Fever v2	\N	media/songs/Judas-Priest/Fever-v2.mp3	679
4608	Fever v3	\N	media/songs/Judas-Priest/Fever-v3.mp3	679
4609	Freewheel Burning	\N	media/songs/Judas-Priest/Freewheel-Burning.mp3	679
4610	Grinder	\N	media/songs/Judas-Priest/Grinder.mp3	679
4611	Grinder Live	\N	media/songs/Judas-Priest/Grinder-Live.mp3	679
4612	Heading Out On The Highway	\N	media/songs/Judas-Priest/Heading-Out-On-The-Highway.mp3	679
4613	Hellion Electric Eye	\N	media/songs/Judas-Priest/Hellion-Electric-Eye.mp3	679
4614	Hot Rockin Live	\N	media/songs/Judas-Priest/Hot-Rockin-Live.mp3	679
4615	Im A Rocker Live	\N	media/songs/Judas-Priest/Im-A-Rocker-Live.mp3	679
4616	Judas Rising	\N	media/songs/Judas-Priest/Judas-Rising.mp3	679
4617	Judas Rising Live	\N	media/songs/Judas-Priest/Judas-Rising-Live.mp3	679
4618	Living After Midnight	\N	media/songs/Judas-Priest/Living-After-Midnight.mp3	679
4619	Living After Midnight v2	\N	media/songs/Judas-Priest/Living-After-Midnight-v2.mp3	679
4620	Living After Midnight v3	\N	media/songs/Judas-Priest/Living-After-Midnight-v3.mp3	679
4621	Locked In	\N	media/songs/Judas-Priest/Locked-In.mp3	679
4622	Love Bites	\N	media/songs/Judas-Priest/Love-Bites.mp3	679
4623	Pain And Pleasure	\N	media/songs/Judas-Priest/Pain-And-Pleasure.mp3	679
4624	Pain And Pleasure v2	\N	media/songs/Judas-Priest/Pain-And-Pleasure-v2.mp3	679
4625	Painkiller	\N	media/songs/Judas-Priest/Painkiller.mp3	679
4626	Painkiller v2	\N	media/songs/Judas-Priest/Painkiller-v2.mp3	679
4627	Painkiller v3	\N	media/songs/Judas-Priest/Painkiller-v3.mp3	679
4628	Parental Guidance	\N	media/songs/Judas-Priest/Parental-Guidance.mp3	679
4629	Revolution	\N	media/songs/Judas-Priest/Revolution.mp3	679
4630	Revolution Live	\N	media/songs/Judas-Priest/Revolution-Live.mp3	679
4631	Riding On The Wind	\N	media/songs/Judas-Priest/Riding-On-The-Wind.mp3	679
4632	Riding On The Wind v2	\N	media/songs/Judas-Priest/Riding-On-The-Wind-v2.mp3	679
4633	Screaming For Vengeance	\N	media/songs/Judas-Priest/Screaming-For-Vengeance.mp3	679
4634	Take These Chains	\N	media/songs/Judas-Priest/Take-These-Chains.mp3	679
4635	Take These Chains v2	\N	media/songs/Judas-Priest/Take-These-Chains-v2.mp3	679
4636	The Green Manalishi	\N	media/songs/Judas-Priest/The-Green-Manalishi.mp3	679
4637	The Ripper	\N	media/songs/Judas-Priest/The-Ripper.mp3	679
4638	The Ripper v2	\N	media/songs/Judas-Priest/The-Ripper-v2.mp3	679
4639	The Sentinel	\N	media/songs/Judas-Priest/The-Sentinel.mp3	679
4640	Victim Of Changes	\N	media/songs/Judas-Priest/Victim-Of-Changes.mp3	679
4641	Worth Fighting For	\N	media/songs/Judas-Priest/Worth-Fighting-For.mp3	679
4642	Youve Got Another Thing Coming	\N	media/songs/Judas-Priest/Youve-Got-Another-Thing-Coming.mp3	679
4643	Youve Got Another Thing Coming v2	\N	media/songs/Judas-Priest/Youve-Got-Another-Thing-Coming-v2.mp3	679
4644	Youve Got Another Thing Coming v3	\N	media/songs/Judas-Priest/Youve-Got-Another-Thing-Coming-v3.mp3	679
4645	Youve Got Another Thing Coming v4	\N	media/songs/Judas-Priest/Youve-Got-Another-Thing-Coming-v4.mp3	679
4646	Perfekte Welle	\N	media/songs/Juli/Perfekte-Welle.mp3	680
4647	Perfekte Welle v2	\N	media/songs/Juli/Perfekte-Welle-v2.mp3	680
4648	Kick The Bass	\N	media/songs/Julien-K/Kick-The-Bass.mp3	681
4649	Peligroso Amor	\N	media/songs/Julio-Revueltas/Peligroso-Amor.mp3	682
4650	Siento Que	\N	media/songs/Jumbo/Siento-Que.mp3	683
4651	Why Are People Like That	\N	media/songs/Junior-Wells/Why-Are-People-Like-That.mp3	684
4652	Backwoods	\N	media/songs/Justin-Moore/Backwoods.mp3	685
4653	Everyday I Love You Less And Less	\N	media/songs/Kaiser-Chiefs/Everyday-I-Love-You-Less-And-Less.mp3	686
4654	I Predict A Riot	\N	media/songs/Kaiser-Chiefs/I-Predict-A-Riot.mp3	686
4655	Never Miss A Beat	\N	media/songs/Kaiser-Chiefs/Never-Miss-A-Beat.mp3	686
4656	Ruby	\N	media/songs/Kaiser-Chiefs/Ruby.mp3	686
4657	Forever	\N	media/songs/Kamelot/Forever.mp3	687
4658	March Of Mephisto	\N	media/songs/Kamelot/March-Of-Mephisto.mp3	687
4659	Hold On To The World	\N	media/songs/Kane/Hold-On-To-The-World.mp3	688
4660	Rain Down On Me	\N	media/songs/Kane/Rain-Down-On-Me.mp3	688
4661	So Glad You Made It	\N	media/songs/Kane/So-Glad-You-Made-It.mp3	688
4662	Carry On My Wayward Son	\N	media/songs/Kansas/Carry-On-My-Wayward-Son.mp3	689
4663	Carry On My Wayward Son v2	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v2.mp3	689
4664	Carry On My Wayward Son v3	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v3.mp3	689
4665	Carry On My Wayward Son v4	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v4.mp3	689
4666	Carry On My Wayward Son v5	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v5.mp3	689
4667	Carry On My Wayward Son v6	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v6.mp3	689
4668	Carry On My Wayward Son v7	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v7.mp3	689
4669	Carry On My Wayward Son v8	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v8.mp3	689
4670	Carry On My Wayward Son v9	\N	media/songs/Kansas/Carry-On-My-Wayward-Son-v9.mp3	689
4671	Dust In The Wind	\N	media/songs/Kansas/Dust-In-The-Wind.mp3	689
4672	Dust In The Wind v2	\N	media/songs/Kansas/Dust-In-The-Wind-v2.mp3	689
4673	Point Of No Return	\N	media/songs/Kansas/Point-Of-No-Return.mp3	689
4674	Portrait	\N	media/songs/Kansas/Portrait.mp3	689
4675	The Pinnacle	\N	media/songs/Kansas/The-Pinnacle.mp3	689
4676	Shoot The Runner	\N	media/songs/Kasabian/Shoot-The-Runner.mp3	690
4677	Underdog	\N	media/songs/Kasabian/Underdog.mp3	690
4678	Walking On Sunshine	\N	media/songs/Katarina-And-The-Waves/Walking-On-Sunshine.mp3	691
4679	Walking On Sunshine v2	\N	media/songs/Katarina-And-The-Waves/Walking-On-Sunshine-v2.mp3	691
4680	California Gurls	\N	media/songs/Katy-Perry/California-Gurls.mp3	692
4681	Get Down Tonight	\N	media/songs/KC-And-The-Sunshine-Band/Get-Down-Tonight.mp3	693
4682	Feeling Low	\N	media/songs/Kelton/Feeling-Low.mp3	694
4683	Shuffle In E	\N	media/songs/Kelton/Shuffle-In-E.mp3	694
4684	Chitlins Con Carne	\N	media/songs/Kenny-Burrell/Chitlins-Con-Carne.mp3	695
4685	Footloose	\N	media/songs/Kenny-Loggins/Footloose.mp3	696
4686	The Gambler	\N	media/songs/Kenny-Rogers/The-Gambler.mp3	697
4687	Blue On Black	\N	media/songs/Kenny-Wayne-Shepherd/Blue-On-Black.mp3	698
4688	Blue On Black v2	\N	media/songs/Kenny-Wayne-Shepherd/Blue-On-Black-v2.mp3	698
4689	Vinternoll2	\N	media/songs/Kent/Vinternoll2.mp3	699
4690	All Summer Long	\N	media/songs/Kid-Rock/All-Summer-Long.mp3	700
4691	Picture	\N	media/songs/Kid-Rock/Picture.mp3	700
4692	Fisticuffs	\N	media/songs/Kids-In-Glass-Houses/Fisticuffs.mp3	701
4693	The Best Is Yet To Come	\N	media/songs/Kids-In-Glass-Houses/The-Best-Is-Yet-To-Come.mp3	701
4694	Desperado	\N	media/songs/Kiko-Loureiro/Desperado.mp3	702
4695	Dilemma	\N	media/songs/Kiko-Loureiro/Dilemma.mp3	702
4696	Dream Circle	\N	media/songs/Kiko-Loureiro/Dream-Circle.mp3	702
4697	Endangered Species	\N	media/songs/Kiko-Loureiro/Endangered-Species.mp3	702
4698	Enfermo	\N	media/songs/Kiko-Loureiro/Enfermo.mp3	702
4699	Escaping	\N	media/songs/Kiko-Loureiro/Escaping.mp3	702
4700	Excuse Me	\N	media/songs/Kiko-Loureiro/Excuse-Me.mp3	702
4701	Feliz Desilusao	\N	media/songs/Kiko-Loureiro/Feliz-Desilusao.mp3	702
4702	Headstrong	\N	media/songs/Kiko-Loureiro/Headstrong.mp3	702
4703	In A Gentle Way	\N	media/songs/Kiko-Loureiro/In-A-Gentle-Way.mp3	702
4704	La Force De Lame	\N	media/songs/Kiko-Loureiro/La-Force-De-Lame.mp3	702
4705	Moment Of Truth	\N	media/songs/Kiko-Loureiro/Moment-Of-Truth.mp3	702
4706	No Gravity	\N	media/songs/Kiko-Loureiro/No-Gravity.mp3	702
4707	Pau De Arara	\N	media/songs/Kiko-Loureiro/Pau-De-Arara.mp3	702
4708	Shuffle 7	\N	media/songs/Kiko-Loureiro/Shuffle-7.mp3	702
4709	Tapping Into My Dark Tranquility	\N	media/songs/Kiko-Loureiro/Tapping-Into-My-Dark-Tranquility.mp3	702
4710	Whispering	\N	media/songs/Kiko-Loureiro/Whispering.mp3	702
4711	Eye Of The Storm	\N	media/songs/Killswitch-Engage/Eye-Of-The-Storm.mp3	703
4712	Fixation On The Darkness	\N	media/songs/Killswitch-Engage/Fixation-On-The-Darkness.mp3	703
4713	Fixation On The Darkness v2	\N	media/songs/Killswitch-Engage/Fixation-On-The-Darkness-v2.mp3	703
4714	Fixation On The Darkness v3	\N	media/songs/Killswitch-Engage/Fixation-On-The-Darkness-v3.mp3	703
4715	Last Serenade	\N	media/songs/Killswitch-Engage/Last-Serenade.mp3	703
4716	My Curse	\N	media/songs/Killswitch-Engage/My-Curse.mp3	703
4717	Numbered Days	\N	media/songs/Killswitch-Engage/Numbered-Days.mp3	703
4718	Rose Of Sharyn	\N	media/songs/Killswitch-Engage/Rose-Of-Sharyn.mp3	703
4719	Self Revolution	\N	media/songs/Killswitch-Engage/Self-Revolution.mp3	703
4720	The Element Of One	\N	media/songs/Killswitch-Engage/The-Element-Of-One.mp3	703
4721	The End Of Heartache	\N	media/songs/Killswitch-Engage/The-End-Of-Heartache.mp3	703
4722	This Is Absolution	\N	media/songs/Killswitch-Engage/This-Is-Absolution.mp3	703
4723	21st Century Schizoid Man	\N	media/songs/King-Crimson/21st-Century-Schizoid-Man.mp3	704
4724	21st Century Schizoid Man v2	\N	media/songs/King-Crimson/21st-Century-Schizoid-Man-v2.mp3	704
4725	21st Century Schizoid Man v3	\N	media/songs/King-Crimson/21st-Century-Schizoid-Man-v3.mp3	704
4726	Discipline	\N	media/songs/King-Crimson/Discipline.mp3	704
4727	Matte Kudasai	\N	media/songs/King-Crimson/Matte-Kudasai.mp3	704
4728	Red	\N	media/songs/King-Crimson/Red.mp3	704
4729	Crawl	\N	media/songs/Kings-Of-Leon/Crawl.mp3	705
4730	Fans	\N	media/songs/Kings-Of-Leon/Fans.mp3	705
4731	Mollys Chamber	\N	media/songs/Kings-Of-Leon/Mollys-Chamber.mp3	705
4732	Pyro	\N	media/songs/Kings-Of-Leon/Pyro.mp3	705
4733	Radioactive	\N	media/songs/Kings-Of-Leon/Radioactive.mp3	705
4734	Red Morning Light	\N	media/songs/Kings-Of-Leon/Red-Morning-Light.mp3	705
4735	Use Somebody	\N	media/songs/Kings-Of-Leon/Use-Somebody.mp3	705
4736	Goldilox	\N	media/songs/Kings-X/Goldilox.mp3	706
4737	Its Love	\N	media/songs/Kings-X/Its-Love.mp3	706
4738	Mr Wilson	\N	media/songs/Kings-X/Mr-Wilson.mp3	706
4739	Over My Head	\N	media/songs/Kings-X/Over-My-Head.mp3	706
4740	100 000 Years	\N	media/songs/Kiss/100-000-Years.mp3	707
4741	100 000 Years Live	\N	media/songs/Kiss/100-000-Years-Live.mp3	707
4742	2000 Man	\N	media/songs/Kiss/2000-Man.mp3	707
4743	Black Diamond	\N	media/songs/Kiss/Black-Diamond.mp3	707
4744	Calling Dr Love	\N	media/songs/Kiss/Calling-Dr-Love.mp3	707
4745	Cold Gin	\N	media/songs/Kiss/Cold-Gin.mp3	707
4746	Crazy Nights	\N	media/songs/Kiss/Crazy-Nights.mp3	707
4747	Crazy Nights v2	\N	media/songs/Kiss/Crazy-Nights-v2.mp3	707
4748	Creatures Of The Night	\N	media/songs/Kiss/Creatures-Of-The-Night.mp3	707
4749	Detroit Rock City	\N	media/songs/Kiss/Detroit-Rock-City.mp3	707
4750	Detroit Rock City v2	\N	media/songs/Kiss/Detroit-Rock-City-v2.mp3	707
4751	Detroit Rock City v3	\N	media/songs/Kiss/Detroit-Rock-City-v3.mp3	707
4752	Deuce	\N	media/songs/Kiss/Deuce.mp3	707
4753	Deuce Live	\N	media/songs/Kiss/Deuce-Live.mp3	707
4754	Do You Love Me	\N	media/songs/Kiss/Do-You-Love-Me.mp3	707
4755	Do You Love Me v2	\N	media/songs/Kiss/Do-You-Love-Me-v2.mp3	707
4756	Firehouse	\N	media/songs/Kiss/Firehouse.mp3	707
4757	Firehouse v2	\N	media/songs/Kiss/Firehouse-v2.mp3	707
4758	Forever	\N	media/songs/Kiss/Forever.mp3	707
4759	God Of Thunder	\N	media/songs/Kiss/God-Of-Thunder.mp3	707
4760	God Of Thunder v2	\N	media/songs/Kiss/God-Of-Thunder-v2.mp3	707
4761	Goin Blind	\N	media/songs/Kiss/Goin-Blind.mp3	707
4762	Heavens On Fire	\N	media/songs/Kiss/Heavens-On-Fire.mp3	707
4763	I Love It Loud	\N	media/songs/Kiss/I-Love-It-Loud.mp3	707
4764	I Love It Loud v2	\N	media/songs/Kiss/I-Love-It-Loud-v2.mp3	707
4765	I Still Love You	\N	media/songs/Kiss/I-Still-Love-You.mp3	707
4766	I Was Made For Loving You	\N	media/songs/Kiss/I-Was-Made-For-Loving-You.mp3	707
4767	I Was Made For Loving You v2	\N	media/songs/Kiss/I-Was-Made-For-Loving-You-v2.mp3	707
4768	I Was Made For Loving You v3	\N	media/songs/Kiss/I-Was-Made-For-Loving-You-v3.mp3	707
4769	Let Me Go Rock N Roll	\N	media/songs/Kiss/Let-Me-Go-Rock-N-Roll.mp3	707
4770	Let Me Go Rock N Roll v2	\N	media/songs/Kiss/Let-Me-Go-Rock-N-Roll-v2.mp3	707
4771	Lick It Up	\N	media/songs/Kiss/Lick-It-Up.mp3	707
4772	Lick It Up v2	\N	media/songs/Kiss/Lick-It-Up-v2.mp3	707
4773	Lick It Up v3	\N	media/songs/Kiss/Lick-It-Up-v3.mp3	707
4774	Love Gun	\N	media/songs/Kiss/Love-Gun.mp3	707
4775	Love Gun v2	\N	media/songs/Kiss/Love-Gun-v2.mp3	707
4776	Love Gun v3	\N	media/songs/Kiss/Love-Gun-v3.mp3	707
4777	Makin Love	\N	media/songs/Kiss/Makin-Love.mp3	707
4778	Makin Love v2	\N	media/songs/Kiss/Makin-Love-v2.mp3	707
4779	Modern Day Delilah	\N	media/songs/Kiss/Modern-Day-Delilah.mp3	707
4780	New York Groove	\N	media/songs/Kiss/New-York-Groove.mp3	707
4781	New York Groove v2	\N	media/songs/Kiss/New-York-Groove-v2.mp3	707
4782	Parasite	\N	media/songs/Kiss/Parasite.mp3	707
4783	Psycho Circus	\N	media/songs/Kiss/Psycho-Circus.mp3	707
4784	Psycho Circus v2	\N	media/songs/Kiss/Psycho-Circus-v2.mp3	707
4785	Rock And Roll All Nite	\N	media/songs/Kiss/Rock-And-Roll-All-Nite.mp3	707
4786	Rock And Roll All Nite v2	\N	media/songs/Kiss/Rock-And-Roll-All-Nite-v2.mp3	707
4787	Rock And Roll All Nite v3	\N	media/songs/Kiss/Rock-And-Roll-All-Nite-v3.mp3	707
4788	Rock And Roll All Nite v4	\N	media/songs/Kiss/Rock-And-Roll-All-Nite-v4.mp3	707
4789	Rock And Roll All Nite v5	\N	media/songs/Kiss/Rock-And-Roll-All-Nite-v5.mp3	707
4790	Rock And Roll All Nite v6	\N	media/songs/Kiss/Rock-And-Roll-All-Nite-v6.mp3	707
4791	Rock And Roll All Nite v7	\N	media/songs/Kiss/Rock-And-Roll-All-Nite-v7.mp3	707
4792	Rock Bottom	\N	media/songs/Kiss/Rock-Bottom.mp3	707
4793	Rocket Ride	\N	media/songs/Kiss/Rocket-Ride.mp3	707
4794	Rocket Ride v2	\N	media/songs/Kiss/Rocket-Ride-v2.mp3	707
4795	She	\N	media/songs/Kiss/She.mp3	707
4796	She v2	\N	media/songs/Kiss/She-v2.mp3	707
4797	Shock Me	\N	media/songs/Kiss/Shock-Me.mp3	707
4798	Shock Me v2	\N	media/songs/Kiss/Shock-Me-v2.mp3	707
4799	Shock Me v3	\N	media/songs/Kiss/Shock-Me-v3.mp3	707
4800	Shout It Out Loud	\N	media/songs/Kiss/Shout-It-Out-Loud.mp3	707
4801	Shout It Out Loud v2	\N	media/songs/Kiss/Shout-It-Out-Loud-v2.mp3	707
4802	Shout It Out Loud v3	\N	media/songs/Kiss/Shout-It-Out-Loud-v3.mp3	707
4803	Shout It Out Loud v4	\N	media/songs/Kiss/Shout-It-Out-Loud-v4.mp3	707
4804	Strutter	\N	media/songs/Kiss/Strutter.mp3	707
4805	Strutter v2	\N	media/songs/Kiss/Strutter-v2.mp3	707
4806	Strutter v3	\N	media/songs/Kiss/Strutter-v3.mp3	707
4807	Sure Know Something	\N	media/songs/Kiss/Sure-Know-Something.mp3	707
4808	Sure Know Something v2	\N	media/songs/Kiss/Sure-Know-Something-v2.mp3	707
4809	Sure Know Something v3	\N	media/songs/Kiss/Sure-Know-Something-v3.mp3	707
4810	Turn On The Night	\N	media/songs/Kiss/Turn-On-The-Night.mp3	707
4811	Two Timer	\N	media/songs/Kiss/Two-Timer.mp3	707
4812	Two Timer v2	\N	media/songs/Kiss/Two-Timer-v2.mp3	707
4813	Unholy	\N	media/songs/Kiss/Unholy.mp3	707
4814	War Machine	\N	media/songs/Kiss/War-Machine.mp3	707
4815	Watchin You	\N	media/songs/Kiss/Watchin-You.mp3	707
4816	Wag Na Wag Mong Sasabihin	\N	media/songs/Kitchie-Nadal/Wag-Na-Wag-Mong-Sasabihin.mp3	708
4817	A Drug Against War	\N	media/songs/KMFDM/A-Drug-Against-War.mp3	709
4818	Juke Joint Jezebel	\N	media/songs/KMFDM/Juke-Joint-Jezebel.mp3	709
4819	10 Or A 2 Way	\N	media/songs/Korn/10-Or-A-2-Way.mp3	710
4820	8 Open Up	\N	media/songs/Korn/8-Open-Up.mp3	710
4821	Blind	\N	media/songs/Korn/Blind.mp3	710
4822	Blind v2	\N	media/songs/Korn/Blind-v2.mp3	710
4823	Blind v3	\N	media/songs/Korn/Blind-v3.mp3	710
4824	Coming Undone	\N	media/songs/Korn/Coming-Undone.mp3	710
4825	Falling Away From Me	\N	media/songs/Korn/Falling-Away-From-Me.mp3	710
4826	Falling Away From Me v2	\N	media/songs/Korn/Falling-Away-From-Me-v2.mp3	710
4827	Falling Away From Me v3	\N	media/songs/Korn/Falling-Away-From-Me-v3.mp3	710
4828	For No One	\N	media/songs/Korn/For-No-One.mp3	710
4829	Freak On A Leash	\N	media/songs/Korn/Freak-On-A-Leash.mp3	710
4830	Freak On A Leash v2	\N	media/songs/Korn/Freak-On-A-Leash-v2.mp3	710
4831	Freak On A Leash v3	\N	media/songs/Korn/Freak-On-A-Leash-v3.mp3	710
4832	Get Up	\N	media/songs/Korn/Get-Up.mp3	710
4833	Getting Off	\N	media/songs/Korn/Getting-Off.mp3	710
4834	Got The Life	\N	media/songs/Korn/Got-The-Life.mp3	710
4835	Got The Life v2	\N	media/songs/Korn/Got-The-Life-v2.mp3	710
4836	Here To Stay	\N	media/songs/Korn/Here-To-Stay.mp3	710
4837	Hold On	\N	media/songs/Korn/Hold-On.mp3	710
4838	Hypocrites	\N	media/songs/Korn/Hypocrites.mp3	710
4839	Liar	\N	media/songs/Korn/Liar.mp3	710
4840	Love Song	\N	media/songs/Korn/Love-Song.mp3	710
4841	Politics	\N	media/songs/Korn/Politics.mp3	710
4842	Seen It All	\N	media/songs/Korn/Seen-It-All.mp3	710
4843	Shoots And Ladders	\N	media/songs/Korn/Shoots-And-Ladders.mp3	710
4844	Souvenir	\N	media/songs/Korn/Souvenir.mp3	710
4845	Tearjerker	\N	media/songs/Korn/Tearjerker.mp3	710
4846	Throw Me Away	\N	media/songs/Korn/Throw-Me-Away.mp3	710
4847	Twisted Transistor	\N	media/songs/Korn/Twisted-Transistor.mp3	710
4848	Word Up	\N	media/songs/Korn/Word-Up.mp3	710
4849	Metsamies	\N	media/songs/Korpiklaani/Metsamies.mp3	711
4850	All Of The Same Blood	\N	media/songs/Kreator/All-Of-The-Same-Blood.mp3	712
4851	Betrayer	\N	media/songs/Kreator/Betrayer.mp3	712
4852	Coma Of Souls	\N	media/songs/Kreator/Coma-Of-Souls.mp3	712
4853	Endless Pain	\N	media/songs/Kreator/Endless-Pain.mp3	712
4854	Endorama	\N	media/songs/Kreator/Endorama.mp3	712
4855	Impossible Brutality	\N	media/songs/Kreator/Impossible-Brutality.mp3	712
4856	Love Us Or Hate Us	\N	media/songs/Kreator/Love-Us-Or-Hate-Us.mp3	712
4857	Murder Fantasies	\N	media/songs/Kreator/Murder-Fantasies.mp3	712
4858	Violent Revolution	\N	media/songs/Kreator/Violent-Revolution.mp3	712
4859	World Anarchy	\N	media/songs/Kreator/World-Anarchy.mp3	712
4860	Ballroom Blitz	\N	media/songs/Krokus/Ballroom-Blitz.mp3	713
4861	End Of The Heartache	\N	media/songs/KsE/End-Of-The-Heartache.mp3	714
4862	Black Horse And The Cherry Tree	\N	media/songs/KT-Tunstall/Black-Horse-And-The-Cherry-Tree.mp3	715
4863	Suddenly I See	\N	media/songs/KT-Tunstall/Suddenly-I-See.mp3	715
4864	Hush	\N	media/songs/Kula-Shaker/Hush.mp3	716
4865	Hush v2	\N	media/songs/Kula-Shaker/Hush-v2.mp3	716
4866	Ifrit	\N	media/songs/Kurban/Ifrit.mp3	717
4867	The Feeling	\N	media/songs/Kutless/The-Feeling.mp3	718
4868	Jangan Pergi	\N	media/songs/Kyne/Jangan-Pergi.mp3	719
4869	Pretend Were Dead	\N	media/songs/L7/Pretend-Were-Dead.mp3	720
4870	Pretend Were Dead v2	\N	media/songs/L7/Pretend-Were-Dead-v2.mp3	720
4871	The Ballad Of Jayne	\N	media/songs/LA-Guns/The-Ballad-Of-Jayne.mp3	721
4872	Paquita Disco	\N	media/songs/La-Lupita/Paquita-Disco.mp3	722
4873	Veneno	\N	media/songs/LA-renga/Veneno.mp3	723
4874	Down N Dirty	\N	media/songs/LA-Slum-Lords/Down-N-Dirty.mp3	724
4875	Closer	\N	media/songs/Lacuna-Coil/Closer.mp3	725
4876	Enjoy The Silence	\N	media/songs/Lacuna-Coil/Enjoy-The-Silence.mp3	725
4877	Our Truth	\N	media/songs/Lacuna-Coil/Our-Truth.mp3	725
4878	Our Truth v2	\N	media/songs/Lacuna-Coil/Our-Truth-v2.mp3	725
4879	Survive	\N	media/songs/Lacuna-Coil/Survive.mp3	725
4880	Swamped	\N	media/songs/Lacuna-Coil/Swamped.mp3	725
4881	Swamped v2	\N	media/songs/Lacuna-Coil/Swamped-v2.mp3	725
4882	Need You Now	\N	media/songs/Lady-Antebellum/Need-You-Now.mp3	726
4883	Perfect Day	\N	media/songs/Lady-Antebellum/Perfect-Day.mp3	726
4884	Just Dance	\N	media/songs/Lady-Gaga/Just-Dance.mp3	727
4885	16 May	\N	media/songs/Lagwagon/16-May.mp3	728
4886	Inkblot 11	\N	media/songs/Larry-Carlton/Inkblot-11.mp3	729
4887	Inkblot 11 v2	\N	media/songs/Larry-Carlton/Inkblot-11-v2.mp3	729
4888	Larry Cart Jam	\N	media/songs/Larry-Carlton/Larry-Cart-Jam.mp3	729
4889	Room 335	\N	media/songs/Larry-Carlton/Room-335.mp3	729
4890	Pictures Of You	\N	media/songs/Last-Goodnight/Pictures-Of-You.mp3	730
4891	Dance Dance	\N	media/songs/Lazybone/Dance-Dance.mp3	731
4892	Achilles Last Stand	\N	media/songs/Led-Zeppelin/Achilles-Last-Stand.mp3	732
4893	All Of My Love	\N	media/songs/Led-Zeppelin/All-Of-My-Love.mp3	732
4894	All Of My Love v2	\N	media/songs/Led-Zeppelin/All-Of-My-Love-v2.mp3	732
4895	Babe Im Gonna Leave You	\N	media/songs/Led-Zeppelin/Babe-Im-Gonna-Leave-You.mp3	732
4896	Babe Im Gonna Leave You v2	\N	media/songs/Led-Zeppelin/Babe-Im-Gonna-Leave-You-v2.mp3	732
4897	Black Dog	\N	media/songs/Led-Zeppelin/Black-Dog.mp3	732
4898	Black Dog Live	\N	media/songs/Led-Zeppelin/Black-Dog-Live.mp3	732
4899	Black Dog v2	\N	media/songs/Led-Zeppelin/Black-Dog-v2.mp3	732
4900	Black Dog v3	\N	media/songs/Led-Zeppelin/Black-Dog-v3.mp3	732
4901	Black Dog v4	\N	media/songs/Led-Zeppelin/Black-Dog-v4.mp3	732
4902	Black Dog v5	\N	media/songs/Led-Zeppelin/Black-Dog-v5.mp3	732
4903	Black Dog v6	\N	media/songs/Led-Zeppelin/Black-Dog-v6.mp3	732
4904	Bring It On Home	\N	media/songs/Led-Zeppelin/Bring-It-On-Home.mp3	732
4905	Bring It On Home v2	\N	media/songs/Led-Zeppelin/Bring-It-On-Home-v2.mp3	732
4906	Celebration Day	\N	media/songs/Led-Zeppelin/Celebration-Day.mp3	732
4907	Celebration Day Live	\N	media/songs/Led-Zeppelin/Celebration-Day-Live.mp3	732
4908	Communication Breakdown	\N	media/songs/Led-Zeppelin/Communication-Breakdown.mp3	732
4909	Communication Breakdown v2	\N	media/songs/Led-Zeppelin/Communication-Breakdown-v2.mp3	732
4910	Communication Breakdown v3	\N	media/songs/Led-Zeppelin/Communication-Breakdown-v3.mp3	732
4911	Communication Breakdown v4	\N	media/songs/Led-Zeppelin/Communication-Breakdown-v4.mp3	732
4912	Custard Pie	\N	media/songs/Led-Zeppelin/Custard-Pie.mp3	732
4913	Custard Pie v2	\N	media/songs/Led-Zeppelin/Custard-Pie-v2.mp3	732
4914	Dancing Days	\N	media/songs/Led-Zeppelin/Dancing-Days.mp3	732
4915	Darlene	\N	media/songs/Led-Zeppelin/Darlene.mp3	732
4916	Dazed And Confused	\N	media/songs/Led-Zeppelin/Dazed-And-Confused.mp3	732
4917	Dazed And Confused v2	\N	media/songs/Led-Zeppelin/Dazed-And-Confused-v2.mp3	732
4918	Dazed And Confused v3	\N	media/songs/Led-Zeppelin/Dazed-And-Confused-v3.mp3	732
4919	Dyer Maker	\N	media/songs/Led-Zeppelin/Dyer-Maker.mp3	732
4920	Four Sticks	\N	media/songs/Led-Zeppelin/Four-Sticks.mp3	732
4921	Going To California	\N	media/songs/Led-Zeppelin/Going-To-California.mp3	732
4922	Going To California v2	\N	media/songs/Led-Zeppelin/Going-To-California-v2.mp3	732
4923	Going To California v3	\N	media/songs/Led-Zeppelin/Going-To-California-v3.mp3	732
4924	Good Times Bad Times	\N	media/songs/Led-Zeppelin/Good-Times-Bad-Times.mp3	732
4925	Good Times Bad Times v2	\N	media/songs/Led-Zeppelin/Good-Times-Bad-Times-v2.mp3	732
4926	Heartbreaker	\N	media/songs/Led-Zeppelin/Heartbreaker.mp3	732
4927	Heartbreaker Livin Lovin Maid	\N	media/songs/Led-Zeppelin/Heartbreaker-Livin-Lovin-Maid.mp3	732
4928	Heartbreaker v2	\N	media/songs/Led-Zeppelin/Heartbreaker-v2.mp3	732
4929	Heartbreaker v3	\N	media/songs/Led-Zeppelin/Heartbreaker-v3.mp3	732
4930	Heartbreaker v4	\N	media/songs/Led-Zeppelin/Heartbreaker-v4.mp3	732
4931	Heartbreaker v5	\N	media/songs/Led-Zeppelin/Heartbreaker-v5.mp3	732
4932	Heartbreaker v6	\N	media/songs/Led-Zeppelin/Heartbreaker-v6.mp3	732
4933	Hots On For Nowhere	\N	media/songs/Led-Zeppelin/Hots-On-For-Nowhere.mp3	732
4934	Hots On For Nowhere v2	\N	media/songs/Led-Zeppelin/Hots-On-For-Nowhere-v2.mp3	732
4935	Houses Of The Holy	\N	media/songs/Led-Zeppelin/Houses-Of-The-Holy.mp3	732
4936	How Many More Times	\N	media/songs/Led-Zeppelin/How-Many-More-Times.mp3	732
4937	I Cant Quit You Baby	\N	media/songs/Led-Zeppelin/I-Cant-Quit-You-Baby.mp3	732
4938	I Cant Quit You Baby v2	\N	media/songs/Led-Zeppelin/I-Cant-Quit-You-Baby-v2.mp3	732
4939	Immigrant Song	\N	media/songs/Led-Zeppelin/Immigrant-Song.mp3	732
4940	Immigrant Song Live	\N	media/songs/Led-Zeppelin/Immigrant-Song-Live.mp3	732
4941	Immigrant Song v2	\N	media/songs/Led-Zeppelin/Immigrant-Song-v2.mp3	732
4942	Immigrant Song v3	\N	media/songs/Led-Zeppelin/Immigrant-Song-v3.mp3	732
4943	Immigrant Song v4	\N	media/songs/Led-Zeppelin/Immigrant-Song-v4.mp3	732
4944	In My Time Of Dying	\N	media/songs/Led-Zeppelin/In-My-Time-Of-Dying.mp3	732
4945	Jimmy Page Style Backing	\N	media/songs/Led-Zeppelin/Jimmy-Page-Style-Backing.mp3	732
4946	Kashmir	\N	media/songs/Led-Zeppelin/Kashmir.mp3	732
4947	Kashmir Live	\N	media/songs/Led-Zeppelin/Kashmir-Live.mp3	732
4948	Kashmir v2	\N	media/songs/Led-Zeppelin/Kashmir-v2.mp3	732
4949	Kashmir v3	\N	media/songs/Led-Zeppelin/Kashmir-v3.mp3	732
4950	Kashmir v4	\N	media/songs/Led-Zeppelin/Kashmir-v4.mp3	732
4951	Kashmir v5	\N	media/songs/Led-Zeppelin/Kashmir-v5.mp3	732
4952	Kashmir v6	\N	media/songs/Led-Zeppelin/Kashmir-v6.mp3	732
4953	Kashmir v7	\N	media/songs/Led-Zeppelin/Kashmir-v7.mp3	732
4954	Kashmir v8	\N	media/songs/Led-Zeppelin/Kashmir-v8.mp3	732
4955	Livin Lovin Maid	\N	media/songs/Led-Zeppelin/Livin-Lovin-Maid.mp3	732
4956	Living Loving Maid	\N	media/songs/Led-Zeppelin/Living-Loving-Maid.mp3	732
4957	Misty Monuntain Hop	\N	media/songs/Led-Zeppelin/Misty-Monuntain-Hop.mp3	732
4958	Misty Mountain Hop	\N	media/songs/Led-Zeppelin/Misty-Mountain-Hop.mp3	732
4959	Misty Mountain Hop Live	\N	media/songs/Led-Zeppelin/Misty-Mountain-Hop-Live.mp3	732
4960	Misty Mountain Hop v2	\N	media/songs/Led-Zeppelin/Misty-Mountain-Hop-v2.mp3	732
4961	No Quarter	\N	media/songs/Led-Zeppelin/No-Quarter.mp3	732
4962	No Quarter v2	\N	media/songs/Led-Zeppelin/No-Quarter-v2.mp3	732
4963	Nobodys Fault But Mine	\N	media/songs/Led-Zeppelin/Nobodys-Fault-But-Mine.mp3	732
4964	Over The Hills	\N	media/songs/Led-Zeppelin/Over-The-Hills.mp3	732
4965	Over The Hills And Far Away	\N	media/songs/Led-Zeppelin/Over-The-Hills-And-Far-Away.mp3	732
4966	Over The Hills And Far Away Live	\N	media/songs/Led-Zeppelin/Over-The-Hills-And-Far-Away-Live.mp3	732
4967	Over The Hills And Far Away v2	\N	media/songs/Led-Zeppelin/Over-The-Hills-And-Far-Away-v2.mp3	732
4968	Ramble On	\N	media/songs/Led-Zeppelin/Ramble-On.mp3	732
4969	Ramble On v2	\N	media/songs/Led-Zeppelin/Ramble-On-v2.mp3	732
4970	Ramble On v3	\N	media/songs/Led-Zeppelin/Ramble-On-v3.mp3	732
4971	Ramble On v4	\N	media/songs/Led-Zeppelin/Ramble-On-v4.mp3	732
4972	Ramble On v5	\N	media/songs/Led-Zeppelin/Ramble-On-v5.mp3	732
4973	Ramble On v6	\N	media/songs/Led-Zeppelin/Ramble-On-v6.mp3	732
4974	Rock And Roll	\N	media/songs/Led-Zeppelin/Rock-And-Roll.mp3	732
4975	Rock And Roll Celebration Day Live	\N	media/songs/Led-Zeppelin/Rock-And-Roll-Celebration-Day-Live.mp3	732
4976	Rock And Roll v2	\N	media/songs/Led-Zeppelin/Rock-And-Roll-v2.mp3	732
4977	Rock And Roll v3	\N	media/songs/Led-Zeppelin/Rock-And-Roll-v3.mp3	732
4978	Rock And Roll v4	\N	media/songs/Led-Zeppelin/Rock-And-Roll-v4.mp3	732
4979	Rock And Roll v5	\N	media/songs/Led-Zeppelin/Rock-And-Roll-v5.mp3	732
4980	Rock And Roll v6	\N	media/songs/Led-Zeppelin/Rock-And-Roll-v6.mp3	732
4981	Rock And Roll v7	\N	media/songs/Led-Zeppelin/Rock-And-Roll-v7.mp3	732
4982	Rock N Roll	\N	media/songs/Led-Zeppelin/Rock-N-Roll.mp3	732
4983	Sick Again	\N	media/songs/Led-Zeppelin/Sick-Again.mp3	732
4984	Since Ive Been Loving You	\N	media/songs/Led-Zeppelin/Since-Ive-Been-Loving-You.mp3	732
4985	Since Ive Been Loving You Live	\N	media/songs/Led-Zeppelin/Since-Ive-Been-Loving-You-Live.mp3	732
4986	Since Ive Been Loving You v2	\N	media/songs/Led-Zeppelin/Since-Ive-Been-Loving-You-v2.mp3	732
4987	Since Ive Been Loving You v3	\N	media/songs/Led-Zeppelin/Since-Ive-Been-Loving-You-v3.mp3	732
4988	Since Ive Been Loving You v4	\N	media/songs/Led-Zeppelin/Since-Ive-Been-Loving-You-v4.mp3	732
4989	Since Ive Been Loving You v5	\N	media/songs/Led-Zeppelin/Since-Ive-Been-Loving-You-v5.mp3	732
4990	Since Ive Been Loving You v6	\N	media/songs/Led-Zeppelin/Since-Ive-Been-Loving-You-v6.mp3	732
4991	Stairway To Heaven	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven.mp3	732
4992	Stairway To Heaven v10	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v10.mp3	732
4993	Stairway To Heaven v11	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v11.mp3	732
4994	Stairway To Heaven v2	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v2.mp3	732
4995	Stairway To Heaven v3	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v3.mp3	732
4996	Stairway To Heaven v4	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v4.mp3	732
4997	Stairway To Heaven v5	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v5.mp3	732
4998	Stairway To Heaven v6	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v6.mp3	732
4999	Stairway To Heaven v7	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v7.mp3	732
5000	Stairway To Heaven v8	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v8.mp3	732
5001	Stairway To Heaven v9	\N	media/songs/Led-Zeppelin/Stairway-To-Heaven-v9.mp3	732
5002	Starway To Heaven	\N	media/songs/Led-Zeppelin/Starway-To-Heaven.mp3	732
5003	Starway To Heaven v2	\N	media/songs/Led-Zeppelin/Starway-To-Heaven-v2.mp3	732
5004	Tea For One	\N	media/songs/Led-Zeppelin/Tea-For-One.mp3	732
5005	Ten Years Gone	\N	media/songs/Led-Zeppelin/Ten-Years-Gone.mp3	732
5006	Ten Years Gone v2	\N	media/songs/Led-Zeppelin/Ten-Years-Gone-v2.mp3	732
5007	Thank You	\N	media/songs/Led-Zeppelin/Thank-You.mp3	732
5008	The Crunge	\N	media/songs/Led-Zeppelin/The-Crunge.mp3	732
5009	The Lemon Song	\N	media/songs/Led-Zeppelin/The-Lemon-Song.mp3	732
5010	The Lemon Song v2	\N	media/songs/Led-Zeppelin/The-Lemon-Song-v2.mp3	732
5011	The Lemon Song v3	\N	media/songs/Led-Zeppelin/The-Lemon-Song-v3.mp3	732
5012	The Lemon Song v4	\N	media/songs/Led-Zeppelin/The-Lemon-Song-v4.mp3	732
5013	The Ocean	\N	media/songs/Led-Zeppelin/The-Ocean.mp3	732
5014	The Ocean v2	\N	media/songs/Led-Zeppelin/The-Ocean-v2.mp3	732
5015	The Ocean v3	\N	media/songs/Led-Zeppelin/The-Ocean-v3.mp3	732
5016	The Ocean v4	\N	media/songs/Led-Zeppelin/The-Ocean-v4.mp3	732
5017	The Rain Song	\N	media/songs/Led-Zeppelin/The-Rain-Song.mp3	732
5018	The Rain Song v2	\N	media/songs/Led-Zeppelin/The-Rain-Song-v2.mp3	732
5019	The Rainsong	\N	media/songs/Led-Zeppelin/The-Rainsong.mp3	732
5020	The Rover	\N	media/songs/Led-Zeppelin/The-Rover.mp3	732
5021	The Rover v2	\N	media/songs/Led-Zeppelin/The-Rover-v2.mp3	732
5022	The Rover v3	\N	media/songs/Led-Zeppelin/The-Rover-v3.mp3	732
5023	The Wanton Song	\N	media/songs/Led-Zeppelin/The-Wanton-Song.mp3	732
5024	The Wanton Song v2	\N	media/songs/Led-Zeppelin/The-Wanton-Song-v2.mp3	732
5025	Trampled Under Foot	\N	media/songs/Led-Zeppelin/Trampled-Under-Foot.mp3	732
5026	Trampled Under Foot Live	\N	media/songs/Led-Zeppelin/Trampled-Under-Foot-Live.mp3	732
5027	Trampled Under Foot v2	\N	media/songs/Led-Zeppelin/Trampled-Under-Foot-v2.mp3	732
5028	Travelling Riverside Blues	\N	media/songs/Led-Zeppelin/Travelling-Riverside-Blues.mp3	732
5029	Were Gonna Groove	\N	media/songs/Led-Zeppelin/Were-Gonna-Groove.mp3	732
5030	What Is And What Should Never Be	\N	media/songs/Led-Zeppelin/What-Is-And-What-Should-Never-Be.mp3	732
5031	What Is And What Should Never Be v2	\N	media/songs/Led-Zeppelin/What-Is-And-What-Should-Never-Be-v2.mp3	732
5032	When The Levee Breaks	\N	media/songs/Led-Zeppelin/When-The-Levee-Breaks.mp3	732
5033	When The Levee Breaks v2	\N	media/songs/Led-Zeppelin/When-The-Levee-Breaks-v2.mp3	732
5034	Whole Lotta Love	\N	media/songs/Led-Zeppelin/Whole-Lotta-Love.mp3	732
5035	Whole Lotta Love v2	\N	media/songs/Led-Zeppelin/Whole-Lotta-Love-v2.mp3	732
5036	Whole Lotta Love v3	\N	media/songs/Led-Zeppelin/Whole-Lotta-Love-v3.mp3	732
5037	Whole Lotta Love v4	\N	media/songs/Led-Zeppelin/Whole-Lotta-Love-v4.mp3	732
5038	Whole Lotta Love v5	\N	media/songs/Led-Zeppelin/Whole-Lotta-Love-v5.mp3	732
5039	Whole Lotta Love v6	\N	media/songs/Led-Zeppelin/Whole-Lotta-Love-v6.mp3	732
5040	You Shook Me	\N	media/songs/Led-Zeppelin/You-Shook-Me.mp3	732
5041	Que Pais E Esse	\N	media/songs/Legion-Urbana/Que-Pais-E-Esse.mp3	733
5042	If I Aint Got You	\N	media/songs/Len-Price-3/If-I-Aint-Got-You.mp3	734
5043	Always On The Run	\N	media/songs/Lenny-Kravitz/Always-On-The-Run.mp3	735
5044	Always On The Run v2	\N	media/songs/Lenny-Kravitz/Always-On-The-Run-v2.mp3	735
5045	Always On The Run v3	\N	media/songs/Lenny-Kravitz/Always-On-The-Run-v3.mp3	735
5046	American Woman	\N	media/songs/Lenny-Kravitz/American-Woman.mp3	735
5047	Are You Gonna Go My Way	\N	media/songs/Lenny-Kravitz/Are-You-Gonna-Go-My-Way.mp3	735
5048	Are You Gonna Go My Way v2	\N	media/songs/Lenny-Kravitz/Are-You-Gonna-Go-My-Way-v2.mp3	735
5049	Are You Gonna Go My Way v3	\N	media/songs/Lenny-Kravitz/Are-You-Gonna-Go-My-Way-v3.mp3	735
5050	Are You Gonna Go My Way v4	\N	media/songs/Lenny-Kravitz/Are-You-Gonna-Go-My-Way-v4.mp3	735
5051	Are You Gonna Go My Way v5	\N	media/songs/Lenny-Kravitz/Are-You-Gonna-Go-My-Way-v5.mp3	735
5052	Are You Gonna Go My Way v6	\N	media/songs/Lenny-Kravitz/Are-You-Gonna-Go-My-Way-v6.mp3	735
5053	Fly Away	\N	media/songs/Lenny-Kravitz/Fly-Away.mp3	735
5054	Ill Be Waiting	\N	media/songs/Lenny-Kravitz/Ill-Be-Waiting.mp3	735
5055	Ill Be Waiting v2	\N	media/songs/Lenny-Kravitz/Ill-Be-Waiting-v2.mp3	735
5056	Lady	\N	media/songs/Lenny-Kravitz/Lady.mp3	735
5057	Let Love Rule	\N	media/songs/Lenny-Kravitz/Let-Love-Rule.mp3	735
5058	Let Love Rule v2	\N	media/songs/Lenny-Kravitz/Let-Love-Rule-v2.mp3	735
5059	Mr Cab Driver	\N	media/songs/Lenny-Kravitz/Mr-Cab-Driver.mp3	735
5060	Rock And Roll Is Dead	\N	media/songs/Lenny-Kravitz/Rock-And-Roll-Is-Dead.mp3	735
5061	Simple Man	\N	media/songs/Leonard-skynard/Simple-Man.mp3	736
5062	Im Gone Im Going	\N	media/songs/Lesley-Roy/Im-Gone-Im-Going.mp3	737
5063	April Mae June	\N	media/songs/Lessons/April-Mae-June.mp3	738
5064	Bb Gunn	\N	media/songs/Lessons/Bb-Gunn.mp3	738
5065	Been There Done That	\N	media/songs/Lessons/Been-There-Done-That.mp3	738
5066	Boardners Time	\N	media/songs/Lessons/Boardners-Time.mp3	738
5067	Bucket O Rocks	\N	media/songs/Lessons/Bucket-O-Rocks.mp3	738
5068	Concrete Skies	\N	media/songs/Lessons/Concrete-Skies.mp3	738
5069	Cray Fish Blues	\N	media/songs/Lessons/Cray-Fish-Blues.mp3	738
5070	Crazy Not Broken	\N	media/songs/Lessons/Crazy-Not-Broken.mp3	738
5071	Dont Be Late	\N	media/songs/Lessons/Dont-Be-Late.mp3	738
5072	Erics Got The Key	\N	media/songs/Lessons/Erics-Got-The-Key.mp3	738
5073	Funky 12 Bar	\N	media/songs/Lessons/Funky-12-Bar.mp3	738
5074	Good Time Honey	\N	media/songs/Lessons/Good-Time-Honey.mp3	738
5075	Last Orders Shuffle	\N	media/songs/Lessons/Last-Orders-Shuffle.mp3	738
5076	Lw Pearson	\N	media/songs/Lessons/Lw-Pearson.mp3	738
5077	Make It Easy	\N	media/songs/Lessons/Make-It-Easy.mp3	738
5078	Merle Travis	\N	media/songs/Lessons/Merle-Travis.mp3	738
5079	Mile High Cafe	\N	media/songs/Lessons/Mile-High-Cafe.mp3	738
5080	Moore Walkin Blues	\N	media/songs/Lessons/Moore-Walkin-Blues.mp3	738
5081	New Orleans Stomper	\N	media/songs/Lessons/New-Orleans-Stomper.mp3	738
5082	One More For The Road	\N	media/songs/Lessons/One-More-For-The-Road.mp3	738
5083	Red Sock Blues	\N	media/songs/Lessons/Red-Sock-Blues.mp3	738
5084	Texas Rocker	\N	media/songs/Lessons/Texas-Rocker.mp3	738
5085	Trout Fishing	\N	media/songs/Lessons/Trout-Fishing.mp3	738
5086	Welcome To The Neighborhood	\N	media/songs/Libyans/Welcome-To-The-Neighborhood.mp3	739
5087	Love To Let You Down	\N	media/songs/Life-Of-Agony/Love-To-Let-You-Down.mp3	740
5088	Sick Cycle Carousel	\N	media/songs/Lifehouse/Sick-Cycle-Carousel.mp3	741
5089	Somewhere In Between	\N	media/songs/Lifehouse/Somewhere-In-Between.mp3	741
5090	Behind Blue Eyes	\N	media/songs/Limp-Bizkit/Behind-Blue-Eyes.mp3	742
5091	Break Stuff	\N	media/songs/Limp-Bizkit/Break-Stuff.mp3	742
5092	Build A Bridge	\N	media/songs/Limp-Bizkit/Build-A-Bridge.mp3	742
5093	My Way	\N	media/songs/Limp-Bizkit/My-Way.mp3	742
5094	Nookie	\N	media/songs/Limp-Bizkit/Nookie.mp3	742
5095	Nookie v2	\N	media/songs/Limp-Bizkit/Nookie-v2.mp3	742
5096	Take A Look Around	\N	media/songs/Limp-Bizkit/Take-A-Look-Around.mp3	742
5097	Take A Look Around v2	\N	media/songs/Limp-Bizkit/Take-A-Look-Around-v2.mp3	742
5098	Bleed It Out	\N	media/songs/Linkin-Park/Bleed-It-Out.mp3	743
5099	Burning In The Skies	\N	media/songs/Linkin-Park/Burning-In-The-Skies.mp3	743
5100	Crawling	\N	media/songs/Linkin-Park/Crawling.mp3	743
5101	Crawling v2	\N	media/songs/Linkin-Park/Crawling-v2.mp3	743
5102	Crawling v3	\N	media/songs/Linkin-Park/Crawling-v3.mp3	743
5103	Crawling v4	\N	media/songs/Linkin-Park/Crawling-v4.mp3	743
5104	Given Up	\N	media/songs/Linkin-Park/Given-Up.mp3	743
5105	In The End	\N	media/songs/Linkin-Park/In-The-End.mp3	743
5106	In The End v2	\N	media/songs/Linkin-Park/In-The-End-v2.mp3	743
5107	In The End v3	\N	media/songs/Linkin-Park/In-The-End-v3.mp3	743
5108	In The End v4	\N	media/songs/Linkin-Park/In-The-End-v4.mp3	743
5109	Linkin Park Style Backing	\N	media/songs/Linkin-Park/Linkin-Park-Style-Backing.mp3	743
5110	New Divide	\N	media/songs/Linkin-Park/New-Divide.mp3	743
5111	No More Sorrow	\N	media/songs/Linkin-Park/No-More-Sorrow.mp3	743
5112	Numb	\N	media/songs/Linkin-Park/Numb.mp3	743
5113	Numb v2	\N	media/songs/Linkin-Park/Numb-v2.mp3	743
5114	One Step Closer	\N	media/songs/Linkin-Park/One-Step-Closer.mp3	743
5115	One Step Closer v2	\N	media/songs/Linkin-Park/One-Step-Closer-v2.mp3	743
5116	One Step Closer v3	\N	media/songs/Linkin-Park/One-Step-Closer-v3.mp3	743
5117	Shadow Of The Day	\N	media/songs/Linkin-Park/Shadow-Of-The-Day.mp3	743
5118	What Ive Done	\N	media/songs/Linkin-Park/What-Ive-Done.mp3	743
5119	What Ive Done v2	\N	media/songs/Linkin-Park/What-Ive-Done-v2.mp3	743
5120	What Ive Done v3	\N	media/songs/Linkin-Park/What-Ive-Done-v3.mp3	743
5121	Transformers Theme	\N	media/songs/Lion/Transformers-Theme.mp3	744
5122	Hello	\N	media/songs/Lionel-Ritchie/Hello.mp3	745
5123	Hello v2	\N	media/songs/Lionel-Ritchie/Hello-v2.mp3	745
5124	Biaxident	\N	media/songs/Liquid-Tension-Experiment/Biaxident.mp3	746
5125	Biaxident v2	\N	media/songs/Liquid-Tension-Experiment/Biaxident-v2.mp3	746
5126	Biaxident v3	\N	media/songs/Liquid-Tension-Experiment/Biaxident-v3.mp3	746
5127	Hourglass	\N	media/songs/Liquid-Tension-Experiment/Hourglass.mp3	746
5128	Kindred Spirits	\N	media/songs/Liquid-Tension-Experiment/Kindred-Spirits.mp3	746
5129	Kindred Spirits v2	\N	media/songs/Liquid-Tension-Experiment/Kindred-Spirits-v2.mp3	746
5130	Paradigm Shift	\N	media/songs/Liquid-Tension-Experiment/Paradigm-Shift.mp3	746
5131	Paradigm Shift v2	\N	media/songs/Liquid-Tension-Experiment/Paradigm-Shift-v2.mp3	746
5132	State Of Grace	\N	media/songs/Liquid-Tension-Experiment/State-Of-Grace.mp3	746
5133	Universal Mind	\N	media/songs/Liquid-Tension-Experiment/Universal-Mind.mp3	746
5134	Universal Mind v2	\N	media/songs/Liquid-Tension-Experiment/Universal-Mind-v2.mp3	746
5135	My Own Worst Enemy	\N	media/songs/Lit/My-Own-Worst-Enemy.mp3	747
5136	My Own Worst Enemy v2	\N	media/songs/Lit/My-Own-Worst-Enemy-v2.mp3	747
5137	Close My Eyes Forever	\N	media/songs/Lita-Ford/Close-My-Eyes-Forever.mp3	748
5138	Kiss Me Deadly	\N	media/songs/Lita-Ford/Kiss-Me-Deadly.mp3	748
5139	Help Is On Its Way	\N	media/songs/Little-River-Band/Help-Is-On-Its-Way.mp3	749
5140	I Alone	\N	media/songs/Live/I-Alone.mp3	750
5141	Lightning Crashes	\N	media/songs/Live/Lightning-Crashes.mp3	750
5142	Lightning Crashes v2	\N	media/songs/Live/Lightning-Crashes-v2.mp3	750
5143	The Dolphins Cry	\N	media/songs/Live/The-Dolphins-Cry.mp3	750
5144	The Dolphins Cry v2	\N	media/songs/Live/The-Dolphins-Cry-v2.mp3	750
5145	A Of When	\N	media/songs/Living-Colour/A-Of-When.mp3	751
5146	Cult Of Personality	\N	media/songs/Living-Colour/Cult-Of-Personality.mp3	751
5147	Sacred Ground	\N	media/songs/Living-Colour/Sacred-Ground.mp3	751
5148	Sacred Ground v2	\N	media/songs/Living-Colour/Sacred-Ground-v2.mp3	751
5149	Song Without Sin	\N	media/songs/Living-Colour/Song-Without-Sin.mp3	751
5150	All Over Again	\N	media/songs/Locksley/All-Over-Again.mp3	752
5151	Dont Make Me Wait	\N	media/songs/Locksley/Dont-Make-Me-Wait.mp3	752
5152	She Does	\N	media/songs/Locksley/She-Does.mp3	752
5153	Hard Rock Hallelujah	\N	media/songs/Lordi/Hard-Rock-Hallelujah.mp3	753
5154	La Del Estudiante	\N	media/songs/Los-Berrones/La-Del-Estudiante.mp3	754
5155	Soldadito Marinero	\N	media/songs/Los-Berrones/Soldadito-Marinero.mp3	754
5156	Inadaptado	\N	media/songs/Los-Gatos/Inadaptado.mp3	755
5157	La Bamba	\N	media/songs/Los-Lobos/La-Bamba.mp3	756
5158	La Bamba v2	\N	media/songs/Los-Lobos/La-Bamba-v2.mp3	756
5159	La Bamba v3	\N	media/songs/Los-Lobos/La-Bamba-v3.mp3	756
5160	Will The Wolf Survive	\N	media/songs/Los-Lobos/Will-The-Wolf-Survive.mp3	756
5161	Heaven	\N	media/songs/Los-Lonely-Boys/Heaven.mp3	757
5162	Heaven v2	\N	media/songs/Los-Lonely-Boys/Heaven-v2.mp3	757
5163	How Far Is Heaven	\N	media/songs/Los-Lonely-Boys/How-Far-Is-Heaven.mp3	757
5164	Sin Documentos	\N	media/songs/Los-Rodriguez/Sin-Documentos.mp3	758
5165	Reality	\N	media/songs/Lost-frequencies/Reality.mp3	759
5166	Crazy Doctor	\N	media/songs/Loudness/Crazy-Doctor.mp3	760
5167	Mirror People	\N	media/songs/Love-And-Rockets/Mirror-People.mp3	761
5168	Turn Me Loose	\N	media/songs/Loverboy/Turn-Me-Loose.mp3	762
5169	Working For The Weekend	\N	media/songs/Loverboy/Working-For-The-Weekend.mp3	762
5170	Deluxe	\N	media/songs/Lush/Deluxe.mp3	763
5171	Dance Of The Dogs	\N	media/songs/Lynch-Mob/Dance-Of-The-Dogs.mp3	764
5172	Wicked Sensation	\N	media/songs/Lynch-Mob/Wicked-Sensation.mp3	764
5173	Call Me The Breeze	\N	media/songs/Lynyrd-Skynyrd/Call-Me-The-Breeze.mp3	765
5174	Call Me The Breeze Live	\N	media/songs/Lynyrd-Skynyrd/Call-Me-The-Breeze-Live.mp3	765
5175	Call Me The Breeze v2	\N	media/songs/Lynyrd-Skynyrd/Call-Me-The-Breeze-v2.mp3	765
5176	Call Me The Breeze v3	\N	media/songs/Lynyrd-Skynyrd/Call-Me-The-Breeze-v3.mp3	765
5177	Dont Ask Me No Questions	\N	media/songs/Lynyrd-Skynyrd/Dont-Ask-Me-No-Questions.mp3	765
5178	Double Trouble	\N	media/songs/Lynyrd-Skynyrd/Double-Trouble.mp3	765
5179	Freebird	\N	media/songs/Lynyrd-Skynyrd/Freebird.mp3	765
5180	Freebird v2	\N	media/songs/Lynyrd-Skynyrd/Freebird-v2.mp3	765
5181	Freebird v3	\N	media/songs/Lynyrd-Skynyrd/Freebird-v3.mp3	765
5182	Freebird v4	\N	media/songs/Lynyrd-Skynyrd/Freebird-v4.mp3	765
5183	Freebird v5	\N	media/songs/Lynyrd-Skynyrd/Freebird-v5.mp3	765
5184	Gimme Three Steps	\N	media/songs/Lynyrd-Skynyrd/Gimme-Three-Steps.mp3	765
5185	Gimme Three Steps v2	\N	media/songs/Lynyrd-Skynyrd/Gimme-Three-Steps-v2.mp3	765
5186	Gimme Three Steps v3	\N	media/songs/Lynyrd-Skynyrd/Gimme-Three-Steps-v3.mp3	765
5187	Give Me Three Steps	\N	media/songs/Lynyrd-Skynyrd/Give-Me-Three-Steps.mp3	765
5188	I Know A Little	\N	media/songs/Lynyrd-Skynyrd/I-Know-A-Little.mp3	765
5189	Saturday Night Special	\N	media/songs/Lynyrd-Skynyrd/Saturday-Night-Special.mp3	765
5190	Simple Man	\N	media/songs/Lynyrd-Skynyrd/Simple-Man.mp3	765
5191	Simple Man v2	\N	media/songs/Lynyrd-Skynyrd/Simple-Man-v2.mp3	765
5192	Simple Man v3	\N	media/songs/Lynyrd-Skynyrd/Simple-Man-v3.mp3	765
5193	Sweet Home Alabama	\N	media/songs/Lynyrd-Skynyrd/Sweet-Home-Alabama.mp3	765
5194	Sweet Home Alabama Live	\N	media/songs/Lynyrd-Skynyrd/Sweet-Home-Alabama-Live.mp3	765
5195	Sweet Home Alabama v2	\N	media/songs/Lynyrd-Skynyrd/Sweet-Home-Alabama-v2.mp3	765
5196	Sweet Home Alabama v3	\N	media/songs/Lynyrd-Skynyrd/Sweet-Home-Alabama-v3.mp3	765
5197	Sweet Home Alabama v4	\N	media/songs/Lynyrd-Skynyrd/Sweet-Home-Alabama-v4.mp3	765
5198	That Smell	\N	media/songs/Lynyrd-Skynyrd/That-Smell.mp3	765
5199	That Smell v2	\N	media/songs/Lynyrd-Skynyrd/That-Smell-v2.mp3	765
5200	That Smell v3	\N	media/songs/Lynyrd-Skynyrd/That-Smell-v3.mp3	765
5201	Tuesdays Gone	\N	media/songs/Lynyrd-Skynyrd/Tuesdays-Gone.mp3	765
5202	Tuesdays Gone v2	\N	media/songs/Lynyrd-Skynyrd/Tuesdays-Gone-v2.mp3	765
5203	Tuesdays Gone v3	\N	media/songs/Lynyrd-Skynyrd/Tuesdays-Gone-v3.mp3	765
5204	Whats Your Name	\N	media/songs/Lynyrd-Skynyrd/Whats-Your-Name.mp3	765
5205	Whats Your Name v2	\N	media/songs/Lynyrd-Skynyrd/Whats-Your-Name-v2.mp3	765
5206	Whiskey Rock A Roller	\N	media/songs/Lynyrd-Skynyrd/Whiskey-Rock-A-Roller.mp3	765
5207	Whiskey Rock A Roller v2	\N	media/songs/Lynyrd-Skynyrd/Whiskey-Rock-A-Roller-v2.mp3	765
5208	Aesthetics Of Hate	\N	media/songs/Machinehead/Aesthetics-Of-Hate.mp3	766
5209	Aesthetics Of Hate v2	\N	media/songs/Machinehead/Aesthetics-Of-Hate-v2.mp3	766
5210	Aesthetics Of Hate v3	\N	media/songs/Machinehead/Aesthetics-Of-Hate-v3.mp3	766
5211	Davidian	\N	media/songs/Machinehead/Davidian.mp3	766
5212	Halo	\N	media/songs/Machinehead/Halo.mp3	766
5213	Halo v2	\N	media/songs/Machinehead/Halo-v2.mp3	766
5214	Imperium	\N	media/songs/Machinehead/Imperium.mp3	766
5215	River Of Deceit	\N	media/songs/Mad-Season/River-Of-Deceit.mp3	767
5216	Farewell Myth	\N	media/songs/Made-In-Mexico/Farewell-Myth.mp3	768
5217	Yes We Can	\N	media/songs/Made-In-Mexico/Yes-We-Can.mp3	768
5218	Desde Mi Cielo	\N	media/songs/Mago-De-Oz/Desde-Mi-Cielo.mp3	769
5219	El Templo Del Adios	\N	media/songs/Mago-De-Oz/El-Templo-Del-Adios.mp3	769
5220	Birds Of Fire	\N	media/songs/Mahavishnu-Orchestra/Birds-Of-Fire.mp3	770
5221	A Jagged Gorgeous Winter	\N	media/songs/Main-Drag/A-Jagged-Gorgeous-Winter.mp3	771
5222	Me Vale	\N	media/songs/Mana/Me-Vale.mp3	772
5223	Oye Mi Amor	\N	media/songs/Mana/Oye-Mi-Amor.mp3	772
5224	Oye Mi Amor v2	\N	media/songs/Mana/Oye-Mi-Amor-v2.mp3	772
5225	Design For Life	\N	media/songs/Manic-Street-Preachers/Design-For-Life.mp3	773
5226	Design For Life v2	\N	media/songs/Manic-Street-Preachers/Design-For-Life-v2.mp3	773
5227	Kevin Carter	\N	media/songs/Manic-Street-Preachers/Kevin-Carter.mp3	773
5228	Motorcycle Emptiness	\N	media/songs/Manic-Street-Preachers/Motorcycle-Emptiness.mp3	773
5229	Army Of The Immortals	\N	media/songs/Manowar/Army-Of-The-Immortals.mp3	774
5230	Battle Hymns	\N	media/songs/Manowar/Battle-Hymns.mp3	774
5231	Carry On	\N	media/songs/Manowar/Carry-On.mp3	774
5232	Fight Until We Die	\N	media/songs/Manowar/Fight-Until-We-Die.mp3	774
5233	House Of Death	\N	media/songs/Manowar/House-Of-Death.mp3	774
5234	Kings Of Metal	\N	media/songs/Manowar/Kings-Of-Metal.mp3	774
5235	Metal Warriors	\N	media/songs/Manowar/Metal-Warriors.mp3	774
5236	Walking In Memphis	\N	media/songs/Marc-Cohn/Walking-In-Memphis.mp3	775
5237	Crossroads Race Against Time	\N	media/songs/Marcel-Coenen/Crossroads-Race-Against-Time.mp3	776
5238	Inner Alchemy	\N	media/songs/Marcel-Coenen/Inner-Alchemy.mp3	776
5239	Andromeda Solo	\N	media/songs/Marco-Sfogli/Andromeda-Solo.mp3	777
5240	Still Hurts	\N	media/songs/Marco-Sfogli/Still-Hurts.mp3	777
5241	Still Hurts v2	\N	media/songs/Marco-Sfogli/Still-Hurts-v2.mp3	777
5242	Dreaming	\N	media/songs/Marcy-Playground/Dreaming.mp3	778
5243	Saint Joe On The School Bus	\N	media/songs/Marcy-Playground/Saint-Joe-On-The-School-Bus.mp3	778
5244	Without You	\N	media/songs/Mariah-Carey/Without-You.mp3	779
5245	Kayleigh	\N	media/songs/Marillion/Kayleigh.mp3	780
5246	Kayleigh v2	\N	media/songs/Marillion/Kayleigh-v2.mp3	780
5247	Coma White	\N	media/songs/Marilyn-Manson/Coma-White.mp3	781
5248	Coma White v2	\N	media/songs/Marilyn-Manson/Coma-White-v2.mp3	781
5249	Dogma	\N	media/songs/Marilyn-Manson/Dogma.mp3	781
5250	Get Your Gunn	\N	media/songs/Marilyn-Manson/Get-Your-Gunn.mp3	781
5251	Get Your Gunn v2	\N	media/songs/Marilyn-Manson/Get-Your-Gunn-v2.mp3	781
5252	Mobscene	\N	media/songs/Marilyn-Manson/Mobscene.mp3	781
5253	Putting Holes In Happiness	\N	media/songs/Marilyn-Manson/Putting-Holes-In-Happiness.mp3	781
5254	Sweet Dreams	\N	media/songs/Marilyn-Manson/Sweet-Dreams.mp3	781
5255	Sweet Dreams v2	\N	media/songs/Marilyn-Manson/Sweet-Dreams-v2.mp3	781
5256	Sweet Dreams v3	\N	media/songs/Marilyn-Manson/Sweet-Dreams-v3.mp3	781
5257	Sweet Dreams v4	\N	media/songs/Marilyn-Manson/Sweet-Dreams-v4.mp3	781
5258	Tainted Love	\N	media/songs/Marilyn-Manson/Tainted-Love.mp3	781
5259	The Beautiful People	\N	media/songs/Marilyn-Manson/The-Beautiful-People.mp3	781
5260	The Beautiful People v2	\N	media/songs/Marilyn-Manson/The-Beautiful-People-v2.mp3	781
5261	The Dope Show	\N	media/songs/Marilyn-Manson/The-Dope-Show.mp3	781
5262	The Nobodies	\N	media/songs/Marilyn-Manson/The-Nobodies.mp3	781
5263	Tourniquet	\N	media/songs/Marilyn-Manson/Tourniquet.mp3	781
5264	Tourniquet v2	\N	media/songs/Marilyn-Manson/Tourniquet-v2.mp3	781
5265	Avantgarde Alphabet	\N	media/songs/Mario-Tomic/Avantgarde-Alphabet.mp3	782
5266	Echo Over Voice	\N	media/songs/Mario-Tomic/Echo-Over-Voice.mp3	782
5267	Endless Blue	\N	media/songs/Mario-Tomic/Endless-Blue.mp3	782
5268	Falls Avenue	\N	media/songs/Mario-Tomic/Falls-Avenue.mp3	782
5269	Fantasy Theatre	\N	media/songs/Mario-Tomic/Fantasy-Theatre.mp3	782
5270	Logos	\N	media/songs/Mario-Tomic/Logos.mp3	782
5271	Love Story	\N	media/songs/Mario-Tomic/Love-Story.mp3	782
5272	Misty Landscapes	\N	media/songs/Mario-Tomic/Misty-Landscapes.mp3	782
5273	One Hundred Poems	\N	media/songs/Mario-Tomic/One-Hundred-Poems.mp3	782
5274	Rain Cabaret	\N	media/songs/Mario-Tomic/Rain-Cabaret.mp3	782
5275	Randevu	\N	media/songs/Mario-Tomic/Randevu.mp3	782
5276	Taboo	\N	media/songs/Mario-Tomic/Taboo.mp3	782
5277	Taboo v2	\N	media/songs/Mario-Tomic/Taboo-v2.mp3	782
5278	Tora Ora	\N	media/songs/Mario-Tomic/Tora-Ora.mp3	782
5279	Tribal Fusion	\N	media/songs/Mario-Tomic/Tribal-Fusion.mp3	782
5280	Tropic Danza	\N	media/songs/Mario-Tomic/Tropic-Danza.mp3	782
5281	Down To The Waterline	\N	media/songs/Mark-Knopfler/Down-To-The-Waterline.mp3	783
5282	I Think I Love You Too Much	\N	media/songs/Mark-Knopfler/I-Think-I-Love-You-Too-Much.mp3	783
5283	What It Is	\N	media/songs/Mark-Knopfler/What-It-Is.mp3	783
5284	Wild Theme	\N	media/songs/Mark-Knopfler/Wild-Theme.mp3	783
5285	Your Own Sweet Way	\N	media/songs/Mark-Knopfler/Your-Own-Sweet-Way.mp3	783
5286	Harder To Breathe	\N	media/songs/Maroon-5/Harder-To-Breathe.mp3	784
5287	Harder To Breathe v2	\N	media/songs/Maroon-5/Harder-To-Breathe-v2.mp3	784
5288	Harder To Breathe v3	\N	media/songs/Maroon-5/Harder-To-Breathe-v3.mp3	784
5289	If I Never See Your Face Again	\N	media/songs/Maroon-5/If-I-Never-See-Your-Face-Again.mp3	784
5290	Makes Me Wonder	\N	media/songs/Maroon-5/Makes-Me-Wonder.mp3	784
5291	Misery	\N	media/songs/Maroon-5/Misery.mp3	784
5292	Moves Like Jagger	\N	media/songs/Maroon-5/Moves-Like-Jagger.mp3	784
5293	She Will Be Loved	\N	media/songs/Maroon-5/She-Will-Be-Loved.mp3	784
5294	She Will Be Loved v2	\N	media/songs/Maroon-5/She-Will-Be-Loved-v2.mp3	784
5295	She Will Be Loved v3	\N	media/songs/Maroon-5/She-Will-Be-Loved-v3.mp3	784
5296	She Will Be Loved v4	\N	media/songs/Maroon-5/She-Will-Be-Loved-v4.mp3	784
5297	Sunday Morning	\N	media/songs/Maroon-5/Sunday-Morning.mp3	784
5298	Sunday Morning v2	\N	media/songs/Maroon-5/Sunday-Morning-v2.mp3	784
5299	Sunday Morning v3	\N	media/songs/Maroon-5/Sunday-Morning-v3.mp3	784
5300	Sunday Morning v4	\N	media/songs/Maroon-5/Sunday-Morning-v4.mp3	784
5301	This Love	\N	media/songs/Maroon-5/This-Love.mp3	784
5302	This Love v2	\N	media/songs/Maroon-5/This-Love-v2.mp3	784
5303	This Love v3	\N	media/songs/Maroon-5/This-Love-v3.mp3	784
5304	This Love v4	\N	media/songs/Maroon-5/This-Love-v4.mp3	784
5305	This Love v5	\N	media/songs/Maroon-5/This-Love-v5.mp3	784
5306	This Love v6	\N	media/songs/Maroon-5/This-Love-v6.mp3	784
5307	Cant You See	\N	media/songs/Marshall-Tucker-Band/Cant-You-See.mp3	785
5308	Echo Beach	\N	media/songs/Martha-And-The-Muffins/Echo-Beach.mp3	786
5309	The Mirage	\N	media/songs/Martin-Vezoli/The-Mirage.mp3	787
5310	This Ones For The Girls	\N	media/songs/Martina-Mcbride/This-Ones-For-The-Girls.mp3	788
5311	Dragon Mistress	\N	media/songs/Marty-Friedman/Dragon-Mistress.mp3	789
5312	Dragon Mistress v2	\N	media/songs/Marty-Friedman/Dragon-Mistress-v2.mp3	789
5313	Forbidden City	\N	media/songs/Marty-Friedman/Forbidden-City.mp3	789
5314	Forbidden City v2	\N	media/songs/Marty-Friedman/Forbidden-City-v2.mp3	789
5315	Night	\N	media/songs/Marty-Friedman/Night.mp3	789
5316	Rock Box	\N	media/songs/Marty-Friedman/Rock-Box.mp3	789
5317	Thunder March	\N	media/songs/Marty-Friedman/Thunder-March.mp3	789
5318	Thunder March v2	\N	media/songs/Marty-Friedman/Thunder-March-v2.mp3	789
5319	Thuunder March	\N	media/songs/Marty-Friedman/Thuunder-March.mp3	789
5320	Tibet And Angel	\N	media/songs/Marty-Friedman/Tibet-And-Angel.mp3	789
5321	Valley Of Eternity	\N	media/songs/Marty-Friedman/Valley-Of-Eternity.mp3	789
5322	Heard It Through The Grapevine	\N	media/songs/Marvin-Gaye/Heard-It-Through-The-Grapevine.mp3	790
5323	Classical Gas	\N	media/songs/Mason-Williams/Classical-Gas.mp3	791
5324	Bladecatcher	\N	media/songs/Mastodon/Bladecatcher.mp3	792
5325	Colony Of Birchmen	\N	media/songs/Mastodon/Colony-Of-Birchmen.mp3	792
5326	Crystal Skull	\N	media/songs/Mastodon/Crystal-Skull.mp3	792
5327	Iron Tusk	\N	media/songs/Mastodon/Iron-Tusk.mp3	792
5328	Seabeast	\N	media/songs/Mastodon/Seabeast.mp3	792
5329	Sleeping Giant	\N	media/songs/Mastodon/Sleeping-Giant.mp3	792
5330	The Wolf Is Loose	\N	media/songs/Mastodon/The-Wolf-Is-Loose.mp3	792
5331	Monsters	\N	media/songs/Matchbook-Romance/Monsters.mp3	793
5332	3 Am  Acoustic	\N	media/songs/Matchbox-20/3-Am--Acoustic.mp3	794
5333	Bent	\N	media/songs/Matchbox-20/Bent.mp3	794
5334	Bright Lights	\N	media/songs/Matchbox-20/Bright-Lights.mp3	794
5335	Disease	\N	media/songs/Matchbox-20/Disease.mp3	794
5336	If Youre Gone	\N	media/songs/Matchbox-20/If-Youre-Gone.mp3	794
5337	Push	\N	media/songs/Matchbox-20/Push.mp3	794
5338	Real World	\N	media/songs/Matchbox-20/Real-World.mp3	794
5339	Real World v2	\N	media/songs/Matchbox-20/Real-World-v2.mp3	794
5340	Unwell	\N	media/songs/Matchbox-20/Unwell.mp3	794
5341	Bright Lights	\N	media/songs/Matchbox-Twenty/Bright-Lights.mp3	795
5342	Bright Lights v2	\N	media/songs/Matchbox-Twenty/Bright-Lights-v2.mp3	795
5343	Disease	\N	media/songs/Matchbox-Twenty/Disease.mp3	795
5344	If YouRe Gone	\N	media/songs/Matchbox-Twenty/If-YouRe-Gone.mp3	795
5345	Unwell	\N	media/songs/Matchbox-Twenty/Unwell.mp3	795
5346	Unwell v2	\N	media/songs/Matchbox-Twenty/Unwell-v2.mp3	795
5347	Girlfriend	\N	media/songs/Matthew-Sweet/Girlfriend.mp3	796
5348	Girlfriend v2	\N	media/songs/Matthew-Sweet/Girlfriend-v2.mp3	796
5349	Girls Who Play Guitars	\N	media/songs/Maximo-Park/Girls-Who-Play-Guitars.mp3	797
5350	In Another World	\N	media/songs/Maximo-Park/In-Another-World.mp3	797
5351	Deathcrush	\N	media/songs/Mayhem/Deathcrush.mp3	798
5352	Kick Out The Jams	\N	media/songs/MC5/Kick-Out-The-Jams.mp3	799
5353	Plateau	\N	media/songs/Meat-Puppets/Plateau.mp3	800
5354	A Tout Le Monde	\N	media/songs/Megadeth/A-Tout-Le-Monde.mp3	801
5355	A Tout Le Monde v2	\N	media/songs/Megadeth/A-Tout-Le-Monde-v2.mp3	801
5356	A Tout Le Monde v3	\N	media/songs/Megadeth/A-Tout-Le-Monde-v3.mp3	801
5357	Absolution	\N	media/songs/Megadeth/Absolution.mp3	801
5358	Addicted To Chaos	\N	media/songs/Megadeth/Addicted-To-Chaos.mp3	801
5359	Almost Honest	\N	media/songs/Megadeth/Almost-Honest.mp3	801
5360	Angry Again	\N	media/songs/Megadeth/Angry-Again.mp3	801
5361	Angry Again v2	\N	media/songs/Megadeth/Angry-Again-v2.mp3	801
5362	Angry Again v3	\N	media/songs/Megadeth/Angry-Again-v3.mp3	801
5363	Angry Again v4	\N	media/songs/Megadeth/Angry-Again-v4.mp3	801
5364	Architecture Of Aggression	\N	media/songs/Megadeth/Architecture-Of-Aggression.mp3	801
5365	Ashes In Your Mouth	\N	media/songs/Megadeth/Ashes-In-Your-Mouth.mp3	801
5366	Back In The Day	\N	media/songs/Megadeth/Back-In-The-Day.mp3	801
5367	Bad Omen	\N	media/songs/Megadeth/Bad-Omen.mp3	801
5368	Bad Omen v2	\N	media/songs/Megadeth/Bad-Omen-v2.mp3	801
5369	Blackmail The Universe	\N	media/songs/Megadeth/Blackmail-The-Universe.mp3	801
5370	Blood Of Heroes	\N	media/songs/Megadeth/Blood-Of-Heroes.mp3	801
5371	Blood Of Heroes v2	\N	media/songs/Megadeth/Blood-Of-Heroes-v2.mp3	801
5372	Countdown To Extinction	\N	media/songs/Megadeth/Countdown-To-Extinction.mp3	801
5373	Countdown To Extinction v2	\N	media/songs/Megadeth/Countdown-To-Extinction-v2.mp3	801
5374	Dawn Patrol	\N	media/songs/Megadeth/Dawn-Patrol.mp3	801
5375	Devils Island	\N	media/songs/Megadeth/Devils-Island.mp3	801
5376	Diadems	\N	media/songs/Megadeth/Diadems.mp3	801
5377	Dialetic Chaos	\N	media/songs/Megadeth/Dialetic-Chaos.mp3	801
5378	Disconnect	\N	media/songs/Megadeth/Disconnect.mp3	801
5379	Dread And The Fugitive Mind	\N	media/songs/Megadeth/Dread-And-The-Fugitive-Mind.mp3	801
5380	Dread And The Fugitive Mind v2	\N	media/songs/Megadeth/Dread-And-The-Fugitive-Mind-v2.mp3	801
5381	Dread And The Fugitive Mind v3	\N	media/songs/Megadeth/Dread-And-The-Fugitive-Mind-v3.mp3	801
5382	Duke Nukem	\N	media/songs/Megadeth/Duke-Nukem.mp3	801
5383	Family Tree	\N	media/songs/Megadeth/Family-Tree.mp3	801
5384	Five Magics	\N	media/songs/Megadeth/Five-Magics.mp3	801
5385	Five Magics v2	\N	media/songs/Megadeth/Five-Magics-v2.mp3	801
5386	Five Magics v3	\N	media/songs/Megadeth/Five-Magics-v3.mp3	801
5387	Foreclosure Of A Dream	\N	media/songs/Megadeth/Foreclosure-Of-A-Dream.mp3	801
5388	Gears Of War	\N	media/songs/Megadeth/Gears-Of-War.mp3	801
5389	Good Mourning Black Friday	\N	media/songs/Megadeth/Good-Mourning-Black-Friday.mp3	801
5390	Hangar 18	\N	media/songs/Megadeth/Hangar-18.mp3	801
5391	Hangar 18 v2	\N	media/songs/Megadeth/Hangar-18-v2.mp3	801
5392	Hangar 18 v3	\N	media/songs/Megadeth/Hangar-18-v3.mp3	801
5393	Hangar 18 v4	\N	media/songs/Megadeth/Hangar-18-v4.mp3	801
5394	Hangar18	\N	media/songs/Megadeth/Hangar18.mp3	801
5395	Hanger 18	\N	media/songs/Megadeth/Hanger-18.mp3	801
5396	Headcrusher	\N	media/songs/Megadeth/Headcrusher.mp3	801
5397	Holy Wars	\N	media/songs/Megadeth/Holy-Wars.mp3	801
5398	Holy Wars v2	\N	media/songs/Megadeth/Holy-Wars-v2.mp3	801
5399	Holy Wars v3	\N	media/songs/Megadeth/Holy-Wars-v3.mp3	801
5400	Holy Wars v4	\N	media/songs/Megadeth/Holy-Wars-v4.mp3	801
5401	Holy Wars v5	\N	media/songs/Megadeth/Holy-Wars-v5.mp3	801
5402	Holy Wars v6	\N	media/songs/Megadeth/Holy-Wars-v6.mp3	801
5403	Hook In Mouth	\N	media/songs/Megadeth/Hook-In-Mouth.mp3	801
5404	In My Darkest Hour	\N	media/songs/Megadeth/In-My-Darkest-Hour.mp3	801
5405	In My Darkest Hour v2	\N	media/songs/Megadeth/In-My-Darkest-Hour-v2.mp3	801
5406	Kick The Chair	\N	media/songs/Megadeth/Kick-The-Chair.mp3	801
5407	Lucretia	\N	media/songs/Megadeth/Lucretia.mp3	801
5408	Lucretia v2	\N	media/songs/Megadeth/Lucretia-v2.mp3	801
5409	Lucretia v3	\N	media/songs/Megadeth/Lucretia-v3.mp3	801
5410	Lucretia v4	\N	media/songs/Megadeth/Lucretia-v4.mp3	801
5411	Lucretia v5	\N	media/songs/Megadeth/Lucretia-v5.mp3	801
5412	Mechanix	\N	media/songs/Megadeth/Mechanix.mp3	801
5413	My Last Words	\N	media/songs/Megadeth/My-Last-Words.mp3	801
5414	Peace Sells	\N	media/songs/Megadeth/Peace-Sells.mp3	801
5415	Peace Sells v2	\N	media/songs/Megadeth/Peace-Sells-v2.mp3	801
5416	Peace Sells v3	\N	media/songs/Megadeth/Peace-Sells-v3.mp3	801
5417	Poison Was The Cure	\N	media/songs/Megadeth/Poison-Was-The-Cure.mp3	801
5418	Poison Was The Cure v2	\N	media/songs/Megadeth/Poison-Was-The-Cure-v2.mp3	801
5419	Poison Was The Cure v3	\N	media/songs/Megadeth/Poison-Was-The-Cure-v3.mp3	801
5420	Psychotron	\N	media/songs/Megadeth/Psychotron.mp3	801
5421	Public Enemy No 1	\N	media/songs/Megadeth/Public-Enemy-No-1.mp3	801
5422	Reckoning Day	\N	media/songs/Megadeth/Reckoning-Day.mp3	801
5423	Reckoning Day v2	\N	media/songs/Megadeth/Reckoning-Day-v2.mp3	801
5424	Rust In Peace Polaris	\N	media/songs/Megadeth/Rust-In-Peace-Polaris.mp3	801
5425	She Wolf	\N	media/songs/Megadeth/She-Wolf.mp3	801
5426	She Wolf v2	\N	media/songs/Megadeth/She-Wolf-v2.mp3	801
5427	Skin O My Teeth	\N	media/songs/Megadeth/Skin-O-My-Teeth.mp3	801
5428	Skin O My Teeth v2	\N	media/songs/Megadeth/Skin-O-My-Teeth-v2.mp3	801
5429	Skin O My Teeth v3	\N	media/songs/Megadeth/Skin-O-My-Teeth-v3.mp3	801
5430	Skin O My Teeth v4	\N	media/songs/Megadeth/Skin-O-My-Teeth-v4.mp3	801
5431	Sleepwalker	\N	media/songs/Megadeth/Sleepwalker.mp3	801
5432	Sleepwalker v2	\N	media/songs/Megadeth/Sleepwalker-v2.mp3	801
5433	Sleepwalker v3	\N	media/songs/Megadeth/Sleepwalker-v3.mp3	801
5434	Sudden Death	\N	media/songs/Megadeth/Sudden-Death.mp3	801
5435	Sweating Bullets	\N	media/songs/Megadeth/Sweating-Bullets.mp3	801
5436	Sweating Bullets v2	\N	media/songs/Megadeth/Sweating-Bullets-v2.mp3	801
5437	Sweating Bullets v3	\N	media/songs/Megadeth/Sweating-Bullets-v3.mp3	801
5438	Sweating Bullets v4	\N	media/songs/Megadeth/Sweating-Bullets-v4.mp3	801
5439	Symphony Of Destruction	\N	media/songs/Megadeth/Symphony-Of-Destruction.mp3	801
5440	Symphony Of Destruction v2	\N	media/songs/Megadeth/Symphony-Of-Destruction-v2.mp3	801
5441	Symphony Of Destruction v3	\N	media/songs/Megadeth/Symphony-Of-Destruction-v3.mp3	801
5442	Symphony Of Destruction v4	\N	media/songs/Megadeth/Symphony-Of-Destruction-v4.mp3	801
5443	Symphony Of Destruction v5	\N	media/songs/Megadeth/Symphony-Of-Destruction-v5.mp3	801
5444	Symphony Of Destruction v6	\N	media/songs/Megadeth/Symphony-Of-Destruction-v6.mp3	801
5445	Symphony Of Destruction v7	\N	media/songs/Megadeth/Symphony-Of-Destruction-v7.mp3	801
5446	Take No Prisoners	\N	media/songs/Megadeth/Take-No-Prisoners.mp3	801
5447	Take No Prisoners v2	\N	media/songs/Megadeth/Take-No-Prisoners-v2.mp3	801
5448	The Conjuring	\N	media/songs/Megadeth/The-Conjuring.mp3	801
5449	The Day We Fight	\N	media/songs/Megadeth/The-Day-We-Fight.mp3	801
5450	The Disintegrators	\N	media/songs/Megadeth/The-Disintegrators.mp3	801
5451	The Killing Road	\N	media/songs/Megadeth/The-Killing-Road.mp3	801
5452	The Killing Road v2	\N	media/songs/Megadeth/The-Killing-Road-v2.mp3	801
5453	This Was My Life	\N	media/songs/Megadeth/This-Was-My-Life.mp3	801
5454	This Was My Life v2	\N	media/songs/Megadeth/This-Was-My-Life-v2.mp3	801
5455	Tornado Of Souls	\N	media/songs/Megadeth/Tornado-Of-Souls.mp3	801
5456	Tornado Of Souls v2	\N	media/songs/Megadeth/Tornado-Of-Souls-v2.mp3	801
5457	Tornado Of Souls v3	\N	media/songs/Megadeth/Tornado-Of-Souls-v3.mp3	801
5458	Tornado Of Souls v4	\N	media/songs/Megadeth/Tornado-Of-Souls-v4.mp3	801
5459	Tornado Of Souls v5	\N	media/songs/Megadeth/Tornado-Of-Souls-v5.mp3	801
5460	Train Of Consequences	\N	media/songs/Megadeth/Train-Of-Consequences.mp3	801
5461	Train Of Consequences v2	\N	media/songs/Megadeth/Train-Of-Consequences-v2.mp3	801
5462	Trust	\N	media/songs/Megadeth/Trust.mp3	801
5463	Trust v2	\N	media/songs/Megadeth/Trust-v2.mp3	801
5464	Wake Up Dead	\N	media/songs/Megadeth/Wake-Up-Dead.mp3	801
5465	Wake Up Dead v2	\N	media/songs/Megadeth/Wake-Up-Dead-v2.mp3	801
5466	Wake Up Dead v3	\N	media/songs/Megadeth/Wake-Up-Dead-v3.mp3	801
5467	Wake Up Dead v4	\N	media/songs/Megadeth/Wake-Up-Dead-v4.mp3	801
5468	Youthanasia	\N	media/songs/Megadeth/Youthanasia.mp3	801
5469	Taman Astakona	\N	media/songs/Melayu/Taman-Astakona.mp3	802
5470	Down Under	\N	media/songs/Men-At-Work/Down-Under.mp3	803
5471	Down Under v2	\N	media/songs/Men-At-Work/Down-Under-v2.mp3	803
5472	Who Can It Be Now	\N	media/songs/Men-At-Work/Who-Can-It-Be-Now.mp3	803
5473	Come To The Sabbath	\N	media/songs/Mercyful-Fate/Come-To-The-Sabbath.mp3	804
5474	Come To The Sabbath v2	\N	media/songs/Mercyful-Fate/Come-To-The-Sabbath-v2.mp3	804
5475	New Millenium Cyanide Christ	\N	media/songs/Meshuggah/New-Millenium-Cyanide-Christ.mp3	805
5476	All Nightmare Long	\N	media/songs/Metallica/All-Nightmare-Long.mp3	806
5477	Am I Evil	\N	media/songs/Metallica/Am-I-Evil.mp3	806
5478	And Justice For All	\N	media/songs/Metallica/And-Justice-For-All.mp3	806
5479	And Justice For All v2	\N	media/songs/Metallica/And-Justice-For-All-v2.mp3	806
5480	Battery	\N	media/songs/Metallica/Battery.mp3	806
5481	Battery v2	\N	media/songs/Metallica/Battery-v2.mp3	806
5482	Battery v3	\N	media/songs/Metallica/Battery-v3.mp3	806
5483	Battery v4	\N	media/songs/Metallica/Battery-v4.mp3	806
5484	Battery v5	\N	media/songs/Metallica/Battery-v5.mp3	806
5485	Blackened	\N	media/songs/Metallica/Blackened.mp3	806
5486	Blackened Live	\N	media/songs/Metallica/Blackened-Live.mp3	806
5487	Blackened v2	\N	media/songs/Metallica/Blackened-v2.mp3	806
5488	Blackened v3	\N	media/songs/Metallica/Blackened-v3.mp3	806
5489	Blackened v4	\N	media/songs/Metallica/Blackened-v4.mp3	806
5490	Blitzkrieg	\N	media/songs/Metallica/Blitzkrieg.mp3	806
5491	Breadfan	\N	media/songs/Metallica/Breadfan.mp3	806
5492	Broken Beat And Scarred	\N	media/songs/Metallica/Broken-Beat-And-Scarred.mp3	806
5493	Carpe Diem Baby	\N	media/songs/Metallica/Carpe-Diem-Baby.mp3	806
5494	Carpe Diem Baby v2	\N	media/songs/Metallica/Carpe-Diem-Baby-v2.mp3	806
5495	Crash Course In Brain Surgery	\N	media/songs/Metallica/Crash-Course-In-Brain-Surgery.mp3	806
5496	Crash Course In Brain Surgery v2	\N	media/songs/Metallica/Crash-Course-In-Brain-Surgery-v2.mp3	806
5497	Creeping Death	\N	media/songs/Metallica/Creeping-Death.mp3	806
5498	Creeping Death v2	\N	media/songs/Metallica/Creeping-Death-v2.mp3	806
5499	Creeping Death v3	\N	media/songs/Metallica/Creeping-Death-v3.mp3	806
5500	Creeping Death v4	\N	media/songs/Metallica/Creeping-Death-v4.mp3	806
5501	Creeping Death v5	\N	media/songs/Metallica/Creeping-Death-v5.mp3	806
5502	Creeping Death v6	\N	media/songs/Metallica/Creeping-Death-v6.mp3	806
5503	Creepy Blackened Master	\N	media/songs/Metallica/Creepy-Blackened-Master.mp3	806
5504	Cyanide	\N	media/songs/Metallica/Cyanide.mp3	806
5505	Cyanide v2	\N	media/songs/Metallica/Cyanide-v2.mp3	806
5506	Damage Inc	\N	media/songs/Metallica/Damage-Inc.mp3	806
5507	Damage Inc v2	\N	media/songs/Metallica/Damage-Inc-v2.mp3	806
5508	Dirty Windows	\N	media/songs/Metallica/Dirty-Windows.mp3	806
5509	Disposable Heroes	\N	media/songs/Metallica/Disposable-Heroes.mp3	806
5510	Disposable Heroes v2	\N	media/songs/Metallica/Disposable-Heroes-v2.mp3	806
5511	Dont Tread On Me	\N	media/songs/Metallica/Dont-Tread-On-Me.mp3	806
5512	Dont Tread On Me v2	\N	media/songs/Metallica/Dont-Tread-On-Me-v2.mp3	806
5513	Dyers Eve	\N	media/songs/Metallica/Dyers-Eve.mp3	806
5514	Dyers Eve v2	\N	media/songs/Metallica/Dyers-Eve-v2.mp3	806
5515	Ecstacy Of Gold	\N	media/songs/Metallica/Ecstacy-Of-Gold.mp3	806
5516	Enter Sandman	\N	media/songs/Metallica/Enter-Sandman.mp3	806
5517	Enter Sandman v10	\N	media/songs/Metallica/Enter-Sandman-v10.mp3	806
5518	Enter Sandman v11	\N	media/songs/Metallica/Enter-Sandman-v11.mp3	806
5519	Enter Sandman v2	\N	media/songs/Metallica/Enter-Sandman-v2.mp3	806
5520	Enter Sandman v3	\N	media/songs/Metallica/Enter-Sandman-v3.mp3	806
5521	Enter Sandman v4	\N	media/songs/Metallica/Enter-Sandman-v4.mp3	806
5522	Enter Sandman v5	\N	media/songs/Metallica/Enter-Sandman-v5.mp3	806
5523	Enter Sandman v6	\N	media/songs/Metallica/Enter-Sandman-v6.mp3	806
5524	Enter Sandman v7	\N	media/songs/Metallica/Enter-Sandman-v7.mp3	806
5525	Enter Sandman v8	\N	media/songs/Metallica/Enter-Sandman-v8.mp3	806
5526	Enter Sandman v9	\N	media/songs/Metallica/Enter-Sandman-v9.mp3	806
5527	Eye Of The Beholder	\N	media/songs/Metallica/Eye-Of-The-Beholder.mp3	806
5528	Fade To Black	\N	media/songs/Metallica/Fade-To-Black.mp3	806
5529	Fade To Black v2	\N	media/songs/Metallica/Fade-To-Black-v2.mp3	806
5530	Fade To Black v3	\N	media/songs/Metallica/Fade-To-Black-v3.mp3	806
5531	Fade To Black v4	\N	media/songs/Metallica/Fade-To-Black-v4.mp3	806
5532	Fade To Black v5	\N	media/songs/Metallica/Fade-To-Black-v5.mp3	806
5533	Fade To Black v6	\N	media/songs/Metallica/Fade-To-Black-v6.mp3	806
5534	Fade To Black v7	\N	media/songs/Metallica/Fade-To-Black-v7.mp3	806
5535	Fade To Black v8	\N	media/songs/Metallica/Fade-To-Black-v8.mp3	806
5536	Fight Fire With Fire	\N	media/songs/Metallica/Fight-Fire-With-Fire.mp3	806
5537	Fight Fire With Fire v2	\N	media/songs/Metallica/Fight-Fire-With-Fire-v2.mp3	806
5538	Fight Fire With Fire v3	\N	media/songs/Metallica/Fight-Fire-With-Fire-v3.mp3	806
5539	Fight Fire With Fire v4	\N	media/songs/Metallica/Fight-Fire-With-Fire-v4.mp3	806
5540	For Whom The Bell Tolls	\N	media/songs/Metallica/For-Whom-The-Bell-Tolls.mp3	806
5541	For Whom The Bell Tolls v2	\N	media/songs/Metallica/For-Whom-The-Bell-Tolls-v2.mp3	806
5542	For Whom The Bell Tolls v3	\N	media/songs/Metallica/For-Whom-The-Bell-Tolls-v3.mp3	806
5543	For Whom The Bell Tolls v4	\N	media/songs/Metallica/For-Whom-The-Bell-Tolls-v4.mp3	806
5544	For Whom The Bell Tolls v5	\N	media/songs/Metallica/For-Whom-The-Bell-Tolls-v5.mp3	806
5545	For Whom The Bell Tolls v6	\N	media/songs/Metallica/For-Whom-The-Bell-Tolls-v6.mp3	806
5546	Frantic	\N	media/songs/Metallica/Frantic.mp3	806
5547	Frantic v2	\N	media/songs/Metallica/Frantic-v2.mp3	806
5548	Frayed Ends Of Sanity	\N	media/songs/Metallica/Frayed-Ends-Of-Sanity.mp3	806
5549	Fuel	\N	media/songs/Metallica/Fuel.mp3	806
5550	Fuel v2	\N	media/songs/Metallica/Fuel-v2.mp3	806
5551	Harvester Of Sorrow	\N	media/songs/Metallica/Harvester-Of-Sorrow.mp3	806
5552	Harvester Of Sorrow v2	\N	media/songs/Metallica/Harvester-Of-Sorrow-v2.mp3	806
5553	Harvester Of Sorrow v3	\N	media/songs/Metallica/Harvester-Of-Sorrow-v3.mp3	806
5554	Harvester Of Sorrow v4	\N	media/songs/Metallica/Harvester-Of-Sorrow-v4.mp3	806
5555	Hero Of The Day	\N	media/songs/Metallica/Hero-Of-The-Day.mp3	806
5556	Hero Of The Day v2	\N	media/songs/Metallica/Hero-Of-The-Day-v2.mp3	806
5557	Hero Of The Day v3	\N	media/songs/Metallica/Hero-Of-The-Day-v3.mp3	806
5558	Hit The Lights	\N	media/songs/Metallica/Hit-The-Lights.mp3	806
5559	Hit The Lights v2	\N	media/songs/Metallica/Hit-The-Lights-v2.mp3	806
5560	Hit The Lights v3	\N	media/songs/Metallica/Hit-The-Lights-v3.mp3	806
5561	Hit The Lights v4	\N	media/songs/Metallica/Hit-The-Lights-v4.mp3	806
5562	Holier Than Thou	\N	media/songs/Metallica/Holier-Than-Thou.mp3	806
5563	Holier Than Thou v2	\N	media/songs/Metallica/Holier-Than-Thou-v2.mp3	806
5564	Holier Than Thou v3	\N	media/songs/Metallica/Holier-Than-Thou-v3.mp3	806
5565	I Disappear	\N	media/songs/Metallica/I-Disappear.mp3	806
5566	I Disappear v2	\N	media/songs/Metallica/I-Disappear-v2.mp3	806
5567	I Disappear v3	\N	media/songs/Metallica/I-Disappear-v3.mp3	806
5568	Its Electric	\N	media/songs/Metallica/Its-Electric.mp3	806
5569	Its Eletric	\N	media/songs/Metallica/Its-Eletric.mp3	806
5570	Judas Kiss	\N	media/songs/Metallica/Judas-Kiss.mp3	806
5571	Jump In The Fire	\N	media/songs/Metallica/Jump-In-The-Fire.mp3	806
5572	King Nothing	\N	media/songs/Metallica/King-Nothing.mp3	806
5573	King Nothing v2	\N	media/songs/Metallica/King-Nothing-v2.mp3	806
5574	King Nothing v3	\N	media/songs/Metallica/King-Nothing-v3.mp3	806
5575	Leper Messiah	\N	media/songs/Metallica/Leper-Messiah.mp3	806
5576	Leper Messiah v2	\N	media/songs/Metallica/Leper-Messiah-v2.mp3	806
5577	Mama Said	\N	media/songs/Metallica/Mama-Said.mp3	806
5578	Master Of Puppets	\N	media/songs/Metallica/Master-Of-Puppets.mp3	806
5579	Master Of Puppets v2	\N	media/songs/Metallica/Master-Of-Puppets-v2.mp3	806
5580	Master Of Puppets v3	\N	media/songs/Metallica/Master-Of-Puppets-v3.mp3	806
5581	Master Of Puppets v4	\N	media/songs/Metallica/Master-Of-Puppets-v4.mp3	806
5582	Master Of Puppets v5	\N	media/songs/Metallica/Master-Of-Puppets-v5.mp3	806
5583	Master Of Puppets v6	\N	media/songs/Metallica/Master-Of-Puppets-v6.mp3	806
5584	Master Of Puppets v7	\N	media/songs/Metallica/Master-Of-Puppets-v7.mp3	806
5585	Master Of Puppets v8	\N	media/songs/Metallica/Master-Of-Puppets-v8.mp3	806
5586	Master Of Puppets v9	\N	media/songs/Metallica/Master-Of-Puppets-v9.mp3	806
5587	Memory Remains	\N	media/songs/Metallica/Memory-Remains.mp3	806
5588	Memory Remains v2	\N	media/songs/Metallica/Memory-Remains-v2.mp3	806
5589	Memory Remains v3	\N	media/songs/Metallica/Memory-Remains-v3.mp3	806
5590	Mercyful Fate	\N	media/songs/Metallica/Mercyful-Fate.mp3	806
5591	Metal Militia	\N	media/songs/Metallica/Metal-Militia.mp3	806
5592	Motorbreath	\N	media/songs/Metallica/Motorbreath.mp3	806
5593	My Apocalypse	\N	media/songs/Metallica/My-Apocalypse.mp3	806
5594	My Friend Of Misery	\N	media/songs/Metallica/My-Friend-Of-Misery.mp3	806
5595	My World	\N	media/songs/Metallica/My-World.mp3	806
5596	My World v2	\N	media/songs/Metallica/My-World-v2.mp3	806
5597	No Leaf Clover	\N	media/songs/Metallica/No-Leaf-Clover.mp3	806
5598	No Leaf Clover v2	\N	media/songs/Metallica/No-Leaf-Clover-v2.mp3	806
5599	No Remorse	\N	media/songs/Metallica/No-Remorse.mp3	806
5600	Nothing Else Matters	\N	media/songs/Metallica/Nothing-Else-Matters.mp3	806
5601	Nothing Else Matters v2	\N	media/songs/Metallica/Nothing-Else-Matters-v2.mp3	806
5602	Nothing Else Matters v3	\N	media/songs/Metallica/Nothing-Else-Matters-v3.mp3	806
5603	Nothing Else Matters v4	\N	media/songs/Metallica/Nothing-Else-Matters-v4.mp3	806
5604	Nothing Else Matters v5	\N	media/songs/Metallica/Nothing-Else-Matters-v5.mp3	806
5605	Nothing Else Matters v6	\N	media/songs/Metallica/Nothing-Else-Matters-v6.mp3	806
5606	Nothing Else Matters v7	\N	media/songs/Metallica/Nothing-Else-Matters-v7.mp3	806
5607	Of Wolf And Man	\N	media/songs/Metallica/Of-Wolf-And-Man.mp3	806
5608	Of Wolf And Man v2	\N	media/songs/Metallica/Of-Wolf-And-Man-v2.mp3	806
5609	Of Wolf And Man v3	\N	media/songs/Metallica/Of-Wolf-And-Man-v3.mp3	806
5610	One	\N	media/songs/Metallica/One.mp3	806
5611	One v2	\N	media/songs/Metallica/One-v2.mp3	806
5612	One v3	\N	media/songs/Metallica/One-v3.mp3	806
5613	One v4	\N	media/songs/Metallica/One-v4.mp3	806
5614	One v5	\N	media/songs/Metallica/One-v5.mp3	806
5615	Orion	\N	media/songs/Metallica/Orion.mp3	806
5616	Orion v2	\N	media/songs/Metallica/Orion-v2.mp3	806
5617	Orion v3	\N	media/songs/Metallica/Orion-v3.mp3	806
5618	Orion v4	\N	media/songs/Metallica/Orion-v4.mp3	806
5619	Orion v5	\N	media/songs/Metallica/Orion-v5.mp3	806
5620	Paranoid Live	\N	media/songs/Metallica/Paranoid-Live.mp3	806
5621	Ride The Lightning	\N	media/songs/Metallica/Ride-The-Lightning.mp3	806
5622	Ride The Lightning v2	\N	media/songs/Metallica/Ride-The-Lightning-v2.mp3	806
5623	Ride The Lightning v3	\N	media/songs/Metallica/Ride-The-Lightning-v3.mp3	806
5624	Sad But True	\N	media/songs/Metallica/Sad-But-True.mp3	806
5625	Sad But True v2	\N	media/songs/Metallica/Sad-But-True-v2.mp3	806
5626	Sad But True v3	\N	media/songs/Metallica/Sad-But-True-v3.mp3	806
5627	Sad But True v4	\N	media/songs/Metallica/Sad-But-True-v4.mp3	806
5628	Sad But True v5	\N	media/songs/Metallica/Sad-But-True-v5.mp3	806
5629	Sad But True v6	\N	media/songs/Metallica/Sad-But-True-v6.mp3	806
5630	Sanitarium	\N	media/songs/Metallica/Sanitarium.mp3	806
5631	Sanitarium v2	\N	media/songs/Metallica/Sanitarium-v2.mp3	806
5632	Seek And Destroy	\N	media/songs/Metallica/Seek-And-Destroy.mp3	806
5633	Seek And Destroy v2	\N	media/songs/Metallica/Seek-And-Destroy-v2.mp3	806
5634	Seek And Destroy v3	\N	media/songs/Metallica/Seek-And-Destroy-v3.mp3	806
5635	Seek And Destroy v4	\N	media/songs/Metallica/Seek-And-Destroy-v4.mp3	806
5636	So What Live	\N	media/songs/Metallica/So-What-Live.mp3	806
5637	Some Kind Of Monster	\N	media/songs/Metallica/Some-Kind-Of-Monster.mp3	806
5638	St Anger	\N	media/songs/Metallica/St-Anger.mp3	806
5639	Stone Cold Crazy	\N	media/songs/Metallica/Stone-Cold-Crazy.mp3	806
5640	Suicide And Redemption	\N	media/songs/Metallica/Suicide-And-Redemption.mp3	806
5641	That Was Just Your Life	\N	media/songs/Metallica/That-Was-Just-Your-Life.mp3	806
5642	That Was Just Your Life v2	\N	media/songs/Metallica/That-Was-Just-Your-Life-v2.mp3	806
5643	That Was Just Your Life v3	\N	media/songs/Metallica/That-Was-Just-Your-Life-v3.mp3	806
5644	The Call Of Ktulu	\N	media/songs/Metallica/The-Call-Of-Ktulu.mp3	806
5645	The Call Of Ktulu v2	\N	media/songs/Metallica/The-Call-Of-Ktulu-v2.mp3	806
5646	The Call Of Ktulu v3	\N	media/songs/Metallica/The-Call-Of-Ktulu-v3.mp3	806
5647	The Day That Never Comes	\N	media/songs/Metallica/The-Day-That-Never-Comes.mp3	806
5648	The Day That Never Comes v2	\N	media/songs/Metallica/The-Day-That-Never-Comes-v2.mp3	806
5649	The End Of The Line	\N	media/songs/Metallica/The-End-Of-The-Line.mp3	806
5650	The End Of The Line v2	\N	media/songs/Metallica/The-End-Of-The-Line-v2.mp3	806
5651	The Four Horseman	\N	media/songs/Metallica/The-Four-Horseman.mp3	806
5652	The Four Horsemen	\N	media/songs/Metallica/The-Four-Horsemen.mp3	806
5653	The Judas Kiss	\N	media/songs/Metallica/The-Judas-Kiss.mp3	806
5654	The Judas Kiss v2	\N	media/songs/Metallica/The-Judas-Kiss-v2.mp3	806
5655	The Outlaw Torn	\N	media/songs/Metallica/The-Outlaw-Torn.mp3	806
5656	The Prince	\N	media/songs/Metallica/The-Prince.mp3	806
5657	The Shortest Straw	\N	media/songs/Metallica/The-Shortest-Straw.mp3	806
5658	The Shortest Straw v2	\N	media/songs/Metallica/The-Shortest-Straw-v2.mp3	806
5659	The Struggle Within	\N	media/songs/Metallica/The-Struggle-Within.mp3	806
5660	The Thing That Should Not Be	\N	media/songs/Metallica/The-Thing-That-Should-Not-Be.mp3	806
5661	The Thing That Should Not Be v2	\N	media/songs/Metallica/The-Thing-That-Should-Not-Be-v2.mp3	806
5662	The Unforgiven	\N	media/songs/Metallica/The-Unforgiven.mp3	806
5663	The Unforgiven v2	\N	media/songs/Metallica/The-Unforgiven-v2.mp3	806
5664	The Unforgiven v3	\N	media/songs/Metallica/The-Unforgiven-v3.mp3	806
5665	The Unforgiven v4	\N	media/songs/Metallica/The-Unforgiven-v4.mp3	806
5666	The Unforgiven v5	\N	media/songs/Metallica/The-Unforgiven-v5.mp3	806
5667	The Unforgiven v6	\N	media/songs/Metallica/The-Unforgiven-v6.mp3	806
5668	The Unforgiven v7	\N	media/songs/Metallica/The-Unforgiven-v7.mp3	806
5669	The Unforgiven v8	\N	media/songs/Metallica/The-Unforgiven-v8.mp3	806
5670	Through The Never	\N	media/songs/Metallica/Through-The-Never.mp3	806
5671	Through The Never v2	\N	media/songs/Metallica/Through-The-Never-v2.mp3	806
5672	Through The Never v3	\N	media/songs/Metallica/Through-The-Never-v3.mp3	806
5673	Through The Never v4	\N	media/songs/Metallica/Through-The-Never-v4.mp3	806
5674	To Live Is To Die	\N	media/songs/Metallica/To-Live-Is-To-Die.mp3	806
5675	Trapped Under Ice	\N	media/songs/Metallica/Trapped-Under-Ice.mp3	806
5676	Turn The Page	\N	media/songs/Metallica/Turn-The-Page.mp3	806
5677	Until It Sleeps	\N	media/songs/Metallica/Until-It-Sleeps.mp3	806
5678	Until It Sleeps v2	\N	media/songs/Metallica/Until-It-Sleeps-v2.mp3	806
5679	Welcome Home	\N	media/songs/Metallica/Welcome-Home.mp3	806
5680	Welcome Home Sanitarium	\N	media/songs/Metallica/Welcome-Home-Sanitarium.mp3	806
5681	Welcome Home Sanitarium v2	\N	media/songs/Metallica/Welcome-Home-Sanitarium-v2.mp3	806
5682	Welcome Home Sanitarium v3	\N	media/songs/Metallica/Welcome-Home-Sanitarium-v3.mp3	806
5683	Wherever I May Roam	\N	media/songs/Metallica/Wherever-I-May-Roam.mp3	806
5684	Wherever I May Roam v2	\N	media/songs/Metallica/Wherever-I-May-Roam-v2.mp3	806
5685	Wherever I May Roam v3	\N	media/songs/Metallica/Wherever-I-May-Roam-v3.mp3	806
5686	Wherever I May Roam v4	\N	media/songs/Metallica/Wherever-I-May-Roam-v4.mp3	806
5687	Whiplash	\N	media/songs/Metallica/Whiplash.mp3	806
5688	Whiplash v2	\N	media/songs/Metallica/Whiplash-v2.mp3	806
5689	Whiskey In The Jar	\N	media/songs/Metallica/Whiskey-In-The-Jar.mp3	806
5690	Whiskey In The Jar v2	\N	media/songs/Metallica/Whiskey-In-The-Jar-v2.mp3	806
5691	Whiskey In The Jar v3	\N	media/songs/Metallica/Whiskey-In-The-Jar-v3.mp3	806
5692	Whiskey In The Jar v4	\N	media/songs/Metallica/Whiskey-In-The-Jar-v4.mp3	806
5693	Cruising	\N	media/songs/Mezzoforte/Cruising.mp3	807
5694	Drive	\N	media/songs/Mezzoforte/Drive.mp3	807
5695	E G Blues	\N	media/songs/Mezzoforte/E-G-Blues.mp3	807
5696	Expressway	\N	media/songs/Mezzoforte/Expressway.mp3	807
5697	Happy Hour	\N	media/songs/Mezzoforte/Happy-Hour.mp3	807
5698	Hard Wired	\N	media/songs/Mezzoforte/Hard-Wired.mp3	807
5699	Icebreaker	\N	media/songs/Mezzoforte/Icebreaker.mp3	807
5700	Joyride	\N	media/songs/Mezzoforte/Joyride.mp3	807
5701	Nightfall	\N	media/songs/Mezzoforte/Nightfall.mp3	807
5702	Quartier Latin	\N	media/songs/Mezzoforte/Quartier-Latin.mp3	807
5703	Quartier Latin v2	\N	media/songs/Mezzoforte/Quartier-Latin-v2.mp3	807
5704	Sizzle	\N	media/songs/Mezzoforte/Sizzle.mp3	807
5705	Tribute	\N	media/songs/Mezzoforte/Tribute.mp3	807
5706	Burn	\N	media/songs/Michael-Angelo-Batio/Burn.mp3	808
5707	Dream Up	\N	media/songs/Michael-Angelo-Batio/Dream-Up.mp3	808
5708	Dream Up v2	\N	media/songs/Michael-Angelo-Batio/Dream-Up-v2.mp3	808
5709	No Boundaries	\N	media/songs/Michael-Angelo-Batio/No-Boundaries.mp3	808
5710	No Boundaries v2	\N	media/songs/Michael-Angelo-Batio/No-Boundaries-v2.mp3	808
5711	No Boundaries v3	\N	media/songs/Michael-Angelo-Batio/No-Boundaries-v3.mp3	808
5712	No Boundaries v4	\N	media/songs/Michael-Angelo-Batio/No-Boundaries-v4.mp3	808
5713	No Bounderies	\N	media/songs/Michael-Angelo-Batio/No-Bounderies.mp3	808
5714	Speed Kills	\N	media/songs/Michael-Angelo-Batio/Speed-Kills.mp3	808
5715	Billie Jean	\N	media/songs/Michael-Jackson/Billie-Jean.mp3	809
5716	Billie Jean v2	\N	media/songs/Michael-Jackson/Billie-Jean-v2.mp3	809
5717	Billie Jean v3	\N	media/songs/Michael-Jackson/Billie-Jean-v3.mp3	809
5718	Dirty Diana	\N	media/songs/Michael-Jackson/Dirty-Diana.mp3	809
5719	Give In To Me	\N	media/songs/Michael-Jackson/Give-In-To-Me.mp3	809
5720	Give In To Me v2	\N	media/songs/Michael-Jackson/Give-In-To-Me-v2.mp3	809
5721	Smooth Criminal	\N	media/songs/Michael-Jackson/Smooth-Criminal.mp3	809
5722	Smooth Criminal v2	\N	media/songs/Michael-Jackson/Smooth-Criminal-v2.mp3	809
5723	Thriller	\N	media/songs/Michael-Jackson/Thriller.mp3	809
5724	Thriller v2	\N	media/songs/Michael-Jackson/Thriller-v2.mp3	809
5725	Armed And Ready	\N	media/songs/Michael-Schenker-Group/Armed-And-Ready.mp3	810
5726	Armed And Ready v2	\N	media/songs/Michael-Schenker-Group/Armed-And-Ready-v2.mp3	810
5727	Broken Promises	\N	media/songs/Michael-Schenker-Group/Broken-Promises.mp3	810
5728	Captain Nemo	\N	media/songs/Michael-Schenker-Group/Captain-Nemo.mp3	810
5729	Cry For The Nation	\N	media/songs/Michael-Schenker-Group/Cry-For-The-Nation.mp3	810
5730	Cry For The Nations	\N	media/songs/Michael-Schenker-Group/Cry-For-The-Nations.mp3	810
5731	Desert Song	\N	media/songs/Michael-Schenker-Group/Desert-Song.mp3	810
5880	Citizen Erased	\N	media/songs/Muse/Citizen-Erased.mp3	838
5732	Desert Song v2	\N	media/songs/Michael-Schenker-Group/Desert-Song-v2.mp3	810
5733	Into The Arena	\N	media/songs/Michael-Schenker-Group/Into-The-Arena.mp3	810
5734	Into The Arena v2	\N	media/songs/Michael-Schenker-Group/Into-The-Arena-v2.mp3	810
5735	Lights Out Live	\N	media/songs/Michael-Schenker-Group/Lights-Out-Live.mp3	810
5736	Looking For Love	\N	media/songs/Michael-Schenker-Group/Looking-For-Love.mp3	810
5737	On And On	\N	media/songs/Michael-Schenker-Group/On-And-On.mp3	810
5738	Rock Will Never Die	\N	media/songs/Michael-Schenker-Group/Rock-Will-Never-Die.mp3	810
5739	Game Of Love	\N	media/songs/Michelle-Branch/Game-Of-Love.mp3	811
5740	Beds Are Burning	\N	media/songs/Midnight-Oil/Beds-Are-Burning.mp3	812
5741	She Loved	\N	media/songs/MiG-Ayesa/She-Loved.mp3	813
5742	The Impression That I Get	\N	media/songs/Mighty-Mighty-Bosstones/The-Impression-That-I-Get.mp3	814
5743	Atado A Un Sentimiento	\N	media/songs/Miguel-Mateos/Atado-A-Un-Sentimiento.mp3	815
5744	Atado A Un Sentimiento v2	\N	media/songs/Miguel-Mateos/Atado-A-Un-Sentimiento-v2.mp3	815
5745	Bienvenidos	\N	media/songs/Miguel-Rios/Bienvenidos.mp3	816
5746	Another Cup Of Coffee	\N	media/songs/Mike-And-The-Mechanics/Another-Cup-Of-Coffee.mp3	817
5747	Angelique	\N	media/songs/Mike-Oldfield/Angelique.mp3	818
5748	Holy	\N	media/songs/Mike-Oldfield/Holy.mp3	818
5749	Jungle Gardenia	\N	media/songs/Mike-Oldfield/Jungle-Gardenia.mp3	818
5750	Our Father	\N	media/songs/Mike-Oldfield/Our-Father.mp3	818
5751	Quicksilver	\N	media/songs/Mike-Oldfield/Quicksilver.mp3	818
5752	Slipstream	\N	media/songs/Mike-Oldfield/Slipstream.mp3	818
5753	To France	\N	media/songs/Mike-Oldfield/To-France.mp3	818
5754	Tubular Bells	\N	media/songs/Mike-Oldfield/Tubular-Bells.mp3	818
5755	Chromozone	\N	media/songs/Mike-Stern/Chromozone.mp3	819
5756	Upside Downside	\N	media/songs/Mike-Stern/Upside-Downside.mp3	819
5757	American Psycho	\N	media/songs/Misfits/American-Psycho.mp3	820
5758	Astro Zombies	\N	media/songs/Misfits/Astro-Zombies.mp3	820
5759	Dig Up Her Bones	\N	media/songs/Misfits/Dig-Up-Her-Bones.mp3	820
5760	Dig Up Her Bones v2	\N	media/songs/Misfits/Dig-Up-Her-Bones-v2.mp3	820
5761	Lost In Space	\N	media/songs/Misfits/Lost-In-Space.mp3	820
5762	Skulls	\N	media/songs/Misfits/Skulls.mp3	820
5763	Teenagers From Mars	\N	media/songs/Misfits/Teenagers-From-Mars.mp3	820
5764	The Haunting	\N	media/songs/Misfits/The-Haunting.mp3	820
5765	Float On	\N	media/songs/Modest-Mouse/Float-On.mp3	821
5766	Float On v2	\N	media/songs/Modest-Mouse/Float-On-v2.mp3	821
5767	Float On v3	\N	media/songs/Modest-Mouse/Float-On-v3.mp3	821
5768	Pastilla De Jabon	\N	media/songs/Mojinos-Escozios/Pastilla-De-Jabon.mp3	822
5769	Flirtin With Disaster	\N	media/songs/Molly-Hatchet/Flirtin-With-Disaster.mp3	823
5770	Bad Motor Scooter	\N	media/songs/Montrose/Bad-Motor-Scooter.mp3	824
5771	Rock Candy	\N	media/songs/Montrose/Rock-Candy.mp3	824
5772	James Bond Theme	\N	media/songs/Monty-Norman/James-Bond-Theme.mp3	825
5773	Nights In White Satin	\N	media/songs/Moody-Blues/Nights-In-White-Satin.mp3	826
5774	Nights In White Satin v2	\N	media/songs/Moody-Blues/Nights-In-White-Satin-v2.mp3	826
5775	Question	\N	media/songs/Moody-Blues/Question.mp3	826
5776	Your Wildest Dreams	\N	media/songs/Moody-Blues/Your-Wildest-Dreams.mp3	826
5777	Koylionjarven Jaalla	\N	media/songs/Moonsorrow/Koylionjarven-Jaalla.mp3	827
5778	Sing Your Life	\N	media/songs/Morrissey/Sing-Your-Life.mp3	828
5779	All In The Name Of	\N	media/songs/Motley-Crue/All-In-The-Name-Of.mp3	829
5780	Anarchy In The Uk	\N	media/songs/Motley-Crue/Anarchy-In-The-Uk.mp3	829
5781	Dont Go Away Mad Just Go Away	\N	media/songs/Motley-Crue/Dont-Go-Away-Mad-Just-Go-Away.mp3	829
5782	Dont Go Away Mad Just Go Away v2	\N	media/songs/Motley-Crue/Dont-Go-Away-Mad-Just-Go-Away-v2.mp3	829
5783	Down At The Whiskey	\N	media/songs/Motley-Crue/Down-At-The-Whiskey.mp3	829
5784	Dr Feelgood	\N	media/songs/Motley-Crue/Dr-Feelgood.mp3	829
5785	Dr Feelgood v2	\N	media/songs/Motley-Crue/Dr-Feelgood-v2.mp3	829
5786	Dr Feelgood v3	\N	media/songs/Motley-Crue/Dr-Feelgood-v3.mp3	829
5787	Dr Feelgood v4	\N	media/songs/Motley-Crue/Dr-Feelgood-v4.mp3	829
5788	Helter Skelter	\N	media/songs/Motley-Crue/Helter-Skelter.mp3	829
5789	Home Sweet Home	\N	media/songs/Motley-Crue/Home-Sweet-Home.mp3	829
5790	Keep Your Eye On  The Money	\N	media/songs/Motley-Crue/Keep-Your-Eye-On--The-Money.mp3	829
5791	Kickstart My Heart	\N	media/songs/Motley-Crue/Kickstart-My-Heart.mp3	829
5792	Kickstart My Heart v2	\N	media/songs/Motley-Crue/Kickstart-My-Heart-v2.mp3	829
5793	Kickstart My Heart v3	\N	media/songs/Motley-Crue/Kickstart-My-Heart-v3.mp3	829
5794	Kickstart My Heart v4	\N	media/songs/Motley-Crue/Kickstart-My-Heart-v4.mp3	829
5795	Kickstart My Heart v5	\N	media/songs/Motley-Crue/Kickstart-My-Heart-v5.mp3	829
5796	Live Wire	\N	media/songs/Motley-Crue/Live-Wire.mp3	829
5797	Live Wire v2	\N	media/songs/Motley-Crue/Live-Wire-v2.mp3	829
5798	Live Wire v3	\N	media/songs/Motley-Crue/Live-Wire-v3.mp3	829
5799	Looks That Kill	\N	media/songs/Motley-Crue/Looks-That-Kill.mp3	829
5800	Looks That Kill v2	\N	media/songs/Motley-Crue/Looks-That-Kill-v2.mp3	829
5801	New Tattoo	\N	media/songs/Motley-Crue/New-Tattoo.mp3	829
5802	Public Enemy No 1	\N	media/songs/Motley-Crue/Public-Enemy-No-1.mp3	829
5803	Rattlesnake Shake	\N	media/songs/Motley-Crue/Rattlesnake-Shake.mp3	829
5804	Saints Of Los Angeles	\N	media/songs/Motley-Crue/Saints-Of-Los-Angeles.mp3	829
5805	Same Old Situation	\N	media/songs/Motley-Crue/Same-Old-Situation.mp3	829
5806	Same Old Situation Sos	\N	media/songs/Motley-Crue/Same-Old-Situation-Sos.mp3	829
5807	Same Old Situation Sos v2	\N	media/songs/Motley-Crue/Same-Old-Situation-Sos-v2.mp3	829
5808	She Goes Down	\N	media/songs/Motley-Crue/She-Goes-Down.mp3	829
5809	Shout At The Devil	\N	media/songs/Motley-Crue/Shout-At-The-Devil.mp3	829
5810	Shout At The Devil v2	\N	media/songs/Motley-Crue/Shout-At-The-Devil-v2.mp3	829
5811	Shout At The Devil v3	\N	media/songs/Motley-Crue/Shout-At-The-Devil-v3.mp3	829
5812	Slice Of Your Pie	\N	media/songs/Motley-Crue/Slice-Of-Your-Pie.mp3	829
5813	Smokin In The Boys Room	\N	media/songs/Motley-Crue/Smokin-In-The-Boys-Room.mp3	829
5814	Smokin In The Boys Room v2	\N	media/songs/Motley-Crue/Smokin-In-The-Boys-Room-v2.mp3	829
5815	Smoking In The Boys Room	\N	media/songs/Motley-Crue/Smoking-In-The-Boys-Room.mp3	829
5816	Sticky Sweet	\N	media/songs/Motley-Crue/Sticky-Sweet.mp3	829
5817	Too Fast For Love	\N	media/songs/Motley-Crue/Too-Fast-For-Love.mp3	829
5818	Too Young To Fall In Love	\N	media/songs/Motley-Crue/Too-Young-To-Fall-In-Love.mp3	829
5819	Wildside	\N	media/songs/Motley-Crue/Wildside.mp3	829
5820	Without You	\N	media/songs/Motley-Crue/Without-You.mp3	829
5821	Without You v2	\N	media/songs/Motley-Crue/Without-You-v2.mp3	829
5822	Without You v3	\N	media/songs/Motley-Crue/Without-You-v3.mp3	829
5823	Without You v4	\N	media/songs/Motley-Crue/Without-You-v4.mp3	829
5824	Without You v5	\N	media/songs/Motley-Crue/Without-You-v5.mp3	829
5825	Without You v6	\N	media/songs/Motley-Crue/Without-You-v6.mp3	829
5826	Ace Of Spades	\N	media/songs/Motorhead/Ace-Of-Spades.mp3	830
5827	Ace Of Spades v2	\N	media/songs/Motorhead/Ace-Of-Spades-v2.mp3	830
5828	Ace Of Spades v3	\N	media/songs/Motorhead/Ace-Of-Spades-v3.mp3	830
5829	Ace Of Spades v4	\N	media/songs/Motorhead/Ace-Of-Spades-v4.mp3	830
5830	Be My Baby	\N	media/songs/Motorhead/Be-My-Baby.mp3	830
5831	Bomber	\N	media/songs/Motorhead/Bomber.mp3	830
5832	Iron Fist	\N	media/songs/Motorhead/Iron-Fist.mp3	830
5833	Jailbait	\N	media/songs/Motorhead/Jailbait.mp3	830
5834	Killed By Death	\N	media/songs/Motorhead/Killed-By-Death.mp3	830
5835	King Of Kings	\N	media/songs/Motorhead/King-Of-Kings.mp3	830
5836	King Of Kings v2	\N	media/songs/Motorhead/King-Of-Kings-v2.mp3	830
5837	Live To Win	\N	media/songs/Motorhead/Live-To-Win.mp3	830
5838	Love Me Like A Reptile	\N	media/songs/Motorhead/Love-Me-Like-A-Reptile.mp3	830
5839	Motorhead	\N	media/songs/Motorhead/Motorhead.mp3	830
5840	Overkill	\N	media/songs/Motorhead/Overkill.mp3	830
5841	Stay Clean	\N	media/songs/Motorhead/Stay-Clean.mp3	830
5842	The Game Triple H Theme	\N	media/songs/Motorhead/The-Game-Triple-H-Theme.mp3	830
5843	We Are The Road Crew	\N	media/songs/Motorhead/We-Are-The-Road-Crew.mp3	830
5844	All The Young Dudes	\N	media/songs/Mott-The-Hoople/All-The-Young-Dudes.mp3	831
5845	All The Young Dudes v2	\N	media/songs/Mott-The-Hoople/All-The-Young-Dudes-v2.mp3	831
5846	Mississippi Queen	\N	media/songs/Mountain/Mississippi-Queen.mp3	832
5847	Mississippi Queen v2	\N	media/songs/Mountain/Mississippi-Queen-v2.mp3	832
5848	Mississippi Queen v3	\N	media/songs/Mountain/Mississippi-Queen-v3.mp3	832
5849	Mississippi Queen v4	\N	media/songs/Mountain/Mississippi-Queen-v4.mp3	832
5850	Nantucket Sleighride	\N	media/songs/Mountain/Nantucket-Sleighride.mp3	832
5851	Theme From An Imaginary Western	\N	media/songs/Mountain/Theme-From-An-Imaginary-Western.mp3	832
5852	Rondo Alla Turka	\N	media/songs/Mozart/Rondo-Alla-Turka.mp3	833
5853	Rondo Alla Turka v2	\N	media/songs/Mozart/Rondo-Alla-Turka-v2.mp3	833
5854	Rondo Alla Turka v3	\N	media/songs/Mozart/Rondo-Alla-Turka-v3.mp3	833
5855	Addicted To That Rush	\N	media/songs/Mr-Big/Addicted-To-That-Rush.mp3	834
5856	Addicted To That Rush v2	\N	media/songs/Mr-Big/Addicted-To-That-Rush-v2.mp3	834
5857	Colorado Bulldog	\N	media/songs/Mr-Big/Colorado-Bulldog.mp3	834
5858	Daddy Brother Lover Little Boy	\N	media/songs/Mr-Big/Daddy-Brother-Lover-Little-Boy.mp3	834
5859	Daddy Brother Lover Little Boy v2	\N	media/songs/Mr-Big/Daddy-Brother-Lover-Little-Boy-v2.mp3	834
5860	Green Tinted Sixties Mind	\N	media/songs/Mr-Big/Green-Tinted-Sixties-Mind.mp3	834
5861	Green Tinted Sixties Mind v2	\N	media/songs/Mr-Big/Green-Tinted-Sixties-Mind-v2.mp3	834
5862	Green Tinted Sixties Mind v3	\N	media/songs/Mr-Big/Green-Tinted-Sixties-Mind-v3.mp3	834
5863	Nothing But Love	\N	media/songs/Mr-Big/Nothing-But-Love.mp3	834
5864	Nothing But Love v2	\N	media/songs/Mr-Big/Nothing-But-Love-v2.mp3	834
5865	Shine	\N	media/songs/Mr-Big/Shine.mp3	834
5866	The Whole Worlds Gonna Know	\N	media/songs/Mr-Big/The-Whole-Worlds-Gonna-Know.mp3	834
5867	To Be With You	\N	media/songs/Mr-Big/To-Be-With-You.mp3	834
5868	To Be With You v2	\N	media/songs/Mr-Big/To-Be-With-You-v2.mp3	834
5869	To Be With You v3	\N	media/songs/Mr-Big/To-Be-With-You-v3.mp3	834
5870	To Be With You v4	\N	media/songs/Mr-Big/To-Be-With-You-v4.mp3	834
5871	Kyrie	\N	media/songs/Mr-Mister/Kyrie.mp3	835
5872	Long Distance Call	\N	media/songs/Muddy-Waters/Long-Distance-Call.mp3	836
5873	Forget To Remember	\N	media/songs/Mudvayne/Forget-To-Remember.mp3	837
5874	Happy	\N	media/songs/Mudvayne/Happy.mp3	837
5875	Assassin	\N	media/songs/Muse/Assassin.mp3	838
5876	Assassin v2	\N	media/songs/Muse/Assassin-v2.mp3	838
5877	Bliss	\N	media/songs/Muse/Bliss.mp3	838
5878	Butterflies And Hurricanes	\N	media/songs/Muse/Butterflies-And-Hurricanes.mp3	838
5879	Butterflies And Hurricanes v2	\N	media/songs/Muse/Butterflies-And-Hurricanes-v2.mp3	838
5881	Citizen Erased v2	\N	media/songs/Muse/Citizen-Erased-v2.mp3	838
5882	Endlessly	\N	media/songs/Muse/Endlessly.mp3	838
5883	Exo Politics	\N	media/songs/Muse/Exo-Politics.mp3	838
5884	Exogenesis Cross Pollination	\N	media/songs/Muse/Exogenesis-Cross-Pollination.mp3	838
5885	Feeling Good	\N	media/songs/Muse/Feeling-Good.mp3	838
5886	Guiding Light	\N	media/songs/Muse/Guiding-Light.mp3	838
5887	Hyper Music	\N	media/songs/Muse/Hyper-Music.mp3	838
5888	Hysteria	\N	media/songs/Muse/Hysteria.mp3	838
5889	Hysteria v2	\N	media/songs/Muse/Hysteria-v2.mp3	838
5890	In Your World	\N	media/songs/Muse/In-Your-World.mp3	838
5891	Invincible	\N	media/songs/Muse/Invincible.mp3	838
5892	Knights Of Cydonia	\N	media/songs/Muse/Knights-Of-Cydonia.mp3	838
5893	Microcuts	\N	media/songs/Muse/Microcuts.mp3	838
5894	Mk Ultra	\N	media/songs/Muse/Mk-Ultra.mp3	838
5895	Mk Ultra v2	\N	media/songs/Muse/Mk-Ultra-v2.mp3	838
5896	Muscle Museum	\N	media/songs/Muse/Muscle-Museum.mp3	838
5897	New Born	\N	media/songs/Muse/New-Born.mp3	838
5898	New Born v2	\N	media/songs/Muse/New-Born-v2.mp3	838
5899	Plug In Baby	\N	media/songs/Muse/Plug-In-Baby.mp3	838
5900	Plug In Baby v2	\N	media/songs/Muse/Plug-In-Baby-v2.mp3	838
5901	Plug In Baby v3	\N	media/songs/Muse/Plug-In-Baby-v3.mp3	838
5902	Plug In Baby v4	\N	media/songs/Muse/Plug-In-Baby-v4.mp3	838
5903	Resistance	\N	media/songs/Muse/Resistance.mp3	838
5904	Showbiz	\N	media/songs/Muse/Showbiz.mp3	838
5905	Sing For Absolution	\N	media/songs/Muse/Sing-For-Absolution.mp3	838
5906	Soldiers Poem	\N	media/songs/Muse/Soldiers-Poem.mp3	838
5907	Starlight	\N	media/songs/Muse/Starlight.mp3	838
5908	Starlight v2	\N	media/songs/Muse/Starlight-v2.mp3	838
5909	Stockholm Syndrome	\N	media/songs/Muse/Stockholm-Syndrome.mp3	838
5910	Stockholm Syndrome v2	\N	media/songs/Muse/Stockholm-Syndrome-v2.mp3	838
5911	Stockholm Syndrome v3	\N	media/songs/Muse/Stockholm-Syndrome-v3.mp3	838
5912	Supermassive Black Hole	\N	media/songs/Muse/Supermassive-Black-Hole.mp3	838
5913	Supermassive Black Hole  Acoustic	\N	media/songs/Muse/Supermassive-Black-Hole--Acoustic.mp3	838
5914	Take A Bow	\N	media/songs/Muse/Take-A-Bow.mp3	838
5915	Take A Bow v2	\N	media/songs/Muse/Take-A-Bow-v2.mp3	838
5916	The Small Print	\N	media/songs/Muse/The-Small-Print.mp3	838
5917	Time Is Running Out	\N	media/songs/Muse/Time-Is-Running-Out.mp3	838
5918	Time Is Running Out v2	\N	media/songs/Muse/Time-Is-Running-Out-v2.mp3	838
5919	Time Is Running Out v3	\N	media/songs/Muse/Time-Is-Running-Out-v3.mp3	838
5920	Unnatural Selection	\N	media/songs/Muse/Unnatural-Selection.mp3	838
5921	Uno	\N	media/songs/Muse/Uno.mp3	838
5922	Uno v2	\N	media/songs/Muse/Uno-v2.mp3	838
5923	Uprising	\N	media/songs/Muse/Uprising.mp3	838
5924	Uprising v2	\N	media/songs/Muse/Uprising-v2.mp3	838
5925	Uprising v3	\N	media/songs/Muse/Uprising-v3.mp3	838
5926	Uprising v4	\N	media/songs/Muse/Uprising-v4.mp3	838
5927	Uprising v5	\N	media/songs/Muse/Uprising-v5.mp3	838
5928	Black Parade	\N	media/songs/My-Chemical-Romance/Black-Parade.mp3	839
5929	Bulletproof Heart	\N	media/songs/My-Chemical-Romance/Bulletproof-Heart.mp3	839
5930	Dead	\N	media/songs/My-Chemical-Romance/Dead.mp3	839
5931	Famous Last Words	\N	media/songs/My-Chemical-Romance/Famous-Last-Words.mp3	839
5932	Famous Last Words v2	\N	media/songs/My-Chemical-Romance/Famous-Last-Words-v2.mp3	839
5933	Helena	\N	media/songs/My-Chemical-Romance/Helena.mp3	839
5934	Helena v2	\N	media/songs/My-Chemical-Romance/Helena-v2.mp3	839
5935	Helena v3	\N	media/songs/My-Chemical-Romance/Helena-v3.mp3	839
5936	Im Not Ok I Promise	\N	media/songs/My-Chemical-Romance/Im-Not-Ok-I-Promise.mp3	839
5937	Im Not Ok I Promise v2	\N	media/songs/My-Chemical-Romance/Im-Not-Ok-I-Promise-v2.mp3	839
5938	Planetary Go	\N	media/songs/My-Chemical-Romance/Planetary-Go.mp3	839
5939	Teenagers	\N	media/songs/My-Chemical-Romance/Teenagers.mp3	839
5940	This Is How I Disappear	\N	media/songs/My-Chemical-Romance/This-Is-How-I-Disappear.mp3	839
5941	Welcome To The Black Parade	\N	media/songs/My-Chemical-Romance/Welcome-To-The-Black-Parade.mp3	839
5942	One Big Holiday	\N	media/songs/My-Morning-Jacket/One-Big-Holiday.mp3	840
5943	Bang Bang	\N	media/songs/Nancy-Sinatra/Bang-Bang.mp3	841
5944	Scum	\N	media/songs/Napalm-Death/Scum.mp3	842
5946	Hair Of The Dog	\N	media/songs/Nazareth/Hair-Of-The-Dog.mp3	843
5947	Hair Of The Dog v2	\N	media/songs/Nazareth/Hair-Of-The-Dog-v2.mp3	843
5948	Hair Of The Dog v3	\N	media/songs/Nazareth/Hair-Of-The-Dog-v3.mp3	843
5949	Hair Of The Dog v4	\N	media/songs/Nazareth/Hair-Of-The-Dog-v4.mp3	843
5950	Hair Of The Dog v5	\N	media/songs/Nazareth/Hair-Of-The-Dog-v5.mp3	843
5951	Love Hurts	\N	media/songs/Nazareth/Love-Hurts.mp3	843
5952	Not Fakin It	\N	media/songs/Nazareth/Not-Fakin-It.mp3	843
5953	Turn On Your Receiver	\N	media/songs/Nazareth/Turn-On-Your-Receiver.mp3	843
5954	Al Otro Lado	\N	media/songs/Necroberus/Al-Otro-Lado.mp3	844
5955	Caos	\N	media/songs/Necroberus/Caos.mp3	844
5956	Nuvole E Lenzuola	\N	media/songs/Negramaro/Nuvole-E-Lenzuola.mp3	845
5957	Nuvole E Lenzuola v2	\N	media/songs/Negramaro/Nuvole-E-Lenzuola-v2.mp3	845
5958	Alabama	\N	media/songs/Neil-Young/Alabama.mp3	846
5959	Cinnamon Girl	\N	media/songs/Neil-Young/Cinnamon-Girl.mp3	846
5960	Cinnamon Girl v2	\N	media/songs/Neil-Young/Cinnamon-Girl-v2.mp3	846
5961	Cortez The Killer	\N	media/songs/Neil-Young/Cortez-The-Killer.mp3	846
5962	Cortez The Killer v2	\N	media/songs/Neil-Young/Cortez-The-Killer-v2.mp3	846
5963	Cortez The Killer v3	\N	media/songs/Neil-Young/Cortez-The-Killer-v3.mp3	846
5964	Harvest Moon	\N	media/songs/Neil-Young/Harvest-Moon.mp3	846
5965	Heart Of Gold	\N	media/songs/Neil-Young/Heart-Of-Gold.mp3	846
5966	Heart Of Gold v2	\N	media/songs/Neil-Young/Heart-Of-Gold-v2.mp3	846
5967	Heart Of Gold v3	\N	media/songs/Neil-Young/Heart-Of-Gold-v3.mp3	846
5968	Hey Hey My My	\N	media/songs/Neil-Young/Hey-Hey-My-My.mp3	846
5969	LA	\N	media/songs/Neil-Young/LA.mp3	846
5970	Like A Hurricane	\N	media/songs/Neil-Young/Like-A-Hurricane.mp3	846
5971	Ohio	\N	media/songs/Neil-Young/Ohio.mp3	846
5972	Old Man	\N	media/songs/Neil-Young/Old-Man.mp3	846
5973	Old Man v2	\N	media/songs/Neil-Young/Old-Man-v2.mp3	846
5974	Rockin In The Free World	\N	media/songs/Neil-Young/Rockin-In-The-Free-World.mp3	846
5975	Rockin In The Free World v2	\N	media/songs/Neil-Young/Rockin-In-The-Free-World-v2.mp3	846
5976	Southern Man	\N	media/songs/Neil-Young/Southern-Man.mp3	846
5977	Im Alright	\N	media/songs/Neil-Zaza/Im-Alright.mp3	847
5978	Im Alright	\N	media/songs/Neil-Zaza/Im-Alright.mp3	847
5979	Im Alright v2	\N	media/songs/Neil-Zaza/Im-Alright-v2.mp3	847
5980	My Only Son	\N	media/songs/Neil-Zaza/My-Only-Son.mp3	847
5981	Turn Off The Light	\N	media/songs/Nelly-Furtado/Turn-Off-The-Light.mp3	848
5982	All Down Hill From Here	\N	media/songs/New-Found-Glory/All-Down-Hill-From-Here.mp3	849
5983	My Friends Over You	\N	media/songs/New-Found-Glory/My-Friends-Over-You.mp3	849
5984	Understatement	\N	media/songs/New-Found-Glory/Understatement.mp3	849
5985	Personality Crisis	\N	media/songs/New-York-Dolls/Personality-Crisis.mp3	850
5986	Feels Like Home	\N	media/songs/Newton-faulkner/Feels-Like-Home.mp3	851
5987	Animals	\N	media/songs/Nickelback/Animals.mp3	852
5988	Because Of You	\N	media/songs/Nickelback/Because-Of-You.mp3	852
5989	Because Of You v2	\N	media/songs/Nickelback/Because-Of-You-v2.mp3	852
5990	Burn It To The Ground	\N	media/songs/Nickelback/Burn-It-To-The-Ground.mp3	852
5991	Far Away	\N	media/songs/Nickelback/Far-Away.mp3	852
5992	Fight For All The Wrong Reasons	\N	media/songs/Nickelback/Fight-For-All-The-Wrong-Reasons.mp3	852
5993	Figured You Out	\N	media/songs/Nickelback/Figured-You-Out.mp3	852
5994	Flat On The Floor	\N	media/songs/Nickelback/Flat-On-The-Floor.mp3	852
5995	How You Remind Me	\N	media/songs/Nickelback/How-You-Remind-Me.mp3	852
5996	How You Remind Me v2	\N	media/songs/Nickelback/How-You-Remind-Me-v2.mp3	852
5997	How You Remind Me v3	\N	media/songs/Nickelback/How-You-Remind-Me-v3.mp3	852
5998	How You Remind Me v4	\N	media/songs/Nickelback/How-You-Remind-Me-v4.mp3	852
5999	How You Remind Me v5	\N	media/songs/Nickelback/How-You-Remind-Me-v5.mp3	852
6000	Never Again	\N	media/songs/Nickelback/Never-Again.mp3	852
6001	Photograph	\N	media/songs/Nickelback/Photograph.mp3	852
6002	Rockstar	\N	media/songs/Nickelback/Rockstar.mp3	852
6003	Rockstar v2	\N	media/songs/Nickelback/Rockstar-v2.mp3	852
6004	Rockstar v3	\N	media/songs/Nickelback/Rockstar-v3.mp3	852
6005	Rockstar v4	\N	media/songs/Nickelback/Rockstar-v4.mp3	852
6006	Someday	\N	media/songs/Nickelback/Someday.mp3	852
6007	Woke Up This Morning	\N	media/songs/Nickelback/Woke-Up-This-Morning.mp3	852
6008	Dont Tell Me You Love Me	\N	media/songs/Night-Ranger/Dont-Tell-Me-You-Love-Me.mp3	853
6009	Sister Christian	\N	media/songs/Night-Ranger/Sister-Christian.mp3	853
6010	Sister Christian v2	\N	media/songs/Night-Ranger/Sister-Christian-v2.mp3	853
6011	You Can Still Rock In America	\N	media/songs/Night-Ranger/You-Can-Still-Rock-In-America.mp3	853
6012	Amaranth	\N	media/songs/Nightwish/Amaranth.mp3	854
6013	Bless The Child	\N	media/songs/Nightwish/Bless-The-Child.mp3	854
6014	Crimson Tide	\N	media/songs/Nightwish/Crimson-Tide.mp3	854
6015	Ever Dream	\N	media/songs/Nightwish/Ever-Dream.mp3	854
6016	Ever Dream v2	\N	media/songs/Nightwish/Ever-Dream-v2.mp3	854
6017	Kinslayer	\N	media/songs/Nightwish/Kinslayer.mp3	854
6018	Nemo	\N	media/songs/Nightwish/Nemo.mp3	854
6019	Over The Hills And Far Away	\N	media/songs/Nightwish/Over-The-Hills-And-Far-Away.mp3	854
6020	Sleeping Sun	\N	media/songs/Nightwish/Sleeping-Sun.mp3	854
6021	Stargazers	\N	media/songs/Nightwish/Stargazers.mp3	854
6022	Stargazers v2	\N	media/songs/Nightwish/Stargazers-v2.mp3	854
6023	Tutankhamen	\N	media/songs/Nightwish/Tutankhamen.mp3	854
6024	Wish I Had An Angel	\N	media/songs/Nightwish/Wish-I-Had-An-Angel.mp3	854
6025	Wishmaster	\N	media/songs/Nightwish/Wishmaster.mp3	854
6026	1 000 000	\N	media/songs/Nine-Inch-Nails/1-000-000.mp3	855
6027	1 000 000 v2	\N	media/songs/Nine-Inch-Nails/1-000-000-v2.mp3	855
6028	Bbburn	\N	media/songs/Nine-Inch-Nails/Bbburn.mp3	855
6029	Burn	\N	media/songs/Nine-Inch-Nails/Burn.mp3	855
6030	Capital G	\N	media/songs/Nine-Inch-Nails/Capital-G.mp3	855
6031	Capital G v2	\N	media/songs/Nine-Inch-Nails/Capital-G-v2.mp3	855
6032	Classic	\N	media/songs/Nine-Inch-Nails/Classic.mp3	855
6033	Closer	\N	media/songs/Nine-Inch-Nails/Closer.mp3	855
6034	Every Day Is Exactly The Same	\N	media/songs/Nine-Inch-Nails/Every-Day-Is-Exactly-The-Same.mp3	855
6035	Head Like A Hole	\N	media/songs/Nine-Inch-Nails/Head-Like-A-Hole.mp3	855
6036	Last	\N	media/songs/Nine-Inch-Nails/Last.mp3	855
6037	March Of The Pigs	\N	media/songs/Nine-Inch-Nails/March-Of-The-Pigs.mp3	855
6038	March Of The Pigs v2	\N	media/songs/Nine-Inch-Nails/March-Of-The-Pigs-v2.mp3	855
6039	The Beginning Of The End	\N	media/songs/Nine-Inch-Nails/The-Beginning-Of-The-End.mp3	855
6040	The Beginning Of The End v2	\N	media/songs/Nine-Inch-Nails/The-Beginning-Of-The-End-v2.mp3	855
6041	The Collector	\N	media/songs/Nine-Inch-Nails/The-Collector.mp3	855
6042	The Hand That Feeds	\N	media/songs/Nine-Inch-Nails/The-Hand-That-Feeds.mp3	855
6043	The Perfect Drug	\N	media/songs/Nine-Inch-Nails/The-Perfect-Drug.mp3	855
6044	The Perfect Drug v2	\N	media/songs/Nine-Inch-Nails/The-Perfect-Drug-v2.mp3	855
6045	Wish	\N	media/songs/Nine-Inch-Nails/Wish.mp3	855
6046	Wish v2	\N	media/songs/Nine-Inch-Nails/Wish-v2.mp3	855
6047	About A Girl	\N	media/songs/Nirvana/About-A-Girl.mp3	856
6048	About A Girl  Acoustic	\N	media/songs/Nirvana/About-A-Girl--Acoustic.mp3	856
6049	About A Girl v2	\N	media/songs/Nirvana/About-A-Girl-v2.mp3	856
6050	About A Girl v3	\N	media/songs/Nirvana/About-A-Girl-v3.mp3	856
6051	About A Girl v4	\N	media/songs/Nirvana/About-A-Girl-v4.mp3	856
6052	About A Girl v5	\N	media/songs/Nirvana/About-A-Girl-v5.mp3	856
6053	About Agirl	\N	media/songs/Nirvana/About-Agirl.mp3	856
6054	All Apologies	\N	media/songs/Nirvana/All-Apologies.mp3	856
6055	All Apologies v2	\N	media/songs/Nirvana/All-Apologies-v2.mp3	856
6056	All Apologies v3	\N	media/songs/Nirvana/All-Apologies-v3.mp3	856
6057	Been A Son	\N	media/songs/Nirvana/Been-A-Son.mp3	856
6058	Big Long Now	\N	media/songs/Nirvana/Big-Long-Now.mp3	856
6059	Blandest	\N	media/songs/Nirvana/Blandest.mp3	856
6060	Breed	\N	media/songs/Nirvana/Breed.mp3	856
6061	Breed v2	\N	media/songs/Nirvana/Breed-v2.mp3	856
6062	Breed v3	\N	media/songs/Nirvana/Breed-v3.mp3	856
6063	Breed v4	\N	media/songs/Nirvana/Breed-v4.mp3	856
6064	Come As You Are	\N	media/songs/Nirvana/Come-As-You-Are.mp3	856
6065	Come As You Are Unplugged	\N	media/songs/Nirvana/Come-As-You-Are-Unplugged.mp3	856
6066	Come As You Are v2	\N	media/songs/Nirvana/Come-As-You-Are-v2.mp3	856
6067	Come As You Are v3	\N	media/songs/Nirvana/Come-As-You-Are-v3.mp3	856
6068	Come As You Are v4	\N	media/songs/Nirvana/Come-As-You-Are-v4.mp3	856
6069	D7	\N	media/songs/Nirvana/D7.mp3	856
6070	Dive	\N	media/songs/Nirvana/Dive.mp3	856
6071	Drain You	\N	media/songs/Nirvana/Drain-You.mp3	856
6072	Drain You v2	\N	media/songs/Nirvana/Drain-You-v2.mp3	856
6073	Drain You v3	\N	media/songs/Nirvana/Drain-You-v3.mp3	856
6074	Dumb	\N	media/songs/Nirvana/Dumb.mp3	856
6075	Floyd The Barber	\N	media/songs/Nirvana/Floyd-The-Barber.mp3	856
6076	Frances Farmer Will Have Her Revenge	\N	media/songs/Nirvana/Frances-Farmer-Will-Have-Her-Revenge.mp3	856
6077	Frances Farmer Will Have Her Revenge v2	\N	media/songs/Nirvana/Frances-Farmer-Will-Have-Her-Revenge-v2.mp3	856
6078	Heart Shaped Box	\N	media/songs/Nirvana/Heart-Shaped-Box.mp3	856
6079	Heart Shaped Box v2	\N	media/songs/Nirvana/Heart-Shaped-Box-v2.mp3	856
6080	Heart Shaped Box v3	\N	media/songs/Nirvana/Heart-Shaped-Box-v3.mp3	856
6081	Heart Shaped Box v4	\N	media/songs/Nirvana/Heart-Shaped-Box-v4.mp3	856
6082	Heart Shaped Box v5	\N	media/songs/Nirvana/Heart-Shaped-Box-v5.mp3	856
6083	Heart Shaped Box v6	\N	media/songs/Nirvana/Heart-Shaped-Box-v6.mp3	856
6084	Heart Shaped Box v7	\N	media/songs/Nirvana/Heart-Shaped-Box-v7.mp3	856
6085	In Bloom	\N	media/songs/Nirvana/In-Bloom.mp3	856
6086	In Bloom v2	\N	media/songs/Nirvana/In-Bloom-v2.mp3	856
6087	Lithium	\N	media/songs/Nirvana/Lithium.mp3	856
6088	Lithium v2	\N	media/songs/Nirvana/Lithium-v2.mp3	856
6089	Lithium v3	\N	media/songs/Nirvana/Lithium-v3.mp3	856
6090	Lounge Act	\N	media/songs/Nirvana/Lounge-Act.mp3	856
6091	Lounge Act v2	\N	media/songs/Nirvana/Lounge-Act-v2.mp3	856
6092	Lounge Act v3	\N	media/songs/Nirvana/Lounge-Act-v3.mp3	856
6093	Love Buzz	\N	media/songs/Nirvana/Love-Buzz.mp3	856
6094	Marijuana	\N	media/songs/Nirvana/Marijuana.mp3	856
6095	Negative Creep	\N	media/songs/Nirvana/Negative-Creep.mp3	856
6096	Negative Creep v2	\N	media/songs/Nirvana/Negative-Creep-v2.mp3	856
6097	On A Plain	\N	media/songs/Nirvana/On-A-Plain.mp3	856
6098	On A Plain v2	\N	media/songs/Nirvana/On-A-Plain-v2.mp3	856
6099	On A Plain v3	\N	media/songs/Nirvana/On-A-Plain-v3.mp3	856
6100	On A Plain v4	\N	media/songs/Nirvana/On-A-Plain-v4.mp3	856
6101	On A Plain v5	\N	media/songs/Nirvana/On-A-Plain-v5.mp3	856
6102	Penny Royal Tea	\N	media/songs/Nirvana/Penny-Royal-Tea.mp3	856
6103	Polly	\N	media/songs/Nirvana/Polly.mp3	856
6104	Polly v2	\N	media/songs/Nirvana/Polly-v2.mp3	856
6105	Sappy	\N	media/songs/Nirvana/Sappy.mp3	856
6106	Sappy v2	\N	media/songs/Nirvana/Sappy-v2.mp3	856
6107	School	\N	media/songs/Nirvana/School.mp3	856
6108	School v2	\N	media/songs/Nirvana/School-v2.mp3	856
6109	School v3	\N	media/songs/Nirvana/School-v3.mp3	856
6110	School v4	\N	media/songs/Nirvana/School-v4.mp3	856
6111	Scoff	\N	media/songs/Nirvana/Scoff.mp3	856
6112	Sliver	\N	media/songs/Nirvana/Sliver.mp3	856
6113	Sliver v2	\N	media/songs/Nirvana/Sliver-v2.mp3	856
6114	Smells Like Teen Spirit	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit.mp3	856
6115	Smells Like Teen Spirit v10	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v10.mp3	856
6116	Smells Like Teen Spirit v2	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v2.mp3	856
6117	Smells Like Teen Spirit v3	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v3.mp3	856
6118	Smells Like Teen Spirit v4	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v4.mp3	856
6119	Smells Like Teen Spirit v5	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v5.mp3	856
6120	Smells Like Teen Spirit v6	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v6.mp3	856
6121	Smells Like Teen Spirit v7	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v7.mp3	856
6122	Smells Like Teen Spirit v8	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v8.mp3	856
6123	Smells Like Teen Spirit v9	\N	media/songs/Nirvana/Smells-Like-Teen-Spirit-v9.mp3	856
6124	Something In The Way	\N	media/songs/Nirvana/Something-In-The-Way.mp3	856
6125	Son Of A Gun	\N	media/songs/Nirvana/Son-Of-A-Gun.mp3	856
6126	Son Of A Gun v2	\N	media/songs/Nirvana/Son-Of-A-Gun-v2.mp3	856
6127	Stay Away	\N	media/songs/Nirvana/Stay-Away.mp3	856
6128	The Man Who Sold The World	\N	media/songs/Nirvana/The-Man-Who-Sold-The-World.mp3	856
6129	The Man Who Sold The World v2	\N	media/songs/Nirvana/The-Man-Who-Sold-The-World-v2.mp3	856
6130	The Man Who Sold The World v3	\N	media/songs/Nirvana/The-Man-Who-Sold-The-World-v3.mp3	856
6131	Very Ape	\N	media/songs/Nirvana/Very-Ape.mp3	856
6132	Very Ape v2	\N	media/songs/Nirvana/Very-Ape-v2.mp3	856
6133	Very Ape v3	\N	media/songs/Nirvana/Very-Ape-v3.mp3	856
6134	You Know Youre Right	\N	media/songs/Nirvana/You-Know-Youre-Right.mp3	856
6135	Bathwater	\N	media/songs/No-Doubt/Bathwater.mp3	857
6136	Dont Speak	\N	media/songs/No-Doubt/Dont-Speak.mp3	857
6137	Ex Girlfriend	\N	media/songs/No-Doubt/Ex-Girlfriend.mp3	857
6138	Ex Girlfriend v2	\N	media/songs/No-Doubt/Ex-Girlfriend-v2.mp3	857
6139	Excuse Me Mr	\N	media/songs/No-Doubt/Excuse-Me-Mr.mp3	857
6140	Hella Good	\N	media/songs/No-Doubt/Hella-Good.mp3	857
6141	Hey Baby	\N	media/songs/No-Doubt/Hey-Baby.mp3	857
6142	Its My Life	\N	media/songs/No-Doubt/Its-My-Life.mp3	857
6143	Just A Girl	\N	media/songs/No-Doubt/Just-A-Girl.mp3	857
6144	New	\N	media/songs/No-Doubt/New.mp3	857
6145	Running	\N	media/songs/No-Doubt/Running.mp3	857
6146	Simple Kind Of Life	\N	media/songs/No-Doubt/Simple-Kind-Of-Life.mp3	857
6147	Spider Webs	\N	media/songs/No-Doubt/Spider-Webs.mp3	857
6148	Spiderwebs	\N	media/songs/No-Doubt/Spiderwebs.mp3	857
6149	Sunday Morning	\N	media/songs/No-Doubt/Sunday-Morning.mp3	857
6150	Underneath It All	\N	media/songs/No-Doubt/Underneath-It-All.mp3	857
6151	Fight	\N	media/songs/No-Vacancy/Fight.mp3	858
6152	Heal Me Im Headstick	\N	media/songs/No-Vacancy/Heal-Me-Im-Headstick.mp3	858
6153	Aka What A Life	\N	media/songs/Noel-Gallagher/Aka-What-A-Life.mp3	859
6154	Aka What A Life v2	\N	media/songs/Noel-Gallagher/Aka-What-A-Life-v2.mp3	859
6155	Dont Call Me White	\N	media/songs/Nofx/Dont-Call-Me-White.mp3	860
6156	Linoleum	\N	media/songs/Nofx/Linoleum.mp3	860
6157	Soul Doubt	\N	media/songs/Nofx/Soul-Doubt.mp3	860
6158	Stickin In My Eye	\N	media/songs/Nofx/Stickin-In-My-Eye.mp3	860
6159	AIF	\N	media/songs/Not-Sorted-yet/AIF.mp3	861
6160	All Along The Watchtower	\N	media/songs/Not-Sorted-yet/All-Along-The-Watchtower.mp3	861
6161	Easter	\N	media/songs/Not-Sorted-yet/Easter.mp3	861
6162	Games People Play	\N	media/songs/Not-Sorted-yet/Games-People-Play.mp3	861
6163	I Wanna Be Sedated	\N	media/songs/Not-Sorted-yet/I-Wanna-Be-Sedated.mp3	861
6164	Rock Bottom	\N	media/songs/Not-Sorted-yet/Rock-Bottom.mp3	861
6165	Slash Type Song Final	\N	media/songs/Not-Sorted-yet/Slash-Type-Song-Final.mp3	861
6166	Toxicity	\N	media/songs/Not-Sorted-yet/Toxicity.mp3	861
6167	Radiation Sickness	\N	media/songs/Nuclear-Assault/Radiation-Sickness.mp3	862
6168	Aint Got Nothing	\N	media/songs/Oasis/Aint-Got-Nothing.mp3	863
6169	Bag It Up	\N	media/songs/Oasis/Bag-It-Up.mp3	863
6170	Champagne Supernova	\N	media/songs/Oasis/Champagne-Supernova.mp3	863
6171	Champagne Supernova v2	\N	media/songs/Oasis/Champagne-Supernova-v2.mp3	863
6172	Cum On Feel The Noise	\N	media/songs/Oasis/Cum-On-Feel-The-Noise.mp3	863
6173	Dont Go Away	\N	media/songs/Oasis/Dont-Go-Away.mp3	863
6174	Dont Look Back In Anger	\N	media/songs/Oasis/Dont-Look-Back-In-Anger.mp3	863
6175	Dont Look Back In Anger v2	\N	media/songs/Oasis/Dont-Look-Back-In-Anger-v2.mp3	863
6176	Dont Look Back In Anger v3	\N	media/songs/Oasis/Dont-Look-Back-In-Anger-v3.mp3	863
6177	Dont Look Back In Anger v4	\N	media/songs/Oasis/Dont-Look-Back-In-Anger-v4.mp3	863
6178	Falling Down	\N	media/songs/Oasis/Falling-Down.mp3	863
6179	Get Off Your High Horse Lady	\N	media/songs/Oasis/Get-Off-Your-High-Horse-Lady.mp3	863
6180	Hello	\N	media/songs/Oasis/Hello.mp3	863
6181	I Am The Walrus	\N	media/songs/Oasis/I-Am-The-Walrus.mp3	863
6182	I Am The Walrus v2	\N	media/songs/Oasis/I-Am-The-Walrus-v2.mp3	863
6183	Im Outta Time	\N	media/songs/Oasis/Im-Outta-Time.mp3	863
6184	Let There Be Love	\N	media/songs/Oasis/Let-There-Be-Love.mp3	863
6185	Live Forever	\N	media/songs/Oasis/Live-Forever.mp3	863
6186	Live Forever v2	\N	media/songs/Oasis/Live-Forever-v2.mp3	863
6187	Live Forever v3	\N	media/songs/Oasis/Live-Forever-v3.mp3	863
6188	Live Forever v4	\N	media/songs/Oasis/Live-Forever-v4.mp3	863
6189	Morning Glory	\N	media/songs/Oasis/Morning-Glory.mp3	863
6190	Rock N Roll Star	\N	media/songs/Oasis/Rock-N-Roll-Star.mp3	863
6191	Rock N Roll Star v2	\N	media/songs/Oasis/Rock-N-Roll-Star-v2.mp3	863
6192	Rock N Roll Star v3	\N	media/songs/Oasis/Rock-N-Roll-Star-v3.mp3	863
6193	Roll With It	\N	media/songs/Oasis/Roll-With-It.mp3	863
6194	Roll With It v2	\N	media/songs/Oasis/Roll-With-It-v2.mp3	863
6195	Shes Electric	\N	media/songs/Oasis/Shes-Electric.mp3	863
6196	Shes Electric v2	\N	media/songs/Oasis/Shes-Electric-v2.mp3	863
6197	Soldier On	\N	media/songs/Oasis/Soldier-On.mp3	863
6198	Some Might Say	\N	media/songs/Oasis/Some-Might-Say.mp3	863
6199	Some Might Say v2	\N	media/songs/Oasis/Some-Might-Say-v2.mp3	863
6200	Some Might Say v3	\N	media/songs/Oasis/Some-Might-Say-v3.mp3	863
6201	Some Might Say v4	\N	media/songs/Oasis/Some-Might-Say-v4.mp3	863
6202	Supersonic	\N	media/songs/Oasis/Supersonic.mp3	863
6203	Supersonic v2	\N	media/songs/Oasis/Supersonic-v2.mp3	863
6204	The Importance Of Being Idle	\N	media/songs/Oasis/The-Importance-Of-Being-Idle.mp3	863
6205	The Masterplan	\N	media/songs/Oasis/The-Masterplan.mp3	863
6206	The Nature Of Reality	\N	media/songs/Oasis/The-Nature-Of-Reality.mp3	863
6207	The Turning	\N	media/songs/Oasis/The-Turning.mp3	863
6208	The Turning v2	\N	media/songs/Oasis/The-Turning-v2.mp3	863
6209	To Be Where Theres Life	\N	media/songs/Oasis/To-Be-Where-Theres-Life.mp3	863
6210	Waiting For The Rapture	\N	media/songs/Oasis/Waiting-For-The-Rapture.mp3	863
6211	Whatever	\N	media/songs/Oasis/Whatever.mp3	863
6212	Wonderwall	\N	media/songs/Oasis/Wonderwall.mp3	863
6213	Wonderwall v2	\N	media/songs/Oasis/Wonderwall-v2.mp3	863
6214	Wonderwall v3	\N	media/songs/Oasis/Wonderwall-v3.mp3	863
6215	Wonderwall v4	\N	media/songs/Oasis/Wonderwall-v4.mp3	863
6216	Redneck Stomp	\N	media/songs/Obituary/Redneck-Stomp.mp3	864
6217	Threatening Skies	\N	media/songs/Obituary/Threatening-Skies.mp3	864
6218	Hundred Mile High City	\N	media/songs/Ocean-Colour-Scene/Hundred-Mile-High-City.mp3	865
6219	Hundred Mile High City v2	\N	media/songs/Ocean-Colour-Scene/Hundred-Mile-High-City-v2.mp3	865
6220	The Day We Caught The Train	\N	media/songs/Ocean-Colour-Scene/The-Day-We-Caught-The-Train.mp3	865
6221	Americana	\N	media/songs/Offspring/Americana.mp3	866
6222	Bad Habit	\N	media/songs/Offspring/Bad-Habit.mp3	866
6223	Bloodstains	\N	media/songs/Offspring/Bloodstains.mp3	866
6224	Cant Get My Head Around You	\N	media/songs/Offspring/Cant-Get-My-Head-Around-You.mp3	866
6225	Cant Repeat	\N	media/songs/Offspring/Cant-Repeat.mp3	866
6226	Come Out And Play	\N	media/songs/Offspring/Come-Out-And-Play.mp3	866
6227	Come Out And Play v2	\N	media/songs/Offspring/Come-Out-And-Play-v2.mp3	866
6228	Come Out And Play v3	\N	media/songs/Offspring/Come-Out-And-Play-v3.mp3	866
6229	Gone Away	\N	media/songs/Offspring/Gone-Away.mp3	866
6230	Gone Away v2	\N	media/songs/Offspring/Gone-Away-v2.mp3	866
6231	Half Truism	\N	media/songs/Offspring/Half-Truism.mp3	866
6232	Hammerhead	\N	media/songs/Offspring/Hammerhead.mp3	866
6233	Hit That	\N	media/songs/Offspring/Hit-That.mp3	866
6234	I Want U Bad	\N	media/songs/Offspring/I-Want-U-Bad.mp3	866
6235	I Want You Bad	\N	media/songs/Offspring/I-Want-You-Bad.mp3	866
6236	Million Miles Away	\N	media/songs/Offspring/Million-Miles-Away.mp3	866
6237	Original Prankster	\N	media/songs/Offspring/Original-Prankster.mp3	866
6238	Pretty Fly For A White Guy	\N	media/songs/Offspring/Pretty-Fly-For-A-White-Guy.mp3	866
6239	Pretty Fly For A White Guy v2	\N	media/songs/Offspring/Pretty-Fly-For-A-White-Guy-v2.mp3	866
6240	Rise And Fall	\N	media/songs/Offspring/Rise-And-Fall.mp3	866
6241	Rise And Fall v2	\N	media/songs/Offspring/Rise-And-Fall-v2.mp3	866
6242	Self Esteem	\N	media/songs/Offspring/Self-Esteem.mp3	866
6243	Self Esteem v2	\N	media/songs/Offspring/Self-Esteem-v2.mp3	866
6244	Shes Got Issues	\N	media/songs/Offspring/Shes-Got-Issues.mp3	866
6245	Shes Got Issues v2	\N	media/songs/Offspring/Shes-Got-Issues-v2.mp3	866
6246	Staring At The Sun	\N	media/songs/Offspring/Staring-At-The-Sun.mp3	866
6247	Takes Me Nowhere	\N	media/songs/Offspring/Takes-Me-Nowhere.mp3	866
6248	The Kids Arent Allright	\N	media/songs/Offspring/The-Kids-Arent-Allright.mp3	866
6249	The Kids Arent Alright	\N	media/songs/Offspring/The-Kids-Arent-Alright.mp3	866
6250	Want You Bad	\N	media/songs/Offspring/Want-You-Bad.mp3	866
6251	What Happened To You	\N	media/songs/Offspring/What-Happened-To-You.mp3	866
6252	Why Dont You Get A Job	\N	media/songs/Offspring/Why-Dont-You-Get-A-Job.mp3	866
6253	Youre Gonna Go Far Kid	\N	media/songs/Offspring/Youre-Gonna-Go-Far-Kid.mp3	866
6254	Ele Vive	\N	media/songs/Oficina-G3/Ele-Vive.mp3	867
6255	Espelhos Magicos	\N	media/songs/Oficina-G3/Espelhos-Magicos.mp3	867
6256	Espelhos Magicos Live	\N	media/songs/Oficina-G3/Espelhos-Magicos-Live.mp3	867
6260	Fire	\N	media/songs/Ohio-Players/Fire.mp3	868
6261	Fire v2	\N	media/songs/Ohio-Players/Fire-v2.mp3	868
6262	Only A Lad	\N	media/songs/Oingo-Boingo/Only-A-Lad.mp3	869
6263	Here It Goes Again	\N	media/songs/OK-Go/Here-It-Goes-Again.mp3	870
6264	What Makes You Beautiful	\N	media/songs/One-Direction/What-Makes-You-Beautiful.mp3	871
6265	Stop And Stare	\N	media/songs/One-Republic/Stop-And-Stare.mp3	872
6266	Stop And Stare v2	\N	media/songs/One-Republic/Stop-And-Stare-v2.mp3	872
6267	Kouga Ninpouchou	\N	media/songs/Onmyouza/Kouga-Ninpouchou.mp3	873
6268	Kureha	\N	media/songs/Onmyouza/Kureha.mp3	873
6269	Advent	\N	media/songs/Opeth/Advent.mp3	874
6270	Burden	\N	media/songs/Opeth/Burden.mp3	874
6271	Closure	\N	media/songs/Opeth/Closure.mp3	874
6272	Deliverance	\N	media/songs/Opeth/Deliverance.mp3	874
6273	Demon Of The Fall	\N	media/songs/Opeth/Demon-Of-The-Fall.mp3	874
6274	Ending Credits	\N	media/songs/Opeth/Ending-Credits.mp3	874
6275	Ghost Of Perdition	\N	media/songs/Opeth/Ghost-Of-Perdition.mp3	874
6276	Hope Leaves	\N	media/songs/Opeth/Hope-Leaves.mp3	874
6277	In My Time Of Need	\N	media/songs/Opeth/In-My-Time-Of-Need.mp3	874
6278	Lepper Affinity	\N	media/songs/Opeth/Lepper-Affinity.mp3	874
6279	Moonlapse Vertigo	\N	media/songs/Opeth/Moonlapse-Vertigo.mp3	874
6280	The Drapery Falls	\N	media/songs/Opeth/The-Drapery-Falls.mp3	874
6281	To Bid You Farewell	\N	media/songs/Opeth/To-Bid-You-Farewell.mp3	874
6282	To Rid The Disease	\N	media/songs/Opeth/To-Rid-The-Disease.mp3	874
6283	Windowpane	\N	media/songs/Opeth/Windowpane.mp3	874
6284	Windowpane v2	\N	media/songs/Opeth/Windowpane-v2.mp3	874
6285	Burn You Down	\N	media/songs/Opiate-For-The-Masses/Burn-You-Down.mp3	875
6286	Lutko Moja	\N	media/songs/Osmi-Putnik/Lutko-Moja.mp3	876
6287	Drink Up	\N	media/songs/Ounce-Of-Self/Drink-Up.mp3	877
6288	Diana Dedication	\N	media/songs/Oziel-Zinho/Diana-Dedication.mp3	878
6289	Illusion	\N	media/songs/Oziel-Zinho/Illusion.mp3	878
6290	Isabella	\N	media/songs/Oziel-Zinho/Isabella.mp3	878
6291	Diana Dedication	\N	media/songs/Ozielzinho/Diana-Dedication.mp3	879
6292	Avh	\N	media/songs/Ozzy-Osbourne/Avh.mp3	880
6293	Bark At The Moon	\N	media/songs/Ozzy-Osbourne/Bark-At-The-Moon.mp3	880
6294	Bark At The Moon v2	\N	media/songs/Ozzy-Osbourne/Bark-At-The-Moon-v2.mp3	880
6295	Bark At The Moon v3	\N	media/songs/Ozzy-Osbourne/Bark-At-The-Moon-v3.mp3	880
6296	Bark At The Moon v4	\N	media/songs/Ozzy-Osbourne/Bark-At-The-Moon-v4.mp3	880
6297	Bark At The Moon v5	\N	media/songs/Ozzy-Osbourne/Bark-At-The-Moon-v5.mp3	880
6298	Bark At The Moon v6	\N	media/songs/Ozzy-Osbourne/Bark-At-The-Moon-v6.mp3	880
6299	Believer	\N	media/songs/Ozzy-Osbourne/Believer.mp3	880
6300	Crazy Babies	\N	media/songs/Ozzy-Osbourne/Crazy-Babies.mp3	880
6301	Crazy Babies v2	\N	media/songs/Ozzy-Osbourne/Crazy-Babies-v2.mp3	880
6302	Crazy Train	\N	media/songs/Ozzy-Osbourne/Crazy-Train.mp3	880
6303	Crazy Train Live	\N	media/songs/Ozzy-Osbourne/Crazy-Train-Live.mp3	880
6304	Crazy Train v2	\N	media/songs/Ozzy-Osbourne/Crazy-Train-v2.mp3	880
6305	Crazy Train v3	\N	media/songs/Ozzy-Osbourne/Crazy-Train-v3.mp3	880
6306	Crazy Train v4	\N	media/songs/Ozzy-Osbourne/Crazy-Train-v4.mp3	880
6307	Crazy Train v5	\N	media/songs/Ozzy-Osbourne/Crazy-Train-v5.mp3	880
6308	Crazy Train v6	\N	media/songs/Ozzy-Osbourne/Crazy-Train-v6.mp3	880
6309	Diary Of A Madman	\N	media/songs/Ozzy-Osbourne/Diary-Of-A-Madman.mp3	880
6310	Diary Of A Madman v2	\N	media/songs/Ozzy-Osbourne/Diary-Of-A-Madman-v2.mp3	880
6311	Diary Of A Madman v3	\N	media/songs/Ozzy-Osbourne/Diary-Of-A-Madman-v3.mp3	880
6312	Dont Know	\N	media/songs/Ozzy-Osbourne/Dont-Know.mp3	880
6313	Facing Hell	\N	media/songs/Ozzy-Osbourne/Facing-Hell.mp3	880
6314	Facing Hell v2	\N	media/songs/Ozzy-Osbourne/Facing-Hell-v2.mp3	880
6315	Flying High Again	\N	media/songs/Ozzy-Osbourne/Flying-High-Again.mp3	880
6316	Flying High Again v2	\N	media/songs/Ozzy-Osbourne/Flying-High-Again-v2.mp3	880
6317	Flying High Again v3	\N	media/songs/Ozzy-Osbourne/Flying-High-Again-v3.mp3	880
6318	Flying High Again v4	\N	media/songs/Ozzy-Osbourne/Flying-High-Again-v4.mp3	880
6319	Gets Me Through	\N	media/songs/Ozzy-Osbourne/Gets-Me-Through.mp3	880
6320	Goodbye To Romance	\N	media/songs/Ozzy-Osbourne/Goodbye-To-Romance.mp3	880
6321	Goodbye To Romance v2	\N	media/songs/Ozzy-Osbourne/Goodbye-To-Romance-v2.mp3	880
6322	Goodbye To Romance v3	\N	media/songs/Ozzy-Osbourne/Goodbye-To-Romance-v3.mp3	880
6323	I Dont Know	\N	media/songs/Ozzy-Osbourne/I-Dont-Know.mp3	880
6324	I Dont Know v2	\N	media/songs/Ozzy-Osbourne/I-Dont-Know-v2.mp3	880
6325	I Dont Know v3	\N	media/songs/Ozzy-Osbourne/I-Dont-Know-v3.mp3	880
6326	I Dont Wanna Stop	\N	media/songs/Ozzy-Osbourne/I-Dont-Wanna-Stop.mp3	880
6327	I Dont Wanna Stop v2	\N	media/songs/Ozzy-Osbourne/I-Dont-Wanna-Stop-v2.mp3	880
6328	I Dont Want To Change The World	\N	media/songs/Ozzy-Osbourne/I-Dont-Want-To-Change-The-World.mp3	880
6329	Iron Man	\N	media/songs/Ozzy-Osbourne/Iron-Man.mp3	880
6330	Iron Man v2	\N	media/songs/Ozzy-Osbourne/Iron-Man-v2.mp3	880
6331	Iron Man v3	\N	media/songs/Ozzy-Osbourne/Iron-Man-v3.mp3	880
6332	Killer Of Giants	\N	media/songs/Ozzy-Osbourne/Killer-Of-Giants.mp3	880
6333	Lightning Strikes	\N	media/songs/Ozzy-Osbourne/Lightning-Strikes.mp3	880
6334	Little Dolls	\N	media/songs/Ozzy-Osbourne/Little-Dolls.mp3	880
6335	Mama Im Coming Home	\N	media/songs/Ozzy-Osbourne/Mama-Im-Coming-Home.mp3	880
6336	Mama Im Coming Home v2	\N	media/songs/Ozzy-Osbourne/Mama-Im-Coming-Home-v2.mp3	880
6337	Mama Im Coming Home v3	\N	media/songs/Ozzy-Osbourne/Mama-Im-Coming-Home-v3.mp3	880
6338	Miracle Man	\N	media/songs/Ozzy-Osbourne/Miracle-Man.mp3	880
6339	Miracle Man Live	\N	media/songs/Ozzy-Osbourne/Miracle-Man-Live.mp3	880
6340	Miracle Man v2	\N	media/songs/Ozzy-Osbourne/Miracle-Man-v2.mp3	880
6341	Mr Crowley	\N	media/songs/Ozzy-Osbourne/Mr-Crowley.mp3	880
6342	Mr Crowley Live	\N	media/songs/Ozzy-Osbourne/Mr-Crowley-Live.mp3	880
6343	Mr Crowley v2	\N	media/songs/Ozzy-Osbourne/Mr-Crowley-v2.mp3	880
6344	Mr Crowley v3	\N	media/songs/Ozzy-Osbourne/Mr-Crowley-v3.mp3	880
6345	Mr Crowley v4	\N	media/songs/Ozzy-Osbourne/Mr-Crowley-v4.mp3	880
6346	Mr Crowley v5	\N	media/songs/Ozzy-Osbourne/Mr-Crowley-v5.mp3	880
6347	Mr Crowley v6	\N	media/songs/Ozzy-Osbourne/Mr-Crowley-v6.mp3	880
6348	Mr Crowley v7	\N	media/songs/Ozzy-Osbourne/Mr-Crowley-v7.mp3	880
6349	Mr Tinkertrain	\N	media/songs/Ozzy-Osbourne/Mr-Tinkertrain.mp3	880
6350	No Bone Movies	\N	media/songs/Ozzy-Osbourne/No-Bone-Movies.mp3	880
6351	No More Tears	\N	media/songs/Ozzy-Osbourne/No-More-Tears.mp3	880
6352	No More Tears v2	\N	media/songs/Ozzy-Osbourne/No-More-Tears-v2.mp3	880
6353	No More Tears v3	\N	media/songs/Ozzy-Osbourne/No-More-Tears-v3.mp3	880
6354	No More Tears v4	\N	media/songs/Ozzy-Osbourne/No-More-Tears-v4.mp3	880
6355	No More Tears v5	\N	media/songs/Ozzy-Osbourne/No-More-Tears-v5.mp3	880
6356	No More Tears v6	\N	media/songs/Ozzy-Osbourne/No-More-Tears-v6.mp3	880
6357	No More Tears v7	\N	media/songs/Ozzy-Osbourne/No-More-Tears-v7.mp3	880
6358	Now You See It Now You Dont	\N	media/songs/Ozzy-Osbourne/Now-You-See-It-Now-You-Dont.mp3	880
6359	Over A Mountain	\N	media/songs/Ozzy-Osbourne/Over-A-Mountain.mp3	880
6360	Over The Mountain	\N	media/songs/Ozzy-Osbourne/Over-The-Mountain.mp3	880
6361	Over The Mountain v2	\N	media/songs/Ozzy-Osbourne/Over-The-Mountain-v2.mp3	880
6362	Over The Mountain v3	\N	media/songs/Ozzy-Osbourne/Over-The-Mountain-v3.mp3	880
6363	Over The Mountain v4	\N	media/songs/Ozzy-Osbourne/Over-The-Mountain-v4.mp3	880
6364	Over The Mountain v5	\N	media/songs/Ozzy-Osbourne/Over-The-Mountain-v5.mp3	880
6365	Over The Mountain v6	\N	media/songs/Ozzy-Osbourne/Over-The-Mountain-v6.mp3	880
6366	Paranoid Live	\N	media/songs/Ozzy-Osbourne/Paranoid-Live.mp3	880
6367	Perry Mason	\N	media/songs/Ozzy-Osbourne/Perry-Mason.mp3	880
6368	Perry Mason v2	\N	media/songs/Ozzy-Osbourne/Perry-Mason-v2.mp3	880
6369	Perry Mason v3	\N	media/songs/Ozzy-Osbourne/Perry-Mason-v3.mp3	880
6370	Randy Rhoads Style Backing	\N	media/songs/Ozzy-Osbourne/Randy-Rhoads-Style-Backing.mp3	880
6371	Revelation Mother Earth	\N	media/songs/Ozzy-Osbourne/Revelation-Mother-Earth.mp3	880
6372	Revelation Mother Earth v2	\N	media/songs/Ozzy-Osbourne/Revelation-Mother-Earth-v2.mp3	880
6373	Rock And Roll Rebel	\N	media/songs/Ozzy-Osbourne/Rock-And-Roll-Rebel.mp3	880
6374	Sato	\N	media/songs/Ozzy-Osbourne/Sato.mp3	880
6375	Sato v2	\N	media/songs/Ozzy-Osbourne/Sato-v2.mp3	880
6376	Shot In The Dark	\N	media/songs/Ozzy-Osbourne/Shot-In-The-Dark.mp3	880
6377	Shot In The Dark v2	\N	media/songs/Ozzy-Osbourne/Shot-In-The-Dark-v2.mp3	880
6378	Stayin Alive	\N	media/songs/Ozzy-Osbourne/Stayin-Alive.mp3	880
6379	Steal Away The Night	\N	media/songs/Ozzy-Osbourne/Steal-Away-The-Night.mp3	880
6380	Steal Away The Night v2	\N	media/songs/Ozzy-Osbourne/Steal-Away-The-Night-v2.mp3	880
6381	Steal Away The Night v3	\N	media/songs/Ozzy-Osbourne/Steal-Away-The-Night-v3.mp3	880
6382	Steal Away The Night v4	\N	media/songs/Ozzy-Osbourne/Steal-Away-The-Night-v4.mp3	880
6383	Suicide Solution	\N	media/songs/Ozzy-Osbourne/Suicide-Solution.mp3	880
6384	Waiting For Darkness	\N	media/songs/Ozzy-Osbourne/Waiting-For-Darkness.mp3	880
6385	War Pigs	\N	media/songs/Ozzy-Osbourne/War-Pigs.mp3	880
6386	War Pigs v2	\N	media/songs/Ozzy-Osbourne/War-Pigs-v2.mp3	880
6387	You Looking At Me	\N	media/songs/Ozzy-Osbourne/You-Looking-At-Me.mp3	880
6388	Entre Dos Aguas	\N	media/songs/Paco-De-Lucia/Entre-Dos-Aguas.mp3	881
6389	Ashes	\N	media/songs/Pain-Of-Salvation/Ashes.mp3	882
6390	Ending Theme	\N	media/songs/Pain-Of-Salvation/Ending-Theme.mp3	882
6391	Her Voices	\N	media/songs/Pain-Of-Salvation/Her-Voices.mp3	882
6392	In The Flesh	\N	media/songs/Pain-Of-Salvation/In-The-Flesh.mp3	882
6393	This Heart Of Mine	\N	media/songs/Pain-Of-Salvation/This-Heart-Of-Mine.mp3	882
6394	Undertow	\N	media/songs/Pain-Of-Salvation/Undertow.mp3	882
6395	Used	\N	media/songs/Pain-Of-Salvation/Used.mp3	882
6396	Nine In The Afternoon	\N	media/songs/Panic-At-The-Disco/Nine-In-The-Afternoon.mp3	883
6397	Shes A Handsome Woman	\N	media/songs/Panic-At-The-Disco/Shes-A-Handsome-Woman.mp3	883
6398	13 Steps To Nowhere	\N	media/songs/Pantera/13-Steps-To-Nowhere.mp3	884
6399	25 Years	\N	media/songs/Pantera/25-Years.mp3	884
6400	5 Minutes Alone	\N	media/songs/Pantera/5-Minutes-Alone.mp3	884
6401	5 Minutes Alone v2	\N	media/songs/Pantera/5-Minutes-Alone-v2.mp3	884
6402	5 Minutes Alone v3	\N	media/songs/Pantera/5-Minutes-Alone-v3.mp3	884
6403	5 Minutes Alone v4	\N	media/songs/Pantera/5-Minutes-Alone-v4.mp3	884
6404	A New Level	\N	media/songs/Pantera/A-New-Level.mp3	884
6405	A New Level v2	\N	media/songs/Pantera/A-New-Level-v2.mp3	884
6406	A New Level v3	\N	media/songs/Pantera/A-New-Level-v3.mp3	884
6407	Becoming	\N	media/songs/Pantera/Becoming.mp3	884
6408	Broken	\N	media/songs/Pantera/Broken.mp3	884
6409	Broken v2	\N	media/songs/Pantera/Broken-v2.mp3	884
6410	Cemetary Gates	\N	media/songs/Pantera/Cemetary-Gates.mp3	884
6411	Cemetary Gates v2	\N	media/songs/Pantera/Cemetary-Gates-v2.mp3	884
6412	Cemetary Gates v3	\N	media/songs/Pantera/Cemetary-Gates-v3.mp3	884
6413	Cemetary Gates v4	\N	media/songs/Pantera/Cemetary-Gates-v4.mp3	884
6414	Cemetery Gates	\N	media/songs/Pantera/Cemetery-Gates.mp3	884
6415	Cowboys From Hell	\N	media/songs/Pantera/Cowboys-From-Hell.mp3	884
6416	Cowboys From Hell v2	\N	media/songs/Pantera/Cowboys-From-Hell-v2.mp3	884
6417	Demon Be Driven	\N	media/songs/Pantera/Demon-Be-Driven.mp3	884
6418	Domination	\N	media/songs/Pantera/Domination.mp3	884
6419	Domination v2	\N	media/songs/Pantera/Domination-v2.mp3	884
6420	Domination v3	\N	media/songs/Pantera/Domination-v3.mp3	884
6421	Domination v4	\N	media/songs/Pantera/Domination-v4.mp3	884
6422	Domination v5	\N	media/songs/Pantera/Domination-v5.mp3	884
6423	Floods	\N	media/songs/Pantera/Floods.mp3	884
6424	Floods v2	\N	media/songs/Pantera/Floods-v2.mp3	884
6425	Hard Lines Sunken Cheeks	\N	media/songs/Pantera/Hard-Lines-Sunken-Cheeks.mp3	884
6426	Hollow	\N	media/songs/Pantera/Hollow.mp3	884
6427	Im Broken	\N	media/songs/Pantera/Im-Broken.mp3	884
6428	Im Broken v2	\N	media/songs/Pantera/Im-Broken-v2.mp3	884
6429	Im Broken v3	\N	media/songs/Pantera/Im-Broken-v3.mp3	884
6430	Im Broken v4	\N	media/songs/Pantera/Im-Broken-v4.mp3	884
6431	Immortally Insane	\N	media/songs/Pantera/Immortally-Insane.mp3	884
6432	Mouth For War	\N	media/songs/Pantera/Mouth-For-War.mp3	884
6433	Mouth For War v2	\N	media/songs/Pantera/Mouth-For-War-v2.mp3	884
6434	Primal Concrete Sledge	\N	media/songs/Pantera/Primal-Concrete-Sledge.mp3	884
6435	Psycho Holiday	\N	media/songs/Pantera/Psycho-Holiday.mp3	884
6436	Regular People	\N	media/songs/Pantera/Regular-People.mp3	884
6437	Regular People v2	\N	media/songs/Pantera/Regular-People-v2.mp3	884
6438	Revolution Is My Name	\N	media/songs/Pantera/Revolution-Is-My-Name.mp3	884
6439	Revolution Is My Name v2	\N	media/songs/Pantera/Revolution-Is-My-Name-v2.mp3	884
6440	Revolution Is My Name v3	\N	media/songs/Pantera/Revolution-Is-My-Name-v3.mp3	884
6441	Revolution Is My Name v4	\N	media/songs/Pantera/Revolution-Is-My-Name-v4.mp3	884
6442	Rise	\N	media/songs/Pantera/Rise.mp3	884
6443	Shattered	\N	media/songs/Pantera/Shattered.mp3	884
6444	Shedding Skin	\N	media/songs/Pantera/Shedding-Skin.mp3	884
6445	Shedding Skin v2	\N	media/songs/Pantera/Shedding-Skin-v2.mp3	884
6446	Strength Beyond Strength	\N	media/songs/Pantera/Strength-Beyond-Strength.mp3	884
6447	Suicide Note Part II	\N	media/songs/Pantera/Suicide-Note-Part-II.mp3	884
6448	The Art Of Shredding	\N	media/songs/Pantera/The-Art-Of-Shredding.mp3	884
6449	The Great Southern Trendkill	\N	media/songs/Pantera/The-Great-Southern-Trendkill.mp3	884
6450	The Sleep	\N	media/songs/Pantera/The-Sleep.mp3	884
6451	This Love	\N	media/songs/Pantera/This-Love.mp3	884
6452	This Love v2	\N	media/songs/Pantera/This-Love-v2.mp3	884
6453	This Love v3	\N	media/songs/Pantera/This-Love-v3.mp3	884
6454	This Love v4	\N	media/songs/Pantera/This-Love-v4.mp3	884
6455	Throes Of Rejection	\N	media/songs/Pantera/Throes-Of-Rejection.mp3	884
6456	Use My Thrid Arm	\N	media/songs/Pantera/Use-My-Thrid-Arm.mp3	884
6457	Walk	\N	media/songs/Pantera/Walk.mp3	884
6458	Walk v2	\N	media/songs/Pantera/Walk-v2.mp3	884
6459	Walk v3	\N	media/songs/Pantera/Walk-v3.mp3	884
6460	Walk v4	\N	media/songs/Pantera/Walk-v4.mp3	884
6461	Walk v5	\N	media/songs/Pantera/Walk-v5.mp3	884
6462	Walk v6	\N	media/songs/Pantera/Walk-v6.mp3	884
6463	Walk v7	\N	media/songs/Pantera/Walk-v7.mp3	884
6464	War Nerve	\N	media/songs/Pantera/War-Nerve.mp3	884
6465	Between Angels And Insects	\N	media/songs/Papa-Roach/Between-Angels-And-Insects.mp3	885
6466	Between Angels And Insects v2	\N	media/songs/Papa-Roach/Between-Angels-And-Insects-v2.mp3	885
6467	Forever	\N	media/songs/Papa-Roach/Forever.mp3	885
6468	Getting Away With Murder	\N	media/songs/Papa-Roach/Getting-Away-With-Murder.mp3	885
6469	Getting Away With Murder v2	\N	media/songs/Papa-Roach/Getting-Away-With-Murder-v2.mp3	885
6470	Last Resort	\N	media/songs/Papa-Roach/Last-Resort.mp3	885
6471	Last Resort v2	\N	media/songs/Papa-Roach/Last-Resort-v2.mp3	885
6472	Lifeline	\N	media/songs/Papa-Roach/Lifeline.mp3	885
6473	She Loves Me Not	\N	media/songs/Papa-Roach/She-Loves-Me-Not.mp3	885
6474	She Loves Me Not v2	\N	media/songs/Papa-Roach/She-Loves-Me-Not-v2.mp3	885
6475	Time Is Running Out	\N	media/songs/Papa-Roach/Time-Is-Running-Out.mp3	885
6476	Time Is Running Out v2	\N	media/songs/Papa-Roach/Time-Is-Running-Out-v2.mp3	885
6477	As I Die	\N	media/songs/Paradise-Lost/As-I-Die.mp3	886
6478	Brick By Boring Brick	\N	media/songs/Paramore/Brick-By-Boring-Brick.mp3	887
6479	Crush Crush Crush	\N	media/songs/Paramore/Crush-Crush-Crush.mp3	887
6480	Crush Crush Crush v2	\N	media/songs/Paramore/Crush-Crush-Crush-v2.mp3	887
6481	Decode	\N	media/songs/Paramore/Decode.mp3	887
6482	For A PessImist Im Pretty OptImistic	\N	media/songs/Paramore/For-A-PessImist-Im-Pretty-OptImistic.mp3	887
6483	Ignorance	\N	media/songs/Paramore/Ignorance.mp3	887
6484	Ignorance v2	\N	media/songs/Paramore/Ignorance-v2.mp3	887
6485	Let The Flames Begin	\N	media/songs/Paramore/Let-The-Flames-Begin.mp3	887
6486	Misery Business	\N	media/songs/Paramore/Misery-Business.mp3	887
6487	Misery Business v2	\N	media/songs/Paramore/Misery-Business-v2.mp3	887
6488	Misery Business v3	\N	media/songs/Paramore/Misery-Business-v3.mp3	887
6489	Misery Business v4	\N	media/songs/Paramore/Misery-Business-v4.mp3	887
6490	Pressure	\N	media/songs/Paramore/Pressure.mp3	887
6491	Thats What You Get	\N	media/songs/Paramore/Thats-What-You-Get.mp3	887
6492	Thats What You Get v2	\N	media/songs/Paramore/Thats-What-You-Get-v2.mp3	887
6493	Thats What You Get v3	\N	media/songs/Paramore/Thats-What-You-Get-v3.mp3	887
6494	Thats What You Get v4	\N	media/songs/Paramore/Thats-What-You-Get-v4.mp3	887
6495	Thats What You Get v5	\N	media/songs/Paramore/Thats-What-You-Get-v5.mp3	887
6496	The Only Exception	\N	media/songs/Paramore/The-Only-Exception.mp3	887
6497	Walkways	\N	media/songs/Parissiene/Walkways.mp3	888
6498	Carrion	\N	media/songs/Parkway-Drive/Carrion.mp3	889
6499	Romance Is Dead	\N	media/songs/Parkway-Drive/Romance-Is-Dead.mp3	889
6500	Sirens Song	\N	media/songs/Parkway-Drive/Sirens-Song.mp3	889
6501	Smokeem If You Gotem	\N	media/songs/Parkway-Drive/Smokeem-If-You-Gotem.mp3	889
6502	Fire And Ice	\N	media/songs/Pat-Benatar/Fire-And-Ice.mp3	890
6503	Heartbreaker	\N	media/songs/Pat-Benatar/Heartbreaker.mp3	890
6504	Hit Me With Your Best Shot	\N	media/songs/Pat-Benatar/Hit-Me-With-Your-Best-Shot.mp3	890
6505	Hit Me With Your Best Shot v2	\N	media/songs/Pat-Benatar/Hit-Me-With-Your-Best-Shot-v2.mp3	890
6506	Hit Me With Your Best Shot v3	\N	media/songs/Pat-Benatar/Hit-Me-With-Your-Best-Shot-v3.mp3	890
6507	Hit Me With Your Best Shot v4	\N	media/songs/Pat-Benatar/Hit-Me-With-Your-Best-Shot-v4.mp3	890
6508	Love Is A Battlefield	\N	media/songs/Pat-Benatar/Love-Is-A-Battlefield.mp3	890
6509	Love Is A Battlefield v2	\N	media/songs/Pat-Benatar/Love-Is-A-Battlefield-v2.mp3	890
6510	So Long	\N	media/songs/Pat-Benatar/So-Long.mp3	890
6511	True Love	\N	media/songs/Pat-Benatar/True-Love.mp3	890
6512	And Then I Knew	\N	media/songs/Pat-Metheny/And-Then-I-Knew.mp3	891
6513	And Then I Knew v2	\N	media/songs/Pat-Metheny/And-Then-I-Knew-v2.mp3	891
6514	And Then I Knew v3	\N	media/songs/Pat-Metheny/And-Then-I-Knew-v3.mp3	891
6515	Better Days Ahead	\N	media/songs/Pat-Metheny/Better-Days-Ahead.mp3	891
6516	Better Days Ahead v2	\N	media/songs/Pat-Metheny/Better-Days-Ahead-v2.mp3	891
6517	Something To Remind You	\N	media/songs/Pat-Metheny/Something-To-Remind-You.mp3	891
6518	Something To Remind You v2	\N	media/songs/Pat-Metheny/Something-To-Remind-You-v2.mp3	891
6519	Third Wind	\N	media/songs/Pat-Metheny/Third-Wind.mp3	891
6520	Snortin Whiskey	\N	media/songs/Pat-Travers/Snortin-Whiskey.mp3	892
6521	Snortin Whiskey v2	\N	media/songs/Pat-Travers/Snortin-Whiskey-v2.mp3	892
6522	El Pibe De Los Astilleros	\N	media/songs/Patricio-Rey-Y-Sus-Redonditos-De-Ricota/El-Pibe-De-Los-Astilleros.mp3	893
6523	Vencedores Vencidos	\N	media/songs/Patricio-Rey-Y-Sus-Redonditos-De-Ricota/Vencedores-Vencidos.mp3	893
6524	Mindscape	\N	media/songs/Patrick-Rondat/Mindscape.mp3	894
6525	Vivaldi Tribute	\N	media/songs/Patrick-Rondat/Vivaldi-Tribute.mp3	894
6526	Crazy	\N	media/songs/Patsy-Cline/Crazy.mp3	895
6527	Prelude To A Black Star	\N	media/songs/Paul-Fontanet/Prelude-To-A-Black-Star.mp3	896
6528	Bronx 1971	\N	media/songs/Paul-Gilbert/Bronx-1971.mp3	897
6529	Bultaco Saturno	\N	media/songs/Paul-Gilbert/Bultaco-Saturno.mp3	897
6530	Down To Mexico	\N	media/songs/Paul-Gilbert/Down-To-Mexico.mp3	897
6531	Eudaimonia Overture	\N	media/songs/Paul-Gilbert/Eudaimonia-Overture.mp3	897
6532	Fuzz Universe	\N	media/songs/Paul-Gilbert/Fuzz-Universe.mp3	897
6533	Fuzz Universe v2	\N	media/songs/Paul-Gilbert/Fuzz-Universe-v2.mp3	897
6534	Hurry Up	\N	media/songs/Paul-Gilbert/Hurry-Up.mp3	897
6535	I Cannot Tell A Lie	\N	media/songs/Paul-Gilbert/I-Cannot-Tell-A-Lie.mp3	897
6536	Masterclass	\N	media/songs/Paul-Gilbert/Masterclass.mp3	897
6537	Mount Fuji Christmas	\N	media/songs/Paul-Gilbert/Mount-Fuji-Christmas.mp3	897
6538	Mr Spock	\N	media/songs/Paul-Gilbert/Mr-Spock.mp3	897
6539	Norwegian Cowbell	\N	media/songs/Paul-Gilbert/Norwegian-Cowbell.mp3	897
6540	Paul Vs Godzilla	\N	media/songs/Paul-Gilbert/Paul-Vs-Godzilla.mp3	897
6541	Screaming Blues Omania	\N	media/songs/Paul-Gilbert/Screaming-Blues-Omania.mp3	897
6542	Silence Followed By A Deafening Roar	\N	media/songs/Paul-Gilbert/Silence-Followed-By-A-Deafening-Roar.mp3	897
6543	Silence Followed By A Deafening Roar v2	\N	media/songs/Paul-Gilbert/Silence-Followed-By-A-Deafening-Roar-v2.mp3	897
6544	Space Ship One	\N	media/songs/Paul-Gilbert/Space-Ship-One.mp3	897
6545	Technical Difficulties	\N	media/songs/Paul-Gilbert/Technical-Difficulties.mp3	897
6546	Technical Difficulties v2	\N	media/songs/Paul-Gilbert/Technical-Difficulties-v2.mp3	897
6547	Technical Difficulties v3	\N	media/songs/Paul-Gilbert/Technical-Difficulties-v3.mp3	897
6548	Technical Difficulties v4	\N	media/songs/Paul-Gilbert/Technical-Difficulties-v4.mp3	897
6549	The Curse Of The Castle Dragon	\N	media/songs/Paul-Gilbert/The-Curse-Of-The-Castle-Dragon.mp3	897
6550	The Gargoyle	\N	media/songs/Paul-Gilbert/The-Gargoyle.mp3	897
6551	The Rhino	\N	media/songs/Paul-Gilbert/The-Rhino.mp3	897
6552	Yesterday	\N	media/songs/Paul-Mccartney/Yesterday.mp3	898
6553	Miss Terre	\N	media/songs/Paul-Personne/Miss-Terre.mp3	899
6554	Burn Down The Trailer Park	\N	media/songs/Paul-Thorn/Burn-Down-The-Trailer-Park.mp3	900
6555	Sunflower	\N	media/songs/Paul-Weller/Sunflower.mp3	901
6556	Sunflower v2	\N	media/songs/Paul-Weller/Sunflower-v2.mp3	901
6557	You Do Something To Me	\N	media/songs/Paul-Weller/You-Do-Something-To-Me.mp3	901
6558	Alive	\N	media/songs/Pearl-Jam/Alive.mp3	902
6559	Alive v2	\N	media/songs/Pearl-Jam/Alive-v2.mp3	902
6560	Alive v3	\N	media/songs/Pearl-Jam/Alive-v3.mp3	902
6561	Alive v4	\N	media/songs/Pearl-Jam/Alive-v4.mp3	902
6562	Animal	\N	media/songs/Pearl-Jam/Animal.mp3	902
6563	Black	\N	media/songs/Pearl-Jam/Black.mp3	902
6564	Black v2	\N	media/songs/Pearl-Jam/Black-v2.mp3	902
6565	Black v3	\N	media/songs/Pearl-Jam/Black-v3.mp3	902
6566	Black v4	\N	media/songs/Pearl-Jam/Black-v4.mp3	902
6567	Black v5	\N	media/songs/Pearl-Jam/Black-v5.mp3	902
6568	Brother	\N	media/songs/Pearl-Jam/Brother.mp3	902
6569	Daughter	\N	media/songs/Pearl-Jam/Daughter.mp3	902
6570	Deep	\N	media/songs/Pearl-Jam/Deep.mp3	902
6571	Dissident	\N	media/songs/Pearl-Jam/Dissident.mp3	902
6572	Dissident v2	\N	media/songs/Pearl-Jam/Dissident-v2.mp3	902
6573	Even Flow	\N	media/songs/Pearl-Jam/Even-Flow.mp3	902
6574	Even Flow v2	\N	media/songs/Pearl-Jam/Even-Flow-v2.mp3	902
6575	Even Flow v3	\N	media/songs/Pearl-Jam/Even-Flow-v3.mp3	902
6576	Garden	\N	media/songs/Pearl-Jam/Garden.mp3	902
6577	I Am Mine	\N	media/songs/Pearl-Jam/I-Am-Mine.mp3	902
6578	I Am Mine v2	\N	media/songs/Pearl-Jam/I-Am-Mine-v2.mp3	902
6579	Immortality	\N	media/songs/Pearl-Jam/Immortality.mp3	902
6580	Inmortality	\N	media/songs/Pearl-Jam/Inmortality.mp3	902
6581	Jeremy	\N	media/songs/Pearl-Jam/Jeremy.mp3	902
6582	Jeremy v2	\N	media/songs/Pearl-Jam/Jeremy-v2.mp3	902
6583	Jeremy v3	\N	media/songs/Pearl-Jam/Jeremy-v3.mp3	902
6584	Just Breathe	\N	media/songs/Pearl-Jam/Just-Breathe.mp3	902
6585	Life Wasted	\N	media/songs/Pearl-Jam/Life-Wasted.mp3	902
6586	Light Years	\N	media/songs/Pearl-Jam/Light-Years.mp3	902
6587	Nothing As It Seems	\N	media/songs/Pearl-Jam/Nothing-As-It-Seems.mp3	902
6588	Ocean	\N	media/songs/Pearl-Jam/Ocean.mp3	902
6589	Once	\N	media/songs/Pearl-Jam/Once.mp3	902
6590	Once v2	\N	media/songs/Pearl-Jam/Once-v2.mp3	902
6591	Porch	\N	media/songs/Pearl-Jam/Porch.mp3	902
6592	Rearview Mirror	\N	media/songs/Pearl-Jam/Rearview-Mirror.mp3	902
6593	Red Mosquito	\N	media/songs/Pearl-Jam/Red-Mosquito.mp3	902
6594	Red Mosquito v2	\N	media/songs/Pearl-Jam/Red-Mosquito-v2.mp3	902
6595	Release	\N	media/songs/Pearl-Jam/Release.mp3	902
6596	Rival	\N	media/songs/Pearl-Jam/Rival.mp3	902
6597	Save You	\N	media/songs/Pearl-Jam/Save-You.mp3	902
6598	Smile	\N	media/songs/Pearl-Jam/Smile.mp3	902
6599	State Of Love And Trust	\N	media/songs/Pearl-Jam/State-Of-Love-And-Trust.mp3	902
6600	Why Go	\N	media/songs/Pearl-Jam/Why-Go.mp3	902
6601	Wishlist	\N	media/songs/Pearl-Jam/Wishlist.mp3	902
6602	Wishlist v2	\N	media/songs/Pearl-Jam/Wishlist-v2.mp3	902
6603	World Wide Suicide	\N	media/songs/Pearl-Jam/World-Wide-Suicide.mp3	902
6604	Yellow Ledbetter	\N	media/songs/Pearl-Jam/Yellow-Ledbetter.mp3	902
6605	Yellowledbetter	\N	media/songs/Pearl-Jam/Yellowledbetter.mp3	902
6606	Bro Hymn	\N	media/songs/Pennywise/Bro-Hymn.mp3	903
6607	Buttersnips	\N	media/songs/Periphery/Buttersnips.mp3	904
6608	Facepal Mute	\N	media/songs/Periphery/Facepal-Mute.mp3	904
6609	Facepal Mute v2	\N	media/songs/Periphery/Facepal-Mute-v2.mp3	904
6610	Land Of Tears	\N	media/songs/Pestilence/Land-Of-Tears.mp3	905
6611	Do You Feel Like We Do	\N	media/songs/Peter-Frampton/Do-You-Feel-Like-We-Do.mp3	906
6612	Do You Feel Like We Do v2	\N	media/songs/Peter-Frampton/Do-You-Feel-Like-We-Do-v2.mp3	906
6613	Do You Feel Like We Do v3	\N	media/songs/Peter-Frampton/Do-You-Feel-Like-We-Do-v3.mp3	906
6614	Show Me The Way	\N	media/songs/Peter-Frampton/Show-Me-The-Way.mp3	906
6615	Show Me The Way v2	\N	media/songs/Peter-Frampton/Show-Me-The-Way-v2.mp3	906
6616	Black Magic Woman	\N	media/songs/Peter-Green/Black-Magic-Woman.mp3	907
6617	Easy Lover	\N	media/songs/Phil-Collins/Easy-Lover.mp3	908
6618	Easy Lover v2	\N	media/songs/Phil-Collins/Easy-Lover-v2.mp3	908
6619	In The Air Tonight	\N	media/songs/Phil-Collins/In-The-Air-Tonight.mp3	908
6620	Chalkdust Torture Live	\N	media/songs/Phish/Chalkdust-Torture-Live.mp3	909
6621	Down With Disease Live	\N	media/songs/Phish/Down-With-Disease-Live.mp3	909
6622	Llama	\N	media/songs/Phish/Llama.mp3	909
6623	Llama v2	\N	media/songs/Phish/Llama-v2.mp3	909
6624	Sample In A Jar Live	\N	media/songs/Phish/Sample-In-A-Jar-Live.mp3	909
6625	Leave Me Alone	\N	media/songs/Pink/Leave-Me-Alone.mp3	910
6626	So What	\N	media/songs/Pink/So-What.mp3	910
6627	A Great Day For Freedom	\N	media/songs/Pink-Floyd/A-Great-Day-For-Freedom.mp3	911
6628	A Great Day For Freedom v2	\N	media/songs/Pink-Floyd/A-Great-Day-For-Freedom-v2.mp3	911
6629	Another Brick In The Wall	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall.mp3	911
6630	Another Brick In The Wall 2	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-2.mp3	911
6631	Another Brick In The Wall Part 2	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-Part-2.mp3	911
6632	Another Brick In The Wall v2	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-v2.mp3	911
6633	Another Brick In The Wall v3	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-v3.mp3	911
6634	Another Brick In The Wall v4	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-v4.mp3	911
6635	Another Brick In The Wall v5	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-v5.mp3	911
6636	Another Brick In The Wall v6	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-v6.mp3	911
6637	Another Brick In The Wall v7	\N	media/songs/Pink-Floyd/Another-Brick-In-The-Wall-v7.mp3	911
6638	Any Colour You Like	\N	media/songs/Pink-Floyd/Any-Colour-You-Like.mp3	911
6639	Any Colour You Like v2	\N	media/songs/Pink-Floyd/Any-Colour-You-Like-v2.mp3	911
6640	Brain Damage	\N	media/songs/Pink-Floyd/Brain-Damage.mp3	911
6641	Brain Damage Eclipse	\N	media/songs/Pink-Floyd/Brain-Damage-Eclipse.mp3	911
6642	Brain Damage v2	\N	media/songs/Pink-Floyd/Brain-Damage-v2.mp3	911
6643	Brain Damage v3	\N	media/songs/Pink-Floyd/Brain-Damage-v3.mp3	911
6644	Breathe	\N	media/songs/Pink-Floyd/Breathe.mp3	911
6645	Breathe Time	\N	media/songs/Pink-Floyd/Breathe-Time.mp3	911
6646	Breathe v2	\N	media/songs/Pink-Floyd/Breathe-v2.mp3	911
6647	Breathe v3	\N	media/songs/Pink-Floyd/Breathe-v3.mp3	911
6648	Breathe v4	\N	media/songs/Pink-Floyd/Breathe-v4.mp3	911
6649	Cluster One	\N	media/songs/Pink-Floyd/Cluster-One.mp3	911
6650	Comfortably Numb	\N	media/songs/Pink-Floyd/Comfortably-Numb.mp3	911
6651	Comfortably Numb Live	\N	media/songs/Pink-Floyd/Comfortably-Numb-Live.mp3	911
6652	Comfortably Numb v10	\N	media/songs/Pink-Floyd/Comfortably-Numb-v10.mp3	911
6653	Comfortably Numb v2	\N	media/songs/Pink-Floyd/Comfortably-Numb-v2.mp3	911
6654	Comfortably Numb v3	\N	media/songs/Pink-Floyd/Comfortably-Numb-v3.mp3	911
6655	Comfortably Numb v4	\N	media/songs/Pink-Floyd/Comfortably-Numb-v4.mp3	911
6656	Comfortably Numb v5	\N	media/songs/Pink-Floyd/Comfortably-Numb-v5.mp3	911
6657	Comfortably Numb v6	\N	media/songs/Pink-Floyd/Comfortably-Numb-v6.mp3	911
6658	Comfortably Numb v7	\N	media/songs/Pink-Floyd/Comfortably-Numb-v7.mp3	911
6659	Comfortably Numb v8	\N	media/songs/Pink-Floyd/Comfortably-Numb-v8.mp3	911
6660	Comfortably Numb v9	\N	media/songs/Pink-Floyd/Comfortably-Numb-v9.mp3	911
6661	Coming Back To Life	\N	media/songs/Pink-Floyd/Coming-Back-To-Life.mp3	911
6662	Coming Back To Life v2	\N	media/songs/Pink-Floyd/Coming-Back-To-Life-v2.mp3	911
6663	Coming Back To Life v3	\N	media/songs/Pink-Floyd/Coming-Back-To-Life-v3.mp3	911
6664	Confortatbly Numb	\N	media/songs/Pink-Floyd/Confortatbly-Numb.mp3	911
6665	Cymbaline	\N	media/songs/Pink-Floyd/Cymbaline.mp3	911
6666	Dogs	\N	media/songs/Pink-Floyd/Dogs.mp3	911
6667	Dogs v2	\N	media/songs/Pink-Floyd/Dogs-v2.mp3	911
6668	Dogs v3	\N	media/songs/Pink-Floyd/Dogs-v3.mp3	911
6669	Dramatic	\N	media/songs/Pink-Floyd/Dramatic.mp3	911
6670	Echoes	\N	media/songs/Pink-Floyd/Echoes.mp3	911
6671	Echoes v2	\N	media/songs/Pink-Floyd/Echoes-v2.mp3	911
6672	Echoes v3	\N	media/songs/Pink-Floyd/Echoes-v3.mp3	911
6673	Eclipse	\N	media/songs/Pink-Floyd/Eclipse.mp3	911
6674	Eclipse v2	\N	media/songs/Pink-Floyd/Eclipse-v2.mp3	911
6675	Eclipse v3	\N	media/songs/Pink-Floyd/Eclipse-v3.mp3	911
6676	Fearless	\N	media/songs/Pink-Floyd/Fearless.mp3	911
6677	Fletcher Memorial Home	\N	media/songs/Pink-Floyd/Fletcher-Memorial-Home.mp3	911
6678	Fletcher Memorial Home v2	\N	media/songs/Pink-Floyd/Fletcher-Memorial-Home-v2.mp3	911
6679	Fletcher Memorial Home v3	\N	media/songs/Pink-Floyd/Fletcher-Memorial-Home-v3.mp3	911
6680	Funk Dung	\N	media/songs/Pink-Floyd/Funk-Dung.mp3	911
6681	Have A Cigar	\N	media/songs/Pink-Floyd/Have-A-Cigar.mp3	911
6682	Have A Cigar v2	\N	media/songs/Pink-Floyd/Have-A-Cigar-v2.mp3	911
6683	Have A Cigar v3	\N	media/songs/Pink-Floyd/Have-A-Cigar-v3.mp3	911
6684	Hey You	\N	media/songs/Pink-Floyd/Hey-You.mp3	911
6685	Hey You v2	\N	media/songs/Pink-Floyd/Hey-You-v2.mp3	911
6686	Hey You v3	\N	media/songs/Pink-Floyd/Hey-You-v3.mp3	911
6687	Hey You v4	\N	media/songs/Pink-Floyd/Hey-You-v4.mp3	911
6688	High Hopes	\N	media/songs/Pink-Floyd/High-Hopes.mp3	911
6689	High Hopes v2	\N	media/songs/Pink-Floyd/High-Hopes-v2.mp3	911
6690	High Hopes v3	\N	media/songs/Pink-Floyd/High-Hopes-v3.mp3	911
6691	High Hopes v4	\N	media/songs/Pink-Floyd/High-Hopes-v4.mp3	911
6692	High Hopes v5	\N	media/songs/Pink-Floyd/High-Hopes-v5.mp3	911
6693	In The Flesh	\N	media/songs/Pink-Floyd/In-The-Flesh.mp3	911
6694	Keep Talking	\N	media/songs/Pink-Floyd/Keep-Talking.mp3	911
6695	Keep Talking v2	\N	media/songs/Pink-Floyd/Keep-Talking-v2.mp3	911
6696	Learning To Fly	\N	media/songs/Pink-Floyd/Learning-To-Fly.mp3	911
6697	Lost For Words	\N	media/songs/Pink-Floyd/Lost-For-Words.mp3	911
6698	Marooned	\N	media/songs/Pink-Floyd/Marooned.mp3	911
6699	Marooned v2	\N	media/songs/Pink-Floyd/Marooned-v2.mp3	911
6700	Money	\N	media/songs/Pink-Floyd/Money.mp3	911
6701	Money v2	\N	media/songs/Pink-Floyd/Money-v2.mp3	911
6702	Money v3	\N	media/songs/Pink-Floyd/Money-v3.mp3	911
6703	Money v4	\N	media/songs/Pink-Floyd/Money-v4.mp3	911
6704	Mother	\N	media/songs/Pink-Floyd/Mother.mp3	911
6705	Mother v2	\N	media/songs/Pink-Floyd/Mother-v2.mp3	911
6706	Mother v3	\N	media/songs/Pink-Floyd/Mother-v3.mp3	911
6707	On The Turning Away	\N	media/songs/Pink-Floyd/On-The-Turning-Away.mp3	911
6708	On The Turning Away v2	\N	media/songs/Pink-Floyd/On-The-Turning-Away-v2.mp3	911
6709	On The Turning Away v3	\N	media/songs/Pink-Floyd/On-The-Turning-Away-v3.mp3	911
6710	One Of These Days	\N	media/songs/Pink-Floyd/One-Of-These-Days.mp3	911
6711	One Of These Days v2	\N	media/songs/Pink-Floyd/One-Of-These-Days-v2.mp3	911
6712	Run Like Hell	\N	media/songs/Pink-Floyd/Run-Like-Hell.mp3	911
6713	Run Like Hell v2	\N	media/songs/Pink-Floyd/Run-Like-Hell-v2.mp3	911
6714	See Emily Play	\N	media/songs/Pink-Floyd/See-Emily-Play.mp3	911
6715	Sheep	\N	media/songs/Pink-Floyd/Sheep.mp3	911
6716	Sheep v2	\N	media/songs/Pink-Floyd/Sheep-v2.mp3	911
6717	Sheep v3	\N	media/songs/Pink-Floyd/Sheep-v3.mp3	911
6718	Shine On	\N	media/songs/Pink-Floyd/Shine-On.mp3	911
6719	Shine On You Crazy Diamond	\N	media/songs/Pink-Floyd/Shine-On-You-Crazy-Diamond.mp3	911
6720	Shine On You Crazy Diamond v2	\N	media/songs/Pink-Floyd/Shine-On-You-Crazy-Diamond-v2.mp3	911
6721	Shine On You Crazy Diamond v3	\N	media/songs/Pink-Floyd/Shine-On-You-Crazy-Diamond-v3.mp3	911
6722	Shine On You Crazy Diamond v4	\N	media/songs/Pink-Floyd/Shine-On-You-Crazy-Diamond-v4.mp3	911
6723	Shine On You Crazy Diamond v5	\N	media/songs/Pink-Floyd/Shine-On-You-Crazy-Diamond-v5.mp3	911
6724	Shine On You Crazy Diamond v6	\N	media/songs/Pink-Floyd/Shine-On-You-Crazy-Diamond-v6.mp3	911
6725	Sorrow	\N	media/songs/Pink-Floyd/Sorrow.mp3	911
6726	Sorrow v2	\N	media/songs/Pink-Floyd/Sorrow-v2.mp3	911
6727	Take A Breath	\N	media/songs/Pink-Floyd/Take-A-Breath.mp3	911
6728	Take It Back	\N	media/songs/Pink-Floyd/Take-It-Back.mp3	911
6729	Terminal Frost	\N	media/songs/Pink-Floyd/Terminal-Frost.mp3	911
6730	The Dark Side Of The Moon	\N	media/songs/Pink-Floyd/The-Dark-Side-Of-The-Moon.mp3	911
6731	The Great Gig In The Sky	\N	media/songs/Pink-Floyd/The-Great-Gig-In-The-Sky.mp3	911
6732	The Happiest Days Of Our Lives	\N	media/songs/Pink-Floyd/The-Happiest-Days-Of-Our-Lives.mp3	911
6733	The Happiest Days Of Our Lives Another Brick In The Wall	\N	media/songs/Pink-Floyd/The-Happiest-Days-Of-Our-Lives-Another-Brick-In-The-Wall.mp3	911
6734	Time	\N	media/songs/Pink-Floyd/Time.mp3	911
6735	Time v2	\N	media/songs/Pink-Floyd/Time-v2.mp3	911
6736	Time v3	\N	media/songs/Pink-Floyd/Time-v3.mp3	911
6737	Time v4	\N	media/songs/Pink-Floyd/Time-v4.mp3	911
6738	Time v5	\N	media/songs/Pink-Floyd/Time-v5.mp3	911
6739	Time v6	\N	media/songs/Pink-Floyd/Time-v6.mp3	911
6740	Us And Them	\N	media/songs/Pink-Floyd/Us-And-Them.mp3	911
6741	Us And Them v2	\N	media/songs/Pink-Floyd/Us-And-Them-v2.mp3	911
6742	Us And Them v3	\N	media/songs/Pink-Floyd/Us-And-Them-v3.mp3	911
6743	Us And Them v4	\N	media/songs/Pink-Floyd/Us-And-Them-v4.mp3	911
6744	What Do You Want	\N	media/songs/Pink-Floyd/What-Do-You-Want.mp3	911
6745	What Do You Want From Me	\N	media/songs/Pink-Floyd/What-Do-You-Want-From-Me.mp3	911
6746	Wish You Were Here	\N	media/songs/Pink-Floyd/Wish-You-Were-Here.mp3	911
6747	Wish You Were Here v2	\N	media/songs/Pink-Floyd/Wish-You-Were-Here-v2.mp3	911
6748	Wish You Were Here v3	\N	media/songs/Pink-Floyd/Wish-You-Were-Here-v3.mp3	911
6749	Wish You Were Here v4	\N	media/songs/Pink-Floyd/Wish-You-Were-Here-v4.mp3	911
6750	Wish You Were Here v5	\N	media/songs/Pink-Floyd/Wish-You-Were-Here-v5.mp3	911
6751	Wish You Were Here v6	\N	media/songs/Pink-Floyd/Wish-You-Were-Here-v6.mp3	911
6752	Young Lust	\N	media/songs/Pink-Floyd/Young-Lust.mp3	911
6753	Young Lust v2	\N	media/songs/Pink-Floyd/Young-Lust-v2.mp3	911
6754	Young Lust v3	\N	media/songs/Pink-Floyd/Young-Lust-v3.mp3	911
6755	Every You Every Me	\N	media/songs/Placebo/Every-You-Every-Me.mp3	912
6756	The Bitter End	\N	media/songs/Placebo/The-Bitter-End.mp3	912
6757	El Roce De Tu Cuerpo	\N	media/songs/Platero-Y-Tu/El-Roce-De-Tu-Cuerpo.mp3	913
6758	LyCanthrope	\N	media/songs/Plus-44/LyCanthrope.mp3	914
6759	Alive	\N	media/songs/POD/Alive.mp3	915
6760	Alive v2	\N	media/songs/POD/Alive-v2.mp3	915
6761	Southtown	\N	media/songs/POD/Southtown.mp3	915
6762	Youth Of The Nation	\N	media/songs/POD/Youth-Of-The-Nation.mp3	915
6763	Aint Nothin But A Good Time	\N	media/songs/Poison/Aint-Nothin-But-A-Good-Time.mp3	916
6764	Every Rose Has Its Thorn	\N	media/songs/Poison/Every-Rose-Has-Its-Thorn.mp3	916
6765	Every Rose Has Its Thorn v2	\N	media/songs/Poison/Every-Rose-Has-Its-Thorn-v2.mp3	916
6766	Fallen Angel	\N	media/songs/Poison/Fallen-Angel.mp3	916
6767	Fallen Angel v2	\N	media/songs/Poison/Fallen-Angel-v2.mp3	916
6768	I Wont Forget You	\N	media/songs/Poison/I-Wont-Forget-You.mp3	916
6769	Life Goes On	\N	media/songs/Poison/Life-Goes-On.mp3	916
6770	Mama Dont Dance	\N	media/songs/Poison/Mama-Dont-Dance.mp3	916
6771	Mama Dont Dance v2	\N	media/songs/Poison/Mama-Dont-Dance-v2.mp3	916
6772	Nothin But A Good Time	\N	media/songs/Poison/Nothin-But-A-Good-Time.mp3	916
6773	Nothin But A Good Time	\N	media/songs/Poison/Nothin-But-A-Good-Time.mp3	916
6774	Nothin But A Good Time v2	\N	media/songs/Poison/Nothin-But-A-Good-Time-v2.mp3	916
6775	Nothin But A Good Time v3	\N	media/songs/Poison/Nothin-But-A-Good-Time-v3.mp3	916
6776	Nothin But A Good Time v4	\N	media/songs/Poison/Nothin-But-A-Good-Time-v4.mp3	916
6777	Something To Believe In	\N	media/songs/Poison/Something-To-Believe-In.mp3	916
6778	Talk Dirty To Me	\N	media/songs/Poison/Talk-Dirty-To-Me.mp3	916
6779	Talk Dirty To Me v2	\N	media/songs/Poison/Talk-Dirty-To-Me-v2.mp3	916
6780	Talk Dirty To Me v3	\N	media/songs/Poison/Talk-Dirty-To-Me-v3.mp3	916
6781	Unskinny Bop	\N	media/songs/Poison/Unskinny-Bop.mp3	916
6782	Unskinny Bop v2	\N	media/songs/Poison/Unskinny-Bop-v2.mp3	916
6783	Nobody Knows You When YouRe Down And Out	\N	media/songs/Popa-Chubby/Nobody-Knows-You-When-YouRe-Down-And-Out.mp3	917
6784	Anesthetize	\N	media/songs/Porcupine-Tree/Anesthetize.mp3	918
6785	Anesthetize Live	\N	media/songs/Porcupine-Tree/Anesthetize-Live.mp3	918
6786	Anesthetize Live v2	\N	media/songs/Porcupine-Tree/Anesthetize-Live-v2.mp3	918
6787	Arriving Somewhere But Not Here	\N	media/songs/Porcupine-Tree/Arriving-Somewhere-But-Not-Here.mp3	918
6788	Deadwing	\N	media/songs/Porcupine-Tree/Deadwing.mp3	918
6789	Fear Of A Blank Planet	\N	media/songs/Porcupine-Tree/Fear-Of-A-Blank-Planet.mp3	918
6790	Fear Of A Blank Planet v2	\N	media/songs/Porcupine-Tree/Fear-Of-A-Blank-Planet-v2.mp3	918
6791	Futile	\N	media/songs/Porcupine-Tree/Futile.mp3	918
6792	Open Car	\N	media/songs/Porcupine-Tree/Open-Car.mp3	918
6793	Prodigal	\N	media/songs/Porcupine-Tree/Prodigal.mp3	918
6794	Shallow	\N	media/songs/Porcupine-Tree/Shallow.mp3	918
6795	Shes Moved On	\N	media/songs/Porcupine-Tree/Shes-Moved-On.mp3	918
6796	Strip The Soul	\N	media/songs/Porcupine-Tree/Strip-The-Soul.mp3	918
6797	Trains	\N	media/songs/Porcupine-Tree/Trains.mp3	918
6798	Trains v2	\N	media/songs/Porcupine-Tree/Trains-v2.mp3	918
6799	Wedding Nails	\N	media/songs/Porcupine-Tree/Wedding-Nails.mp3	918
6800	Glory Box	\N	media/songs/Portishead/Glory-Box.mp3	919
6801	Roads	\N	media/songs/Portishead/Roads.mp3	919
6802	Nice Dreams	\N	media/songs/Powermad/Nice-Dreams.mp3	920
6803	Slaughterhouse	\N	media/songs/Powermad/Slaughterhouse.mp3	920
6804	Lump	\N	media/songs/Presidents-Of-The-United-States-Of-America/Lump.mp3	921
6805	Lump v2	\N	media/songs/Presidents-Of-The-United-States-Of-America/Lump-v2.mp3	921
6806	Lay Down	\N	media/songs/Priestess/Lay-Down.mp3	922
6807	Jerry Was A Racecar Driver	\N	media/songs/Primus/Jerry-Was-A-Racecar-Driver.mp3	923
6808	John The Fisherman	\N	media/songs/Primus/John-The-Fisherman.mp3	923
6809	Purple Rain	\N	media/songs/Prince/Purple-Rain.mp3	924
6810	Purple Rain v2	\N	media/songs/Prince/Purple-Rain-v2.mp3	924
6811	Purple Rain v3	\N	media/songs/Prince/Purple-Rain-v3.mp3	924
6812	Purple Rain v4	\N	media/songs/Prince/Purple-Rain-v4.mp3	924
6813	When Doves Cry	\N	media/songs/Prince/When-Doves-Cry.mp3	924
6814	Lets Go Crazy	\N	media/songs/Prince-And-The-Revolution/Lets-Go-Crazy.mp3	925
6815	A Whiter Shade Of Pale	\N	media/songs/Procol-Harum/A-Whiter-Shade-Of-Pale.mp3	926
6816	Whiter Shade Of Pale	\N	media/songs/Procol-Harum/Whiter-Shade-Of-Pale.mp3	926
6817	Sequoia Throne	\N	media/songs/Protest-The-Hero/Sequoia-Throne.mp3	927
6818	Sequoia Throne v2	\N	media/songs/Protest-The-Hero/Sequoia-Throne-v2.mp3	927
6819	Clandestu	\N	media/songs/Prueba/Clandestu.mp3	928
6820	President Gas	\N	media/songs/Psychedelic-Furs/President-Gas.mp3	929
6821	Pretty In Pink	\N	media/songs/Psychedelic-Furs/Pretty-In-Pink.mp3	929
6822	Bring The Noise	\N	media/songs/Public-Enemy/Bring-The-Noise.mp3	930
6823	Blurry	\N	media/songs/Puddle-Of-Mudd/Blurry.mp3	931
6824	Blurry v2	\N	media/songs/Puddle-Of-Mudd/Blurry-v2.mp3	931
6825	Control	\N	media/songs/Puddle-Of-Mudd/Control.mp3	931
6826	Control v2	\N	media/songs/Puddle-Of-Mudd/Control-v2.mp3	931
6827	Psycho	\N	media/songs/Puddle-Of-Mudd/Psycho.mp3	931
6828	Psycho v2	\N	media/songs/Puddle-Of-Mudd/Psycho-v2.mp3	931
6829	She Hates Me	\N	media/songs/Puddle-Of-Mudd/She-Hates-Me.mp3	931
6830	Ecole Primaire	\N	media/songs/Puguh-Kribo/Ecole-Primaire.mp3	932
6831	Shinning Love	\N	media/songs/Puguh-Kribo/Shinning-Love.mp3	932
6832	Terminology	\N	media/songs/Puguh-Kribo/Terminology.mp3	932
6833	The Kribo	\N	media/songs/Puguh-Kribo/The-Kribo.mp3	932
6834	Siren Song	\N	media/songs/PYG/Siren-Song.mp3	933
6835	A Kind Of Magic	\N	media/songs/Queen/A-Kind-Of-Magic.mp3	934
6836	A Kind Of Magic v2	\N	media/songs/Queen/A-Kind-Of-Magic-v2.mp3	934
6837	A Kind Of Magic v3	\N	media/songs/Queen/A-Kind-Of-Magic-v3.mp3	934
6838	Another One Bites The Dust	\N	media/songs/Queen/Another-One-Bites-The-Dust.mp3	934
6839	Another One Bites The Dust v2	\N	media/songs/Queen/Another-One-Bites-The-Dust-v2.mp3	934
6840	Another One Bites The Dust v3	\N	media/songs/Queen/Another-One-Bites-The-Dust-v3.mp3	934
6841	Bohemian Rhapsody	\N	media/songs/Queen/Bohemian-Rhapsody.mp3	934
6842	Bohemian Rhapsody v2	\N	media/songs/Queen/Bohemian-Rhapsody-v2.mp3	934
6843	Bohemian Rhapsody v3	\N	media/songs/Queen/Bohemian-Rhapsody-v3.mp3	934
6844	Bohemian Rhapsody v4	\N	media/songs/Queen/Bohemian-Rhapsody-v4.mp3	934
6845	Bohemian Rhapsody v5	\N	media/songs/Queen/Bohemian-Rhapsody-v5.mp3	934
6846	Brighton Rock	\N	media/songs/Queen/Brighton-Rock.mp3	934
6847	Brighton Rock v2	\N	media/songs/Queen/Brighton-Rock-v2.mp3	934
6848	C Lebrity	\N	media/songs/Queen/C-Lebrity.mp3	934
6849	Crazy Little Thing Called Love	\N	media/songs/Queen/Crazy-Little-Thing-Called-Love.mp3	934
6850	Crazy Little Thing Called Love v2	\N	media/songs/Queen/Crazy-Little-Thing-Called-Love-v2.mp3	934
6851	Crazy Little Thing Called Love v3	\N	media/songs/Queen/Crazy-Little-Thing-Called-Love-v3.mp3	934
6852	Crazy Little Thing Called Love v4	\N	media/songs/Queen/Crazy-Little-Thing-Called-Love-v4.mp3	934
6853	Crazy Little Thing Called Love v5	\N	media/songs/Queen/Crazy-Little-Thing-Called-Love-v5.mp3	934
6854	Death On Two Legs	\N	media/songs/Queen/Death-On-Two-Legs.mp3	934
6855	Dont Stop Me Now	\N	media/songs/Queen/Dont-Stop-Me-Now.mp3	934
6856	Dont Stop Me Now v2	\N	media/songs/Queen/Dont-Stop-Me-Now-v2.mp3	934
6857	Dont Stop Me Now v3	\N	media/songs/Queen/Dont-Stop-Me-Now-v3.mp3	934
6858	Dont Stop Me Now v4	\N	media/songs/Queen/Dont-Stop-Me-Now-v4.mp3	934
6859	Dont Stop Me Now v5	\N	media/songs/Queen/Dont-Stop-Me-Now-v5.mp3	934
6860	Dragon Attack	\N	media/songs/Queen/Dragon-Attack.mp3	934
6861	Fat Bottomed Girls	\N	media/songs/Queen/Fat-Bottomed-Girls.mp3	934
6862	Fat Bottomed Girls v2	\N	media/songs/Queen/Fat-Bottomed-Girls-v2.mp3	934
6863	Friends Will Be Friends	\N	media/songs/Queen/Friends-Will-Be-Friends.mp3	934
6864	Get Down Make Love	\N	media/songs/Queen/Get-Down-Make-Love.mp3	934
6865	Hammer To Fall	\N	media/songs/Queen/Hammer-To-Fall.mp3	934
6866	Hammer To Fall v2	\N	media/songs/Queen/Hammer-To-Fall-v2.mp3	934
6867	Hammer To Fall v3	\N	media/songs/Queen/Hammer-To-Fall-v3.mp3	934
6868	Hammer To Fall v4	\N	media/songs/Queen/Hammer-To-Fall-v4.mp3	934
6869	Hammer To Fall v5	\N	media/songs/Queen/Hammer-To-Fall-v5.mp3	934
6870	Headlong	\N	media/songs/Queen/Headlong.mp3	934
6871	I Want It All	\N	media/songs/Queen/I-Want-It-All.mp3	934
6872	I Want It All v2	\N	media/songs/Queen/I-Want-It-All-v2.mp3	934
6873	I Want It All v3	\N	media/songs/Queen/I-Want-It-All-v3.mp3	934
6874	I Want It All v4	\N	media/songs/Queen/I-Want-It-All-v4.mp3	934
6875	I Want To Break Free	\N	media/songs/Queen/I-Want-To-Break-Free.mp3	934
6876	I Want To Break Free v2	\N	media/songs/Queen/I-Want-To-Break-Free-v2.mp3	934
6877	I Want To Break Free v3	\N	media/songs/Queen/I-Want-To-Break-Free-v3.mp3	934
6878	Im In Love With My Car	\N	media/songs/Queen/Im-In-Love-With-My-Car.mp3	934
6879	Im In Love With My Car v2	\N	media/songs/Queen/Im-In-Love-With-My-Car-v2.mp3	934
6880	Im In Love With My Car v3	\N	media/songs/Queen/Im-In-Love-With-My-Car-v3.mp3	934
6881	Innuendo	\N	media/songs/Queen/Innuendo.mp3	934
6882	Its A Hard Life	\N	media/songs/Queen/Its-A-Hard-Life.mp3	934
6883	Keep Yourself Alive	\N	media/songs/Queen/Keep-Yourself-Alive.mp3	934
6884	Keep Youself Alive	\N	media/songs/Queen/Keep-Youself-Alive.mp3	934
6885	Killer Queen	\N	media/songs/Queen/Killer-Queen.mp3	934
6886	Killer Queen v2	\N	media/songs/Queen/Killer-Queen-v2.mp3	934
6887	Killer Queen v3	\N	media/songs/Queen/Killer-Queen-v3.mp3	934
6888	Killer Queen v4	\N	media/songs/Queen/Killer-Queen-v4.mp3	934
6889	Liar	\N	media/songs/Queen/Liar.mp3	934
6890	Long Away	\N	media/songs/Queen/Long-Away.mp3	934
6891	Mustapha	\N	media/songs/Queen/Mustapha.mp3	934
6892	Need Your Loving Tonight	\N	media/songs/Queen/Need-Your-Loving-Tonight.mp3	934
6893	No One But You	\N	media/songs/Queen/No-One-But-You.mp3	934
6894	Now Im Here	\N	media/songs/Queen/Now-Im-Here.mp3	934
6895	Now Im Here v2	\N	media/songs/Queen/Now-Im-Here-v2.mp3	934
6896	Now Im Here v3	\N	media/songs/Queen/Now-Im-Here-v3.mp3	934
6897	One Vision	\N	media/songs/Queen/One-Vision.mp3	934
6898	One Vision v2	\N	media/songs/Queen/One-Vision-v2.mp3	934
6899	One Vision v3	\N	media/songs/Queen/One-Vision-v3.mp3	934
6900	One Vision v4	\N	media/songs/Queen/One-Vision-v4.mp3	934
6901	Play The Game	\N	media/songs/Queen/Play-The-Game.mp3	934
6902	Play The Game v2	\N	media/songs/Queen/Play-The-Game-v2.mp3	934
6903	Radio Ga Ga	\N	media/songs/Queen/Radio-Ga-Ga.mp3	934
6904	Radio Ga Ga v2	\N	media/songs/Queen/Radio-Ga-Ga-v2.mp3	934
6905	Sail Away Sweet Sister	\N	media/songs/Queen/Sail-Away-Sweet-Sister.mp3	934
6906	Save Me	\N	media/songs/Queen/Save-Me.mp3	934
6907	Seven Seas Of Rye	\N	media/songs/Queen/Seven-Seas-Of-Rye.mp3	934
6908	Sheer Heart Attack	\N	media/songs/Queen/Sheer-Heart-Attack.mp3	934
6909	Somebody To Love	\N	media/songs/Queen/Somebody-To-Love.mp3	934
6910	Somebody To Love Live	\N	media/songs/Queen/Somebody-To-Love-Live.mp3	934
6911	Somebody To Love v2	\N	media/songs/Queen/Somebody-To-Love-v2.mp3	934
6912	Spread Your Wings	\N	media/songs/Queen/Spread-Your-Wings.mp3	934
6913	Stone Cold Crazy	\N	media/songs/Queen/Stone-Cold-Crazy.mp3	934
6914	Stone Cold Crazy v2	\N	media/songs/Queen/Stone-Cold-Crazy-v2.mp3	934
6915	Stone Cold Crazy v3	\N	media/songs/Queen/Stone-Cold-Crazy-v3.mp3	934
6916	Tenement Funster	\N	media/songs/Queen/Tenement-Funster.mp3	934
6917	Tenement Funster v2	\N	media/songs/Queen/Tenement-Funster-v2.mp3	934
6918	The Show Must Go On	\N	media/songs/Queen/The-Show-Must-Go-On.mp3	934
6919	The Show Must Go On v2	\N	media/songs/Queen/The-Show-Must-Go-On-v2.mp3	934
6920	The Show Must Go On v3	\N	media/songs/Queen/The-Show-Must-Go-On-v3.mp3	934
6921	The Show Must Go On v4	\N	media/songs/Queen/The-Show-Must-Go-On-v4.mp3	934
6922	The Show Must Go On v5	\N	media/songs/Queen/The-Show-Must-Go-On-v5.mp3	934
6923	These Are The Days Of Our Lives	\N	media/songs/Queen/These-Are-The-Days-Of-Our-Lives.mp3	934
6924	Through The Night	\N	media/songs/Queen/Through-The-Night.mp3	934
6925	Tie Your Mother Down	\N	media/songs/Queen/Tie-Your-Mother-Down.mp3	934
6926	Tie Your Mother Down v2	\N	media/songs/Queen/Tie-Your-Mother-Down-v2.mp3	934
6927	Tie Your Mother Down v3	\N	media/songs/Queen/Tie-Your-Mother-Down-v3.mp3	934
6928	Tie Your Mother Down v4	\N	media/songs/Queen/Tie-Your-Mother-Down-v4.mp3	934
6929	Tie Your Mother Down v5	\N	media/songs/Queen/Tie-Your-Mother-Down-v5.mp3	934
6930	Too Much Love Will Kill You	\N	media/songs/Queen/Too-Much-Love-Will-Kill-You.mp3	934
6931	Under Pressure	\N	media/songs/Queen/Under-Pressure.mp3	934
6932	Under Pressure v2	\N	media/songs/Queen/Under-Pressure-v2.mp3	934
6933	We Are The Champions	\N	media/songs/Queen/We-Are-The-Champions.mp3	934
6934	We Are The Champions v2	\N	media/songs/Queen/We-Are-The-Champions-v2.mp3	934
6935	We Are The Champions v3	\N	media/songs/Queen/We-Are-The-Champions-v3.mp3	934
6936	We Will Rock You	\N	media/songs/Queen/We-Will-Rock-You.mp3	934
6937	We Will Rock You v2	\N	media/songs/Queen/We-Will-Rock-You-v2.mp3	934
6938	We Will Rock You v3	\N	media/songs/Queen/We-Will-Rock-You-v3.mp3	934
6939	We Will Rock You v4	\N	media/songs/Queen/We-Will-Rock-You-v4.mp3	934
6940	We Will Rock You v5	\N	media/songs/Queen/We-Will-Rock-You-v5.mp3	934
6941	Who Wants To Live Forever	\N	media/songs/Queen/Who-Wants-To-Live-Forever.mp3	934
6942	Who Wants To Live Forever v2	\N	media/songs/Queen/Who-Wants-To-Live-Forever-v2.mp3	934
6943	Who Wants To Live Forever v3	\N	media/songs/Queen/Who-Wants-To-Live-Forever-v3.mp3	934
6944	Youre My Best Friend	\N	media/songs/Queen/Youre-My-Best-Friend.mp3	934
6945	Youre My Best Friend v2	\N	media/songs/Queen/Youre-My-Best-Friend-v2.mp3	934
6946	We Are The Champions	\N	media/songs/Queen-and-jode5/We-Are-The-Champions.mp3	935
6947	3s And 7s	\N	media/songs/Queens-Of-The-Stone-Age/3s-And-7s.mp3	936
6948	3s And 7s v2	\N	media/songs/Queens-Of-The-Stone-Age/3s-And-7s-v2.mp3	936
6949	Feel Good Hit Of The Summer	\N	media/songs/Queens-Of-The-Stone-Age/Feel-Good-Hit-Of-The-Summer.mp3	936
6950	Feel Good Hit Of The Summer v2	\N	media/songs/Queens-Of-The-Stone-Age/Feel-Good-Hit-Of-The-Summer-v2.mp3	936
6951	Go With The Flow	\N	media/songs/Queens-Of-The-Stone-Age/Go-With-The-Flow.mp3	936
6952	Go With The Flow v2	\N	media/songs/Queens-Of-The-Stone-Age/Go-With-The-Flow-v2.mp3	936
6953	In My Head	\N	media/songs/Queens-Of-The-Stone-Age/In-My-Head.mp3	936
6954	Little Sister	\N	media/songs/Queens-Of-The-Stone-Age/Little-Sister.mp3	936
6955	Little Sister v2	\N	media/songs/Queens-Of-The-Stone-Age/Little-Sister-v2.mp3	936
6956	Make It Wit Chu	\N	media/songs/Queens-Of-The-Stone-Age/Make-It-Wit-Chu.mp3	936
6957	Monsters In The Parasol	\N	media/songs/Queens-Of-The-Stone-Age/Monsters-In-The-Parasol.mp3	936
6958	No One Knows	\N	media/songs/Queens-Of-The-Stone-Age/No-One-Knows.mp3	936
6959	No One Knows v2	\N	media/songs/Queens-Of-The-Stone-Age/No-One-Knows-v2.mp3	936
6960	Sick Sick Sick	\N	media/songs/Queens-Of-The-Stone-Age/Sick-Sick-Sick.mp3	936
6961	Sick Sick Sick v2	\N	media/songs/Queens-Of-The-Stone-Age/Sick-Sick-Sick-v2.mp3	936
6962	Empire	\N	media/songs/Queensryche/Empire.mp3	937
6963	I Dont Believe In Love	\N	media/songs/Queensryche/I-Dont-Believe-In-Love.mp3	937
6964	I Dont Believe In Love v2	\N	media/songs/Queensryche/I-Dont-Believe-In-Love-v2.mp3	937
6965	Jet City Woman	\N	media/songs/Queensryche/Jet-City-Woman.mp3	937
6966	Jet City Woman v2	\N	media/songs/Queensryche/Jet-City-Woman-v2.mp3	937
6967	Jet City Woman v3	\N	media/songs/Queensryche/Jet-City-Woman-v3.mp3	937
6968	Queen Of The Reich	\N	media/songs/Queensryche/Queen-Of-The-Reich.mp3	937
6969	Queen Of The Reich v2	\N	media/songs/Queensryche/Queen-Of-The-Reich-v2.mp3	937
6970	Silent Lucidity	\N	media/songs/Queensryche/Silent-Lucidity.mp3	937
6971	Silent Lucidity  Acoustic	\N	media/songs/Queensryche/Silent-Lucidity--Acoustic.mp3	937
6972	Walk In The Shadows	\N	media/songs/Queensryche/Walk-In-The-Shadows.mp3	937
6973	Cum On Feel The Noize	\N	media/songs/Quite-Riot/Cum-On-Feel-The-Noize.mp3	938
6974	I Believe	\N	media/songs/Quo-Vadis/I-Believe.mp3	939
6975	Silence Calls The Storm	\N	media/songs/Quo-Vadis/Silence-Calls-The-Storm.mp3	939
6976	Fire Of Rock	\N	media/songs/Racer-X/Fire-Of-Rock.mp3	940
6977	Scarified	\N	media/songs/Racer-X/Scarified.mp3	940
6978	Scarified v2	\N	media/songs/Racer-X/Scarified-v2.mp3	940
6979	Scarified v3	\N	media/songs/Racer-X/Scarified-v3.mp3	940
6980	Scarified v4	\N	media/songs/Racer-X/Scarified-v4.mp3	940
6981	Technical	\N	media/songs/Racer-X/Technical.mp3	940
6982	Technical Difficultes	\N	media/songs/Racer-X/Technical-Difficultes.mp3	940
6983	Technical Difficulties	\N	media/songs/Racer-X/Technical-Difficulties.mp3	940
6984	Technical Difficulties v2	\N	media/songs/Racer-X/Technical-Difficulties-v2.mp3	940
6985	Technical Difficulties v3	\N	media/songs/Racer-X/Technical-Difficulties-v3.mp3	940
6986	Technical Difficulties v4	\N	media/songs/Racer-X/Technical-Difficulties-v4.mp3	940
6987	Viking Kong	\N	media/songs/Racer-X/Viking-Kong.mp3	940
6988	Minor Swing	\N	media/songs/Rachel-Portman/Minor-Swing.mp3	941
6989	Escuela De Calor	\N	media/songs/Radio-Futura/Escuela-De-Calor.mp3	942
6990	15 Step	\N	media/songs/Radiohead/15-Step.mp3	943
6991	2 + 2 = 5	\N	media/songs/Radiohead/2-+-2-=-5.mp3	943
6992	Airbag	\N	media/songs/Radiohead/Airbag.mp3	943
6993	Airbag v2	\N	media/songs/Radiohead/Airbag-v2.mp3	943
6994	Creep	\N	media/songs/Radiohead/Creep.mp3	943
6995	Creep Live	\N	media/songs/Radiohead/Creep-Live.mp3	943
6996	Creep v2	\N	media/songs/Radiohead/Creep-v2.mp3	943
6997	Creep v3	\N	media/songs/Radiohead/Creep-v3.mp3	943
6998	Creep v4	\N	media/songs/Radiohead/Creep-v4.mp3	943
6999	Electioneering	\N	media/songs/Radiohead/Electioneering.mp3	943
7000	Fire Of Rock	\N	media/songs/Radiohead/Fire-Of-Rock.mp3	943
7001	High And Dry	\N	media/songs/Radiohead/High-And-Dry.mp3	943
7002	High N Dry	\N	media/songs/Radiohead/High-N-Dry.mp3	943
7003	High N Dry v2	\N	media/songs/Radiohead/High-N-Dry-v2.mp3	943
7004	I Might Be Wrong	\N	media/songs/Radiohead/I-Might-Be-Wrong.mp3	943
7005	Just	\N	media/songs/Radiohead/Just.mp3	943
7006	Just v2	\N	media/songs/Radiohead/Just-v2.mp3	943
7007	Karma Police	\N	media/songs/Radiohead/Karma-Police.mp3	943
7008	Knives Out	\N	media/songs/Radiohead/Knives-Out.mp3	943
7009	My Iron Lung	\N	media/songs/Radiohead/My-Iron-Lung.mp3	943
7010	Nude	\N	media/songs/Radiohead/Nude.mp3	943
7011	Paranoid Android	\N	media/songs/Radiohead/Paranoid-Android.mp3	943
7012	Paranoid Android v2	\N	media/songs/Radiohead/Paranoid-Android-v2.mp3	943
7013	Paranoid Android v3	\N	media/songs/Radiohead/Paranoid-Android-v3.mp3	943
7014	Paranoid Android v4	\N	media/songs/Radiohead/Paranoid-Android-v4.mp3	943
7015	Pop Is Dead	\N	media/songs/Radiohead/Pop-Is-Dead.mp3	943
7016	Reckoner	\N	media/songs/Radiohead/Reckoner.mp3	943
7017	Reckoner v2	\N	media/songs/Radiohead/Reckoner-v2.mp3	943
7018	Sail To The Moon	\N	media/songs/Radiohead/Sail-To-The-Moon.mp3	943
7019	Sail To The Moon v2	\N	media/songs/Radiohead/Sail-To-The-Moon-v2.mp3	943
7020	Scatterbrain	\N	media/songs/Radiohead/Scatterbrain.mp3	943
7021	Staircase	\N	media/songs/Radiohead/Staircase.mp3	943
7022	Street Spirit	\N	media/songs/Radiohead/Street-Spirit.mp3	943
7023	Street Spirit Fade Out	\N	media/songs/Radiohead/Street-Spirit-Fade-Out.mp3	943
7024	Street Sprit	\N	media/songs/Radiohead/Street-Sprit.mp3	943
7025	Subterranean Homesick Alien	\N	media/songs/Radiohead/Subterranean-Homesick-Alien.mp3	943
7026	The Bends	\N	media/songs/Radiohead/The-Bends.mp3	943
7027	The Bends v2	\N	media/songs/Radiohead/The-Bends-v2.mp3	943
7028	Bombtrack	\N	media/songs/Rage-Against-The-Machine/Bombtrack.mp3	944
7029	Bombtrack v2	\N	media/songs/Rage-Against-The-Machine/Bombtrack-v2.mp3	944
7030	Bombtrack v3	\N	media/songs/Rage-Against-The-Machine/Bombtrack-v3.mp3	944
7031	Bullet In Your Head	\N	media/songs/Rage-Against-The-Machine/Bullet-In-Your-Head.mp3	944
7032	Bulls On Parade	\N	media/songs/Rage-Against-The-Machine/Bulls-On-Parade.mp3	944
7033	Bulls On Parade v2	\N	media/songs/Rage-Against-The-Machine/Bulls-On-Parade-v2.mp3	944
7034	Bulls On Parade v3	\N	media/songs/Rage-Against-The-Machine/Bulls-On-Parade-v3.mp3	944
7035	Freedom	\N	media/songs/Rage-Against-The-Machine/Freedom.mp3	944
7036	Guerilla Radio	\N	media/songs/Rage-Against-The-Machine/Guerilla-Radio.mp3	944
7037	Guerilla Radio v2	\N	media/songs/Rage-Against-The-Machine/Guerilla-Radio-v2.mp3	944
7038	Guerilla Radio v3	\N	media/songs/Rage-Against-The-Machine/Guerilla-Radio-v3.mp3	944
7039	Killing In The Name	\N	media/songs/Rage-Against-The-Machine/Killing-In-The-Name.mp3	944
7040	Killing In The Name v2	\N	media/songs/Rage-Against-The-Machine/Killing-In-The-Name-v2.mp3	944
7041	Killing In The Name v3	\N	media/songs/Rage-Against-The-Machine/Killing-In-The-Name-v3.mp3	944
7042	Killing In The Name v4	\N	media/songs/Rage-Against-The-Machine/Killing-In-The-Name-v4.mp3	944
7043	Killing In The Name v5	\N	media/songs/Rage-Against-The-Machine/Killing-In-The-Name-v5.mp3	944
7044	Killing In The Name v6	\N	media/songs/Rage-Against-The-Machine/Killing-In-The-Name-v6.mp3	944
7045	Killing In The Name v7	\N	media/songs/Rage-Against-The-Machine/Killing-In-The-Name-v7.mp3	944
7046	Know Your Enemy	\N	media/songs/Rage-Against-The-Machine/Know-Your-Enemy.mp3	944
7047	People	\N	media/songs/Rage-Against-The-Machine/People.mp3	944
7048	Take The Power Back	\N	media/songs/Rage-Against-The-Machine/Take-The-Power-Back.mp3	944
7049	Take The Power Back v2	\N	media/songs/Rage-Against-The-Machine/Take-The-Power-Back-v2.mp3	944
7050	Take The Power Back v3	\N	media/songs/Rage-Against-The-Machine/Take-The-Power-Back-v3.mp3	944
7051	Testify	\N	media/songs/Rage-Against-The-Machine/Testify.mp3	944
7052	The Ghost Of Tom Joad	\N	media/songs/Rage-Against-The-Machine/The-Ghost-Of-Tom-Joad.mp3	944
7053	Wake Up	\N	media/songs/Rage-Against-The-Machine/Wake-Up.mp3	944
7054	Wake Up v2	\N	media/songs/Rage-Against-The-Machine/Wake-Up-v2.mp3	944
7055	All Night Long	\N	media/songs/Rainbow/All-Night-Long.mp3	945
7056	Anybody There	\N	media/songs/Rainbow/Anybody-There.mp3	945
7057	Anybody There v2	\N	media/songs/Rainbow/Anybody-There-v2.mp3	945
7058	Ariel	\N	media/songs/Rainbow/Ariel.mp3	945
7059	Cant Happen Here	\N	media/songs/Rainbow/Cant-Happen-Here.mp3	945
7060	Cant Let You Go	\N	media/songs/Rainbow/Cant-Let-You-Go.mp3	945
7061	Catch The Rainbow	\N	media/songs/Rainbow/Catch-The-Rainbow.mp3	945
7062	Catch The Rainbow v2	\N	media/songs/Rainbow/Catch-The-Rainbow-v2.mp3	945
7063	Cold Hearted Woman	\N	media/songs/Rainbow/Cold-Hearted-Woman.mp3	945
7064	Difficult To Cure	\N	media/songs/Rainbow/Difficult-To-Cure.mp3	945
7065	Difficult To Cure v2	\N	media/songs/Rainbow/Difficult-To-Cure-v2.mp3	945
7066	Difficult To Cure v3	\N	media/songs/Rainbow/Difficult-To-Cure-v3.mp3	945
7067	Gates Of Babylon	\N	media/songs/Rainbow/Gates-Of-Babylon.mp3	945
7068	Hall Of The Mountain King	\N	media/songs/Rainbow/Hall-Of-The-Mountain-King.mp3	945
7069	Hall Of The Mountain King v2	\N	media/songs/Rainbow/Hall-Of-The-Mountain-King-v2.mp3	945
7070	I Surrender	\N	media/songs/Rainbow/I-Surrender.mp3	945
7071	I Surrender v2	\N	media/songs/Rainbow/I-Surrender-v2.mp3	945
7072	I Surrender v3	\N	media/songs/Rainbow/I-Surrender-v3.mp3	945
7073	Jealous Lover	\N	media/songs/Rainbow/Jealous-Lover.mp3	945
7074	Jealous Lover v2	\N	media/songs/Rainbow/Jealous-Lover-v2.mp3	945
7075	Kill The King	\N	media/songs/Rainbow/Kill-The-King.mp3	945
7076	Kill The King v2	\N	media/songs/Rainbow/Kill-The-King-v2.mp3	945
7077	Kill The King v3	\N	media/songs/Rainbow/Kill-The-King-v3.mp3	945
7078	Live Blues Jam	\N	media/songs/Rainbow/Live-Blues-Jam.mp3	945
7079	Long Live Rock And Roll	\N	media/songs/Rainbow/Long-Live-Rock-And-Roll.mp3	945
7080	Man On The Silver Mountain	\N	media/songs/Rainbow/Man-On-The-Silver-Mountain.mp3	945
7081	Man On The Silver Mountain v2	\N	media/songs/Rainbow/Man-On-The-Silver-Mountain-v2.mp3	945
7082	Maybe Next Time	\N	media/songs/Rainbow/Maybe-Next-Time.mp3	945
7083	Maybe Next Time v2	\N	media/songs/Rainbow/Maybe-Next-Time-v2.mp3	945
7084	Power	\N	media/songs/Rainbow/Power.mp3	945
7085	Power v2	\N	media/songs/Rainbow/Power-v2.mp3	945
7086	Power v3	\N	media/songs/Rainbow/Power-v3.mp3	945
7087	Self Portrait	\N	media/songs/Rainbow/Self-Portrait.mp3	945
7088	Since Youve Been Gone	\N	media/songs/Rainbow/Since-Youve-Been-Gone.mp3	945
7089	Since Youve Been Gone	\N	media/songs/Rainbow/Since-Youve-Been-Gone.mp3	945
7090	Since Youve Been Gone v2	\N	media/songs/Rainbow/Since-Youve-Been-Gone-v2.mp3	945
7091	Since Youve Been Gone v3	\N	media/songs/Rainbow/Since-Youve-Been-Gone-v3.mp3	945
7092	Since Youve Been Gone v4	\N	media/songs/Rainbow/Since-Youve-Been-Gone-v4.mp3	945
7093	Sixteenth Century Greensleeves	\N	media/songs/Rainbow/Sixteenth-Century-Greensleeves.mp3	945
7094	Spotlight Kid	\N	media/songs/Rainbow/Spotlight-Kid.mp3	945
7095	Spotlight Kid v2	\N	media/songs/Rainbow/Spotlight-Kid-v2.mp3	945
7096	Stargazer	\N	media/songs/Rainbow/Stargazer.mp3	945
7097	Still Im Sad	\N	media/songs/Rainbow/Still-Im-Sad.mp3	945
7098	Still Im Sad v2	\N	media/songs/Rainbow/Still-Im-Sad-v2.mp3	945
7099	Stone Cold	\N	media/songs/Rainbow/Stone-Cold.mp3	945
7100	Street Of Dreams	\N	media/songs/Rainbow/Street-Of-Dreams.mp3	945
7101	Street Of Dreams v2	\N	media/songs/Rainbow/Street-Of-Dreams-v2.mp3	945
7102	Street Of Dreams v3	\N	media/songs/Rainbow/Street-Of-Dreams-v3.mp3	945
7103	The Temple Of The King	\N	media/songs/Rainbow/The-Temple-Of-The-King.mp3	945
7104	Vielleicht Das Nachste Mal	\N	media/songs/Rainbow/Vielleicht-Das-Nachste-Mal.mp3	945
7105	Weiss Heim	\N	media/songs/Rainbow/Weiss-Heim.mp3	945
7106	Weiss Heim v2	\N	media/songs/Rainbow/Weiss-Heim-v2.mp3	945
7107	Black Betty	\N	media/songs/Ram-Jam/Black-Betty.mp3	946
7108	Black Betty v2	\N	media/songs/Ram-Jam/Black-Betty-v2.mp3	946
7109	Black Betty v3	\N	media/songs/Ram-Jam/Black-Betty-v3.mp3	946
7110	Black Betty v4	\N	media/songs/Ram-Jam/Black-Betty-v4.mp3	946
7111	Amerika	\N	media/songs/Rammstein/Amerika.mp3	947
7112	Asche Zu Asche	\N	media/songs/Rammstein/Asche-Zu-Asche.mp3	947
7113	Du Hast	\N	media/songs/Rammstein/Du-Hast.mp3	947
7114	Du Riechst So Gut	\N	media/songs/Rammstein/Du-Riechst-So-Gut.mp3	947
7115	Engel	\N	media/songs/Rammstein/Engel.mp3	947
7116	Feuer Frei	\N	media/songs/Rammstein/Feuer-Frei.mp3	947
7117	Haifisch	\N	media/songs/Rammstein/Haifisch.mp3	947
7118	Ich Tu Dir Weh	\N	media/songs/Rammstein/Ich-Tu-Dir-Weh.mp3	947
7119	Ich Will	\N	media/songs/Rammstein/Ich-Will.mp3	947
7120	Ich Will v2	\N	media/songs/Rammstein/Ich-Will-v2.mp3	947
7121	Links 2 3 4	\N	media/songs/Rammstein/Links-2-3-4.mp3	947
7122	Los	\N	media/songs/Rammstein/Los.mp3	947
7123	Rammlied	\N	media/songs/Rammstein/Rammlied.mp3	947
7124	Reise Reise	\N	media/songs/Rammstein/Reise-Reise.mp3	947
7125	Sonne	\N	media/songs/Rammstein/Sonne.mp3	947
7126	Sonne v2	\N	media/songs/Rammstein/Sonne-v2.mp3	947
7127	Steim Um Stein	\N	media/songs/Rammstein/Steim-Um-Stein.mp3	947
7128	Stirb Nicht Vor Mir	\N	media/songs/Rammstein/Stirb-Nicht-Vor-Mir.mp3	947
7129	Waidmanns Heil	\N	media/songs/Rammstein/Waidmanns-Heil.mp3	947
7130	Waidmanns Heil v2	\N	media/songs/Rammstein/Waidmanns-Heil-v2.mp3	947
7131	Ruby Soho	\N	media/songs/Rancid/Ruby-Soho.mp3	948
7132	Salvation	\N	media/songs/Rancid/Salvation.mp3	948
7133	Life Is A Highway	\N	media/songs/Rascal-Flatts/Life-Is-A-Highway.mp3	949
7134	Me And My Gang	\N	media/songs/Rascal-Flatts/Me-And-My-Gang.mp3	949
7135	Summer Nights	\N	media/songs/Rascal-Flatts/Summer-Nights.mp3	949
7136	Aun Estas En Mis Sueos	\N	media/songs/Rata-Blanca/Aun-Estas-En-Mis-Sueos.mp3	950
7137	Guerrero Del Arcoiris	\N	media/songs/Rata-Blanca/Guerrero-Del-Arcoiris.mp3	950
7138	La Leyenda Del Hada Y El Mago	\N	media/songs/Rata-Blanca/La-Leyenda-Del-Hada-Y-El-Mago.mp3	950
7139	La Leyenda Del Hada Y El Mago v2	\N	media/songs/Rata-Blanca/La-Leyenda-Del-Hada-Y-El-Mago-v2.mp3	950
7140	La Leyenda Del Mago Y El Hada	\N	media/songs/Rata-Blanca/La-Leyenda-Del-Mago-Y-El-Hada.mp3	950
7141	Mujer Amante	\N	media/songs/Rata-Blanca/Mujer-Amante.mp3	950
7142	Mujer Amante v2	\N	media/songs/Rata-Blanca/Mujer-Amante-v2.mp3	950
7143	Por Que Es Tan Dificil Amar	\N	media/songs/Rata-Blanca/Por-Que-Es-Tan-Dificil-Amar.mp3	950
7144	Bombtrack	\N	media/songs/RATM/Bombtrack.mp3	951
7145	Take The Power Back	\N	media/songs/RATM/Take-The-Power-Back.mp3	951
7146	Back For More	\N	media/songs/Ratt/Back-For-More.mp3	952
7147	Body Talk	\N	media/songs/Ratt/Body-Talk.mp3	952
7148	Body Talk v2	\N	media/songs/Ratt/Body-Talk-v2.mp3	952
7149	Lay It Down	\N	media/songs/Ratt/Lay-It-Down.mp3	952
7150	Nobody Rides For Free	\N	media/songs/Ratt/Nobody-Rides-For-Free.mp3	952
7151	Round And Round	\N	media/songs/Ratt/Round-And-Round.mp3	952
7152	Round And Round v2	\N	media/songs/Ratt/Round-And-Round-v2.mp3	952
7153	Round And Round v3	\N	media/songs/Ratt/Round-And-Round-v3.mp3	952
7154	Wanted Man	\N	media/songs/Ratt/Wanted-Man.mp3	952
7155	Youre In Love	\N	media/songs/Ratt/Youre-In-Love.mp3	952
7156	Eu Tambem Vou Reclamar	\N	media/songs/Raul-Seixas/Eu-Tambem-Vou-Reclamar.mp3	953
7157	Tente Outra Vez	\N	media/songs/Raul-Seixas/Tente-Outra-Vez.mp3	953
7158	Ghostbusters	\N	media/songs/Ray-Parker-Jr/Ghostbusters.mp3	954
7159	Woman Stop Calling v2	\N	media/songs/Raymond-Memphis/Woman-Stop-Calling-v2.mp3	955
7160	Black Magic	\N	media/songs/Reb-Beach/Black-Magic.mp3	956
7161	Aeroplane	\N	media/songs/Red-Hot-Chili-Peppers/Aeroplane.mp3	957
7162	Aeroplane v2	\N	media/songs/Red-Hot-Chili-Peppers/Aeroplane-v2.mp3	957
7163	Annie Wants A Baby	\N	media/songs/Red-Hot-Chili-Peppers/Annie-Wants-A-Baby.mp3	957
7164	Around The World	\N	media/songs/Red-Hot-Chili-Peppers/Around-The-World.mp3	957
7165	Breaking The Girl	\N	media/songs/Red-Hot-Chili-Peppers/Breaking-The-Girl.mp3	957
7166	Breaking The Girl  Acoustic	\N	media/songs/Red-Hot-Chili-Peppers/Breaking-The-Girl--Acoustic.mp3	957
7167	Breaking The Girl v2	\N	media/songs/Red-Hot-Chili-Peppers/Breaking-The-Girl-v2.mp3	957
7168	Breaking The Girl v3	\N	media/songs/Red-Hot-Chili-Peppers/Breaking-The-Girl-v3.mp3	957
7169	Bunker Hill	\N	media/songs/Red-Hot-Chili-Peppers/Bunker-Hill.mp3	957
7170	By The Way	\N	media/songs/Red-Hot-Chili-Peppers/By-The-Way.mp3	957
7171	By The Way v2	\N	media/songs/Red-Hot-Chili-Peppers/By-The-Way-v2.mp3	957
7172	By The Way v3	\N	media/songs/Red-Hot-Chili-Peppers/By-The-Way-v3.mp3	957
7173	By The Way v4	\N	media/songs/Red-Hot-Chili-Peppers/By-The-Way-v4.mp3	957
7174	Californication	\N	media/songs/Red-Hot-Chili-Peppers/Californication.mp3	957
7175	Californication v2	\N	media/songs/Red-Hot-Chili-Peppers/Californication-v2.mp3	957
7176	Californication v3	\N	media/songs/Red-Hot-Chili-Peppers/Californication-v3.mp3	957
7177	Californication v4	\N	media/songs/Red-Hot-Chili-Peppers/Californication-v4.mp3	957
7178	Californication v5	\N	media/songs/Red-Hot-Chili-Peppers/Californication-v5.mp3	957
7179	Cant Stop	\N	media/songs/Red-Hot-Chili-Peppers/Cant-Stop.mp3	957
7180	Cant Stop v2	\N	media/songs/Red-Hot-Chili-Peppers/Cant-Stop-v2.mp3	957
7181	Cant Stop v3	\N	media/songs/Red-Hot-Chili-Peppers/Cant-Stop-v3.mp3	957
7182	Cant Stop v4	\N	media/songs/Red-Hot-Chili-Peppers/Cant-Stop-v4.mp3	957
7183	Charlie	\N	media/songs/Red-Hot-Chili-Peppers/Charlie.mp3	957
7184	Coffee Shop	\N	media/songs/Red-Hot-Chili-Peppers/Coffee-Shop.mp3	957
7185	Dani California	\N	media/songs/Red-Hot-Chili-Peppers/Dani-California.mp3	957
7186	Dani California v2	\N	media/songs/Red-Hot-Chili-Peppers/Dani-California-v2.mp3	957
7187	Dani California v3	\N	media/songs/Red-Hot-Chili-Peppers/Dani-California-v3.mp3	957
7188	Desecration Smile	\N	media/songs/Red-Hot-Chili-Peppers/Desecration-Smile.mp3	957
7189	Dont You Ever Leave Jam	\N	media/songs/Red-Hot-Chili-Peppers/Dont-You-Ever-Leave-Jam.mp3	957
7190	Easily	\N	media/songs/Red-Hot-Chili-Peppers/Easily.mp3	957
7191	Emit Remmus	\N	media/songs/Red-Hot-Chili-Peppers/Emit-Remmus.mp3	957
7192	Ethiopia	\N	media/songs/Red-Hot-Chili-Peppers/Ethiopia.mp3	957
7193	Factory Of Faith	\N	media/songs/Red-Hot-Chili-Peppers/Factory-Of-Faith.mp3	957
7194	Funky Monks	\N	media/songs/Red-Hot-Chili-Peppers/Funky-Monks.mp3	957
7195	Funky Monks v2	\N	media/songs/Red-Hot-Chili-Peppers/Funky-Monks-v2.mp3	957
7196	Get On Top	\N	media/songs/Red-Hot-Chili-Peppers/Get-On-Top.mp3	957
7197	Give It Away	\N	media/songs/Red-Hot-Chili-Peppers/Give-It-Away.mp3	957
7198	Give It Away v2	\N	media/songs/Red-Hot-Chili-Peppers/Give-It-Away-v2.mp3	957
7199	Give It Away v3	\N	media/songs/Red-Hot-Chili-Peppers/Give-It-Away-v3.mp3	957
7200	Hard To Concentrate	\N	media/songs/Red-Hot-Chili-Peppers/Hard-To-Concentrate.mp3	957
7201	Higher Ground	\N	media/songs/Red-Hot-Chili-Peppers/Higher-Ground.mp3	957
7202	I Could Have Lied	\N	media/songs/Red-Hot-Chili-Peppers/I-Could-Have-Lied.mp3	957
7203	I Could Have Lied v2	\N	media/songs/Red-Hot-Chili-Peppers/I-Could-Have-Lied-v2.mp3	957
7204	I Like Dirt	\N	media/songs/Red-Hot-Chili-Peppers/I-Like-Dirt.mp3	957
7205	If You Have To Ask	\N	media/songs/Red-Hot-Chili-Peppers/If-You-Have-To-Ask.mp3	957
7206	If You Have To Ask v2	\N	media/songs/Red-Hot-Chili-Peppers/If-You-Have-To-Ask-v2.mp3	957
7207	Knock Me Down	\N	media/songs/Red-Hot-Chili-Peppers/Knock-Me-Down.mp3	957
7208	Knock Me Down v2	\N	media/songs/Red-Hot-Chili-Peppers/Knock-Me-Down-v2.mp3	957
7209	Look Around	\N	media/songs/Red-Hot-Chili-Peppers/Look-Around.mp3	957
7210	Melancholy Mechanics	\N	media/songs/Red-Hot-Chili-Peppers/Melancholy-Mechanics.mp3	957
7211	Mellowship Slinky	\N	media/songs/Red-Hot-Chili-Peppers/Mellowship-Slinky.mp3	957
7212	Mellowship Slinky v2	\N	media/songs/Red-Hot-Chili-Peppers/Mellowship-Slinky-v2.mp3	957
7213	Mercy Mercy	\N	media/songs/Red-Hot-Chili-Peppers/Mercy-Mercy.mp3	957
7214	Monarchy Of Roses	\N	media/songs/Red-Hot-Chili-Peppers/Monarchy-Of-Roses.mp3	957
7215	Monarchy Of Roses v2	\N	media/songs/Red-Hot-Chili-Peppers/Monarchy-Of-Roses-v2.mp3	957
7216	My Lovely Man	\N	media/songs/Red-Hot-Chili-Peppers/My-Lovely-Man.mp3	957
7217	My Lovely Man v2	\N	media/songs/Red-Hot-Chili-Peppers/My-Lovely-Man-v2.mp3	957
7218	Naked In The Rain	\N	media/songs/Red-Hot-Chili-Peppers/Naked-In-The-Rain.mp3	957
7219	Naked In The Rain The Greeting Song	\N	media/songs/Red-Hot-Chili-Peppers/Naked-In-The-Rain-The-Greeting-Song.mp3	957
7220	Naked In The Rain v2	\N	media/songs/Red-Hot-Chili-Peppers/Naked-In-The-Rain-v2.mp3	957
7221	Otherside	\N	media/songs/Red-Hot-Chili-Peppers/Otherside.mp3	957
7222	Otherside v2	\N	media/songs/Red-Hot-Chili-Peppers/Otherside-v2.mp3	957
7223	Otherside v3	\N	media/songs/Red-Hot-Chili-Peppers/Otherside-v3.mp3	957
7224	Otherside v4	\N	media/songs/Red-Hot-Chili-Peppers/Otherside-v4.mp3	957
7225	Parallel Universe	\N	media/songs/Red-Hot-Chili-Peppers/Parallel-Universe.mp3	957
7226	Parallel Universe Live	\N	media/songs/Red-Hot-Chili-Peppers/Parallel-Universe-Live.mp3	957
7227	Parallel Universe v2	\N	media/songs/Red-Hot-Chili-Peppers/Parallel-Universe-v2.mp3	957
7228	Power Of Equality	\N	media/songs/Red-Hot-Chili-Peppers/Power-Of-Equality.mp3	957
7229	Power Of Equality v2	\N	media/songs/Red-Hot-Chili-Peppers/Power-Of-Equality-v2.mp3	957
7230	Purple Stain	\N	media/songs/Red-Hot-Chili-Peppers/Purple-Stain.mp3	957
7231	Right On Time	\N	media/songs/Red-Hot-Chili-Peppers/Right-On-Time.mp3	957
7232	Road Trippin	\N	media/songs/Red-Hot-Chili-Peppers/Road-Trippin.mp3	957
7233	Road Trippin v2	\N	media/songs/Red-Hot-Chili-Peppers/Road-Trippin-v2.mp3	957
7234	Savior	\N	media/songs/Red-Hot-Chili-Peppers/Savior.mp3	957
7235	Scar Tissue	\N	media/songs/Red-Hot-Chili-Peppers/Scar-Tissue.mp3	957
7236	Scar Tissue v2	\N	media/songs/Red-Hot-Chili-Peppers/Scar-Tissue-v2.mp3	957
7237	Scar Tissue v3	\N	media/songs/Red-Hot-Chili-Peppers/Scar-Tissue-v3.mp3	957
7238	Scar Tissue v4	\N	media/songs/Red-Hot-Chili-Peppers/Scar-Tissue-v4.mp3	957
7239	Scar Tissue v5	\N	media/songs/Red-Hot-Chili-Peppers/Scar-Tissue-v5.mp3	957
7240	She Looks To Me	\N	media/songs/Red-Hot-Chili-Peppers/She-Looks-To-Me.mp3	957
7241	Shes Only 18	\N	media/songs/Red-Hot-Chili-Peppers/Shes-Only-18.mp3	957
7242	Snow Hey Oh	\N	media/songs/Red-Hot-Chili-Peppers/Snow-Hey-Oh.mp3	957
7243	Snow Hey Oh v2	\N	media/songs/Red-Hot-Chili-Peppers/Snow-Hey-Oh-v2.mp3	957
7244	Soul To Squeeze	\N	media/songs/Red-Hot-Chili-Peppers/Soul-To-Squeeze.mp3	957
7245	Soul To Squeeze v2	\N	media/songs/Red-Hot-Chili-Peppers/Soul-To-Squeeze-v2.mp3	957
7246	Soul To Squeeze v3	\N	media/songs/Red-Hot-Chili-Peppers/Soul-To-Squeeze-v3.mp3	957
7247	Subterranean Homesick Blues Live	\N	media/songs/Red-Hot-Chili-Peppers/Subterranean-Homesick-Blues-Live.mp3	957
7248	Suck My Kiss	\N	media/songs/Red-Hot-Chili-Peppers/Suck-My-Kiss.mp3	957
7249	Suck My Kiss v2	\N	media/songs/Red-Hot-Chili-Peppers/Suck-My-Kiss-v2.mp3	957
7250	Tell Me Baby	\N	media/songs/Red-Hot-Chili-Peppers/Tell-Me-Baby.mp3	957
7251	Tell Me Baby v2	\N	media/songs/Red-Hot-Chili-Peppers/Tell-Me-Baby-v2.mp3	957
7252	Tell Me Baby v3	\N	media/songs/Red-Hot-Chili-Peppers/Tell-Me-Baby-v3.mp3	957
7253	The Adventures Of Raindance Maggie	\N	media/songs/Red-Hot-Chili-Peppers/The-Adventures-Of-Raindance-Maggie.mp3	957
7254	The Adventures Of Raindance Maggie v2	\N	media/songs/Red-Hot-Chili-Peppers/The-Adventures-Of-Raindance-Maggie-v2.mp3	957
7255	The Adventures Of Raindance Maggie v3	\N	media/songs/Red-Hot-Chili-Peppers/The-Adventures-Of-Raindance-Maggie-v3.mp3	957
7256	The Greeting Song	\N	media/songs/Red-Hot-Chili-Peppers/The-Greeting-Song.mp3	957
7257	The Greeting Song v2	\N	media/songs/Red-Hot-Chili-Peppers/The-Greeting-Song-v2.mp3	957
7258	The Righteous And The Wicked	\N	media/songs/Red-Hot-Chili-Peppers/The-Righteous-And-The-Wicked.mp3	957
7259	The Righteous And The Wicked v2	\N	media/songs/Red-Hot-Chili-Peppers/The-Righteous-And-The-Wicked-v2.mp3	957
7260	Theyre Red Hot	\N	media/songs/Red-Hot-Chili-Peppers/Theyre-Red-Hot.mp3	957
7261	Theyre Red Hot v2	\N	media/songs/Red-Hot-Chili-Peppers/Theyre-Red-Hot-v2.mp3	957
7262	This Velvet Glove	\N	media/songs/Red-Hot-Chili-Peppers/This-Velvet-Glove.mp3	957
7263	Under The Bridge	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge.mp3	957
7264	Under The Bridge v2	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge-v2.mp3	957
7265	Under The Bridge v3	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge-v3.mp3	957
7266	Under The Bridge v4	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge-v4.mp3	957
7267	Under The Bridge v5	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge-v5.mp3	957
7268	Under The Bridge v6	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge-v6.mp3	957
7269	Under The Bridge v7	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge-v7.mp3	957
7270	Under The Bridge v8	\N	media/songs/Red-Hot-Chili-Peppers/Under-The-Bridge-v8.mp3	957
7271	Universally Speaking	\N	media/songs/Red-Hot-Chili-Peppers/Universally-Speaking.mp3	957
7272	Universally Speaking v2	\N	media/songs/Red-Hot-Chili-Peppers/Universally-Speaking-v2.mp3	957
7273	Venice Queen	\N	media/songs/Red-Hot-Chili-Peppers/Venice-Queen.mp3	957
7274	Venice Queen v2	\N	media/songs/Red-Hot-Chili-Peppers/Venice-Queen-v2.mp3	957
7275	Warped	\N	media/songs/Red-Hot-Chili-Peppers/Warped.mp3	957
7276	Wet Sand	\N	media/songs/Red-Hot-Chili-Peppers/Wet-Sand.mp3	957
7277	Wet Sand v2	\N	media/songs/Red-Hot-Chili-Peppers/Wet-Sand-v2.mp3	957
7278	Zephr Song	\N	media/songs/Red-Hot-Chili-Peppers/Zephr-Song.mp3	957
7279	Zephyr Song	\N	media/songs/Red-Hot-Chili-Peppers/Zephyr-Song.mp3	957
7280	Face Down	\N	media/songs/Red-Jumpsuit-Apparatus/Face-Down.mp3	958
7281	Lunatic Fringe	\N	media/songs/Red-Rider/Lunatic-Fringe.mp3	959
7282	Lunatic Fringe v2	\N	media/songs/Red-Rider/Lunatic-Fringe-v2.mp3	959
7283	Ive Got Something To Say	\N	media/songs/Reef/Ive-Got-Something-To-Say.mp3	960
7284	Place Your Hands	\N	media/songs/Reef/Place-Your-Hands.mp3	960
7285	Place Your Hands v2	\N	media/songs/Reef/Place-Your-Hands-v2.mp3	960
7286	Take On Me	\N	media/songs/Reel-Big-Fish/Take-On-Me.mp3	961
7287	Take On Me v2	\N	media/songs/Reel-Big-Fish/Take-On-Me-v2.mp3	961
7288	Wallers Jam	\N	media/songs/Reggae/Wallers-Jam.mp3	962
7289	Bang And Blame	\N	media/songs/REM/Bang-And-Blame.mp3	963
7290	Begin The Begin	\N	media/songs/REM/Begin-The-Begin.mp3	963
7291	Cant Get There From Here	\N	media/songs/REM/Cant-Get-There-From-Here.mp3	963
7292	Driver 8	\N	media/songs/REM/Driver-8.mp3	963
7293	Everybody Hurts	\N	media/songs/REM/Everybody-Hurts.mp3	963
7294	Horse To Water	\N	media/songs/REM/Horse-To-Water.mp3	963
7295	Losing My Religion	\N	media/songs/REM/Losing-My-Religion.mp3	963
7296	Losing My Religion v2	\N	media/songs/REM/Losing-My-Religion-v2.mp3	963
7297	Losing My Religion v3	\N	media/songs/REM/Losing-My-Religion-v3.mp3	963
7298	Man On The Moon	\N	media/songs/REM/Man-On-The-Moon.mp3	963
7299	Man Sized Wreath	\N	media/songs/REM/Man-Sized-Wreath.mp3	963
7300	Orange Crush	\N	media/songs/REM/Orange-Crush.mp3	963
7301	The One I Love	\N	media/songs/REM/The-One-I-Love.mp3	963
7302	The One I Love v2	\N	media/songs/REM/The-One-I-Love-v2.mp3	963
7303	Whats The Frequency Kenneth	\N	media/songs/REM/Whats-The-Frequency-Kenneth.mp3	963
7304	Whats The Frequency Kenneth v2	\N	media/songs/REM/Whats-The-Frequency-Kenneth-v2.mp3	963
7305	Whats The Frequency Kenneth v3	\N	media/songs/REM/Whats-The-Frequency-Kenneth-v3.mp3	963
7306	Whats The Frequency Kennith	\N	media/songs/REM/Whats-The-Frequency-Kennith.mp3	963
7307	Take It On The Run	\N	media/songs/REO-Speedwagon/Take-It-On-The-Run.mp3	964
7308	Alex Chilton	\N	media/songs/Replacements/Alex-Chilton.mp3	965
7309	Dawn Of Victory	\N	media/songs/Rhapsody/Dawn-Of-Victory.mp3	966
7310	Emerald Sword	\N	media/songs/Rhapsody/Emerald-Sword.mp3	966
7311	The Village Of Dwarves	\N	media/songs/Rhapsody/The-Village-Of-Dwarves.mp3	966
7312	Unholy Warcry	\N	media/songs/Rhapsody/Unholy-Warcry.mp3	966
7313	Wisdom Of The Kings	\N	media/songs/Rhapsody/Wisdom-Of-The-Kings.mp3	966
7314	Californication	\N	media/songs/RHCP/Californication.mp3	967
7315	Under The Bridge	\N	media/songs/RHCP/Under-The-Bridge.mp3	967
7316	First Love	\N	media/songs/Rhythm-Desire/First-Love.mp3	968
7317	Down With The Sickness	\N	media/songs/Richard-Cheese/Down-With-The-Sickness.mp3	969
7318	Im Absolutely Hank Marvin	\N	media/songs/Richard-Hawley/Im-Absolutely-Hank-Marvin.mp3	970
7319	Rock And Roll Hoochie Koo	\N	media/songs/Rick-Derringer/Rock-And-Roll-Hoochie-Koo.mp3	971
7320	Rock And Roll Hoochie Koo v2	\N	media/songs/Rick-Derringer/Rock-And-Roll-Hoochie-Koo-v2.mp3	971
7321	Rock And Roll Hoochie Koo v3	\N	media/songs/Rick-Derringer/Rock-And-Roll-Hoochie-Koo-v3.mp3	971
7322	Jessies Girl	\N	media/songs/Rick-Springfield/Jessies-Girl.mp3	972
7323	Jessies Girl v2	\N	media/songs/Rick-Springfield/Jessies-Girl-v2.mp3	972
7324	Livin La Vida Loca In E Minor	\N	media/songs/Ricky-Martin/Livin-La-Vida-Loca-In-E-Minor.mp3	973
7325	Hello Mary Lou	\N	media/songs/Ricky-Nelson/Hello-Mary-Lou.mp3	974
7326	Flight Of The Bumblebee	\N	media/songs/Rimsky-Nikolai-Korsako/Flight-Of-The-Bumblebee.mp3	975
7327	Flight Of The Bumblebee v2	\N	media/songs/Rimsky-Nikolai-Korsako/Flight-Of-The-Bumblebee-v2.mp3	975
7328	Audience Of One	\N	media/songs/Rise-Against/Audience-Of-One.mp3	976
7329	Audience Of One v2	\N	media/songs/Rise-Against/Audience-Of-One-v2.mp3	976
7330	Death Blossoms	\N	media/songs/Rise-Against/Death-Blossoms.mp3	976
7331	Death Blossoms v2	\N	media/songs/Rise-Against/Death-Blossoms-v2.mp3	976
7332	Give It All	\N	media/songs/Rise-Against/Give-It-All.mp3	976
7333	Give It All v2	\N	media/songs/Rise-Against/Give-It-All-v2.mp3	976
7334	Prayer Of The Refugee	\N	media/songs/Rise-Against/Prayer-Of-The-Refugee.mp3	976
7335	Re Education Through Labor	\N	media/songs/Rise-Against/Re-Education-Through-Labor.mp3	976
7336	Re Education Through Labor v2	\N	media/songs/Rise-Against/Re-Education-Through-Labor-v2.mp3	976
7337	Ready To Fall	\N	media/songs/Rise-Against/Ready-To-Fall.mp3	976
7338	Ready To Fall v2	\N	media/songs/Rise-Against/Ready-To-Fall-v2.mp3	976
7339	Savior	\N	media/songs/Rise-Against/Savior.mp3	976
7340	The Good Left Undone	\N	media/songs/Rise-Against/The-Good-Left-Undone.mp3	976
7341	La Bamba	\N	media/songs/Ritchie-Valens/La-Bamba.mp3	977
7342	In The Fire	\N	media/songs/Roadrunner-United/In-The-Fire.mp3	978
7343	The End	\N	media/songs/Roadrunner-United/The-End.mp3	978
7344	Dragula	\N	media/songs/Rob-Zombie/Dragula.mp3	979
7345	Dragula v2	\N	media/songs/Rob-Zombie/Dragula-v2.mp3	979
7346	Mars Needs Women	\N	media/songs/Rob-Zombie/Mars-Needs-Women.mp3	979
7347	Sick Bubblegum	\N	media/songs/Rob-Zombie/Sick-Bubblegum.mp3	979
7348	Werewolf Baby	\N	media/songs/Rob-Zombie/Werewolf-Baby.mp3	979
7349	Aint Got Nothin But The Blues	\N	media/songs/Robben-Ford/Aint-Got-Nothin-But-The-Blues.mp3	980
7350	Another Jacket	\N	media/songs/Robben-Ford/Another-Jacket.mp3	980
7351	Chevrolet	\N	media/songs/Robben-Ford/Chevrolet.mp3	980
7352	Freedom	\N	media/songs/Robben-Ford/Freedom.mp3	980
7353	He Dont Play Nothing But The Blues	\N	media/songs/Robben-Ford/He-Dont-Play-Nothing-But-The-Blues.mp3	980
7354	Help The Poor	\N	media/songs/Robben-Ford/Help-The-Poor.mp3	980
7355	Help The Poor v2	\N	media/songs/Robben-Ford/Help-The-Poor-v2.mp3	980
7356	Oasis	\N	media/songs/Robben-Ford/Oasis.mp3	980
7357	Prison Of Love	\N	media/songs/Robben-Ford/Prison-Of-Love.mp3	980
7358	Revelation	\N	media/songs/Robben-Ford/Revelation.mp3	980
7359	Talk To Your Daughter	\N	media/songs/Robben-Ford/Talk-To-Your-Daughter.mp3	980
7360	Talk To Your Daughter v2	\N	media/songs/Robben-Ford/Talk-To-Your-Daughter-v2.mp3	980
7361	Tell Me Im Your Man	\N	media/songs/Robben-Ford/Tell-Me-Im-Your-Man.mp3	980
7362	The Brother	\N	media/songs/Robben-Ford/The-Brother.mp3	980
7363	The Champ	\N	media/songs/Robben-Ford/The-Champ.mp3	980
7364	You Cut Me To The Bone	\N	media/songs/Robben-Ford/You-Cut-Me-To-The-Bone.mp3	980
7365	Angels	\N	media/songs/Robbie-Williams/Angels.mp3	981
7366	Let Me Entertain You	\N	media/songs/Robbie-Williams/Let-Me-Entertain-You.mp3	981
7367	Phone Booth	\N	media/songs/Robert-Cray/Phone-Booth.mp3	982
7368	Phone Booth v2	\N	media/songs/Robert-Cray/Phone-Booth-v2.mp3	982
7369	Right Next Door	\N	media/songs/Robert-Cray/Right-Next-Door.mp3	982
7370	Right Next Door v2	\N	media/songs/Robert-Cray/Right-Next-Door-v2.mp3	982
7371	Right Next Door v3	\N	media/songs/Robert-Cray/Right-Next-Door-v3.mp3	982
7372	Smoking Gun	\N	media/songs/Robert-Cray/Smoking-Gun.mp3	982
7373	Smoking Gun v2	\N	media/songs/Robert-Cray/Smoking-Gun-v2.mp3	982
7374	Smoking Gun v3	\N	media/songs/Robert-Cray/Smoking-Gun-v3.mp3	982
7375	Smoking Gun v4	\N	media/songs/Robert-Cray/Smoking-Gun-v4.mp3	982
7376	Spare Some Love	\N	media/songs/Robert-Cray/Spare-Some-Love.mp3	982
7377	What You Need Good Man	\N	media/songs/Robert-Cray/What-You-Need-Good-Man.mp3	982
7378	Ramblin On My Mind	\N	media/songs/Robert-Johnson/Ramblin-On-My-Mind.mp3	983
7379	Ramblin On My Mind v2	\N	media/songs/Robert-Johnson/Ramblin-On-My-Mind-v2.mp3	983
7380	Ramblin On My Mind v3	\N	media/songs/Robert-Johnson/Ramblin-On-My-Mind-v3.mp3	983
7381	Addicted To Love	\N	media/songs/Robert-Palmer/Addicted-To-Love.mp3	984
7382	Bad Case Of Loving You	\N	media/songs/Robert-Palmer/Bad-Case-Of-Loving-You.mp3	984
7383	Big Log	\N	media/songs/Robert-Plant/Big-Log.mp3	985
7384	Bridge Of Sighs	\N	media/songs/Robin-Trower/Bridge-Of-Sighs.mp3	986
7385	Bridge Of Sighs v2	\N	media/songs/Robin-Trower/Bridge-Of-Sighs-v2.mp3	986
7386	Day Of The Eagle	\N	media/songs/Robin-Trower/Day-Of-The-Eagle.mp3	986
7387	Day Of The Eagle v2	\N	media/songs/Robin-Trower/Day-Of-The-Eagle-v2.mp3	986
7388	Day Of The Eagle v3	\N	media/songs/Robin-Trower/Day-Of-The-Eagle-v3.mp3	986
7389	Little Bit Of Sympathy	\N	media/songs/Robin-Trower/Little-Bit-Of-Sympathy.mp3	986
7390	Long Misty Days	\N	media/songs/Robin-Trower/Long-Misty-Days.mp3	986
7391	Too Rolling Stoned	\N	media/songs/Robin-Trower/Too-Rolling-Stoned.mp3	986
7392	Too Rolling Stoned v2	\N	media/songs/Robin-Trower/Too-Rolling-Stoned-v2.mp3	986
7393	Chorus	\N	media/songs/Robster/Chorus.mp3	987
7394	Time Warp	\N	media/songs/Rocky-Horror-Picture-Show/Time-Warp.mp3	988
7395	Maggie May	\N	media/songs/Rod-Stewart/Maggie-May.mp3	989
7396	People Get Ready	\N	media/songs/Rod-Stewart/People-Get-Ready.mp3	989
7397	Bad Track	\N	media/songs/Rolf-Schumacher/Bad-Track.mp3	990
7398	Dream	\N	media/songs/Rolf-Schumacher/Dream.mp3	990
7399	Funky	\N	media/songs/Rolf-Schumacher/Funky.mp3	990
7400	Guitar Dance	\N	media/songs/Rolf-Schumacher/Guitar-Dance.mp3	990
7401	Old Rock	\N	media/songs/Rolf-Schumacher/Old-Rock.mp3	990
7402	Psychorock	\N	media/songs/Rolf-Schumacher/Psychorock.mp3	990
7403	Summernight	\N	media/songs/Rolf-Schumacher/Summernight.mp3	990
7404	Ultra Rock	\N	media/songs/Rolf-Schumacher/Ultra-Rock.mp3	990
7405	Vergessen	\N	media/songs/Rolf-Schumacher/Vergessen.mp3	990
7406	Rainbow In The Dark	\N	media/songs/Ronnie-Dio/Rainbow-In-The-Dark.mp3	991
7407	Blues In B Major	\N	media/songs/Rory-Gallagher/Blues-In-B-Major.mp3	992
7408	Laundromat	\N	media/songs/Rory-Gallagher/Laundromat.mp3	992
7409	Laundromat v2	\N	media/songs/Rory-Gallagher/Laundromat-v2.mp3	992
7410	Moonchild	\N	media/songs/Rory-Gallagher/Moonchild.mp3	992
7411	Secret Agent	\N	media/songs/Rory-Gallagher/Secret-Agent.mp3	992
7412	Shadow Play	\N	media/songs/Rory-Gallagher/Shadow-Play.mp3	992
7413	Shadow Play v2	\N	media/songs/Rory-Gallagher/Shadow-Play-v2.mp3	992
7414	Walk On Hot Coals	\N	media/songs/Rory-Gallagher/Walk-On-Hot-Coals.mp3	992
7415	Whats Going On	\N	media/songs/Rory-Gallagher/Whats-Going-On.mp3	992
7416	Whats Going On v2	\N	media/songs/Rory-Gallagher/Whats-Going-On-v2.mp3	992
7417	El Final	\N	media/songs/Rostros-Ocultos/El-Final.mp3	993
7418	Coracao Pirata	\N	media/songs/Roupa-Nova/Coracao-Pirata.mp3	994
7419	Sleeping In My Car	\N	media/songs/Roxette/Sleeping-In-My-Car.mp3	995
7420	The Look	\N	media/songs/Roxette/The-Look.mp3	995
7421	Love Is The Drug	\N	media/songs/Roxy-Music/Love-Is-The-Drug.mp3	996
7422	Why Dont You Want Me	\N	media/songs/Roy-Buchanan/Why-Dont-You-Want-Me.mp3	997
7423	Oh Pretty Woman	\N	media/songs/Roy-Orbison/Oh-Pretty-Woman.mp3	998
7424	Oh Pretty Woman v2	\N	media/songs/Roy-Orbison/Oh-Pretty-Woman-v2.mp3	998
7425	Pretty Woman	\N	media/songs/Roy-Orbison/Pretty-Woman.mp3	998
7426	Pretty Woman v2	\N	media/songs/Roy-Orbison/Pretty-Woman-v2.mp3	998
7427	You Got It	\N	media/songs/Roy-Orbison/You-Got-It.mp3	998
7428	You Got It v2	\N	media/songs/Roy-Orbison/You-Got-It-v2.mp3	998
7429	Loiras Geladas	\N	media/songs/RPM/Loiras-Geladas.mp3	999
7430	Olhar 43	\N	media/songs/RPM/Olhar-43.mp3	999
7431	Radio Pirata	\N	media/songs/RPM/Radio-Pirata.mp3	999
7432	First Time	\N	media/songs/Rudhie-Becker-Pep-Yngve/First-Time.mp3	1000
7433	Cherry Bomb	\N	media/songs/Runaways/Cherry-Bomb.mp3	1001
7434	2112 Overture Temples Of Syrinx	\N	media/songs/Rush/2112-Overture-Temples-Of-Syrinx.mp3	1002
7435	2112 Overture The Temples Of Syrinx	\N	media/songs/Rush/2112-Overture-The-Temples-Of-Syrinx.mp3	1002
7436	A Farewell To Kings	\N	media/songs/Rush/A-Farewell-To-Kings.mp3	1002
7437	A Farewell To Kings v2	\N	media/songs/Rush/A-Farewell-To-Kings-v2.mp3	1002
7438	A Passage To Bangkok	\N	media/songs/Rush/A-Passage-To-Bangkok.mp3	1002
7439	A Passage To Bangkok v2	\N	media/songs/Rush/A-Passage-To-Bangkok-v2.mp3	1002
7440	A Passage To Bangkok v3	\N	media/songs/Rush/A-Passage-To-Bangkok-v3.mp3	1002
7441	After Image	\N	media/songs/Rush/After-Image.mp3	1002
7442	After Image v2	\N	media/songs/Rush/After-Image-v2.mp3	1002
7443	Anthem	\N	media/songs/Rush/Anthem.mp3	1002
7444	Anthem v2	\N	media/songs/Rush/Anthem-v2.mp3	1002
7445	Armor And Sword	\N	media/songs/Rush/Armor-And-Sword.mp3	1002
7446	Available Light	\N	media/songs/Rush/Available-Light.mp3	1002
7447	Bastille Day	\N	media/songs/Rush/Bastille-Day.mp3	1002
7448	Beneath Between And Behind	\N	media/songs/Rush/Beneath-Between-And-Behind.mp3	1002
7449	Beneath Between And Behind v2	\N	media/songs/Rush/Beneath-Between-And-Behind-v2.mp3	1002
7450	Best I Can	\N	media/songs/Rush/Best-I-Can.mp3	1002
7451	Chemistry	\N	media/songs/Rush/Chemistry.mp3	1002
7452	Chemistry v2	\N	media/songs/Rush/Chemistry-v2.mp3	1002
7453	Cinderella Man	\N	media/songs/Rush/Cinderella-Man.mp3	1002
7454	Cinderella Man v2	\N	media/songs/Rush/Cinderella-Man-v2.mp3	1002
7455	Circumstances	\N	media/songs/Rush/Circumstances.mp3	1002
7456	Circumstances v2	\N	media/songs/Rush/Circumstances-v2.mp3	1002
7457	Closer To The Heart	\N	media/songs/Rush/Closer-To-The-Heart.mp3	1002
7458	Closer To The Heart v2	\N	media/songs/Rush/Closer-To-The-Heart-v2.mp3	1002
7459	Closer To The Heart v3	\N	media/songs/Rush/Closer-To-The-Heart-v3.mp3	1002
7460	Closer To The Heart v4	\N	media/songs/Rush/Closer-To-The-Heart-v4.mp3	1002
7461	Closer To The Heart v5	\N	media/songs/Rush/Closer-To-The-Heart-v5.mp3	1002
7462	Cut To The Chase	\N	media/songs/Rush/Cut-To-The-Chase.mp3	1002
7463	Cut To The Chase v2	\N	media/songs/Rush/Cut-To-The-Chase-v2.mp3	1002
7464	Cygnus X 1 Book 1 The Voyage Prologue	\N	media/songs/Rush/Cygnus-X-1-Book-1-The-Voyage-Prologue.mp3	1002
7465	Cygnus X 1 Book 1 The Voyage Prologue v2	\N	media/songs/Rush/Cygnus-X-1-Book-1-The-Voyage-Prologue-v2.mp3	1002
7466	Digital Man	\N	media/songs/Rush/Digital-Man.mp3	1002
7467	Digital Man v2	\N	media/songs/Rush/Digital-Man-v2.mp3	1002
7468	Digital Man v3	\N	media/songs/Rush/Digital-Man-v3.mp3	1002
7469	Discovery	\N	media/songs/Rush/Discovery.mp3	1002
7470	Distant Early Warning	\N	media/songs/Rush/Distant-Early-Warning.mp3	1002
7471	Dog Years	\N	media/songs/Rush/Dog-Years.mp3	1002
7472	Dog Years v2	\N	media/songs/Rush/Dog-Years-v2.mp3	1002
7473	Dreamline	\N	media/songs/Rush/Dreamline.mp3	1002
7474	Dreamline v2	\N	media/songs/Rush/Dreamline-v2.mp3	1002
7475	Entre Nous	\N	media/songs/Rush/Entre-Nous.mp3	1002
7476	Face Up	\N	media/songs/Rush/Face-Up.mp3	1002
7477	Face Up v2	\N	media/songs/Rush/Face-Up-v2.mp3	1002
7478	Far Cry	\N	media/songs/Rush/Far-Cry.mp3	1002
7479	Finding My Way	\N	media/songs/Rush/Finding-My-Way.mp3	1002
7480	Fly By Night	\N	media/songs/Rush/Fly-By-Night.mp3	1002
7481	Fly By Nite	\N	media/songs/Rush/Fly-By-Nite.mp3	1002
7482	Force 10	\N	media/songs/Rush/Force-10.mp3	1002
7483	Force 10 v2	\N	media/songs/Rush/Force-10-v2.mp3	1002
7484	Free Will	\N	media/songs/Rush/Free-Will.mp3	1002
7485	Freewill	\N	media/songs/Rush/Freewill.mp3	1002
7486	Ghost Of A Chance	\N	media/songs/Rush/Ghost-Of-A-Chance.mp3	1002
7487	Ghost Of A Chance v2	\N	media/songs/Rush/Ghost-Of-A-Chance-v2.mp3	1002
7488	Good News First	\N	media/songs/Rush/Good-News-First.mp3	1002
7489	Grand Finale	\N	media/songs/Rush/Grand-Finale.mp3	1002
7490	Hemispheres	\N	media/songs/Rush/Hemispheres.mp3	1002
7491	Hemispheres v2	\N	media/songs/Rush/Hemispheres-v2.mp3	1002
7492	High Water	\N	media/songs/Rush/High-Water.mp3	1002
7493	High Water v2	\N	media/songs/Rush/High-Water-v2.mp3	1002
7494	In The End	\N	media/songs/Rush/In-The-End.mp3	1002
7495	In The End v2	\N	media/songs/Rush/In-The-End-v2.mp3	1002
7496	In The Mood	\N	media/songs/Rush/In-The-Mood.mp3	1002
7497	In The Mood v2	\N	media/songs/Rush/In-The-Mood-v2.mp3	1002
7498	In The Mood v3	\N	media/songs/Rush/In-The-Mood-v3.mp3	1002
7499	In The Mood v4	\N	media/songs/Rush/In-The-Mood-v4.mp3	1002
7500	Jacobs Ladder	\N	media/songs/Rush/Jacobs-Ladder.mp3	1002
7501	La Villa Strangiato	\N	media/songs/Rush/La-Villa-Strangiato.mp3	1002
7502	La Villa Strangiato v2	\N	media/songs/Rush/La-Villa-Strangiato-v2.mp3	1002
7503	Leave That Thing Alone	\N	media/songs/Rush/Leave-That-Thing-Alone.mp3	1002
7504	Limelight	\N	media/songs/Rush/Limelight.mp3	1002
7505	Limelight v2	\N	media/songs/Rush/Limelight-v2.mp3	1002
7506	Limelight v3	\N	media/songs/Rush/Limelight-v3.mp3	1002
7507	Losing It	\N	media/songs/Rush/Losing-It.mp3	1002
7508	Losing It v2	\N	media/songs/Rush/Losing-It-v2.mp3	1002
7509	Making Memories	\N	media/songs/Rush/Making-Memories.mp3	1002
7510	Malignant Narcissism	\N	media/songs/Rush/Malignant-Narcissism.mp3	1002
7511	Malignant Narcissism v2	\N	media/songs/Rush/Malignant-Narcissism-v2.mp3	1002
7512	Manhattan Project	\N	media/songs/Rush/Manhattan-Project.mp3	1002
7513	Manhattan Project v2	\N	media/songs/Rush/Manhattan-Project-v2.mp3	1002
7514	Monkey Business	\N	media/songs/Rush/Monkey-Business.mp3	1002
7515	Natural Science	\N	media/songs/Rush/Natural-Science.mp3	1002
7516	Natural Science v2	\N	media/songs/Rush/Natural-Science-v2.mp3	1002
7517	New World Man	\N	media/songs/Rush/New-World-Man.mp3	1002
7518	New World Man v2	\N	media/songs/Rush/New-World-Man-v2.mp3	1002
7519	New World Man v3	\N	media/songs/Rush/New-World-Man-v3.mp3	1002
7520	New World Man v4	\N	media/songs/Rush/New-World-Man-v4.mp3	1002
7521	No One At The Bridge	\N	media/songs/Rush/No-One-At-The-Bridge.mp3	1002
7522	No One At The Bridge v2	\N	media/songs/Rush/No-One-At-The-Bridge-v2.mp3	1002
7523	Open Secrets	\N	media/songs/Rush/Open-Secrets.mp3	1002
7524	Open Secrets v2	\N	media/songs/Rush/Open-Secrets-v2.mp3	1002
7525	Oracle The Dream	\N	media/songs/Rush/Oracle-The-Dream.mp3	1002
7526	Overture	\N	media/songs/Rush/Overture.mp3	1002
7527	Overture 2112	\N	media/songs/Rush/Overture-2112.mp3	1002
7528	Overture 2112 v2	\N	media/songs/Rush/Overture-2112-v2.mp3	1002
7529	Passage To Bangkok	\N	media/songs/Rush/Passage-To-Bangkok.mp3	1002
7530	Presentation	\N	media/songs/Rush/Presentation.mp3	1002
7531	Presto	\N	media/songs/Rush/Presto.mp3	1002
7532	Presto v2	\N	media/songs/Rush/Presto-v2.mp3	1002
7533	Red Barchetta	\N	media/songs/Rush/Red-Barchetta.mp3	1002
7534	Red Barchetta v2	\N	media/songs/Rush/Red-Barchetta-v2.mp3	1002
7535	Red Barchetta v3	\N	media/songs/Rush/Red-Barchetta-v3.mp3	1002
7536	Red Barchetta v4	\N	media/songs/Rush/Red-Barchetta-v4.mp3	1002
7537	Red Sector A	\N	media/songs/Rush/Red-Sector-A.mp3	1002
7538	Roll The Bones	\N	media/songs/Rush/Roll-The-Bones.mp3	1002
7539	Roll The Bones v2	\N	media/songs/Rush/Roll-The-Bones-v2.mp3	1002
7540	Show Dont Tell	\N	media/songs/Rush/Show-Dont-Tell.mp3	1002
7541	Soliloquy	\N	media/songs/Rush/Soliloquy.mp3	1002
7542	Something For Nothing	\N	media/songs/Rush/Something-For-Nothing.mp3	1002
7543	Something For Nothing v2	\N	media/songs/Rush/Something-For-Nothing-v2.mp3	1002
7544	Spindrift	\N	media/songs/Rush/Spindrift.mp3	1002
7545	Spirit Of Radio	\N	media/songs/Rush/Spirit-Of-Radio.mp3	1002
7546	Spirit Of Radio Live	\N	media/songs/Rush/Spirit-Of-Radio-Live.mp3	1002
7547	Stick It Out	\N	media/songs/Rush/Stick-It-Out.mp3	1002
7548	Subdivisions	\N	media/songs/Rush/Subdivisions.mp3	1002
7549	Subdivisions v2	\N	media/songs/Rush/Subdivisions-v2.mp3	1002
7550	Subdivisions v3	\N	media/songs/Rush/Subdivisions-v3.mp3	1002
7551	Subdivisions v4	\N	media/songs/Rush/Subdivisions-v4.mp3	1002
7552	Superconductor	\N	media/songs/Rush/Superconductor.mp3	1002
7553	Superconductor v2	\N	media/songs/Rush/Superconductor-v2.mp3	1002
7554	Test For Echo	\N	media/songs/Rush/Test-For-Echo.mp3	1002
7555	The Analog Kid	\N	media/songs/Rush/The-Analog-Kid.mp3	1002
7556	The Analog Kid v2	\N	media/songs/Rush/The-Analog-Kid-v2.mp3	1002
7557	The Analog Kid v3	\N	media/songs/Rush/The-Analog-Kid-v3.mp3	1002
7558	The Big Money	\N	media/songs/Rush/The-Big-Money.mp3	1002
7559	The Big Money v2	\N	media/songs/Rush/The-Big-Money-v2.mp3	1002
7560	The Camera Eye	\N	media/songs/Rush/The-Camera-Eye.mp3	1002
7561	The Camera Eye v2	\N	media/songs/Rush/The-Camera-Eye-v2.mp3	1002
7562	The Main Monkey Business	\N	media/songs/Rush/The-Main-Monkey-Business.mp3	1002
7563	The Main Monkey Business v2	\N	media/songs/Rush/The-Main-Monkey-Business-v2.mp3	1002
7564	The Spirit Of Radio	\N	media/songs/Rush/The-Spirit-Of-Radio.mp3	1002
7565	The Temples Of Syrinx	\N	media/songs/Rush/The-Temples-Of-Syrinx.mp3	1002
7566	The Trees	\N	media/songs/Rush/The-Trees.mp3	1002
7567	The Trees v2	\N	media/songs/Rush/The-Trees-v2.mp3	1002
7568	The Trees v3	\N	media/songs/Rush/The-Trees-v3.mp3	1002
7569	The Trees v4	\N	media/songs/Rush/The-Trees-v4.mp3	1002
7570	The Trees v5	\N	media/songs/Rush/The-Trees-v5.mp3	1002
7571	The Twilight Zone	\N	media/songs/Rush/The-Twilight-Zone.mp3	1002
7572	The Twilight Zone v2	\N	media/songs/Rush/The-Twilight-Zone-v2.mp3	1002
7573	The Way The Wind Blows	\N	media/songs/Rush/The-Way-The-Wind-Blows.mp3	1002
7574	The Weapon	\N	media/songs/Rush/The-Weapon.mp3	1002
7575	The Weapon v2	\N	media/songs/Rush/The-Weapon-v2.mp3	1002
7576	The Weapon v3	\N	media/songs/Rush/The-Weapon-v3.mp3	1002
7577	Tom Sawyer	\N	media/songs/Rush/Tom-Sawyer.mp3	1002
7578	Tom Sawyer v2	\N	media/songs/Rush/Tom-Sawyer-v2.mp3	1002
7579	Tom Sawyer v3	\N	media/songs/Rush/Tom-Sawyer-v3.mp3	1002
7580	Tom Sawyer v4	\N	media/songs/Rush/Tom-Sawyer-v4.mp3	1002
7581	Tom Sawyer v5	\N	media/songs/Rush/Tom-Sawyer-v5.mp3	1002
7582	Twilight Zone	\N	media/songs/Rush/Twilight-Zone.mp3	1002
7583	Vital Signs	\N	media/songs/Rush/Vital-Signs.mp3	1002
7584	Vital Signs v2	\N	media/songs/Rush/Vital-Signs-v2.mp3	1002
7585	Vital Signs v3	\N	media/songs/Rush/Vital-Signs-v3.mp3	1002
7586	We Hold On	\N	media/songs/Rush/We-Hold-On.mp3	1002
7587	Witch Hunt	\N	media/songs/Rush/Witch-Hunt.mp3	1002
7588	Witch Hunt v2	\N	media/songs/Rush/Witch-Hunt-v2.mp3	1002
7589	Witch Hunt v3	\N	media/songs/Rush/Witch-Hunt-v3.mp3	1002
7590	Workin Them Angels	\N	media/songs/Rush/Workin-Them-Angels.mp3	1002
7591	Working Man	\N	media/songs/Rush/Working-Man.mp3	1002
7592	Working Man v2	\N	media/songs/Rush/Working-Man-v2.mp3	1002
7593	Working Man v3	\N	media/songs/Rush/Working-Man-v3.mp3	1002
7594	Working Man v4	\N	media/songs/Rush/Working-Man-v4.mp3	1002
7595	Xanadu	\N	media/songs/Rush/Xanadu.mp3	1002
7596	YYZ	\N	media/songs/Rush/YYZ.mp3	1002
7597	YYZ v2	\N	media/songs/Rush/YYZ-v2.mp3	1002
7598	YYZ v3	\N	media/songs/Rush/YYZ-v3.mp3	1002
7599	YYZ v4	\N	media/songs/Rush/YYZ-v4.mp3	1002
7600	YYZ v5	\N	media/songs/Rush/YYZ-v5.mp3	1002
7601	Do Miss America	\N	media/songs/Ryan-Adams/Do-Miss-America.mp3	1003
7602	Fix It	\N	media/songs/Ryan-Adams/Fix-It.mp3	1003
7603	Let It Ride	\N	media/songs/Ryan-Adams/Let-It-Ride.mp3	1003
7604	Love Is Hell	\N	media/songs/Ryan-Adams/Love-Is-Hell.mp3	1003
7605	Magic	\N	media/songs/Ryan-Adams/Magic.mp3	1003
7606	This Is It	\N	media/songs/Ryan-Adams/This-Is-It.mp3	1003
7607	White Death	\N	media/songs/Sabaton/White-Death.mp3	1004
7608	Twistin The Night Away	\N	media/songs/Sam-Cooke/Twistin-The-Night-Away.mp3	1005
7609	Mother Of Mercy	\N	media/songs/Samhain/Mother-Of-Mercy.mp3	1006
7610	I Cant Drive 55	\N	media/songs/Sammy-Hagar/I-Cant-Drive-55.mp3	1007
7611	Nosiu Ba Lasi	\N	media/songs/Sampaguita/Nosiu-Ba-Lasi.mp3	1008
7612	All I Ever Wanted	\N	media/songs/Santana/All-I-Ever-Wanted.mp3	1009
7613	Black Magic Woman	\N	media/songs/Santana/Black-Magic-Woman.mp3	1009
7614	Black Magic Woman v2	\N	media/songs/Santana/Black-Magic-Woman-v2.mp3	1009
7615	Black Magic Woman v3	\N	media/songs/Santana/Black-Magic-Woman-v3.mp3	1009
7616	Corazon Espinado	\N	media/songs/Santana/Corazon-Espinado.mp3	1009
7618	Do You Like The Way	\N	media/songs/Santana/Do-You-Like-The-Way.mp3	1009
7619	Europa	\N	media/songs/Santana/Europa.mp3	1009
7620	Europa v2	\N	media/songs/Santana/Europa-v2.mp3	1009
7621	Europa v3	\N	media/songs/Santana/Europa-v3.mp3	1009
7622	Europe	\N	media/songs/Santana/Europe.mp3	1009
7623	Evil Ways	\N	media/songs/Santana/Evil-Ways.mp3	1009
7624	Evil Ways v2	\N	media/songs/Santana/Evil-Ways-v2.mp3	1009
7625	Hannibal	\N	media/songs/Santana/Hannibal.mp3	1009
7626	Hold On	\N	media/songs/Santana/Hold-On.mp3	1009
7627	Jungle Strut	\N	media/songs/Santana/Jungle-Strut.mp3	1009
7628	Maria Maria	\N	media/songs/Santana/Maria-Maria.mp3	1009
7629	Moonflower	\N	media/songs/Santana/Moonflower.mp3	1009
7630	Moonflower v2	\N	media/songs/Santana/Moonflower-v2.mp3	1009
7631	Oye Como Va	\N	media/songs/Santana/Oye-Como-Va.mp3	1009
7632	Oye Como Va v2	\N	media/songs/Santana/Oye-Como-Va-v2.mp3	1009
7633	Persuasion	\N	media/songs/Santana/Persuasion.mp3	1009
7634	Put Your Lights On	\N	media/songs/Santana/Put-Your-Lights-On.mp3	1009
7635	Samba Pa Ti	\N	media/songs/Santana/Samba-Pa-Ti.mp3	1009
7636	Sensitive Kind	\N	media/songs/Santana/Sensitive-Kind.mp3	1009
7637	Sensitive Kind v2	\N	media/songs/Santana/Sensitive-Kind-v2.mp3	1009
7638	Shes Not There	\N	media/songs/Santana/Shes-Not-There.mp3	1009
7639	Shes Not There v2	\N	media/songs/Santana/Shes-Not-There-v2.mp3	1009
7640	Smooth	\N	media/songs/Santana/Smooth.mp3	1009
7641	Song Of The Wind	\N	media/songs/Santana/Song-Of-The-Wind.mp3	1009
7642	The Healer	\N	media/songs/Santana/The-Healer.mp3	1009
7643	To The Moon And Back	\N	media/songs/Savage-Garden/To-The-Moon-And-Back.mp3	1010
7644	Temptation Revelation	\N	media/songs/Savatage/Temptation-Revelation.mp3	1011
7645	Denim And Leather	\N	media/songs/Saxon/Denim-And-Leather.mp3	1012
7646	The Warrior	\N	media/songs/Scandal/The-Warrior.mp3	1013
7647	They Say	\N	media/songs/Scars-On-Broadway/They-Say.mp3	1014
7648	Cant Live Without You	\N	media/songs/Scorp/Cant-Live-Without-You.mp3	1015
7649	Another Piece Of Meat	\N	media/songs/Scorpions/Another-Piece-Of-Meat.mp3	1016
7650	Big City Nights	\N	media/songs/Scorpions/Big-City-Nights.mp3	1016
7651	Big City Nights v2	\N	media/songs/Scorpions/Big-City-Nights-v2.mp3	1016
7652	Blackout	\N	media/songs/Scorpions/Blackout.mp3	1016
7653	Blackout v2	\N	media/songs/Scorpions/Blackout-v2.mp3	1016
7654	Cant Live Without You	\N	media/songs/Scorpions/Cant-Live-Without-You.mp3	1016
7655	Coast To Coast	\N	media/songs/Scorpions/Coast-To-Coast.mp3	1016
7656	Lady Starlight	\N	media/songs/Scorpions/Lady-Starlight.mp3	1016
7657	No One Like You	\N	media/songs/Scorpions/No-One-Like-You.mp3	1016
7658	No One Like You v2	\N	media/songs/Scorpions/No-One-Like-You-v2.mp3	1016
7659	No One Like You v3	\N	media/songs/Scorpions/No-One-Like-You-v3.mp3	1016
7660	Pictured Life	\N	media/songs/Scorpions/Pictured-Life.mp3	1016
7661	Rock You Like A Hurricane	\N	media/songs/Scorpions/Rock-You-Like-A-Hurricane.mp3	1016
7662	Rock You Like A Hurricane v2	\N	media/songs/Scorpions/Rock-You-Like-A-Hurricane-v2.mp3	1016
7663	Rock You Like A Hurricane v3	\N	media/songs/Scorpions/Rock-You-Like-A-Hurricane-v3.mp3	1016
7664	Rock You Like A Hurricane v4	\N	media/songs/Scorpions/Rock-You-Like-A-Hurricane-v4.mp3	1016
7665	Rock You Like A Hurricane v5	\N	media/songs/Scorpions/Rock-You-Like-A-Hurricane-v5.mp3	1016
7666	Still Loving You	\N	media/songs/Scorpions/Still-Loving-You.mp3	1016
7667	Still Loving You v2	\N	media/songs/Scorpions/Still-Loving-You-v2.mp3	1016
7668	Still Loving You v3	\N	media/songs/Scorpions/Still-Loving-You-v3.mp3	1016
7669	The Riot Of Your Time	\N	media/songs/Scorpions/The-Riot-Of-Your-Time.mp3	1016
7670	The Zoo	\N	media/songs/Scorpions/The-Zoo.mp3	1016
7671	The Zoo v2	\N	media/songs/Scorpions/The-Zoo-v2.mp3	1016
7672	When You Came Into My Life	\N	media/songs/Scorpions/When-You-Came-Into-My-Life.mp3	1016
7673	When You Came Into My Life v2	\N	media/songs/Scorpions/When-You-Came-Into-My-Life-v2.mp3	1016
7674	Wind Of Change	\N	media/songs/Scorpions/Wind-Of-Change.mp3	1016
7675	Wind Of Change v2	\N	media/songs/Scorpions/Wind-Of-Change-v2.mp3	1016
7676	Wind Of Change v3	\N	media/songs/Scorpions/Wind-Of-Change-v3.mp3	1016
7677	Wind Of Change v4	\N	media/songs/Scorpions/Wind-Of-Change-v4.mp3	1016
7678	Wind Of Change v5	\N	media/songs/Scorpions/Wind-Of-Change-v5.mp3	1016
7679	Nearly Lost You	\N	media/songs/Screaming-Trees/Nearly-Lost-You.mp3	1017
7680	Nearly Lost You v2	\N	media/songs/Screaming-Trees/Nearly-Lost-You-v2.mp3	1017
7681	Kiss From A Rose	\N	media/songs/Seal/Kiss-From-A-Rose.mp3	1018
7682	Kiss From A Rose v2	\N	media/songs/Seal/Kiss-From-A-Rose-v2.mp3	1018
7683	Careless Whisper	\N	media/songs/Seether/Careless-Whisper.mp3	1019
7684	Tonight	\N	media/songs/Seether/Tonight.mp3	1019
7685	Cant Be Saved	\N	media/songs/Senses-Fail/Cant-Be-Saved.mp3	1020
7686	Mourn	\N	media/songs/Sentenced/Mourn.mp3	1021
7687	Antichrist	\N	media/songs/Sepultura/Antichrist.mp3	1022
7688	Anticop	\N	media/songs/Sepultura/Anticop.mp3	1022
7689	Arise	\N	media/songs/Sepultura/Arise.mp3	1022
7690	Arise v2	\N	media/songs/Sepultura/Arise-v2.mp3	1022
7691	Arise v3	\N	media/songs/Sepultura/Arise-v3.mp3	1022
7692	Bestial Devastation	\N	media/songs/Sepultura/Bestial-Devastation.mp3	1022
7693	Crucifixion	\N	media/songs/Sepultura/Crucifixion.mp3	1022
7694	Dead Embrionic Cells	\N	media/songs/Sepultura/Dead-Embrionic-Cells.mp3	1022
7695	Dead Embryonic Cells	\N	media/songs/Sepultura/Dead-Embryonic-Cells.mp3	1022
7696	Desperate Cry	\N	media/songs/Sepultura/Desperate-Cry.mp3	1022
7697	From The Past Comes The Storms	\N	media/songs/Sepultura/From-The-Past-Comes-The-Storms.mp3	1022
7698	Inner Self	\N	media/songs/Sepultura/Inner-Self.mp3	1022
7699	Inner Self v2	\N	media/songs/Sepultura/Inner-Self-v2.mp3	1022
7700	Lobotomy	\N	media/songs/Sepultura/Lobotomy.mp3	1022
7701	Mass Hypnosis	\N	media/songs/Sepultura/Mass-Hypnosis.mp3	1022
7702	Mass Hypnosis v2	\N	media/songs/Sepultura/Mass-Hypnosis-v2.mp3	1022
7703	Meaningless Movements	\N	media/songs/Sepultura/Meaningless-Movements.mp3	1022
7704	Necromancer	\N	media/songs/Sepultura/Necromancer.mp3	1022
7705	Policia	\N	media/songs/Sepultura/Policia.mp3	1022
7706	Propaganda	\N	media/songs/Sepultura/Propaganda.mp3	1022
7707	Show Me The Wrath	\N	media/songs/Sepultura/Show-Me-The-Wrath.mp3	1022
7708	Subtraction	\N	media/songs/Sepultura/Subtraction.mp3	1022
7709	Territory	\N	media/songs/Sepultura/Territory.mp3	1022
7710	Territory v2	\N	media/songs/Sepultura/Territory-v2.mp3	1022
7711	Troops Of Doom	\N	media/songs/Sepultura/Troops-Of-Doom.mp3	1022
7712	Warriors Of Death	\N	media/songs/Sepultura/Warriors-Of-Death.mp3	1022
7713	Warriors Of Death v2	\N	media/songs/Sepultura/Warriors-Of-Death-v2.mp3	1022
7714	Enemy	\N	media/songs/Sevendust/Enemy.mp3	1023
7715	GNL	\N	media/songs/Shadow-Play/GNL.mp3	1024
7716	Power Of The Ninja Sword	\N	media/songs/Shadow-Warriors/Power-Of-The-Ninja-Sword.mp3	1025
7717	Another Hero Lost	\N	media/songs/Shadows-Fall/Another-Hero-Lost.mp3	1026
7718	Redemption	\N	media/songs/Shadows-Fall/Redemption.mp3	1026
7719	The Light That Blinds	\N	media/songs/Shadows-Fall/The-Light-That-Blinds.mp3	1026
7720	The Light That Blinds v2	\N	media/songs/Shadows-Fall/The-Light-That-Blinds-v2.mp3	1026
7721	All Of This	\N	media/songs/Shaimus/All-Of-This.mp3	1027
7722	Like A Fool	\N	media/songs/Shaimus/Like-A-Fool.mp3	1027
7723	Distant Thunder	\N	media/songs/Shaman/Distant-Thunder.mp3	1028
7724	Here I Am	\N	media/songs/Shaman/Here-I-Am.mp3	1028
7725	Pride	\N	media/songs/Shaman/Pride.mp3	1028
7726	Time Will Come	\N	media/songs/Shaman/Time-Will-Come.mp3	1028
7727	Time Will Come v2	\N	media/songs/Shaman/Time-Will-Come-v2.mp3	1028
7728	Time Will Come v3	\N	media/songs/Shaman/Time-Will-Come-v3.mp3	1028
7729	Whos Bed Have Your Boots Been Under	\N	media/songs/Shania-Twain/Whos-Bed-Have-Your-Boots-Been-Under.mp3	1029
7730	Not Again	\N	media/songs/Shawn-Lane/Not-Again.mp3	1030
7731	No Promises	\N	media/songs/Shayne-Ward/No-Promises.mp3	1031
7732	No Promises v2	\N	media/songs/Shayne-Ward/No-Promises-v2.mp3	1031
7733	A Change Would Do You Good	\N	media/songs/Sheryl-Crow/A-Change-Would-Do-You-Good.mp3	1032
7734	My Favorite Mistake	\N	media/songs/Sheryl-Crow/My-Favorite-Mistake.mp3	1032
7735	The First Cut Is The Deepest	\N	media/songs/Sheryl-Crow/The-First-Cut-Is-The-Deepest.mp3	1032
7736	45	\N	media/songs/Shinedown/45.mp3	1033
7737	Save Me	\N	media/songs/Shinedown/Save-Me.mp3	1033
7738	Second Chance	\N	media/songs/Shinedown/Second-Chance.mp3	1033
7739	Goodnight Moon	\N	media/songs/Shivaree/Goodnight-Moon.mp3	1034
7740	Mississippi	\N	media/songs/Shocking-Blue/Mississippi.mp3	1035
7741	Never Marry A Railroad Man	\N	media/songs/Shocking-Blue/Never-Marry-A-Railroad-Man.mp3	1035
7742	Anas Song	\N	media/songs/Silverchair/Anas-Song.mp3	1036
7743	Anthem For The Year 2000	\N	media/songs/Silverchair/Anthem-For-The-Year-2000.mp3	1036
7744	Emotion Sickness	\N	media/songs/Silverchair/Emotion-Sickness.mp3	1036
7745	Emotion Sickness v2	\N	media/songs/Silverchair/Emotion-Sickness-v2.mp3	1036
7746	Freak	\N	media/songs/Silverchair/Freak.mp3	1036
7747	Point Of View	\N	media/songs/Silverchair/Point-Of-View.mp3	1036
7748	Suicidal Dream	\N	media/songs/Silverchair/Suicidal-Dream.mp3	1036
7749	Tomorrow	\N	media/songs/Silverchair/Tomorrow.mp3	1036
7750	Tomorrow v2	\N	media/songs/Silverchair/Tomorrow-v2.mp3	1036
7751	Tuna In The Brine	\N	media/songs/Silverchair/Tuna-In-The-Brine.mp3	1036
7752	Tuna In The Brine v2	\N	media/songs/Silverchair/Tuna-In-The-Brine-v2.mp3	1036
7753	Lazy Eye	\N	media/songs/Silversun-Pickups/Lazy-Eye.mp3	1037
7754	Dont You Forget About Me	\N	media/songs/Simple-Minds/Dont-You-Forget-About-Me.mp3	1038
7755	Dont You Forget About Me v2	\N	media/songs/Simple-Minds/Dont-You-Forget-About-Me-v2.mp3	1038
7756	Dont You Forget About Me v3	\N	media/songs/Simple-Minds/Dont-You-Forget-About-Me-v3.mp3	1038
7757	Dont You Forget About Me v4	\N	media/songs/Simple-Minds/Dont-You-Forget-About-Me-v4.mp3	1038
7758	Shut Up	\N	media/songs/Simple-Plan/Shut-Up.mp3	1039
7759	Nothing Compares 2U	\N	media/songs/Sinead-O-Connor/Nothing-Compares-2U.mp3	1040
7760	You Raise Me Up	\N	media/songs/Singuporg/You-Raise-Me-Up.mp3	1041
7761	Hong Kong Garden	\N	media/songs/Siouxsie-And-The-Banshees/Hong-Kong-Garden.mp3	1042
7762	Kiss Them For Me	\N	media/songs/Siouxsie-And-The-Banshees/Kiss-Them-For-Me.mp3	1042
7763	The Killing Jar	\N	media/songs/Siouxsie-And-The-Banshees/The-Killing-Jar.mp3	1042
7764	Intermission	\N	media/songs/Sixx-AM/Intermission.mp3	1043
7765	Life Is Beautiful	\N	media/songs/Sixx-AM/Life-Is-Beautiful.mp3	1043
7766	Life Is Beautiful v2	\N	media/songs/Sixx-AM/Life-Is-Beautiful-v2.mp3	1043
7767	18 And Life	\N	media/songs/Skid-Row/18-And-Life.mp3	1044
7768	18 And Life v2	\N	media/songs/Skid-Row/18-And-Life-v2.mp3	1044
7769	18 And Life v3	\N	media/songs/Skid-Row/18-And-Life-v3.mp3	1044
7770	I Ll Remember You	\N	media/songs/Skid-Row/I-Ll-Remember-You.mp3	1044
7771	Monkey Business	\N	media/songs/Skid-Row/Monkey-Business.mp3	1044
7772	Youth Gone Wild	\N	media/songs/Skid-Row/Youth-Gone-Wild.mp3	1044
7773	Monster	\N	media/songs/Skiller/Monster.mp3	1045
7774	Awake And Alive	\N	media/songs/Skillet/Awake-And-Alive.mp3	1046
7775	Hero	\N	media/songs/Skillet/Hero.mp3	1046
7776	Hedonism	\N	media/songs/Skunk-Anansie/Hedonism.mp3	1047
7777	Political	\N	media/songs/Skunk-Anansie/Political.mp3	1047
7778	Weak	\N	media/songs/Skunk-Anansie/Weak.mp3	1047
7779	Carillon	\N	media/songs/Sky/Carillon.mp3	1048
7780	Wildflower	\N	media/songs/Skylark/Wildflower.mp3	1049
7781	Groovy Baby	\N	media/songs/Skyrider/Groovy-Baby.mp3	1050
7782	In Flight	\N	media/songs/Skyrider/In-Flight.mp3	1050
7783	Our Mother Earth	\N	media/songs/Skyrider/Our-Mother-Earth.mp3	1050
7784	Ritual	\N	media/songs/Skyrider/Ritual.mp3	1050
7785	Santa Rocks On	\N	media/songs/Skyrider/Santa-Rocks-On.mp3	1050
7786	Without You	\N	media/songs/Skyrider/Without-You.mp3	1050
7787	Anastasia	\N	media/songs/Slash/Anastasia.mp3	1051
7788	Anastasia v2	\N	media/songs/Slash/Anastasia-v2.mp3	1051
7789	Apocalyptic Love	\N	media/songs/Slash/Apocalyptic-Love.mp3	1051
7790	Baby Cant Drive	\N	media/songs/Slash/Baby-Cant-Drive.mp3	1051
7791	Back From Cali	\N	media/songs/Slash/Back-From-Cali.mp3	1051
7792	Back From Cali v2	\N	media/songs/Slash/Back-From-Cali-v2.mp3	1051
7793	Back From Cali v3	\N	media/songs/Slash/Back-From-Cali-v3.mp3	1051
7794	Bad Rain	\N	media/songs/Slash/Bad-Rain.mp3	1051
7795	Beautiful Dangerous	\N	media/songs/Slash/Beautiful-Dangerous.mp3	1051
7796	Beautiful Dangerous v2	\N	media/songs/Slash/Beautiful-Dangerous-v2.mp3	1051
7797	By The Sword	\N	media/songs/Slash/By-The-Sword.mp3	1051
7798	By The Sword Live	\N	media/songs/Slash/By-The-Sword-Live.mp3	1051
7799	By The Sword v2	\N	media/songs/Slash/By-The-Sword-v2.mp3	1051
7800	Civil War Live	\N	media/songs/Slash/Civil-War-Live.mp3	1051
7801	Dr Dan Theme	\N	media/songs/Slash/Dr-Dan-Theme.mp3	1051
7802	Ghost	\N	media/songs/Slash/Ghost.mp3	1051
7803	Ghost Live	\N	media/songs/Slash/Ghost-Live.mp3	1051
7804	Ghost v2	\N	media/songs/Slash/Ghost-v2.mp3	1051
7805	Gotten	\N	media/songs/Slash/Gotten.mp3	1051
7806	Gotten v2	\N	media/songs/Slash/Gotten-v2.mp3	1051
7807	Gotten v3	\N	media/songs/Slash/Gotten-v3.mp3	1051
7808	I Hold On	\N	media/songs/Slash/I-Hold-On.mp3	1051
7809	Mr Brownstone Live	\N	media/songs/Slash/Mr-Brownstone-Live.mp3	1051
7810	Nightrain Live	\N	media/songs/Slash/Nightrain-Live.mp3	1051
7811	No More Heroes	\N	media/songs/Slash/No-More-Heroes.mp3	1051
7812	Nothing To Say	\N	media/songs/Slash/Nothing-To-Say.mp3	1051
7813	Paradise City Live	\N	media/songs/Slash/Paradise-City-Live.mp3	1051
7814	Patience Live	\N	media/songs/Slash/Patience-Live.mp3	1051
7815	Rocket Queen Live	\N	media/songs/Slash/Rocket-Queen-Live.mp3	1051
7816	Sweet Child O Mine Live	\N	media/songs/Slash/Sweet-Child-O-Mine-Live.mp3	1051
7817	Watch This	\N	media/songs/Slash/Watch-This.mp3	1051
7818	Youre A Lie	\N	media/songs/Slash/Youre-A-Lie.mp3	1051
7819	Up All Night	\N	media/songs/Slaughter/Up-All-Night.mp3	1052
7820	Altar Of Sacrifice	\N	media/songs/Slayer/Altar-Of-Sacrifice.mp3	1053
7821	Angel Of Death	\N	media/songs/Slayer/Angel-Of-Death.mp3	1053
7822	Angel Of Death v2	\N	media/songs/Slayer/Angel-Of-Death-v2.mp3	1053
7823	Black Magic	\N	media/songs/Slayer/Black-Magic.mp3	1053
7824	Criminally Insane	\N	media/songs/Slayer/Criminally-Insane.mp3	1053
7825	Dead Skin Mask	\N	media/songs/Slayer/Dead-Skin-Mask.mp3	1053
7826	Die By The Sword	\N	media/songs/Slayer/Die-By-The-Sword.mp3	1053
7827	Epidemic	\N	media/songs/Slayer/Epidemic.mp3	1053
7828	Flesh Storm	\N	media/songs/Slayer/Flesh-Storm.mp3	1053
7829	Hollow Point	\N	media/songs/Slayer/Hollow-Point.mp3	1053
7830	Mandatory Suicide	\N	media/songs/Slayer/Mandatory-Suicide.mp3	1053
7831	Necrophiliac	\N	media/songs/Slayer/Necrophiliac.mp3	1053
7832	Necrophobic	\N	media/songs/Slayer/Necrophobic.mp3	1053
7833	Piece By Piece	\N	media/songs/Slayer/Piece-By-Piece.mp3	1053
7834	Postmortem	\N	media/songs/Slayer/Postmortem.mp3	1053
7835	Postmortem v2	\N	media/songs/Slayer/Postmortem-v2.mp3	1053
7836	Raining Blood	\N	media/songs/Slayer/Raining-Blood.mp3	1053
7837	Raining Blood Intro	\N	media/songs/Slayer/Raining-Blood-Intro.mp3	1053
7838	Raining Blood v2	\N	media/songs/Slayer/Raining-Blood-v2.mp3	1053
7839	Raining Blood v3	\N	media/songs/Slayer/Raining-Blood-v3.mp3	1053
7840	Raining Blood v4	\N	media/songs/Slayer/Raining-Blood-v4.mp3	1053
7841	Reborn	\N	media/songs/Slayer/Reborn.mp3	1053
7842	Seasons In The Abyss	\N	media/songs/Slayer/Seasons-In-The-Abyss.mp3	1053
7843	South Of Heaven	\N	media/songs/Slayer/South-Of-Heaven.mp3	1053
7844	South Of Heaven v2	\N	media/songs/Slayer/South-Of-Heaven-v2.mp3	1053
7845	War Ensemble	\N	media/songs/Slayer/War-Ensemble.mp3	1053
7846	War Ensemble v2	\N	media/songs/Slayer/War-Ensemble-v2.mp3	1053
7847	All Hope Is Gone	\N	media/songs/Slipknot/All-Hope-Is-Gone.mp3	1054
7848	Before I Forget	\N	media/songs/Slipknot/Before-I-Forget.mp3	1054
7849	Before I Forget v2	\N	media/songs/Slipknot/Before-I-Forget-v2.mp3	1054
7850	Dead Memories	\N	media/songs/Slipknot/Dead-Memories.mp3	1054
7851	Duality	\N	media/songs/Slipknot/Duality.mp3	1054
7852	Duality v2	\N	media/songs/Slipknot/Duality-v2.mp3	1054
7853	Eyeless	\N	media/songs/Slipknot/Eyeless.mp3	1054
7854	Eyeless v2	\N	media/songs/Slipknot/Eyeless-v2.mp3	1054
7855	Gematria The Killing Name	\N	media/songs/Slipknot/Gematria-The-Killing-Name.mp3	1054
7856	Left Behind	\N	media/songs/Slipknot/Left-Behind.mp3	1054
7857	Psychosocial	\N	media/songs/Slipknot/Psychosocial.mp3	1054
7858	Psychosocial v2	\N	media/songs/Slipknot/Psychosocial-v2.mp3	1054
7859	Psychosocial v3	\N	media/songs/Slipknot/Psychosocial-v3.mp3	1054
7860	Purity	\N	media/songs/Slipknot/Purity.mp3	1054
7861	SIC	\N	media/songs/Slipknot/SIC.mp3	1054
7862	Surfacing	\N	media/songs/Slipknot/Surfacing.mp3	1054
7863	The Blister Exist	\N	media/songs/Slipknot/The-Blister-Exist.mp3	1054
7864	Vermillion	\N	media/songs/Slipknot/Vermillion.mp3	1054
7865	Wait And Bleed	\N	media/songs/Slipknot/Wait-And-Bleed.mp3	1054
7866	Wait And Bleed v2	\N	media/songs/Slipknot/Wait-And-Bleed-v2.mp3	1054
7867	All Star	\N	media/songs/Smash-Mouth/All-Star.mp3	1055
7868	All Star v2	\N	media/songs/Smash-Mouth/All-Star-v2.mp3	1055
7869	Walking On The Sun	\N	media/songs/Smash-Mouth/Walking-On-The-Sun.mp3	1055
7870	1979	\N	media/songs/Smashing-Pumpkins/1979.mp3	1056
7871	Ava Adore	\N	media/songs/Smashing-Pumpkins/Ava-Adore.mp3	1056
7872	Bullet With Butterfly Wings	\N	media/songs/Smashing-Pumpkins/Bullet-With-Butterfly-Wings.mp3	1056
7873	Cherub Rock	\N	media/songs/Smashing-Pumpkins/Cherub-Rock.mp3	1056
7874	Cherub Rock v2	\N	media/songs/Smashing-Pumpkins/Cherub-Rock-v2.mp3	1056
7875	Cherub Rock v3	\N	media/songs/Smashing-Pumpkins/Cherub-Rock-v3.mp3	1056
7876	Cherub Rock v4	\N	media/songs/Smashing-Pumpkins/Cherub-Rock-v4.mp3	1056
7877	Glow	\N	media/songs/Smashing-Pumpkins/Glow.mp3	1056
7878	Siva	\N	media/songs/Smashing-Pumpkins/Siva.mp3	1056
7879	Siva v2	\N	media/songs/Smashing-Pumpkins/Siva-v2.mp3	1056
7880	The Everlasting Gaze	\N	media/songs/Smashing-Pumpkins/The-Everlasting-Gaze.mp3	1056
7881	Today	\N	media/songs/Smashing-Pumpkins/Today.mp3	1056
7882	Today v2	\N	media/songs/Smashing-Pumpkins/Today-v2.mp3	1056
7883	Today v3	\N	media/songs/Smashing-Pumpkins/Today-v3.mp3	1056
7884	Zero	\N	media/songs/Smashing-Pumpkins/Zero.mp3	1056
7885	Zero v2	\N	media/songs/Smashing-Pumpkins/Zero-v2.mp3	1056
7886	Zero v3	\N	media/songs/Smashing-Pumpkins/Zero-v3.mp3	1056
7887	Chasing Cars	\N	media/songs/Snow-Patrol/Chasing-Cars.mp3	1057
7888	Gleaming Action	\N	media/songs/Snow-Patrol/Gleaming-Action.mp3	1057
7889	Run	\N	media/songs/Snow-Patrol/Run.mp3	1057
7890	Ways And Means	\N	media/songs/Snow-Patrol/Ways-And-Means.mp3	1057
7891	Bird Of Paradise	\N	media/songs/Snowy-White/Bird-Of-Paradise.mp3	1058
7892	I Was Wrong	\N	media/songs/Social-Distortion/I-Was-Wrong.mp3	1059
7893	Machine Gun Blues	\N	media/songs/Social-Distortion/Machine-Gun-Blues.mp3	1059
7894	Mommys Little Monster Live	\N	media/songs/Social-Distortion/Mommys-Little-Monster-Live.mp3	1059
7895	Story Of My Life	\N	media/songs/Social-Distortion/Story-Of-My-Life.mp3	1059
7896	Story Of My Life v2	\N	media/songs/Social-Distortion/Story-Of-My-Life-v2.mp3	1059
7897	De Musica Ligera	\N	media/songs/Soda-Stereo/De-Musica-Ligera.mp3	1060
7898	Fue	\N	media/songs/Soda-Stereo/Fue.mp3	1060
7899	Persiana Americana	\N	media/songs/Soda-Stereo/Persiana-Americana.mp3	1060
7900	Persiana Americana v2	\N	media/songs/Soda-Stereo/Persiana-Americana-v2.mp3	1060
7901	Persiana Americana v3	\N	media/songs/Soda-Stereo/Persiana-Americana-v3.mp3	1060
7902	Signos	\N	media/songs/Soda-Stereo/Signos.mp3	1060
7903	Tratame Suavemente	\N	media/songs/Soda-Stereo/Tratame-Suavemente.mp3	1060
7904	Agent Orange	\N	media/songs/Sodom/Agent-Orange.mp3	1061
7905	Black Sheep	\N	media/songs/Sonata-Arctica/Black-Sheep.mp3	1062
7906	Black Sheep v2	\N	media/songs/Sonata-Arctica/Black-Sheep-v2.mp3	1062
7907	My Land	\N	media/songs/Sonata-Arctica/My-Land.mp3	1062
7908	Wolf And Raven	\N	media/songs/Sonata-Arctica/Wolf-And-Raven.mp3	1062
7909	Wolf And Raven v2	\N	media/songs/Sonata-Arctica/Wolf-And-Raven-v2.mp3	1062
7910	Incinerate	\N	media/songs/Sonic-Youth/Incinerate.mp3	1063
7911	Kool Thing	\N	media/songs/Sonic-Youth/Kool-Thing.mp3	1063
7912	Teen Age Riot	\N	media/songs/Sonic-Youth/Teen-Age-Riot.mp3	1063
7913	Runaway Train	\N	media/songs/Soul-Asylum/Runaway-Train.mp3	1064
7914	Runaway Train v2	\N	media/songs/Soul-Asylum/Runaway-Train-v2.mp3	1064
7915	Babylon	\N	media/songs/Soulfly/Babylon.mp3	1065
7916	Spur	\N	media/songs/Soulrushmuzic-Stephen-V-Lacey/Spur.mp3	1066
7917	Spur	\N	media/songs/Soulrushmuzic-SV-LACEY/Spur.mp3	1067
7918	Black Hole Sun	\N	media/songs/Soundgarden/Black-Hole-Sun.mp3	1068
7919	Black Rain	\N	media/songs/Soundgarden/Black-Rain.mp3	1068
7920	Black Rain v2	\N	media/songs/Soundgarden/Black-Rain-v2.mp3	1068
7921	Blow Up The Outside World	\N	media/songs/Soundgarden/Blow-Up-The-Outside-World.mp3	1068
7922	Burden In My Hand	\N	media/songs/Soundgarden/Burden-In-My-Hand.mp3	1068
7923	Fell On Black Days	\N	media/songs/Soundgarden/Fell-On-Black-Days.mp3	1068
7924	Fell On Black Days v2	\N	media/songs/Soundgarden/Fell-On-Black-Days-v2.mp3	1068
7925	Fell On Black Days v3	\N	media/songs/Soundgarden/Fell-On-Black-Days-v3.mp3	1068
7926	Hands All Over	\N	media/songs/Soundgarden/Hands-All-Over.mp3	1068
7927	Hunted Down	\N	media/songs/Soundgarden/Hunted-Down.mp3	1068
7928	My Wave	\N	media/songs/Soundgarden/My-Wave.mp3	1068
7929	Outshined	\N	media/songs/Soundgarden/Outshined.mp3	1068
7930	Outshined v2	\N	media/songs/Soundgarden/Outshined-v2.mp3	1068
7931	Outshined v3	\N	media/songs/Soundgarden/Outshined-v3.mp3	1068
7932	Pretty Noose	\N	media/songs/Soundgarden/Pretty-Noose.mp3	1068
7933	Pretty Noose v2	\N	media/songs/Soundgarden/Pretty-Noose-v2.mp3	1068
7934	Rusty Cage	\N	media/songs/Soundgarden/Rusty-Cage.mp3	1068
7935	Rusty Cage v2	\N	media/songs/Soundgarden/Rusty-Cage-v2.mp3	1068
7936	Spoonman	\N	media/songs/Soundgarden/Spoonman.mp3	1068
7937	Spoonman v2	\N	media/songs/Soundgarden/Spoonman-v2.mp3	1068
7938	In The Meantime	\N	media/songs/Spacehog/In-The-Meantime.mp3	1069
7939	Conventional Lover	\N	media/songs/Speck/Conventional-Lover.mp3	1070
7940	Two Princes	\N	media/songs/Spin-Doctors/Two-Princes.mp3	1071
7941	Two Princes v2	\N	media/songs/Spin-Doctors/Two-Princes-v2.mp3	1071
7942	Two Princes v3	\N	media/songs/Spin-Doctors/Two-Princes-v3.mp3	1071
7943	Two Princes v4	\N	media/songs/Spin-Doctors/Two-Princes-v4.mp3	1071
7944	Tonight Im Gonna Rock You Tonight	\N	media/songs/Spinal-Tap/Tonight-Im-Gonna-Rock-You-Tonight.mp3	1072
7945	Plowed	\N	media/songs/Sponge/Plowed.mp3	1073
7946	Tempted	\N	media/songs/Squeeze/Tempted.mp3	1074
7947	Up The Junction	\N	media/songs/Squeeze/Up-The-Junction.mp3	1074
7948	Outside	\N	media/songs/Staind/Outside.mp3	1075
7949	Right Here	\N	media/songs/Staind/Right-Here.mp3	1075
7950	This Is It	\N	media/songs/Staind/This-Is-It.mp3	1075
7951	Been A While	\N	media/songs/Stained/Been-A-While.mp3	1076
7952	We Built This City	\N	media/songs/Starship/We-Built-This-City.mp3	1077
7953	Push It	\N	media/songs/Static-X/Push-It.mp3	1078
7954	Anniversary Waltz Part 1	\N	media/songs/Status-Quo/Anniversary-Waltz-Part-1.mp3	1079
7955	Caroline	\N	media/songs/Status-Quo/Caroline.mp3	1079
7956	Caroline v2	\N	media/songs/Status-Quo/Caroline-v2.mp3	1079
7957	Caroline v3	\N	media/songs/Status-Quo/Caroline-v3.mp3	1079
7958	Rockin All Over The World	\N	media/songs/Status-Quo/Rockin-All-Over-The-World.mp3	1079
7959	Rockin All Over The World v2	\N	media/songs/Status-Quo/Rockin-All-Over-The-World-v2.mp3	1079
7960	Rockin All Over The World v3	\N	media/songs/Status-Quo/Rockin-All-Over-The-World-v3.mp3	1079
7961	Rockin All Over The World v4	\N	media/songs/Status-Quo/Rockin-All-Over-The-World-v4.mp3	1079
7962	Roll Over Lay Down	\N	media/songs/Status-Quo/Roll-Over-Lay-Down.mp3	1079
7963	Solid Gold	\N	media/songs/Status-Quo/Solid-Gold.mp3	1079
7964	Stand Up	\N	media/songs/Steel-Dragon/Stand-Up.mp3	1080
7965	Babylon Sisters	\N	media/songs/Steely-Dan/Babylon-Sisters.mp3	1081
7966	Bad Sneakers	\N	media/songs/Steely-Dan/Bad-Sneakers.mp3	1081
7967	Black Friday	\N	media/songs/Steely-Dan/Black-Friday.mp3	1081
7968	Bodhisattva	\N	media/songs/Steely-Dan/Bodhisattva.mp3	1081
7969	Do It Again	\N	media/songs/Steely-Dan/Do-It-Again.mp3	1081
7970	Fm	\N	media/songs/Steely-Dan/Fm.mp3	1081
7971	Gaslight Abbie	\N	media/songs/Steely-Dan/Gaslight-Abbie.mp3	1081
7972	Gaucho	\N	media/songs/Steely-Dan/Gaucho.mp3	1081
7973	Glamour Profession	\N	media/songs/Steely-Dan/Glamour-Profession.mp3	1081
7974	Hey Nineteen	\N	media/songs/Steely-Dan/Hey-Nineteen.mp3	1081
7975	Hey Nineteen v2	\N	media/songs/Steely-Dan/Hey-Nineteen-v2.mp3	1081
7976	Janie Runaway	\N	media/songs/Steely-Dan/Janie-Runaway.mp3	1081
7977	Josie	\N	media/songs/Steely-Dan/Josie.mp3	1081
7978	Josie v2	\N	media/songs/Steely-Dan/Josie-v2.mp3	1081
7979	Kid Charlemagne	\N	media/songs/Steely-Dan/Kid-Charlemagne.mp3	1081
7980	Kid Charlemagne v2	\N	media/songs/Steely-Dan/Kid-Charlemagne-v2.mp3	1081
7981	My Old School	\N	media/songs/Steely-Dan/My-Old-School.mp3	1081
7982	My Old School v2	\N	media/songs/Steely-Dan/My-Old-School-v2.mp3	1081
7983	Night By Night	\N	media/songs/Steely-Dan/Night-By-Night.mp3	1081
7984	Peg	\N	media/songs/Steely-Dan/Peg.mp3	1081
7985	Pretzel Logic	\N	media/songs/Steely-Dan/Pretzel-Logic.mp3	1081
7986	Pretzel Logic v2	\N	media/songs/Steely-Dan/Pretzel-Logic-v2.mp3	1081
7987	Reelin In The Years	\N	media/songs/Steely-Dan/Reelin-In-The-Years.mp3	1081
7988	Reelin In The Years v2	\N	media/songs/Steely-Dan/Reelin-In-The-Years-v2.mp3	1081
7989	Reelin In The Years v3	\N	media/songs/Steely-Dan/Reelin-In-The-Years-v3.mp3	1081
7990	Rikki Dont Lose That Number	\N	media/songs/Steely-Dan/Rikki-Dont-Lose-That-Number.mp3	1081
7991	What A Shame About Me	\N	media/songs/Steely-Dan/What-A-Shame-About-Me.mp3	1081
7992	City Lights	\N	media/songs/Steffen-Schackinger/City-Lights.mp3	1082
7993	Voodoo Chile Slight Return	\N	media/songs/Steive-Ray-Vaughan/Voodoo-Chile-Slight-Return.mp3	1083
7994	Born To Be Wild	\N	media/songs/Steppenwolf/Born-To-Be-Wild.mp3	1084
7995	Born To Be Wild v2	\N	media/songs/Steppenwolf/Born-To-Be-Wild-v2.mp3	1084
7996	Born To Be Wild v3	\N	media/songs/Steppenwolf/Born-To-Be-Wild-v3.mp3	1084
7997	Born To Be Wild v4	\N	media/songs/Steppenwolf/Born-To-Be-Wild-v4.mp3	1084
7998	The Pusher	\N	media/songs/Steppenwolf/The-Pusher.mp3	1084
7999	Bartender And The Thief	\N	media/songs/Stereophonics/Bartender-And-The-Thief.mp3	1085
8000	Bartender And The Thief v2	\N	media/songs/Stereophonics/Bartender-And-The-Thief-v2.mp3	1085
8001	Dakota	\N	media/songs/Stereophonics/Dakota.mp3	1085
8002	Dakota v2	\N	media/songs/Stereophonics/Dakota-v2.mp3	1085
8003	Handbags And Gladrags	\N	media/songs/Stereophonics/Handbags-And-Gladrags.mp3	1085
8004	Hurry Up And Wait	\N	media/songs/Stereophonics/Hurry-Up-And-Wait.mp3	1085
8005	Hurry Up And Wait v2	\N	media/songs/Stereophonics/Hurry-Up-And-Wait-v2.mp3	1085
8006	Just Looking	\N	media/songs/Stereophonics/Just-Looking.mp3	1085
8007	Just Looking v2	\N	media/songs/Stereophonics/Just-Looking-v2.mp3	1085
8008	Maybe Tomorrow	\N	media/songs/Stereophonics/Maybe-Tomorrow.mp3	1085
8009	More Life In A Tramps Vest	\N	media/songs/Stereophonics/More-Life-In-A-Tramps-Vest.mp3	1085
8010	Pick A Part Thats New	\N	media/songs/Stereophonics/Pick-A-Part-Thats-New.mp3	1085
8011	Pick A Part Thats New v2	\N	media/songs/Stereophonics/Pick-A-Part-Thats-New-v2.mp3	1085
8012	Supreme Girl	\N	media/songs/Sterns/Supreme-Girl.mp3	1086
8013	Fly Like An Eagle	\N	media/songs/Steve-Miller/Fly-Like-An-Eagle.mp3	1087
8014	Fly Like An Eagle v2	\N	media/songs/Steve-Miller/Fly-Like-An-Eagle-v2.mp3	1087
8015	Fly Like An Eagle v3	\N	media/songs/Steve-Miller/Fly-Like-An-Eagle-v3.mp3	1087
8016	Jet Airliner	\N	media/songs/Steve-Miller/Jet-Airliner.mp3	1087
8017	Keep On Rockin Me Baby	\N	media/songs/Steve-Miller/Keep-On-Rockin-Me-Baby.mp3	1087
8018	Rock N Me	\N	media/songs/Steve-Miller/Rock-N-Me.mp3	1087
8019	Take The Money And Run	\N	media/songs/Steve-Miller/Take-The-Money-And-Run.mp3	1087
8020	Take The Money And Run v2	\N	media/songs/Steve-Miller/Take-The-Money-And-Run-v2.mp3	1087
8021	Take The Money And Run v3	\N	media/songs/Steve-Miller/Take-The-Money-And-Run-v3.mp3	1087
8022	Take The Money And Run v4	\N	media/songs/Steve-Miller/Take-The-Money-And-Run-v4.mp3	1087
8023	The Joker	\N	media/songs/Steve-Miller/The-Joker.mp3	1087
8024	Fly Like An Eagle	\N	media/songs/Steve-Miller-Band/Fly-Like-An-Eagle.mp3	1088
8025	Rockin Me	\N	media/songs/Steve-Miller-Band/Rockin-Me.mp3	1088
8026	Swingtown	\N	media/songs/Steve-Miller-Band/Swingtown.mp3	1088
8027	Take The Money And Run	\N	media/songs/Steve-Miller-Band/Take-The-Money-And-Run.mp3	1088
8028	The Joker	\N	media/songs/Steve-Miller-Band/The-Joker.mp3	1088
8029	Ballad For Ruby	\N	media/songs/Steve-Morse/Ballad-For-Ruby.mp3	1089
8030	Derailleur Gears	\N	media/songs/Steve-Morse/Derailleur-Gears.mp3	1089
8031	Eyes Of A Child	\N	media/songs/Steve-Morse/Eyes-Of-A-Child.mp3	1089
8032	Eyes Of A Child v2	\N	media/songs/Steve-Morse/Eyes-Of-A-Child-v2.mp3	1089
8033	Highland Wedding	\N	media/songs/Steve-Morse/Highland-Wedding.mp3	1089
8034	Just Out Of Reach	\N	media/songs/Steve-Morse/Just-Out-Of-Reach.mp3	1089
8035	On The Pipe	\N	media/songs/Steve-Morse/On-The-Pipe.mp3	1089
8036	Simple Simon	\N	media/songs/Steve-Morse/Simple-Simon.mp3	1089
8037	The Oz	\N	media/songs/Steve-Morse/The-Oz.mp3	1089
8038	The Oz v2	\N	media/songs/Steve-Morse/The-Oz-v2.mp3	1089
8039	The Road Expense	\N	media/songs/Steve-Morse/The-Road-Expense.mp3	1089
8040	Vista Grande	\N	media/songs/Steve-Morse/Vista-Grande.mp3	1089
8041	Dueling Banjos	\N	media/songs/Steve-Ouimette/Dueling-Banjos.mp3	1090
8042	The Devil Went Down To Georgia	\N	media/songs/Steve-Ouimette/The-Devil-Went-Down-To-Georgia.mp3	1090
8043	We Three Kings	\N	media/songs/Steve-Ouimette/We-Three-Kings.mp3	1090
8044	Idol Rebel	\N	media/songs/Steve-Stevens/Idol-Rebel.mp3	1091
8045	Top Gun	\N	media/songs/Steve-Stevens/Top-Gun.mp3	1091
8046	Top Gun v2	\N	media/songs/Steve-Stevens/Top-Gun-v2.mp3	1091
8047	Dear Mister Fantasy	\N	media/songs/Steve-Winwood/Dear-Mister-Fantasy.mp3	1092
8048	Sectarian	\N	media/songs/Steven-Wilson/Sectarian.mp3	1093
8049	Edge Of Seventeen	\N	media/songs/Stevie-Nicks/Edge-Of-Seventeen.mp3	1094
8050	Stand Back	\N	media/songs/Stevie-Nicks/Stand-Back.mp3	1094
8051	Stop Dragging My Heart Around	\N	media/songs/Stevie-Nicks/Stop-Dragging-My-Heart-Around.mp3	1094
8052	Boot Hill	\N	media/songs/Stevie-Ray-Vaughan/Boot-Hill.mp3	1095
8053	Boot Hill v2	\N	media/songs/Stevie-Ray-Vaughan/Boot-Hill-v2.mp3	1095
8054	Boot Hill v3	\N	media/songs/Stevie-Ray-Vaughan/Boot-Hill-v3.mp3	1095
8055	Chitlings Con Carne	\N	media/songs/Stevie-Ray-Vaughan/Chitlings-Con-Carne.mp3	1095
8056	Chitlins Con Carne	\N	media/songs/Stevie-Ray-Vaughan/Chitlins-Con-Carne.mp3	1095
8057	Chitlins Con Carne v2	\N	media/songs/Stevie-Ray-Vaughan/Chitlins-Con-Carne-v2.mp3	1095
8058	Cold Shot	\N	media/songs/Stevie-Ray-Vaughan/Cold-Shot.mp3	1095
8059	Cold Shot v2	\N	media/songs/Stevie-Ray-Vaughan/Cold-Shot-v2.mp3	1095
8060	Couldnt Stand The Weather	\N	media/songs/Stevie-Ray-Vaughan/Couldnt-Stand-The-Weather.mp3	1095
8061	Couldnt Stand The Weather v2	\N	media/songs/Stevie-Ray-Vaughan/Couldnt-Stand-The-Weather-v2.mp3	1095
8062	Couldnt Stand The Weather v3	\N	media/songs/Stevie-Ray-Vaughan/Couldnt-Stand-The-Weather-v3.mp3	1095
8063	Couldnt Stand The Weather v4	\N	media/songs/Stevie-Ray-Vaughan/Couldnt-Stand-The-Weather-v4.mp3	1095
8064	Couldnt Stand The Weather v5	\N	media/songs/Stevie-Ray-Vaughan/Couldnt-Stand-The-Weather-v5.mp3	1095
8065	Crossfire	\N	media/songs/Stevie-Ray-Vaughan/Crossfire.mp3	1095
8066	Crossfire v2	\N	media/songs/Stevie-Ray-Vaughan/Crossfire-v2.mp3	1095
8067	Crossfire v3	\N	media/songs/Stevie-Ray-Vaughan/Crossfire-v3.mp3	1095
8068	Crossfire v4	\N	media/songs/Stevie-Ray-Vaughan/Crossfire-v4.mp3	1095
8069	DFW	\N	media/songs/Stevie-Ray-Vaughan/DFW.mp3	1095
8070	DFW v2	\N	media/songs/Stevie-Ray-Vaughan/DFW-v2.mp3	1095
8071	Dirty Pool	\N	media/songs/Stevie-Ray-Vaughan/Dirty-Pool.mp3	1095
8072	Empty Arms	\N	media/songs/Stevie-Ray-Vaughan/Empty-Arms.mp3	1095
8073	Empty Arms v2	\N	media/songs/Stevie-Ray-Vaughan/Empty-Arms-v2.mp3	1095
8074	Hard To Be	\N	media/songs/Stevie-Ray-Vaughan/Hard-To-Be.mp3	1095
8075	Lenny	\N	media/songs/Stevie-Ray-Vaughan/Lenny.mp3	1095
8076	Lenny v2	\N	media/songs/Stevie-Ray-Vaughan/Lenny-v2.mp3	1095
8077	Lenny v3	\N	media/songs/Stevie-Ray-Vaughan/Lenny-v3.mp3	1095
8078	Lenny v4	\N	media/songs/Stevie-Ray-Vaughan/Lenny-v4.mp3	1095
8079	Little Wing	\N	media/songs/Stevie-Ray-Vaughan/Little-Wing.mp3	1095
8080	Little Wing In Eb	\N	media/songs/Stevie-Ray-Vaughan/Little-Wing-In-Eb.mp3	1095
8081	Little Wing v2	\N	media/songs/Stevie-Ray-Vaughan/Little-Wing-v2.mp3	1095
8082	Little Wing v3	\N	media/songs/Stevie-Ray-Vaughan/Little-Wing-v3.mp3	1095
8083	Look At Little Sister	\N	media/songs/Stevie-Ray-Vaughan/Look-At-Little-Sister.mp3	1095
8084	Love Struck Baby	\N	media/songs/Stevie-Ray-Vaughan/Love-Struck-Baby.mp3	1095
8085	Love Struck Baby v2	\N	media/songs/Stevie-Ray-Vaughan/Love-Struck-Baby-v2.mp3	1095
8086	Mary Had A Little Lamb	\N	media/songs/Stevie-Ray-Vaughan/Mary-Had-A-Little-Lamb.mp3	1095
8087	Mary Had A Little Lamb v2	\N	media/songs/Stevie-Ray-Vaughan/Mary-Had-A-Little-Lamb-v2.mp3	1095
8088	Mary Had A Little Lamb v3	\N	media/songs/Stevie-Ray-Vaughan/Mary-Had-A-Little-Lamb-v3.mp3	1095
8089	Mary Had A Little Lamb v4	\N	media/songs/Stevie-Ray-Vaughan/Mary-Had-A-Little-Lamb-v4.mp3	1095
8090	Mary Had A Little Lamb v5	\N	media/songs/Stevie-Ray-Vaughan/Mary-Had-A-Little-Lamb-v5.mp3	1095
8091	Pride And Joy	\N	media/songs/Stevie-Ray-Vaughan/Pride-And-Joy.mp3	1095
8092	Pride And Joy v2	\N	media/songs/Stevie-Ray-Vaughan/Pride-And-Joy-v2.mp3	1095
8093	Pride And Joy v3	\N	media/songs/Stevie-Ray-Vaughan/Pride-And-Joy-v3.mp3	1095
8094	Pride And Joy v4	\N	media/songs/Stevie-Ray-Vaughan/Pride-And-Joy-v4.mp3	1095
8095	Pride And Joy v5	\N	media/songs/Stevie-Ray-Vaughan/Pride-And-Joy-v5.mp3	1095
8096	Riviera Paradise	\N	media/songs/Stevie-Ray-Vaughan/Riviera-Paradise.mp3	1095
8097	Riviera Paradise v2	\N	media/songs/Stevie-Ray-Vaughan/Riviera-Paradise-v2.mp3	1095
8098	Riviera Paradise v3	\N	media/songs/Stevie-Ray-Vaughan/Riviera-Paradise-v3.mp3	1095
8099	Rude Mood	\N	media/songs/Stevie-Ray-Vaughan/Rude-Mood.mp3	1095
8100	Rude Mood v2	\N	media/songs/Stevie-Ray-Vaughan/Rude-Mood-v2.mp3	1095
8101	Scuttle Buttin	\N	media/songs/Stevie-Ray-Vaughan/Scuttle-Buttin.mp3	1095
8102	Scuttle Buttin v2	\N	media/songs/Stevie-Ray-Vaughan/Scuttle-Buttin-v2.mp3	1095
8103	Scuttle Buttin v3	\N	media/songs/Stevie-Ray-Vaughan/Scuttle-Buttin-v3.mp3	1095
8104	Scuttle Buttin v4	\N	media/songs/Stevie-Ray-Vaughan/Scuttle-Buttin-v4.mp3	1095
8105	So Excited	\N	media/songs/Stevie-Ray-Vaughan/So-Excited.mp3	1095
8106	So Excited v2	\N	media/songs/Stevie-Ray-Vaughan/So-Excited-v2.mp3	1095
8107	Stangs Swang	\N	media/songs/Stevie-Ray-Vaughan/Stangs-Swang.mp3	1095
8108	Stangs Swang v2	\N	media/songs/Stevie-Ray-Vaughan/Stangs-Swang-v2.mp3	1095
8109	Telephone Song	\N	media/songs/Stevie-Ray-Vaughan/Telephone-Song.mp3	1095
8110	Telephone Song v2	\N	media/songs/Stevie-Ray-Vaughan/Telephone-Song-v2.mp3	1095
8111	Testify	\N	media/songs/Stevie-Ray-Vaughan/Testify.mp3	1095
8112	Testify v2	\N	media/songs/Stevie-Ray-Vaughan/Testify-v2.mp3	1095
8113	Testify v3	\N	media/songs/Stevie-Ray-Vaughan/Testify-v3.mp3	1095
8114	Texas Flood	\N	media/songs/Stevie-Ray-Vaughan/Texas-Flood.mp3	1095
8115	Texas Flood v2	\N	media/songs/Stevie-Ray-Vaughan/Texas-Flood-v2.mp3	1095
8116	Texas Flood v3	\N	media/songs/Stevie-Ray-Vaughan/Texas-Flood-v3.mp3	1095
8117	Texas Flood v4	\N	media/songs/Stevie-Ray-Vaughan/Texas-Flood-v4.mp3	1095
8118	Texas Flood v5	\N	media/songs/Stevie-Ray-Vaughan/Texas-Flood-v5.mp3	1095
8119	The House Is Rockin	\N	media/songs/Stevie-Ray-Vaughan/The-House-Is-Rockin.mp3	1095
8120	The Sky Is Cryin	\N	media/songs/Stevie-Ray-Vaughan/The-Sky-Is-Cryin.mp3	1095
8121	The Sky Is Cryin v2	\N	media/songs/Stevie-Ray-Vaughan/The-Sky-Is-Cryin-v2.mp3	1095
8122	The Sky Is Cryin v3	\N	media/songs/Stevie-Ray-Vaughan/The-Sky-Is-Cryin-v3.mp3	1095
8123	Tightrope	\N	media/songs/Stevie-Ray-Vaughan/Tightrope.mp3	1095
8124	Tightrope v2	\N	media/songs/Stevie-Ray-Vaughan/Tightrope-v2.mp3	1095
8125	Tightrope v3	\N	media/songs/Stevie-Ray-Vaughan/Tightrope-v3.mp3	1095
8126	Tightrope v4	\N	media/songs/Stevie-Ray-Vaughan/Tightrope-v4.mp3	1095
8127	Tin Pan Alley	\N	media/songs/Stevie-Ray-Vaughan/Tin-Pan-Alley.mp3	1095
8128	Tin Pan Alley v2	\N	media/songs/Stevie-Ray-Vaughan/Tin-Pan-Alley-v2.mp3	1095
8129	Tin Pan Alley v3	\N	media/songs/Stevie-Ray-Vaughan/Tin-Pan-Alley-v3.mp3	1095
8130	Wall Of Denial	\N	media/songs/Stevie-Ray-Vaughan/Wall-Of-Denial.mp3	1095
8131	Wall Of Denial v2	\N	media/songs/Stevie-Ray-Vaughan/Wall-Of-Denial-v2.mp3	1095
8132	Willie The Wimp	\N	media/songs/Stevie-Ray-Vaughan/Willie-The-Wimp.mp3	1095
8133	Higher Ground	\N	media/songs/Stevie-Wonder/Higher-Ground.mp3	1096
8134	I Wish	\N	media/songs/Stevie-Wonder/I-Wish.mp3	1096
8135	Living For The City	\N	media/songs/Stevie-Wonder/Living-For-The-City.mp3	1096
8136	Signed Sealed Delivered	\N	media/songs/Stevie-Wonder/Signed-Sealed-Delivered.mp3	1096
8137	Sir Duke	\N	media/songs/Stevie-Wonder/Sir-Duke.mp3	1096
8138	Uptight	\N	media/songs/Stevie-Wonder/Uptight.mp3	1096
8139	An Englishman In New York	\N	media/songs/Sting/An-Englishman-In-New-York.mp3	1097
8140	Demolition Man Live	\N	media/songs/Sting/Demolition-Man-Live.mp3	1097
8141	Fields Of Gold	\N	media/songs/Sting/Fields-Of-Gold.mp3	1097
8142	Fragile	\N	media/songs/Sting/Fragile.mp3	1097
8143	Fragile v2	\N	media/songs/Sting/Fragile-v2.mp3	1097
8144	Fragile v3	\N	media/songs/Sting/Fragile-v3.mp3	1097
8145	If I Ever Lose My Faith In You	\N	media/songs/Sting/If-I-Ever-Lose-My-Faith-In-You.mp3	1097
8146	If You Love Somebody Set Them Free	\N	media/songs/Sting/If-You-Love-Somebody-Set-Them-Free.mp3	1097
8147	Shape Of My Heart	\N	media/songs/Sting/Shape-Of-My-Heart.mp3	1097
8148	Shape Of My Heart v2	\N	media/songs/Sting/Shape-Of-My-Heart-v2.mp3	1097
8149	Shape Of My Heart v3	\N	media/songs/Sting/Shape-Of-My-Heart-v3.mp3	1097
8150	Come Whatever May	\N	media/songs/Stone-Sour/Come-Whatever-May.mp3	1098
8151	Adhesive	\N	media/songs/Stone-Temple-Pilots/Adhesive.mp3	1099
8152	Atlanta	\N	media/songs/Stone-Temple-Pilots/Atlanta.mp3	1099
8153	Between The Lines	\N	media/songs/Stone-Temple-Pilots/Between-The-Lines.mp3	1099
8154	Bi Polar Bear	\N	media/songs/Stone-Temple-Pilots/Bi-Polar-Bear.mp3	1099
8155	Big Empty	\N	media/songs/Stone-Temple-Pilots/Big-Empty.mp3	1099
8156	Crackerman	\N	media/songs/Stone-Temple-Pilots/Crackerman.mp3	1099
8157	Creep	\N	media/songs/Stone-Temple-Pilots/Creep.mp3	1099
8158	Creep v2	\N	media/songs/Stone-Temple-Pilots/Creep-v2.mp3	1099
8159	Dead And Bloated	\N	media/songs/Stone-Temple-Pilots/Dead-And-Bloated.mp3	1099
8160	Huckleberry Crumble	\N	media/songs/Stone-Temple-Pilots/Huckleberry-Crumble.mp3	1099
8161	Interstate Love Song	\N	media/songs/Stone-Temple-Pilots/Interstate-Love-Song.mp3	1099
8162	Interstate Love Song v2	\N	media/songs/Stone-Temple-Pilots/Interstate-Love-Song-v2.mp3	1099
8163	Interstate Love Song v3	\N	media/songs/Stone-Temple-Pilots/Interstate-Love-Song-v3.mp3	1099
8164	Interstate Love Song v4	\N	media/songs/Stone-Temple-Pilots/Interstate-Love-Song-v4.mp3	1099
8165	Naked Sunday	\N	media/songs/Stone-Temple-Pilots/Naked-Sunday.mp3	1099
8166	Piece Of Pie	\N	media/songs/Stone-Temple-Pilots/Piece-Of-Pie.mp3	1099
8167	Plush	\N	media/songs/Stone-Temple-Pilots/Plush.mp3	1099
8168	Plush v2	\N	media/songs/Stone-Temple-Pilots/Plush-v2.mp3	1099
8169	Plush v3	\N	media/songs/Stone-Temple-Pilots/Plush-v3.mp3	1099
8170	Plush v4	\N	media/songs/Stone-Temple-Pilots/Plush-v4.mp3	1099
8171	Plush v5	\N	media/songs/Stone-Temple-Pilots/Plush-v5.mp3	1099
8172	Plush v6	\N	media/songs/Stone-Temple-Pilots/Plush-v6.mp3	1099
8173	Sin	\N	media/songs/Stone-Temple-Pilots/Sin.mp3	1099
8174	Sour Girl	\N	media/songs/Stone-Temple-Pilots/Sour-Girl.mp3	1099
8175	Trippin On A Hole In A Paper Heart	\N	media/songs/Stone-Temple-Pilots/Trippin-On-A-Hole-In-A-Paper-Heart.mp3	1099
8176	Trippin On A Hole In A Paper Heart v2	\N	media/songs/Stone-Temple-Pilots/Trippin-On-A-Hole-In-A-Paper-Heart-v2.mp3	1099
8177	Trippin On A Hole In A Paper Heart v3	\N	media/songs/Stone-Temple-Pilots/Trippin-On-A-Hole-In-A-Paper-Heart-v3.mp3	1099
8178	Vasoline	\N	media/songs/Stone-Temple-Pilots/Vasoline.mp3	1099
8179	Where The River Goes	\N	media/songs/Stone-Temple-Pilots/Where-The-River-Goes.mp3	1099
8180	Wicked Garden	\N	media/songs/Stone-Temple-Pilots/Wicked-Garden.mp3	1099
8181	Wicked Garden v2	\N	media/songs/Stone-Temple-Pilots/Wicked-Garden-v2.mp3	1099
8182	Until The Day I Die	\N	media/songs/Story-Of-The-Year/Until-The-Day-I-Die.mp3	1100
8183	40000 Rainy Nights	\N	media/songs/Stratovarius/40000-Rainy-Nights.mp3	1101
8184	Anthem Of The World	\N	media/songs/Stratovarius/Anthem-Of-The-World.mp3	1101
8185	Black Diamond	\N	media/songs/Stratovarius/Black-Diamond.mp3	1101
8186	Black Diamond v2	\N	media/songs/Stratovarius/Black-Diamond-v2.mp3	1101
8187	Distant Skies	\N	media/songs/Stratovarius/Distant-Skies.mp3	1101
8188	Eagle Heart	\N	media/songs/Stratovarius/Eagle-Heart.mp3	1101
8189	Eagle Heart v2	\N	media/songs/Stratovarius/Eagle-Heart-v2.mp3	1101
8190	Father Time	\N	media/songs/Stratovarius/Father-Time.mp3	1101
8191	Forever Free	\N	media/songs/Stratovarius/Forever-Free.mp3	1101
8192	Forever Free v2	\N	media/songs/Stratovarius/Forever-Free-v2.mp3	1101
8193	Holy Light	\N	media/songs/Stratovarius/Holy-Light.mp3	1101
8194	Holy Light v2	\N	media/songs/Stratovarius/Holy-Light-v2.mp3	1101
8195	Hunting High And Low	\N	media/songs/Stratovarius/Hunting-High-And-Low.mp3	1101
8196	Hunting High And Low v2	\N	media/songs/Stratovarius/Hunting-High-And-Low-v2.mp3	1101
8197	I Walk To My Own Song	\N	media/songs/Stratovarius/I-Walk-To-My-Own-Song.mp3	1101
8198	Im Still Alive	\N	media/songs/Stratovarius/Im-Still-Alive.mp3	1101
8199	Kiss Of Judas	\N	media/songs/Stratovarius/Kiss-Of-Judas.mp3	1101
8200	Kiss Of Judas v2	\N	media/songs/Stratovarius/Kiss-Of-Judas-v2.mp3	1101
8201	Last Night On Earth	\N	media/songs/Stratovarius/Last-Night-On-Earth.mp3	1101
8202	Legions	\N	media/songs/Stratovarius/Legions.mp3	1101
8203	Paradise	\N	media/songs/Stratovarius/Paradise.mp3	1101
8204	Paradise v2	\N	media/songs/Stratovarius/Paradise-v2.mp3	1101
8205	Paradise v3	\N	media/songs/Stratovarius/Paradise-v3.mp3	1101
8206	Phoenix	\N	media/songs/Stratovarius/Phoenix.mp3	1101
8207	Season Of Change	\N	media/songs/Stratovarius/Season-Of-Change.mp3	1101
8208	Sos	\N	media/songs/Stratovarius/Sos.mp3	1101
8209	Speed Of Light	\N	media/songs/Stratovarius/Speed-Of-Light.mp3	1101
8210	Speed Of Light v2	\N	media/songs/Stratovarius/Speed-Of-Light-v2.mp3	1101
8211	Stratofortress	\N	media/songs/Stratovarius/Stratofortress.mp3	1101
8212	Stratosphere	\N	media/songs/Stratovarius/Stratosphere.mp3	1101
8213	Stratosphere v2	\N	media/songs/Stratovarius/Stratosphere-v2.mp3	1101
8214	Stratosphere v3	\N	media/songs/Stratovarius/Stratosphere-v3.mp3	1101
8215	Tears Of Ice	\N	media/songs/Stratovarius/Tears-Of-Ice.mp3	1101
8216	Twilight Symphony	\N	media/songs/Stratovarius/Twilight-Symphony.mp3	1101
8217	Vision Southern Cross	\N	media/songs/Stratovarius/Vision-Southern-Cross.mp3	1101
8218	Will The Sun Rise	\N	media/songs/Stratovarius/Will-The-Sun-Rise.mp3	1101
8219	Soul Man Wrap It Up	\N	media/songs/Strike-IV/Soul-Man-Wrap-It-Up.mp3	1102
8220	Juicebox	\N	media/songs/Strokes/Juicebox.mp3	1103
8221	Reptilia	\N	media/songs/Strokes/Reptilia.mp3	1103
8222	Take It Or Leave It	\N	media/songs/Strokes/Take-It-Or-Leave-It.mp3	1103
8223	Blue Collar Man	\N	media/songs/Styx/Blue-Collar-Man.mp3	1104
8224	Blue Collar Man Long Nights	\N	media/songs/Styx/Blue-Collar-Man-Long-Nights.mp3	1104
8225	Come Sail Away	\N	media/songs/Styx/Come-Sail-Away.mp3	1104
8226	Mr Roboto	\N	media/songs/Styx/Mr-Roboto.mp3	1104
8227	Renegade	\N	media/songs/Styx/Renegade.mp3	1104
8228	Renegade v2	\N	media/songs/Styx/Renegade-v2.mp3	1104
8229	Snowblind	\N	media/songs/Styx/Snowblind.mp3	1104
8230	Suite Madame Blue	\N	media/songs/Styx/Suite-Madame-Blue.mp3	1104
8231	The Best Of Times	\N	media/songs/Styx/The-Best-Of-Times.mp3	1104
8232	The Grand Illusion	\N	media/songs/Styx/The-Grand-Illusion.mp3	1104
8233	Badfish	\N	media/songs/Sublime/Badfish.mp3	1105
8234	Santeria	\N	media/songs/Sublime/Santeria.mp3	1105
8235	Santeria v2	\N	media/songs/Sublime/Santeria-v2.mp3	1105
8236	What I Got	\N	media/songs/Sublime/What-I-Got.mp3	1105
8237	What I Got v2	\N	media/songs/Sublime/What-I-Got-v2.mp3	1105
8238	War Inside My Head	\N	media/songs/Suicidal-Tendencies/War-Inside-My-Head.mp3	1106
8239	Best Of Me	\N	media/songs/Sum-41/Best-Of-Me.mp3	1107
8240	Fat Lip	\N	media/songs/Sum-41/Fat-Lip.mp3	1107
8241	Fat Lip v2	\N	media/songs/Sum-41/Fat-Lip-v2.mp3	1107
8242	Fat Lip v3	\N	media/songs/Sum-41/Fat-Lip-v3.mp3	1107
8243	Grab The Devil	\N	media/songs/Sum-41/Grab-The-Devil.mp3	1107
8244	In Too Deep	\N	media/songs/Sum-41/In-Too-Deep.mp3	1107
8245	In Too Deep v2	\N	media/songs/Sum-41/In-Too-Deep-v2.mp3	1107
8246	In Too Deep v3	\N	media/songs/Sum-41/In-Too-Deep-v3.mp3	1107
8247	In Too Deep v4	\N	media/songs/Sum-41/In-Too-Deep-v4.mp3	1107
8248	Motivation	\N	media/songs/Sum-41/Motivation.mp3	1107
8249	Motivation v2	\N	media/songs/Sum-41/Motivation-v2.mp3	1107
8250	No Brains	\N	media/songs/Sum-41/No-Brains.mp3	1107
8251	Over My Head	\N	media/songs/Sum-41/Over-My-Head.mp3	1107
8252	Pieces	\N	media/songs/Sum-41/Pieces.mp3	1107
8253	Still Waiting	\N	media/songs/Sum-41/Still-Waiting.mp3	1107
8254	Walking Disaster	\N	media/songs/Sum-41/Walking-Disaster.mp3	1107
8255	Dance Dance	\N	media/songs/Super-Kidd/Dance-Dance.mp3	1108
8256	Happy To Dance	\N	media/songs/Super-Kidd/Happy-To-Dance.mp3	1108
8257	I Cant Die This Way	\N	media/songs/Super-Kidd/I-Cant-Die-This-Way.mp3	1108
8258	Music Show	\N	media/songs/Super-Kidd/Music-Show.mp3	1108
8259	Rockstar	\N	media/songs/Super-Kidd/Rockstar.mp3	1108
8260	Radio Song	\N	media/songs/Superbus/Radio-Song.mp3	1109
8261	Alright	\N	media/songs/Supergrass/Alright.mp3	1110
8262	Sun Hits The Sky	\N	media/songs/Supergrass/Sun-Hits-The-Sky.mp3	1110
8263	Bonnie	\N	media/songs/Supertramp/Bonnie.mp3	1111
8264	Eye Of The Tiger	\N	media/songs/Survivor/Eye-Of-The-Tiger.mp3	1112
8265	Eye Of The Tiger v2	\N	media/songs/Survivor/Eye-Of-The-Tiger-v2.mp3	1112
8266	Eye Of The Tiger v3	\N	media/songs/Survivor/Eye-Of-The-Tiger-v3.mp3	1112
8267	Eye Of The Tiger v4	\N	media/songs/Survivor/Eye-Of-The-Tiger-v4.mp3	1112
8268	Eye Of The Tiger v5	\N	media/songs/Survivor/Eye-Of-The-Tiger-v5.mp3	1112
8269	Eye Of The Tiger v6	\N	media/songs/Survivor/Eye-Of-The-Tiger-v6.mp3	1112
8270	Action	\N	media/songs/Sweet/Action.mp3	1113
8271	Ballroom Blitz	\N	media/songs/Sweet/Ballroom-Blitz.mp3	1113
8272	Ballroom Blitz v2	\N	media/songs/Sweet/Ballroom-Blitz-v2.mp3	1113
8273	Ballroom Blitz v3	\N	media/songs/Sweet/Ballroom-Blitz-v3.mp3	1113
8274	Meant To Live	\N	media/songs/Switchfoot/Meant-To-Live.mp3	1114
8275	Meant To Live v2	\N	media/songs/Switchfoot/Meant-To-Live-v2.mp3	1114
8276	Accolade	\N	media/songs/Symphony-X/Accolade.mp3	1115
8277	Accolade E Tuning	\N	media/songs/Symphony-X/Accolade-E-Tuning.mp3	1115
8278	Accolade II	\N	media/songs/Symphony-X/Accolade-II.mp3	1115
8279	Accolade II v2	\N	media/songs/Symphony-X/Accolade-II-v2.mp3	1115
8280	Accolade II v3	\N	media/songs/Symphony-X/Accolade-II-v3.mp3	1115
8281	Accolade II v4	\N	media/songs/Symphony-X/Accolade-II-v4.mp3	1115
8282	Accolade v2	\N	media/songs/Symphony-X/Accolade-v2.mp3	1115
8283	Awakenings	\N	media/songs/Symphony-X/Awakenings.mp3	1115
8284	Candlelight Fantasia	\N	media/songs/Symphony-X/Candlelight-Fantasia.mp3	1115
8285	Candlelight Fantasia v2	\N	media/songs/Symphony-X/Candlelight-Fantasia-v2.mp3	1115
8286	Communion And The Oracle	\N	media/songs/Symphony-X/Communion-And-The-Oracle.mp3	1115
8287	Death Of Balance	\N	media/songs/Symphony-X/Death-Of-Balance.mp3	1115
8288	Divine Wings Of Tragedy	\N	media/songs/Symphony-X/Divine-Wings-Of-Tragedy.mp3	1115
8289	Divine Wings Of Tragedy v2	\N	media/songs/Symphony-X/Divine-Wings-Of-Tragedy-v2.mp3	1115
8290	Dressed To Kill	\N	media/songs/Symphony-X/Dressed-To-Kill.mp3	1115
8291	Egypt	\N	media/songs/Symphony-X/Egypt.mp3	1115
8292	Evolution	\N	media/songs/Symphony-X/Evolution.mp3	1115
8293	Evolution v2	\N	media/songs/Symphony-X/Evolution-v2.mp3	1115
8294	Eyes Of Medusa	\N	media/songs/Symphony-X/Eyes-Of-Medusa.mp3	1115
8295	Inferno Unleash The Fire	\N	media/songs/Symphony-X/Inferno-Unleash-The-Fire.mp3	1115
8296	Inferno Unleash The Fire v2	\N	media/songs/Symphony-X/Inferno-Unleash-The-Fire-v2.mp3	1115
8297	Of Sins And Shadows	\N	media/songs/Symphony-X/Of-Sins-And-Shadows.mp3	1115
8298	Of Sins And Shadows v2	\N	media/songs/Symphony-X/Of-Sins-And-Shadows-v2.mp3	1115
8299	Orion The Hunter	\N	media/songs/Symphony-X/Orion-The-Hunter.mp3	1115
8300	Out Of The Ashes	\N	media/songs/Symphony-X/Out-Of-The-Ashes.mp3	1115
8301	Savage Curtain	\N	media/songs/Symphony-X/Savage-Curtain.mp3	1115
8302	Sea Of Lies	\N	media/songs/Symphony-X/Sea-Of-Lies.mp3	1115
8303	Serpents Kiss	\N	media/songs/Symphony-X/Serpents-Kiss.mp3	1115
8304	Set The World On Fire	\N	media/songs/Symphony-X/Set-The-World-On-Fire.mp3	1115
8305	The Bird Serpent War	\N	media/songs/Symphony-X/The-Bird-Serpent-War.mp3	1115
8306	The Divine Wings Of Tragedy	\N	media/songs/Symphony-X/The-Divine-Wings-Of-Tragedy.mp3	1115
8307	The Odyssey	\N	media/songs/Symphony-X/The-Odyssey.mp3	1115
8308	The Odyssey v2	\N	media/songs/Symphony-X/The-Odyssey-v2.mp3	1115
8309	The Odyssey v3	\N	media/songs/Symphony-X/The-Odyssey-v3.mp3	1115
8310	The Witching Hour	\N	media/songs/Symphony-X/The-Witching-Hour.mp3	1115
8311	When All Is Lost	\N	media/songs/Symphony-X/When-All-Is-Lost.mp3	1115
8312	Aerials	\N	media/songs/System-Of-A-Down/Aerials.mp3	1116
8313	Aerials v2	\N	media/songs/System-Of-A-Down/Aerials-v2.mp3	1116
8314	Byob	\N	media/songs/System-Of-A-Down/Byob.mp3	1116
8315	Byob v2	\N	media/songs/System-Of-A-Down/Byob-v2.mp3	1116
8316	Byob v3	\N	media/songs/System-Of-A-Down/Byob-v3.mp3	1116
8317	Chop Suey	\N	media/songs/System-Of-A-Down/Chop-Suey.mp3	1116
8318	Chop Suey v2	\N	media/songs/System-Of-A-Down/Chop-Suey-v2.mp3	1116
8319	Chop Suey v3	\N	media/songs/System-Of-A-Down/Chop-Suey-v3.mp3	1116
8320	Hypnotize	\N	media/songs/System-Of-A-Down/Hypnotize.mp3	1116
8321	Hypnotize v2	\N	media/songs/System-Of-A-Down/Hypnotize-v2.mp3	1116
8322	Innervision	\N	media/songs/System-Of-A-Down/Innervision.mp3	1116
8323	Question	\N	media/songs/System-Of-A-Down/Question.mp3	1116
8324	Revenga	\N	media/songs/System-Of-A-Down/Revenga.mp3	1116
8325	Revenga v2	\N	media/songs/System-Of-A-Down/Revenga-v2.mp3	1116
8326	Spiders	\N	media/songs/System-Of-A-Down/Spiders.mp3	1116
8327	Sugar	\N	media/songs/System-Of-A-Down/Sugar.mp3	1116
8328	Sugar v2	\N	media/songs/System-Of-A-Down/Sugar-v2.mp3	1116
8329	Sugar v3	\N	media/songs/System-Of-A-Down/Sugar-v3.mp3	1116
8330	Toxicity	\N	media/songs/System-Of-A-Down/Toxicity.mp3	1116
8331	Toxicity v2	\N	media/songs/System-Of-A-Down/Toxicity-v2.mp3	1116
8332	Toxicity v3	\N	media/songs/System-Of-A-Down/Toxicity-v3.mp3	1116
8333	20th Century Boy	\N	media/songs/T-Rex/20th-Century-Boy.mp3	1117
8334	20th Century Boy v2	\N	media/songs/T-Rex/20th-Century-Boy-v2.mp3	1117
8335	20th Century Boy v3	\N	media/songs/T-Rex/20th-Century-Boy-v3.mp3	1117
8336	20th Century Boy v4	\N	media/songs/T-Rex/20th-Century-Boy-v4.mp3	1117
8337	I Love To Boogie	\N	media/songs/T-Rex/I-Love-To-Boogie.mp3	1117
8338	Ride A White Swan	\N	media/songs/T-Rex/Ride-A-White-Swan.mp3	1117
8339	Stormy Monday	\N	media/songs/T-bone-Walker/Stormy-Monday.mp3	1118
8340	Stormy Monday Blues	\N	media/songs/T-bone-Walker/Stormy-Monday-Blues.mp3	1118
8341	T Bone Walker Style Backing	\N	media/songs/T-bone-Walker/T-Bone-Walker-Style-Backing.mp3	1118
8342	The Cataclysm	\N	media/songs/Takayoshi-Ohmura/The-Cataclysm.mp3	1119
8343	Wait For Live	\N	media/songs/Take-That/Wait-For-Live.mp3	1120
8344	Once In A Lifetime	\N	media/songs/Talking-Heads/Once-In-A-Lifetime.mp3	1121
8345	Psycho Killer	\N	media/songs/Talking-Heads/Psycho-Killer.mp3	1121
8346	Half Full Glass Of Wine	\N	media/songs/Tame-Impala/Half-Full-Glass-Of-Wine.mp3	1122
8347	Time Of The Moon	\N	media/songs/TATU/Time-Of-The-Moon.mp3	1123
8348	Forever And Always	\N	media/songs/Taylor-Swift/Forever-And-Always.mp3	1124
8349	Everybody Wants To Rule The World	\N	media/songs/Tears-For-Fears/Everybody-Wants-To-Rule-The-World.mp3	1125
8350	Head Over Heels	\N	media/songs/Tears-For-Fears/Head-Over-Heels.mp3	1125
8351	Head Over Heels v2	\N	media/songs/Tears-For-Fears/Head-Over-Heels-v2.mp3	1125
8352	Head Over Heels v3	\N	media/songs/Tears-For-Fears/Head-Over-Heels-v3.mp3	1125
8353	Head Over Heels v4	\N	media/songs/Tears-For-Fears/Head-Over-Heels-v4.mp3	1125
8354	Baby Please Dont Go	\N	media/songs/Ted-Nugent/Baby-Please-Dont-Go.mp3	1126
8355	Cat Scratch Fever	\N	media/songs/Ted-Nugent/Cat-Scratch-Fever.mp3	1126
8356	Cat Scratch Fever v2	\N	media/songs/Ted-Nugent/Cat-Scratch-Fever-v2.mp3	1126
8357	Cat Scratch Fever v3	\N	media/songs/Ted-Nugent/Cat-Scratch-Fever-v3.mp3	1126
8358	Cat Scratch Fever v4	\N	media/songs/Ted-Nugent/Cat-Scratch-Fever-v4.mp3	1126
8359	Dog Eat Dog	\N	media/songs/Ted-Nugent/Dog-Eat-Dog.mp3	1126
8360	Free For All	\N	media/songs/Ted-Nugent/Free-For-All.mp3	1126
8361	Stranglehold	\N	media/songs/Ted-Nugent/Stranglehold.mp3	1126
8362	Stranglehold v2	\N	media/songs/Ted-Nugent/Stranglehold-v2.mp3	1126
8363	Stranglehold v3	\N	media/songs/Ted-Nugent/Stranglehold-v3.mp3	1126
8364	Stranglehold v4	\N	media/songs/Ted-Nugent/Stranglehold-v4.mp3	1126
8365	Wang Dang Sweet Poontang	\N	media/songs/Ted-Nugent/Wang-Dang-Sweet-Poontang.mp3	1126
8366	Wango Tango	\N	media/songs/Ted-Nugent/Wango-Tango.mp3	1126
8367	Cendrillon	\N	media/songs/Telephone/Cendrillon.mp3	1127
8368	La Bombe Humaine	\N	media/songs/Telephone/La-Bombe-Humaine.mp3	1127
8369	Say Hello 2 Heaven	\N	media/songs/Temple-Of-The-Dog/Say-Hello-2-Heaven.mp3	1128
8370	Id Love To Change The World	\N	media/songs/Ten-Years-After/Id-Love-To-Change-The-World.mp3	1129
8371	Slow Blues In C	\N	media/songs/Ten-Years-After/Slow-Blues-In-C.mp3	1129
8372	The Bluest Blues	\N	media/songs/Ten-Years-After/The-Bluest-Blues.mp3	1129
8373	Beelzeboss	\N	media/songs/Tenacious-D/Beelzeboss.mp3	1130
8374	Kickapoo	\N	media/songs/Tenacious-D/Kickapoo.mp3	1130
8375	Metal	\N	media/songs/Tenacious-D/Metal.mp3	1130
8376	Metal v2	\N	media/songs/Tenacious-D/Metal-v2.mp3	1130
8377	Rock Your Socks	\N	media/songs/Tenacious-D/Rock-Your-Socks.mp3	1130
8378	The Metal	\N	media/songs/Tenacious-D/The-Metal.mp3	1130
8379	Tribute	\N	media/songs/Tenacious-D/Tribute.mp3	1130
8380	Sepultura	\N	media/songs/Territory/Sepultura.mp3	1131
8381	Love Song	\N	media/songs/Tesla/Love-Song.mp3	1132
8382	Love Song v2	\N	media/songs/Tesla/Love-Song-v2.mp3	1132
8383	Modern Day Cowboy	\N	media/songs/Tesla/Modern-Day-Cowboy.mp3	1132
8384	Modern Day Cowboy v2	\N	media/songs/Tesla/Modern-Day-Cowboy-v2.mp3	1132
8385	Solution	\N	media/songs/Tesla/Solution.mp3	1132
8386	Solution v2	\N	media/songs/Tesla/Solution-v2.mp3	1132
8387	Song And Emotion	\N	media/songs/Tesla/Song-And-Emotion.mp3	1132
8388	The Way It Is	\N	media/songs/Tesla/The-Way-It-Is.mp3	1132
8389	Electric Crown	\N	media/songs/Testament/Electric-Crown.mp3	1133
8390	Electric Crown v2	\N	media/songs/Testament/Electric-Crown-v2.mp3	1133
8391	Electric Crown v3	\N	media/songs/Testament/Electric-Crown-v3.mp3	1133
8392	Into The Pit	\N	media/songs/Testament/Into-The-Pit.mp3	1133
8393	Musical Death A Dirge	\N	media/songs/Testament/Musical-Death-A-Dirge.mp3	1133
8394	Return To Serenity	\N	media/songs/Testament/Return-To-Serenity.mp3	1133
8395	Souls Of Black	\N	media/songs/Testament/Souls-Of-Black.mp3	1133
8396	The New Order	\N	media/songs/Testament/The-New-Order.mp3	1133
8397	Eye	\N	media/songs/The-Alan-Parons-Project/Eye.mp3	1134
8398	Eye In The Sky	\N	media/songs/The-Alan-Parons-Project/Eye-In-The-Sky.mp3	1134
8399	Eye In The Sky v2	\N	media/songs/The-Alan-Parons-Project/Eye-In-The-Sky-v2.mp3	1134
8400	Eye v2	\N	media/songs/The-Alan-Parons-Project/Eye-v2.mp3	1134
8401	Games People Play	\N	media/songs/The-Alan-Parons-Project/Games-People-Play.mp3	1134
8402	Turn Of A Friendly Card Part 2	\N	media/songs/The-Alan-Parons-Project/Turn-Of-A-Friendly-Card-Part-2.mp3	1134
8403	Turn Of A Friendly Card Part 2 v2	\N	media/songs/The-Alan-Parons-Project/Turn-Of-A-Friendly-Card-Part-2-v2.mp3	1134
8404	House Of The Rising Sun	\N	media/songs/The-Animals/House-Of-The-Rising-Sun.mp3	1135
8405	House Of The Rising Sun v2	\N	media/songs/The-Animals/House-Of-The-Rising-Sun-v2.mp3	1135
8406	House Of The Rising Sun v3	\N	media/songs/The-Animals/House-Of-The-Rising-Sun-v3.mp3	1135
8407	House Of The Rising Sun v4	\N	media/songs/The-Animals/House-Of-The-Rising-Sun-v4.mp3	1135
8408	Never Too Late	\N	media/songs/The-Answer/Never-Too-Late.mp3	1136
8409	Sugar Sugar	\N	media/songs/The-Archies/Sugar-Sugar.mp3	1137
8410	Monster	\N	media/songs/The-Automatic/Monster.mp3	1138
8411	This Ship	\N	media/songs/The-Automatic/This-Ship.mp3	1138
8412	Caveman Rejoice	\N	media/songs/The-Bags/Caveman-Rejoice.mp3	1139
8413	The Weight	\N	media/songs/The-Band/The-Weight.mp3	1140
8414	A Day In The Life	\N	media/songs/The-Beatles/A-Day-In-The-Life.mp3	1141
8415	A Hard Days Night	\N	media/songs/The-Beatles/A-Hard-Days-Night.mp3	1141
8416	Abbey Road Medley	\N	media/songs/The-Beatles/Abbey-Road-Medley.mp3	1141
8417	Across The Universe	\N	media/songs/The-Beatles/Across-The-Universe.mp3	1141
8418	All My Loving	\N	media/songs/The-Beatles/All-My-Loving.mp3	1141
8419	All You Need Is Love	\N	media/songs/The-Beatles/All-You-Need-Is-Love.mp3	1141
8420	All You Need Is Love v2	\N	media/songs/The-Beatles/All-You-Need-Is-Love-v2.mp3	1141
8421	And I Love Her	\N	media/songs/The-Beatles/And-I-Love-Her.mp3	1141
8422	And Your Bird Can Sing	\N	media/songs/The-Beatles/And-Your-Bird-Can-Sing.mp3	1141
8423	And Your Bird Can Sing v2	\N	media/songs/The-Beatles/And-Your-Bird-Can-Sing-v2.mp3	1141
8424	And Your Bird Can Sing v3	\N	media/songs/The-Beatles/And-Your-Bird-Can-Sing-v3.mp3	1141
8425	Back In The Ussr	\N	media/songs/The-Beatles/Back-In-The-Ussr.mp3	1141
8426	Back In The USSR	\N	media/songs/The-Beatles/Back-In-The-USSR.mp3	1141
8427	Back In The Ussr v2	\N	media/songs/The-Beatles/Back-In-The-Ussr-v2.mp3	1141
8428	Back In The Ussr v3	\N	media/songs/The-Beatles/Back-In-The-Ussr-v3.mp3	1141
8429	Back In The Ussr v4	\N	media/songs/The-Beatles/Back-In-The-Ussr-v4.mp3	1141
8430	Because	\N	media/songs/The-Beatles/Because.mp3	1141
8431	Being For The Benefit Of Mr Kite	\N	media/songs/The-Beatles/Being-For-The-Benefit-Of-Mr-Kite.mp3	1141
8432	Birthday	\N	media/songs/The-Beatles/Birthday.mp3	1141
8433	Birthday v2	\N	media/songs/The-Beatles/Birthday-v2.mp3	1141
8434	Boys	\N	media/songs/The-Beatles/Boys.mp3	1141
8435	Cant Buy Me Love	\N	media/songs/The-Beatles/Cant-Buy-Me-Love.mp3	1141
8436	Cant Buy Me Love v2	\N	media/songs/The-Beatles/Cant-Buy-Me-Love-v2.mp3	1141
8437	Come Together	\N	media/songs/The-Beatles/Come-Together.mp3	1141
8438	Come Together v2	\N	media/songs/The-Beatles/Come-Together-v2.mp3	1141
8439	Come Together v3	\N	media/songs/The-Beatles/Come-Together-v3.mp3	1141
8440	Come Together v4	\N	media/songs/The-Beatles/Come-Together-v4.mp3	1141
8441	Come Together v5	\N	media/songs/The-Beatles/Come-Together-v5.mp3	1141
8442	Day Tripper	\N	media/songs/The-Beatles/Day-Tripper.mp3	1141
8443	Day Tripper v2	\N	media/songs/The-Beatles/Day-Tripper-v2.mp3	1141
8444	Day Tripper v3	\N	media/songs/The-Beatles/Day-Tripper-v3.mp3	1141
8445	Day Tripper v4	\N	media/songs/The-Beatles/Day-Tripper-v4.mp3	1141
8446	Day Tripper v5	\N	media/songs/The-Beatles/Day-Tripper-v5.mp3	1141
8447	Day Tripper v6	\N	media/songs/The-Beatles/Day-Tripper-v6.mp3	1141
8448	Dear Prudence	\N	media/songs/The-Beatles/Dear-Prudence.mp3	1141
8449	Dear Prudence v2	\N	media/songs/The-Beatles/Dear-Prudence-v2.mp3	1141
8450	Dont Let Me Down	\N	media/songs/The-Beatles/Dont-Let-Me-Down.mp3	1141
8451	Drive My Car	\N	media/songs/The-Beatles/Drive-My-Car.mp3	1141
8452	Drive My Car v2	\N	media/songs/The-Beatles/Drive-My-Car-v2.mp3	1141
8453	Drive My Car v3	\N	media/songs/The-Beatles/Drive-My-Car-v3.mp3	1141
8454	Drive My Car v4	\N	media/songs/The-Beatles/Drive-My-Car-v4.mp3	1141
8455	Eight Days A Week	\N	media/songs/The-Beatles/Eight-Days-A-Week.mp3	1141
8456	Eight Days A Week v2	\N	media/songs/The-Beatles/Eight-Days-A-Week-v2.mp3	1141
8457	Feel Fine	\N	media/songs/The-Beatles/Feel-Fine.mp3	1141
8458	Feel Fine v2	\N	media/songs/The-Beatles/Feel-Fine-v2.mp3	1141
8459	Fixing A Hole	\N	media/songs/The-Beatles/Fixing-A-Hole.mp3	1141
8460	Get Back	\N	media/songs/The-Beatles/Get-Back.mp3	1141
8461	Get Back v2	\N	media/songs/The-Beatles/Get-Back-v2.mp3	1141
8462	Getting Better	\N	media/songs/The-Beatles/Getting-Better.mp3	1141
8463	Hello Goodbye	\N	media/songs/The-Beatles/Hello-Goodbye.mp3	1141
8464	Help	\N	media/songs/The-Beatles/Help.mp3	1141
8465	Help v2	\N	media/songs/The-Beatles/Help-v2.mp3	1141
8466	Help v3	\N	media/songs/The-Beatles/Help-v3.mp3	1141
8467	Helter Skelter	\N	media/songs/The-Beatles/Helter-Skelter.mp3	1141
8468	Helter Skelter v2	\N	media/songs/The-Beatles/Helter-Skelter-v2.mp3	1141
8469	Helter Skelter v3	\N	media/songs/The-Beatles/Helter-Skelter-v3.mp3	1141
8470	Here Comes The Sun	\N	media/songs/The-Beatles/Here-Comes-The-Sun.mp3	1141
8471	Here Comes The Sun v2	\N	media/songs/The-Beatles/Here-Comes-The-Sun-v2.mp3	1141
8472	Here Comes The Sun v3	\N	media/songs/The-Beatles/Here-Comes-The-Sun-v3.mp3	1141
8473	Here Comes The Sun v4	\N	media/songs/The-Beatles/Here-Comes-The-Sun-v4.mp3	1141
8474	Here Comes The Sun v5	\N	media/songs/The-Beatles/Here-Comes-The-Sun-v5.mp3	1141
8475	Here There And Every Where	\N	media/songs/The-Beatles/Here-There-And-Every-Where.mp3	1141
8476	Hey Bulldog	\N	media/songs/The-Beatles/Hey-Bulldog.mp3	1141
8477	Hey Jude	\N	media/songs/The-Beatles/Hey-Jude.mp3	1141
8478	I Am The Walrus	\N	media/songs/The-Beatles/I-Am-The-Walrus.mp3	1141
8479	I Am The Walrus v2	\N	media/songs/The-Beatles/I-Am-The-Walrus-v2.mp3	1141
8480	I Feel Fine	\N	media/songs/The-Beatles/I-Feel-Fine.mp3	1141
8481	I Feel Fine v2	\N	media/songs/The-Beatles/I-Feel-Fine-v2.mp3	1141
8482	I Feel Fine v3	\N	media/songs/The-Beatles/I-Feel-Fine-v3.mp3	1141
8483	I Me Mine	\N	media/songs/The-Beatles/I-Me-Mine.mp3	1141
8484	I Saw Her Standing There	\N	media/songs/The-Beatles/I-Saw-Her-Standing-There.mp3	1141
8485	I Saw Her Standing There v2	\N	media/songs/The-Beatles/I-Saw-Her-Standing-There-v2.mp3	1141
8486	I Saw Her Standing There v3	\N	media/songs/The-Beatles/I-Saw-Her-Standing-There-v3.mp3	1141
8487	I Wanna Be Your Man	\N	media/songs/The-Beatles/I-Wanna-Be-Your-Man.mp3	1141
8488	I Want To Hold Your Hand	\N	media/songs/The-Beatles/I-Want-To-Hold-Your-Hand.mp3	1141
8489	I Want To Hold Your Hand v2	\N	media/songs/The-Beatles/I-Want-To-Hold-Your-Hand-v2.mp3	1141
8490	I Want You Shes So Heavy	\N	media/songs/The-Beatles/I-Want-You-Shes-So-Heavy.mp3	1141
8491	If I Needed Someone	\N	media/songs/The-Beatles/If-I-Needed-Someone.mp3	1141
8492	Im Looking Through You	\N	media/songs/The-Beatles/Im-Looking-Through-You.mp3	1141
8493	In My Life	\N	media/songs/The-Beatles/In-My-Life.mp3	1141
8494	In My Life v2	\N	media/songs/The-Beatles/In-My-Life-v2.mp3	1141
8495	Ive Got A Feeling	\N	media/songs/The-Beatles/Ive-Got-A-Feeling.mp3	1141
8496	Ive Got A Feeling v2	\N	media/songs/The-Beatles/Ive-Got-A-Feeling-v2.mp3	1141
8497	Let It Be	\N	media/songs/The-Beatles/Let-It-Be.mp3	1141
8498	Let It Be v2	\N	media/songs/The-Beatles/Let-It-Be-v2.mp3	1141
8499	Lovely Rita	\N	media/songs/The-Beatles/Lovely-Rita.mp3	1141
8500	Lucy In The Sky With Diamonds	\N	media/songs/The-Beatles/Lucy-In-The-Sky-With-Diamonds.mp3	1141
8501	Lucy In The Sky With Diamonds v2	\N	media/songs/The-Beatles/Lucy-In-The-Sky-With-Diamonds-v2.mp3	1141
8502	Maxwells Silver Hammer	\N	media/songs/The-Beatles/Maxwells-Silver-Hammer.mp3	1141
8503	Michelle	\N	media/songs/The-Beatles/Michelle.mp3	1141
8504	Mother Natures Son	\N	media/songs/The-Beatles/Mother-Natures-Son.mp3	1141
8505	Norwegian Wood	\N	media/songs/The-Beatles/Norwegian-Wood.mp3	1141
8506	Nowhere Man	\N	media/songs/The-Beatles/Nowhere-Man.mp3	1141
8507	Nowhere Man v2	\N	media/songs/The-Beatles/Nowhere-Man-v2.mp3	1141
8508	Ob La Di Ob La Da	\N	media/songs/The-Beatles/Ob-La-Di-Ob-La-Da.mp3	1141
8509	Octopus Garden	\N	media/songs/The-Beatles/Octopus-Garden.mp3	1141
8510	Octopus Garden v2	\N	media/songs/The-Beatles/Octopus-Garden-v2.mp3	1141
8511	Oh Darling	\N	media/songs/The-Beatles/Oh-Darling.mp3	1141
8512	Paperback Writer	\N	media/songs/The-Beatles/Paperback-Writer.mp3	1141
8513	Paperback Writer v2	\N	media/songs/The-Beatles/Paperback-Writer-v2.mp3	1141
8514	Please Please Me	\N	media/songs/The-Beatles/Please-Please-Me.mp3	1141
8515	Rain	\N	media/songs/The-Beatles/Rain.mp3	1141
8516	Revolution	\N	media/songs/The-Beatles/Revolution.mp3	1141
8517	Revolution v2	\N	media/songs/The-Beatles/Revolution-v2.mp3	1141
8518	Revolution v3	\N	media/songs/The-Beatles/Revolution-v3.mp3	1141
8519	Run For Your Life	\N	media/songs/The-Beatles/Run-For-Your-Life.mp3	1141
8520	Sgt Pepper	\N	media/songs/The-Beatles/Sgt-Pepper.mp3	1141
8521	Sgt Peppers Lonely Hearts Club Band Reprise	\N	media/songs/The-Beatles/Sgt-Peppers-Lonely-Hearts-Club-Band-Reprise.mp3	1141
8522	Sgt Peppers Lonely Hearts Club Band With A Little Help	\N	media/songs/The-Beatles/Sgt-Peppers-Lonely-Hearts-Club-Band-With-A-Little-Help.mp3	1141
8523	Something	\N	media/songs/The-Beatles/Something.mp3	1141
8524	Something v2	\N	media/songs/The-Beatles/Something-v2.mp3	1141
8525	Something v3	\N	media/songs/The-Beatles/Something-v3.mp3	1141
8526	Something v4	\N	media/songs/The-Beatles/Something-v4.mp3	1141
8527	Something v5	\N	media/songs/The-Beatles/Something-v5.mp3	1141
8528	Something v6	\N	media/songs/The-Beatles/Something-v6.mp3	1141
8529	Taxman	\N	media/songs/The-Beatles/Taxman.mp3	1141
8530	Taxman v2	\N	media/songs/The-Beatles/Taxman-v2.mp3	1141
8531	Taxman v3	\N	media/songs/The-Beatles/Taxman-v3.mp3	1141
8532	The Ballad Of John And Yoko	\N	media/songs/The-Beatles/The-Ballad-Of-John-And-Yoko.mp3	1141
8533	The Word	\N	media/songs/The-Beatles/The-Word.mp3	1141
8534	Think For Yourself	\N	media/songs/The-Beatles/Think-For-Yourself.mp3	1141
8535	Ticket To Ride	\N	media/songs/The-Beatles/Ticket-To-Ride.mp3	1141
8536	Ticket To Ride v2	\N	media/songs/The-Beatles/Ticket-To-Ride-v2.mp3	1141
8537	Till There Was You	\N	media/songs/The-Beatles/Till-There-Was-You.mp3	1141
8538	Till There Was You v2	\N	media/songs/The-Beatles/Till-There-Was-You-v2.mp3	1141
8539	Till There Was You v3	\N	media/songs/The-Beatles/Till-There-Was-You-v3.mp3	1141
8540	Twist And Shout	\N	media/songs/The-Beatles/Twist-And-Shout.mp3	1141
8541	Twist And Shout v2	\N	media/songs/The-Beatles/Twist-And-Shout-v2.mp3	1141
8542	Twist And Shout v3	\N	media/songs/The-Beatles/Twist-And-Shout-v3.mp3	1141
8543	Wait	\N	media/songs/The-Beatles/Wait.mp3	1141
8544	We Can Work It Out	\N	media/songs/The-Beatles/We-Can-Work-It-Out.mp3	1141
8545	We Can Work It Out v2	\N	media/songs/The-Beatles/We-Can-Work-It-Out-v2.mp3	1141
8546	What Goes On	\N	media/songs/The-Beatles/What-Goes-On.mp3	1141
8547	When Im Sixty Four	\N	media/songs/The-Beatles/When-Im-Sixty-Four.mp3	1141
8548	While My Guitar Gently Weeps	\N	media/songs/The-Beatles/While-My-Guitar-Gently-Weeps.mp3	1141
8549	While My Guitar Gently Weeps v2	\N	media/songs/The-Beatles/While-My-Guitar-Gently-Weeps-v2.mp3	1141
8550	While My Guitar Gently Weeps v3	\N	media/songs/The-Beatles/While-My-Guitar-Gently-Weeps-v3.mp3	1141
8551	While My Guitar Gently Weeps v4	\N	media/songs/The-Beatles/While-My-Guitar-Gently-Weeps-v4.mp3	1141
8552	Within Without You Tomorrow Never Knows	\N	media/songs/The-Beatles/Within-Without-You-Tomorrow-Never-Knows.mp3	1141
8553	Yellow Submarine	\N	media/songs/The-Beatles/Yellow-Submarine.mp3	1141
8554	Yer Blues	\N	media/songs/The-Beatles/Yer-Blues.mp3	1141
8555	Yesterday	\N	media/songs/The-Beatles/Yesterday.mp3	1141
8556	Yesterday v2	\N	media/songs/The-Beatles/Yesterday-v2.mp3	1141
8557	Yesterday v3	\N	media/songs/The-Beatles/Yesterday-v3.mp3	1141
8558	You Cant Do That	\N	media/songs/The-Beatles/You-Cant-Do-That.mp3	1141
8559	Hard To Handle	\N	media/songs/The-Black-Crows/Hard-To-Handle.mp3	1142
8560	She Talks To Angels	\N	media/songs/The-Black-Crows/She-Talks-To-Angels.mp3	1142
8561	Gold On The Ceiling	\N	media/songs/The-Black-Keys/Gold-On-The-Ceiling.mp3	1143
8562	Gold On The Ceiling v2	\N	media/songs/The-Black-Keys/Gold-On-The-Ceiling-v2.mp3	1143
8563	Lonely Boy	\N	media/songs/The-Black-Keys/Lonely-Boy.mp3	1143
8564	Your Touch	\N	media/songs/The-Black-Keys/Your-Touch.mp3	1143
8565	Six Days A Week	\N	media/songs/The-Bronx/Six-Days-A-Week.mp3	1144
8566	Bounce	\N	media/songs/The-Cab/Bounce.mp3	1145
8567	Bounce v2	\N	media/songs/The-Cab/Bounce-v2.mp3	1145
8568	Get It On	\N	media/songs/The-Chevelles/Get-It-On.mp3	1146
8569	Brand New Cadillac	\N	media/songs/The-Clash/Brand-New-Cadillac.mp3	1147
8570	Complete Control	\N	media/songs/The-Clash/Complete-Control.mp3	1147
8571	I Fought The Law	\N	media/songs/The-Clash/I-Fought-The-Law.mp3	1147
8572	I Fought The Law v2	\N	media/songs/The-Clash/I-Fought-The-Law-v2.mp3	1147
8573	London Calling	\N	media/songs/The-Clash/London-Calling.mp3	1147
8574	Rock The Casbah	\N	media/songs/The-Clash/Rock-The-Casbah.mp3	1147
8575	Rock The Casbah v2	\N	media/songs/The-Clash/Rock-The-Casbah-v2.mp3	1147
8576	Safe European Home	\N	media/songs/The-Clash/Safe-European-Home.mp3	1147
8577	Should I Stay Or Should I Go	\N	media/songs/The-Clash/Should-I-Stay-Or-Should-I-Go.mp3	1147
8578	Train In Vain	\N	media/songs/The-Clash/Train-In-Vain.mp3	1147
8579	Mustang Sally	\N	media/songs/The-Commitments/Mustang-Sally.mp3	1148
8580	Brick House	\N	media/songs/The-Commodores/Brick-House.mp3	1149
8581	Easy	\N	media/songs/The-Commodores/Easy.mp3	1149
8582	Easy Like Sunday Morning	\N	media/songs/The-Commodores/Easy-Like-Sunday-Morning.mp3	1149
8583	Three Times A Lady	\N	media/songs/The-Commodores/Three-Times-A-Lady.mp3	1149
8584	Dreaming Of You	\N	media/songs/The-Coral/Dreaming-Of-You.mp3	1150
8585	Zombie	\N	media/songs/The-Cranberries/Zombie.mp3	1151
8586	Fire Woman	\N	media/songs/The-Cult/Fire-Woman.mp3	1152
8587	Fire Woman v2	\N	media/songs/The-Cult/Fire-Woman-v2.mp3	1152
8588	Fire Woman v3	\N	media/songs/The-Cult/Fire-Woman-v3.mp3	1152
8589	Lil Devil	\N	media/songs/The-Cult/Lil-Devil.mp3	1152
8590	Love Removal Machine	\N	media/songs/The-Cult/Love-Removal-Machine.mp3	1152
8591	Love Removal Machine v2	\N	media/songs/The-Cult/Love-Removal-Machine-v2.mp3	1152
8592	Love Removal Machine v3	\N	media/songs/The-Cult/Love-Removal-Machine-v3.mp3	1152
8593	Peace Dog	\N	media/songs/The-Cult/Peace-Dog.mp3	1152
8594	She Sells Sanctuary	\N	media/songs/The-Cult/She-Sells-Sanctuary.mp3	1152
8595	She Sells Sanctuary v2	\N	media/songs/The-Cult/She-Sells-Sanctuary-v2.mp3	1152
8596	She Sells Sanctuary v3	\N	media/songs/The-Cult/She-Sells-Sanctuary-v3.mp3	1152
8597	She Sells Sanctuary v4	\N	media/songs/The-Cult/She-Sells-Sanctuary-v4.mp3	1152
8598	She Sells Sanctuary v5	\N	media/songs/The-Cult/She-Sells-Sanctuary-v5.mp3	1152
8599	Wild Flower	\N	media/songs/The-Cult/Wild-Flower.mp3	1152
8600	Wild Flower v2	\N	media/songs/The-Cult/Wild-Flower-v2.mp3	1152
8601	Boys Dont Cry	\N	media/songs/The-Cure/Boys-Dont-Cry.mp3	1153
8602	Close To Me	\N	media/songs/The-Cure/Close-To-Me.mp3	1153
8603	Fascination Street	\N	media/songs/The-Cure/Fascination-Street.mp3	1153
8604	Just Like Heaven	\N	media/songs/The-Cure/Just-Like-Heaven.mp3	1153
8605	Lullaby	\N	media/songs/The-Cure/Lullaby.mp3	1153
8606	Black Shuck	\N	media/songs/The-Darkness/Black-Shuck.mp3	1154
8607	Christmas Time	\N	media/songs/The-Darkness/Christmas-Time.mp3	1154
8608	Friday Night	\N	media/songs/The-Darkness/Friday-Night.mp3	1154
8609	Growing On Me	\N	media/songs/The-Darkness/Growing-On-Me.mp3	1154
8610	Growing On Me v2	\N	media/songs/The-Darkness/Growing-On-Me-v2.mp3	1154
8611	Growing On Me v3	\N	media/songs/The-Darkness/Growing-On-Me-v3.mp3	1154
8612	Growing On Me v4	\N	media/songs/The-Darkness/Growing-On-Me-v4.mp3	1154
8613	I Believe In A Thing Called Love	\N	media/songs/The-Darkness/I-Believe-In-A-Thing-Called-Love.mp3	1154
8614	I Believe In A Thing Called Love v2	\N	media/songs/The-Darkness/I-Believe-In-A-Thing-Called-Love-v2.mp3	1154
8615	I Believe In A Thing Called Love v3	\N	media/songs/The-Darkness/I-Believe-In-A-Thing-Called-Love-v3.mp3	1154
8616	I Believe In A Thing Called Love v4	\N	media/songs/The-Darkness/I-Believe-In-A-Thing-Called-Love-v4.mp3	1154
8617	Love Is Only A Feeling	\N	media/songs/The-Darkness/Love-Is-Only-A-Feeling.mp3	1154
8618	Love Is Only A Feeling v2	\N	media/songs/The-Darkness/Love-Is-Only-A-Feeling-v2.mp3	1154
8619	Love Is Only A Feeling v3	\N	media/songs/The-Darkness/Love-Is-Only-A-Feeling-v3.mp3	1154
8620	Love On The Rocks With No Ice	\N	media/songs/The-Darkness/Love-On-The-Rocks-With-No-Ice.mp3	1154
8621	The Best Of Me	\N	media/songs/The-Darkness/The-Best-Of-Me.mp3	1154
8622	The Best Of Me v2	\N	media/songs/The-Darkness/The-Best-Of-Me-v2.mp3	1154
8623	Thing Called Love	\N	media/songs/The-Darkness/Thing-Called-Love.mp3	1154
8624	Be Quiet And Drive	\N	media/songs/The-Deftones/Be-Quiet-And-Drive.mp3	1155
8625	Be Quiet And Drive v2	\N	media/songs/The-Deftones/Be-Quiet-And-Drive-v2.mp3	1155
8626	Hole In The Earth	\N	media/songs/The-Deftones/Hole-In-The-Earth.mp3	1155
8627	Minerva	\N	media/songs/The-Deftones/Minerva.mp3	1155
8628	Minerva v2	\N	media/songs/The-Deftones/Minerva-v2.mp3	1155
8629	New Kid In School	\N	media/songs/The-Donnas/New-Kid-In-School.mp3	1156
8630	Take It Off	\N	media/songs/The-Donnas/Take-It-Off.mp3	1156
8631	Black Water	\N	media/songs/The-Doobie-Brothers/Black-Water.mp3	1157
8632	Black Water v2	\N	media/songs/The-Doobie-Brothers/Black-Water-v2.mp3	1157
8633	China Grove	\N	media/songs/The-Doobie-Brothers/China-Grove.mp3	1157
8634	China Grove v2	\N	media/songs/The-Doobie-Brothers/China-Grove-v2.mp3	1157
8635	China Grove v3	\N	media/songs/The-Doobie-Brothers/China-Grove-v3.mp3	1157
8636	China Grove v4	\N	media/songs/The-Doobie-Brothers/China-Grove-v4.mp3	1157
8637	Dark Eyed Cajun Woman	\N	media/songs/The-Doobie-Brothers/Dark-Eyed-Cajun-Woman.mp3	1157
8638	Evil Woman	\N	media/songs/The-Doobie-Brothers/Evil-Woman.mp3	1157
8639	Listen To The Music	\N	media/songs/The-Doobie-Brothers/Listen-To-The-Music.mp3	1157
8640	Listen To The Music v2	\N	media/songs/The-Doobie-Brothers/Listen-To-The-Music-v2.mp3	1157
8641	Listen To The Music v3	\N	media/songs/The-Doobie-Brothers/Listen-To-The-Music-v3.mp3	1157
8642	Long Train Running	\N	media/songs/The-Doobie-Brothers/Long-Train-Running.mp3	1157
8643	Long Train Running v2	\N	media/songs/The-Doobie-Brothers/Long-Train-Running-v2.mp3	1157
8644	Long Train Running v3	\N	media/songs/The-Doobie-Brothers/Long-Train-Running-v3.mp3	1157
8645	Long Train Running v4	\N	media/songs/The-Doobie-Brothers/Long-Train-Running-v4.mp3	1157
8646	Long Train Running v5	\N	media/songs/The-Doobie-Brothers/Long-Train-Running-v5.mp3	1157
8647	Without You	\N	media/songs/The-Doobie-Brothers/Without-You.mp3	1157
8648	Back Door Man	\N	media/songs/The-Doors/Back-Door-Man.mp3	1158
8649	Break On Through	\N	media/songs/The-Doors/Break-On-Through.mp3	1158
8650	Break On Through To The Other Side	\N	media/songs/The-Doors/Break-On-Through-To-The-Other-Side.mp3	1158
8651	Break On Through v2	\N	media/songs/The-Doors/Break-On-Through-v2.mp3	1158
8652	Five To One	\N	media/songs/The-Doors/Five-To-One.mp3	1158
8653	Hello I Love You	\N	media/songs/The-Doors/Hello-I-Love-You.mp3	1158
8654	Hello I Love You v2	\N	media/songs/The-Doors/Hello-I-Love-You-v2.mp3	1158
8655	La Woman	\N	media/songs/The-Doors/La-Woman.mp3	1158
8656	La Woman v2	\N	media/songs/The-Doors/La-Woman-v2.mp3	1158
8657	La Woman v3	\N	media/songs/The-Doors/La-Woman-v3.mp3	1158
8658	Light My Fire	\N	media/songs/The-Doors/Light-My-Fire.mp3	1158
8659	Light My Fire v2	\N	media/songs/The-Doors/Light-My-Fire-v2.mp3	1158
8660	Light My Fire v3	\N	media/songs/The-Doors/Light-My-Fire-v3.mp3	1158
8661	Love Her Madly	\N	media/songs/The-Doors/Love-Her-Madly.mp3	1158
8662	Love Her Madly v2	\N	media/songs/The-Doors/Love-Her-Madly-v2.mp3	1158
8663	Love Her Madly v3	\N	media/songs/The-Doors/Love-Her-Madly-v3.mp3	1158
8664	Love Her Madly v4	\N	media/songs/The-Doors/Love-Her-Madly-v4.mp3	1158
8665	Love Her Madly v5	\N	media/songs/The-Doors/Love-Her-Madly-v5.mp3	1158
8666	Love Me Two Times	\N	media/songs/The-Doors/Love-Me-Two-Times.mp3	1158
8667	Love Me Two Times v2	\N	media/songs/The-Doors/Love-Me-Two-Times-v2.mp3	1158
8668	Love Me Two Times v3	\N	media/songs/The-Doors/Love-Me-Two-Times-v3.mp3	1158
8669	Love Me Two Times v4	\N	media/songs/The-Doors/Love-Me-Two-Times-v4.mp3	1158
8670	Love Me Two Times v5	\N	media/songs/The-Doors/Love-Me-Two-Times-v5.mp3	1158
8671	Love Street	\N	media/songs/The-Doors/Love-Street.mp3	1158
8672	Peace Frog	\N	media/songs/The-Doors/Peace-Frog.mp3	1158
8673	People Are Strange	\N	media/songs/The-Doors/People-Are-Strange.mp3	1158
8674	People Are Strange v2	\N	media/songs/The-Doors/People-Are-Strange-v2.mp3	1158
8675	Riders On The Storm	\N	media/songs/The-Doors/Riders-On-The-Storm.mp3	1158
8676	Riders On The Storm v2	\N	media/songs/The-Doors/Riders-On-The-Storm-v2.mp3	1158
8677	Riders On The Storm v3	\N	media/songs/The-Doors/Riders-On-The-Storm-v3.mp3	1158
8678	Riders On The Storm v4	\N	media/songs/The-Doors/Riders-On-The-Storm-v4.mp3	1158
8679	Riders On The Storm v5	\N	media/songs/The-Doors/Riders-On-The-Storm-v5.mp3	1158
8680	Roadhouse Blues	\N	media/songs/The-Doors/Roadhouse-Blues.mp3	1158
8681	Roadhouse Blues v2	\N	media/songs/The-Doors/Roadhouse-Blues-v2.mp3	1158
8682	Roadhouse Blues v3	\N	media/songs/The-Doors/Roadhouse-Blues-v3.mp3	1158
8683	Soul Kitchen	\N	media/songs/The-Doors/Soul-Kitchen.mp3	1158
8684	Spanish Caravan	\N	media/songs/The-Doors/Spanish-Caravan.mp3	1158
8685	Touch Me	\N	media/songs/The-Doors/Touch-Me.mp3	1158
8686	Waiting For The Sun	\N	media/songs/The-Doors/Waiting-For-The-Sun.mp3	1158
8687	You Dont Need Meat Dont Go No Further	\N	media/songs/The-Doors/You-Dont-Need-Meat-Dont-Go-No-Further.mp3	1158
8688	You Make Me Real	\N	media/songs/The-Doors/You-Make-Me-Real.mp3	1158
8689	Send A Little Love Token	\N	media/songs/The-Duke-Spirit/Send-A-Little-Love-Token.mp3	1159
8690	Already Gone	\N	media/songs/The-Eagles/Already-Gone.mp3	1160
8691	Best Of My Love	\N	media/songs/The-Eagles/Best-Of-My-Love.mp3	1160
8692	Best Of My Love v2	\N	media/songs/The-Eagles/Best-Of-My-Love-v2.mp3	1160
8693	Desperado	\N	media/songs/The-Eagles/Desperado.mp3	1160
8694	Desperado v2	\N	media/songs/The-Eagles/Desperado-v2.mp3	1160
8695	Hotel California	\N	media/songs/The-Eagles/Hotel-California.mp3	1160
8696	Hotel California  Acoustic	\N	media/songs/The-Eagles/Hotel-California--Acoustic.mp3	1160
8697	Hotel California  Acoustic v2	\N	media/songs/The-Eagles/Hotel-California--Acoustic-v2.mp3	1160
8698	Hotel California v10	\N	media/songs/The-Eagles/Hotel-California-v10.mp3	1160
8699	Hotel California v2	\N	media/songs/The-Eagles/Hotel-California-v2.mp3	1160
8700	Hotel California v3	\N	media/songs/The-Eagles/Hotel-California-v3.mp3	1160
8701	Hotel California v4	\N	media/songs/The-Eagles/Hotel-California-v4.mp3	1160
8702	Hotel California v5	\N	media/songs/The-Eagles/Hotel-California-v5.mp3	1160
8703	Hotel California v6	\N	media/songs/The-Eagles/Hotel-California-v6.mp3	1160
8704	Hotel California v7	\N	media/songs/The-Eagles/Hotel-California-v7.mp3	1160
8705	Hotel California v8	\N	media/songs/The-Eagles/Hotel-California-v8.mp3	1160
8706	Hotel California v9	\N	media/songs/The-Eagles/Hotel-California-v9.mp3	1160
8707	How Long	\N	media/songs/The-Eagles/How-Long.mp3	1160
8708	How Long v2	\N	media/songs/The-Eagles/How-Long-v2.mp3	1160
8709	I Cant Tell You Why	\N	media/songs/The-Eagles/I-Cant-Tell-You-Why.mp3	1160
8710	I Cant Tell You Why v2	\N	media/songs/The-Eagles/I-Cant-Tell-You-Why-v2.mp3	1160
8711	I Cant Tell You Why v3	\N	media/songs/The-Eagles/I-Cant-Tell-You-Why-v3.mp3	1160
8712	I Cant Tell You Why v4	\N	media/songs/The-Eagles/I-Cant-Tell-You-Why-v4.mp3	1160
8713	I Dreamed There Was No War	\N	media/songs/The-Eagles/I-Dreamed-There-Was-No-War.mp3	1160
8714	Life In The Fast Lane	\N	media/songs/The-Eagles/Life-In-The-Fast-Lane.mp3	1160
8715	Life In The Fast Lane v2	\N	media/songs/The-Eagles/Life-In-The-Fast-Lane-v2.mp3	1160
8716	Life In The Fast Lane v3	\N	media/songs/The-Eagles/Life-In-The-Fast-Lane-v3.mp3	1160
8717	Lifes Been Good	\N	media/songs/The-Eagles/Lifes-Been-Good.mp3	1160
8718	Lyin Eyes	\N	media/songs/The-Eagles/Lyin-Eyes.mp3	1160
8719	Lyin Eyes	\N	media/songs/The-Eagles/Lyin-Eyes.mp3	1160
8720	New Kid In Town	\N	media/songs/The-Eagles/New-Kid-In-Town.mp3	1160
8721	New Kid In Town v2	\N	media/songs/The-Eagles/New-Kid-In-Town-v2.mp3	1160
8722	One Of These Nights	\N	media/songs/The-Eagles/One-Of-These-Nights.mp3	1160
8723	One Of These Nights v2	\N	media/songs/The-Eagles/One-Of-These-Nights-v2.mp3	1160
8724	One Of These Nights v3	\N	media/songs/The-Eagles/One-Of-These-Nights-v3.mp3	1160
8725	One Of These Nights v4	\N	media/songs/The-Eagles/One-Of-These-Nights-v4.mp3	1160
8726	Peaceful Easy Feeling	\N	media/songs/The-Eagles/Peaceful-Easy-Feeling.mp3	1160
8727	Please Come Home For Christmas	\N	media/songs/The-Eagles/Please-Come-Home-For-Christmas.mp3	1160
8728	Please Come Home For Christmas v2	\N	media/songs/The-Eagles/Please-Come-Home-For-Christmas-v2.mp3	1160
8729	Take It Easy	\N	media/songs/The-Eagles/Take-It-Easy.mp3	1160
8730	Take It Easy v2	\N	media/songs/The-Eagles/Take-It-Easy-v2.mp3	1160
8731	Take It Easy v3	\N	media/songs/The-Eagles/Take-It-Easy-v3.mp3	1160
8732	Take It Easy v4	\N	media/songs/The-Eagles/Take-It-Easy-v4.mp3	1160
8733	Tequila Sunrise	\N	media/songs/The-Eagles/Tequila-Sunrise.mp3	1160
8734	Tequila Sunrise v2	\N	media/songs/The-Eagles/Tequila-Sunrise-v2.mp3	1160
8735	Tequila Sunrise v3	\N	media/songs/The-Eagles/Tequila-Sunrise-v3.mp3	1160
8736	Tequila Sunrise v4	\N	media/songs/The-Eagles/Tequila-Sunrise-v4.mp3	1160
8737	Victim Of Love	\N	media/songs/The-Eagles/Victim-Of-Love.mp3	1160
8738	Victim Of Love v2	\N	media/songs/The-Eagles/Victim-Of-Love-v2.mp3	1160
8739	Victim Of Love v3	\N	media/songs/The-Eagles/Victim-Of-Love-v3.mp3	1160
8740	Aggro	\N	media/songs/The-Enemy/Aggro.mp3	1161
8741	Let It Be Me	\N	media/songs/The-Every-Brothers/Let-It-Be-Me.mp3	1162
8742	Hey You	\N	media/songs/The-Exies/Hey-You.mp3	1163
8743	Sacrifice	\N	media/songs/The-Expendables/Sacrifice.mp3	1164
8744	Stay With Me	\N	media/songs/The-Faces/Stay-With-Me.mp3	1165
8745	Stay With Me	\N	media/songs/The-Faces/Stay-With-Me.mp3	1165
8746	Stay With Me v2	\N	media/songs/The-Faces/Stay-With-Me-v2.mp3	1165
8747	5 Vice	\N	media/songs/The-Floor-Is-Made-Of-Lava/5-Vice.mp3	1166
8748	Do Your Sister	\N	media/songs/The-Floor-Is-Made-Of-Lava/Do-Your-Sister.mp3	1166
8749	The Breakup Song	\N	media/songs/The-Greg-Kihn-Band/The-Breakup-Song.mp3	1167
8750	American Woman	\N	media/songs/The-Guess-Who/American-Woman.mp3	1168
8751	American Woman v2	\N	media/songs/The-Guess-Who/American-Woman-v2.mp3	1168
8752	American Woman v3	\N	media/songs/The-Guess-Who/American-Woman-v3.mp3	1168
8753	Heartbroken Bopper	\N	media/songs/The-Guess-Who/Heartbroken-Bopper.mp3	1168
8754	No Sugar Tonight	\N	media/songs/The-Guess-Who/No-Sugar-Tonight.mp3	1168
8755	No Time	\N	media/songs/The-Guess-Who/No-Time.mp3	1168
8756	Hopeless Case Of A Kid In Denial	\N	media/songs/The-Hellacopters/Hopeless-Case-Of-A-Kid-In-Denial.mp3	1169
8757	Im In The Band	\N	media/songs/The-Hellacopters/Im-In-The-Band.mp3	1169
8758	Toys And Flavors	\N	media/songs/The-Hellacopters/Toys-And-Flavors.mp3	1169
8759	Die All Right	\N	media/songs/The-Hives/Die-All-Right.mp3	1170
8760	Die All Right v2	\N	media/songs/The-Hives/Die-All-Right-v2.mp3	1170
8761	Main Offender	\N	media/songs/The-Hives/Main-Offender.mp3	1170
8762	Main Offender v2	\N	media/songs/The-Hives/Main-Offender-v2.mp3	1170
8763	Tick Tick Boom	\N	media/songs/The-Hives/Tick-Tick-Boom.mp3	1170
8764	Long Cool Woman	\N	media/songs/The-Hollies/Long-Cool-Woman.mp3	1171
8765	Long Cool Woman v2	\N	media/songs/The-Hollies/Long-Cool-Woman-v2.mp3	1171
8766	The Air That I Breathe	\N	media/songs/The-Hollies/The-Air-That-I-Breathe.mp3	1171
8767	Dont You Want Me	\N	media/songs/The-Human-League/Dont-You-Want-Me.mp3	1172
8768	Get Your Rock On	\N	media/songs/The-Janitors/Get-Your-Rock-On.mp3	1173
8769	Angel Eyes	\N	media/songs/The-Jeff-Healey-Band/Angel-Eyes.mp3	1174
8770	All The Pretty Faces	\N	media/songs/The-Killers/All-The-Pretty-Faces.mp3	1175
8771	Bones	\N	media/songs/The-Killers/Bones.mp3	1175
8772	Human	\N	media/songs/The-Killers/Human.mp3	1175
8773	Losing Touch	\N	media/songs/The-Killers/Losing-Touch.mp3	1175
8774	Losing Touch v2	\N	media/songs/The-Killers/Losing-Touch-v2.mp3	1175
8775	Mr Brightside	\N	media/songs/The-Killers/Mr-Brightside.mp3	1175
8776	Mr Brightside v2	\N	media/songs/The-Killers/Mr-Brightside-v2.mp3	1175
8777	Smile Like You Mean It	\N	media/songs/The-Killers/Smile-Like-You-Mean-It.mp3	1175
8778	Smile Like You Mean It v2	\N	media/songs/The-Killers/Smile-Like-You-Mean-It-v2.mp3	1175
8779	Smile Like You Mean It v3	\N	media/songs/The-Killers/Smile-Like-You-Mean-It-v3.mp3	1175
8780	Somebody Told Me	\N	media/songs/The-Killers/Somebody-Told-Me.mp3	1175
8781	Somebody Told Me Live	\N	media/songs/The-Killers/Somebody-Told-Me-Live.mp3	1175
8782	Somebody Told Me v2	\N	media/songs/The-Killers/Somebody-Told-Me-v2.mp3	1175
8783	Spaceman	\N	media/songs/The-Killers/Spaceman.mp3	1175
8784	When You Were Young	\N	media/songs/The-Killers/When-You-Were-Young.mp3	1175
8785	Louie Louie	\N	media/songs/The-Kingsmen/Louie-Louie.mp3	1176
8786	All Day And All Night	\N	media/songs/The-Kinks/All-Day-And-All-Night.mp3	1177
8787	All Day And All Of The Night	\N	media/songs/The-Kinks/All-Day-And-All-Of-The-Night.mp3	1177
8788	All Day And All Of The Night v2	\N	media/songs/The-Kinks/All-Day-And-All-Of-The-Night-v2.mp3	1177
8789	Destroyer	\N	media/songs/The-Kinks/Destroyer.mp3	1177
8790	My Sharona	\N	media/songs/The-Knack/My-Sharona.mp3	1178
8791	My Sharona v2	\N	media/songs/The-Knack/My-Sharona-v2.mp3	1178
8792	My Sharona v3	\N	media/songs/The-Knack/My-Sharona-v3.mp3	1178
8793	My Sharona v4	\N	media/songs/The-Knack/My-Sharona-v4.mp3	1178
8794	My Sharona v5	\N	media/songs/The-Knack/My-Sharona-v5.mp3	1178
8795	My Sharona v6	\N	media/songs/The-Knack/My-Sharona-v6.mp3	1178
8796	My Sharona v7	\N	media/songs/The-Knack/My-Sharona-v7.mp3	1178
8797	29 Fingers	\N	media/songs/The-Konks/29-Fingers.mp3	1179
8798	Naive	\N	media/songs/The-Kooks/Naive.mp3	1180
8799	Carry Me Home	\N	media/songs/The-Living-End/Carry-Me-Home.mp3	1181
8800	Prisoner Of Society	\N	media/songs/The-Living-End/Prisoner-Of-Society.mp3	1181
8801	Prisoner Of Society v2	\N	media/songs/The-Living-End/Prisoner-Of-Society-v2.mp3	1181
8802	Drunkship	\N	media/songs/The-Mars-Volta/Drunkship.mp3	1182
8803	Lvia Lviaquez	\N	media/songs/The-Mars-Volta/Lvia-Lviaquez.mp3	1182
8804	Daydream Believer	\N	media/songs/The-Monkees/Daydream-Believer.mp3	1183
8805	Last Train To Clarksville	\N	media/songs/The-Monkees/Last-Train-To-Clarksville.mp3	1183
8806	Shades Of Gray	\N	media/songs/The-Monkees/Shades-Of-Gray.mp3	1183
8807	Shades Of Gray v2	\N	media/songs/The-Monkees/Shades-Of-Gray-v2.mp3	1183
8808	Red Tandy	\N	media/songs/The-Mother-Hips/Red-Tandy.mp3	1184
8809	Time Sick Son Of A Grizzly Bear	\N	media/songs/The-Mother-Hips/Time-Sick-Son-Of-A-Grizzly-Bear.mp3	1184
8810	Time We Had	\N	media/songs/The-Mother-Hips/Time-We-Had.mp3	1184
8811	Kids In America	\N	media/songs/The-Motorettes/Kids-In-America.mp3	1185
8812	Kids In America	\N	media/songs/The-Muffs/Kids-In-America.mp3	1186
8813	Outer Space	\N	media/songs/The-Muffs/Outer-Space.mp3	1186
8814	Green Grass	\N	media/songs/The-Outlaws/Green-Grass.mp3	1187
8815	Green Grass And High Tides	\N	media/songs/The-Outlaws/Green-Grass-And-High-Tides.mp3	1187
8816	Your Love	\N	media/songs/The-Outlaws/Your-Love.mp3	1187
8817	Crackity Jones	\N	media/songs/The-Pixies/Crackity-Jones.mp3	1188
8818	Dead	\N	media/songs/The-Pixies/Dead.mp3	1188
8819	Debaser	\N	media/songs/The-Pixies/Debaser.mp3	1188
8820	Debaser v2	\N	media/songs/The-Pixies/Debaser-v2.mp3	1188
8821	Gouge Away	\N	media/songs/The-Pixies/Gouge-Away.mp3	1188
8822	Here Comes Your Man	\N	media/songs/The-Pixies/Here-Comes-Your-Man.mp3	1188
8823	Here Comes Your Man v2	\N	media/songs/The-Pixies/Here-Comes-Your-Man-v2.mp3	1188
8824	Hey	\N	media/songs/The-Pixies/Hey.mp3	1188
8825	I Bleed	\N	media/songs/The-Pixies/I-Bleed.mp3	1188
8826	La La Love You	\N	media/songs/The-Pixies/La-La-Love-You.mp3	1188
8827	Monkey Gone To Heaven	\N	media/songs/The-Pixies/Monkey-Gone-To-Heaven.mp3	1188
8828	Mr Grieves	\N	media/songs/The-Pixies/Mr-Grieves.mp3	1188
8829	Number 13 Baby	\N	media/songs/The-Pixies/Number-13-Baby.mp3	1188
8830	Silver	\N	media/songs/The-Pixies/Silver.mp3	1188
8831	Tame	\N	media/songs/The-Pixies/Tame.mp3	1188
8832	The Sad Punk	\N	media/songs/The-Pixies/The-Sad-Punk.mp3	1188
8833	There Goes My Gun	\N	media/songs/The-Pixies/There-Goes-My-Gun.mp3	1188
8834	Velouria	\N	media/songs/The-Pixies/Velouria.mp3	1188
8835	Wave Of Mutilation	\N	media/songs/The-Pixies/Wave-Of-Mutilation.mp3	1188
8836	Wave Of Mutilation v2	\N	media/songs/The-Pixies/Wave-Of-Mutilation-v2.mp3	1188
8837	Where Is My Mind	\N	media/songs/The-Pixies/Where-Is-My-Mind.mp3	1188
8838	Cant Stand Losing You	\N	media/songs/The-Police/Cant-Stand-Losing-You.mp3	1189
8839	Cant Stand Losing You v2	\N	media/songs/The-Police/Cant-Stand-Losing-You-v2.mp3	1189
8840	Cant Stand Losing You v3	\N	media/songs/The-Police/Cant-Stand-Losing-You-v3.mp3	1189
8841	De Do Do Do	\N	media/songs/The-Police/De-Do-Do-Do.mp3	1189
8842	Dont Stand So Close To Me	\N	media/songs/The-Police/Dont-Stand-So-Close-To-Me.mp3	1189
8843	Every Breath You Take	\N	media/songs/The-Police/Every-Breath-You-Take.mp3	1189
8844	Every Breath You Take v2	\N	media/songs/The-Police/Every-Breath-You-Take-v2.mp3	1189
8845	Every Breath You Take v3	\N	media/songs/The-Police/Every-Breath-You-Take-v3.mp3	1189
8846	Every Breath You Take v4	\N	media/songs/The-Police/Every-Breath-You-Take-v4.mp3	1189
8847	Every Breath You Take v5	\N	media/songs/The-Police/Every-Breath-You-Take-v5.mp3	1189
8848	Every Breath You Take v6	\N	media/songs/The-Police/Every-Breath-You-Take-v6.mp3	1189
8849	Every Little Thing She Does Is Magic	\N	media/songs/The-Police/Every-Little-Thing-She-Does-Is-Magic.mp3	1189
8850	Message In A Bottle	\N	media/songs/The-Police/Message-In-A-Bottle.mp3	1189
8851	Message In A Bottle v2	\N	media/songs/The-Police/Message-In-A-Bottle-v2.mp3	1189
8852	Message In A Bottle v3	\N	media/songs/The-Police/Message-In-A-Bottle-v3.mp3	1189
8853	Message In A Bottle v4	\N	media/songs/The-Police/Message-In-A-Bottle-v4.mp3	1189
8854	Message In A Bottle v5	\N	media/songs/The-Police/Message-In-A-Bottle-v5.mp3	1189
8855	Message In A Bottle v6	\N	media/songs/The-Police/Message-In-A-Bottle-v6.mp3	1189
8856	Next To You	\N	media/songs/The-Police/Next-To-You.mp3	1189
8857	Roxanne	\N	media/songs/The-Police/Roxanne.mp3	1189
8858	Roxanne v2	\N	media/songs/The-Police/Roxanne-v2.mp3	1189
8859	Roxanne v3	\N	media/songs/The-Police/Roxanne-v3.mp3	1189
8860	Roxanne v4	\N	media/songs/The-Police/Roxanne-v4.mp3	1189
8861	Roxanne v5	\N	media/songs/The-Police/Roxanne-v5.mp3	1189
8862	So Lonely	\N	media/songs/The-Police/So-Lonely.mp3	1189
8863	Spirits In The Material World	\N	media/songs/The-Police/Spirits-In-The-Material-World.mp3	1189
8864	Synchronicity II	\N	media/songs/The-Police/Synchronicity-II.mp3	1189
8865	Synchronicity II v2	\N	media/songs/The-Police/Synchronicity-II-v2.mp3	1189
8866	Synchronicity II v3	\N	media/songs/The-Police/Synchronicity-II-v3.mp3	1189
8867	Truth Hits Everybody	\N	media/songs/The-Police/Truth-Hits-Everybody.mp3	1189
8868	Walking On The Moon	\N	media/songs/The-Police/Walking-On-The-Moon.mp3	1189
8869	Walking On The Moon v2	\N	media/songs/The-Police/Walking-On-The-Moon-v2.mp3	1189
8870	Walking On The Moon v3	\N	media/songs/The-Police/Walking-On-The-Moon-v3.mp3	1189
8871	Back On The Chain Gang	\N	media/songs/The-Pretenders/Back-On-The-Chain-Gang.mp3	1190
8872	Brass In Pocket	\N	media/songs/The-Pretenders/Brass-In-Pocket.mp3	1190
8873	Tattooed Love Boys	\N	media/songs/The-Pretenders/Tattooed-Love-Boys.mp3	1190
8874	My Medicine	\N	media/songs/The-Pretty-Reckless/My-Medicine.mp3	1191
8875	My Medicine v2	\N	media/songs/The-Pretty-Reckless/My-Medicine-v2.mp3	1191
8876	My Medicine v3	\N	media/songs/The-Pretty-Reckless/My-Medicine-v3.mp3	1191
8877	Crash	\N	media/songs/The-Primitives/Crash.mp3	1192
8878	Consoler Of The Lonely	\N	media/songs/The-Raconteurs/Consoler-Of-The-Lonely.mp3	1193
8879	Hold Up	\N	media/songs/The-Raconteurs/Hold-Up.mp3	1193
8880	Salute Your Solution	\N	media/songs/The-Raconteurs/Salute-Your-Solution.mp3	1193
8881	Steady As She Goes	\N	media/songs/The-Raconteurs/Steady-As-She-Goes.mp3	1193
8882	Steady As She Goes v2	\N	media/songs/The-Raconteurs/Steady-As-She-Goes-v2.mp3	1193
8883	Blitzkrieg Bop	\N	media/songs/The-Ramones/Blitzkrieg-Bop.mp3	1194
8884	Blitzkrieg Bop v2	\N	media/songs/The-Ramones/Blitzkrieg-Bop-v2.mp3	1194
8885	I Wanna Be Sedated	\N	media/songs/The-Ramones/I-Wanna-Be-Sedated.mp3	1194
8886	I Wanna Be Sedated v2	\N	media/songs/The-Ramones/I-Wanna-Be-Sedated-v2.mp3	1194
8887	I Wanna Be Sedated v3	\N	media/songs/The-Ramones/I-Wanna-Be-Sedated-v3.mp3	1194
8888	Its A Long Way Back	\N	media/songs/The-Ramones/Its-A-Long-Way-Back.mp3	1194
8889	Merry Christmas	\N	media/songs/The-Ramones/Merry-Christmas.mp3	1194
8890	Merry Christmas v2	\N	media/songs/The-Ramones/Merry-Christmas-v2.mp3	1194
8891	Rock N Roll High School	\N	media/songs/The-Ramones/Rock-N-Roll-High-School.mp3	1194
8892	Rock N Roll High School v2	\N	media/songs/The-Ramones/Rock-N-Roll-High-School-v2.mp3	1194
8893	Rockaway Beach	\N	media/songs/The-Ramones/Rockaway-Beach.mp3	1194
8894	Spiderman	\N	media/songs/The-Ramones/Spiderman.mp3	1194
8895	Spiderman v2	\N	media/songs/The-Ramones/Spiderman-v2.mp3	1194
8896	Teenage Lobotomy	\N	media/songs/The-Ramones/Teenage-Lobotomy.mp3	1194
8897	Wonderful World	\N	media/songs/The-Ramones/Wonderful-World.mp3	1194
8898	Banditos	\N	media/songs/The-Refreshments/Banditos.mp3	1195
8899	King Of The Hill Theme	\N	media/songs/The-Refreshments/King-Of-The-Hill-Theme.mp3	1195
8900	King Of The Hill Theme v2	\N	media/songs/The-Refreshments/King-Of-The-Hill-Theme-v2.mp3	1195
8901	All Down The Line	\N	media/songs/The-Rolling-Stones/All-Down-The-Line.mp3	1196
8902	Angie	\N	media/songs/The-Rolling-Stones/Angie.mp3	1196
8903	Angie v2	\N	media/songs/The-Rolling-Stones/Angie-v2.mp3	1196
8904	Brown Sugar	\N	media/songs/The-Rolling-Stones/Brown-Sugar.mp3	1196
8905	Brown Sugar v2	\N	media/songs/The-Rolling-Stones/Brown-Sugar-v2.mp3	1196
8906	Brown Sugar v3	\N	media/songs/The-Rolling-Stones/Brown-Sugar-v3.mp3	1196
8907	Brown Sugar v4	\N	media/songs/The-Rolling-Stones/Brown-Sugar-v4.mp3	1196
8908	Brown Sugar v5	\N	media/songs/The-Rolling-Stones/Brown-Sugar-v5.mp3	1196
8909	Cant You Hear Me Knockin	\N	media/songs/The-Rolling-Stones/Cant-You-Hear-Me-Knockin.mp3	1196
8910	Get No Satisfaction	\N	media/songs/The-Rolling-Stones/Get-No-Satisfaction.mp3	1196
8911	Gimme Shelter	\N	media/songs/The-Rolling-Stones/Gimme-Shelter.mp3	1196
8912	Gimme Shelter v2	\N	media/songs/The-Rolling-Stones/Gimme-Shelter-v2.mp3	1196
8913	Gimme Shelter v3	\N	media/songs/The-Rolling-Stones/Gimme-Shelter-v3.mp3	1196
8914	Gimme Shelter v4	\N	media/songs/The-Rolling-Stones/Gimme-Shelter-v4.mp3	1196
8915	Happy	\N	media/songs/The-Rolling-Stones/Happy.mp3	1196
8916	Honky Tonk Woman	\N	media/songs/The-Rolling-Stones/Honky-Tonk-Woman.mp3	1196
8917	Honky Tonk Woman v2	\N	media/songs/The-Rolling-Stones/Honky-Tonk-Woman-v2.mp3	1196
8918	Honky Tonk Woman v3	\N	media/songs/The-Rolling-Stones/Honky-Tonk-Woman-v3.mp3	1196
8919	Honky Tonk Women	\N	media/songs/The-Rolling-Stones/Honky-Tonk-Women.mp3	1196
8920	Honky Tonk Women v2	\N	media/songs/The-Rolling-Stones/Honky-Tonk-Women-v2.mp3	1196
8921	I Cant Get No Satisfaction	\N	media/songs/The-Rolling-Stones/I-Cant-Get-No-Satisfaction.mp3	1196
8922	I Cant Get No Satisfaction v2	\N	media/songs/The-Rolling-Stones/I-Cant-Get-No-Satisfaction-v2.mp3	1196
8923	Jumpin Jack Flash	\N	media/songs/The-Rolling-Stones/Jumpin-Jack-Flash.mp3	1196
8924	Jumpin Jack Flash	\N	media/songs/The-Rolling-Stones/Jumpin-Jack-Flash.mp3	1196
8925	Jumpin Jack Flash v2	\N	media/songs/The-Rolling-Stones/Jumpin-Jack-Flash-v2.mp3	1196
8926	Mannish Boy	\N	media/songs/The-Rolling-Stones/Mannish-Boy.mp3	1196
8927	Paint It Black	\N	media/songs/The-Rolling-Stones/Paint-It-Black.mp3	1196
8928	Paint It Black v2	\N	media/songs/The-Rolling-Stones/Paint-It-Black-v2.mp3	1196
8929	Rock And A Hard Place	\N	media/songs/The-Rolling-Stones/Rock-And-A-Hard-Place.mp3	1196
8930	Rock And A Hard Place v2	\N	media/songs/The-Rolling-Stones/Rock-And-A-Hard-Place-v2.mp3	1196
8931	Rock And A Hard Place v3	\N	media/songs/The-Rolling-Stones/Rock-And-A-Hard-Place-v3.mp3	1196
8932	Rocks Off	\N	media/songs/The-Rolling-Stones/Rocks-Off.mp3	1196
8933	Satisfaction Live	\N	media/songs/The-Rolling-Stones/Satisfaction-Live.mp3	1196
8934	Shes So Cold	\N	media/songs/The-Rolling-Stones/Shes-So-Cold.mp3	1196
8935	Start Me Up	\N	media/songs/The-Rolling-Stones/Start-Me-Up.mp3	1196
8936	Start Me Up Live	\N	media/songs/The-Rolling-Stones/Start-Me-Up-Live.mp3	1196
8937	Sympathy For The Devil	\N	media/songs/The-Rolling-Stones/Sympathy-For-The-Devil.mp3	1196
8938	Time Is On My Side	\N	media/songs/The-Rolling-Stones/Time-Is-On-My-Side.mp3	1196
8939	Tumbling Dice	\N	media/songs/The-Rolling-Stones/Tumbling-Dice.mp3	1196
8940	Tumbling Dice v2	\N	media/songs/The-Rolling-Stones/Tumbling-Dice-v2.mp3	1196
8941	Waiting On A Friend	\N	media/songs/The-Rolling-Stones/Waiting-On-A-Friend.mp3	1196
8942	You Cant Always Get What You Want	\N	media/songs/The-Rolling-Stones/You-Cant-Always-Get-What-You-Want.mp3	1196
8943	What I Like About You	\N	media/songs/The-Romantics/What-I-Like-About-You.mp3	1197
8944	What I Like About You v2	\N	media/songs/The-Romantics/What-I-Like-About-You-v2.mp3	1197
8945	What I Like About You v3	\N	media/songs/The-Romantics/What-I-Like-About-You-v3.mp3	1197
8946	Love Is The Law	\N	media/songs/The-Seahorses/Love-Is-The-Law.mp3	1198
8947	Love Is The Law v2	\N	media/songs/The-Seahorses/Love-Is-The-Law-v2.mp3	1198
8948	1861	\N	media/songs/The-Shadows/1861.mp3	1199
8949	1861 v2	\N	media/songs/The-Shadows/1861-v2.mp3	1199
8950	Africa	\N	media/songs/The-Shadows/Africa.mp3	1199
8951	Africa v2	\N	media/songs/The-Shadows/Africa-v2.mp3	1199
8952	Alentejo	\N	media/songs/The-Shadows/Alentejo.mp3	1199
8953	All Day	\N	media/songs/The-Shadows/All-Day.mp3	1199
8954	All I Ask Of You	\N	media/songs/The-Shadows/All-I-Ask-Of-You.mp3	1199
8955	All I Ask Of You v2	\N	media/songs/The-Shadows/All-I-Ask-Of-You-v2.mp3	1199
8956	Apache	\N	media/songs/The-Shadows/Apache.mp3	1199
8957	Apache v2	\N	media/songs/The-Shadows/Apache-v2.mp3	1199
8958	Apache v3	\N	media/songs/The-Shadows/Apache-v3.mp3	1199
8959	Apache v4	\N	media/songs/The-Shadows/Apache-v4.mp3	1199
8960	Apache v5	\N	media/songs/The-Shadows/Apache-v5.mp3	1199
8961	Apache v6	\N	media/songs/The-Shadows/Apache-v6.mp3	1199
8962	Apache v7	\N	media/songs/The-Shadows/Apache-v7.mp3	1199
8963	Apache v8	\N	media/songs/The-Shadows/Apache-v8.mp3	1199
8964	Atlantis	\N	media/songs/The-Shadows/Atlantis.mp3	1199
8965	Back Home	\N	media/songs/The-Shadows/Back-Home.mp3	1199
8966	Blue Shadows	\N	media/songs/The-Shadows/Blue-Shadows.mp3	1199
8967	Blue Sky  Blue Sea  Blue Me	\N	media/songs/The-Shadows/Blue-Sky--Blue-Sea--Blue-Me.mp3	1199
8968	Blue Sky Blue Sea Blue Me	\N	media/songs/The-Shadows/Blue-Sky-Blue-Sea-Blue-Me.mp3	1199
8969	Blue Star	\N	media/songs/The-Shadows/Blue-Star.mp3	1199
8970	Blue Star v2	\N	media/songs/The-Shadows/Blue-Star-v2.mp3	1199
8971	Bossa Roo	\N	media/songs/The-Shadows/Bossa-Roo.mp3	1199
8972	Bossa Roo v2	\N	media/songs/The-Shadows/Bossa-Roo-v2.mp3	1199
8973	Brazil	\N	media/songs/The-Shadows/Brazil.mp3	1199
8974	Brazil v2	\N	media/songs/The-Shadows/Brazil-v2.mp3	1199
8975	Bright Eyes	\N	media/songs/The-Shadows/Bright-Eyes.mp3	1199
8976	Bright Eyes v2	\N	media/songs/The-Shadows/Bright-Eyes-v2.mp3	1199
8977	Candle In The Wind	\N	media/songs/The-Shadows/Candle-In-The-Wind.mp3	1199
8978	Candle In The Wind v2	\N	media/songs/The-Shadows/Candle-In-The-Wind-v2.mp3	1199
8979	Chattanooga Choo Choo	\N	media/songs/The-Shadows/Chattanooga-Choo-Choo.mp3	1199
8980	Chattanooga Choo Choo v2	\N	media/songs/The-Shadows/Chattanooga-Choo-Choo-v2.mp3	1199
8981	Chu Chi	\N	media/songs/The-Shadows/Chu-Chi.mp3	1199
8982	Chu Chi v2	\N	media/songs/The-Shadows/Chu-Chi-v2.mp3	1199
8983	Cosy	\N	media/songs/The-Shadows/Cosy.mp3	1199
8984	Crocketts Theme	\N	media/songs/The-Shadows/Crocketts-Theme.mp3	1199
8985	Dance On	\N	media/songs/The-Shadows/Dance-On.mp3	1199
8986	Dance On v2	\N	media/songs/The-Shadows/Dance-On-v2.mp3	1199
8987	Deep Purple	\N	media/songs/The-Shadows/Deep-Purple.mp3	1199
8988	Diamonds	\N	media/songs/The-Shadows/Diamonds.mp3	1199
8989	Diamonds v2	\N	media/songs/The-Shadows/Diamonds-v2.mp3	1199
8990	Dont Cry For Me Argentina	\N	media/songs/The-Shadows/Dont-Cry-For-Me-Argentina.mp3	1199
8991	Dont Cry For Me Argentina v2	\N	media/songs/The-Shadows/Dont-Cry-For-Me-Argentina-v2.mp3	1199
8992	Dont Cry For Me Argentina v3	\N	media/songs/The-Shadows/Dont-Cry-For-Me-Argentina-v3.mp3	1199
8993	Driftin	\N	media/songs/The-Shadows/Driftin.mp3	1199
8994	Driftin v2	\N	media/songs/The-Shadows/Driftin-v2.mp3	1199
8995	Equinoxe Part V	\N	media/songs/The-Shadows/Equinoxe-Part-V.mp3	1199
8996	Equinoxe Part V v2	\N	media/songs/The-Shadows/Equinoxe-Part-V-v2.mp3	1199
8997	Fbi	\N	media/songs/The-Shadows/Fbi.mp3	1199
8998	FBI v2	\N	media/songs/The-Shadows/FBI-v2.mp3	1199
8999	FBI v3	\N	media/songs/The-Shadows/FBI-v3.mp3	1199
9000	Fender Bender	\N	media/songs/The-Shadows/Fender-Bender.mp3	1199
9001	Find Me A Golden Street	\N	media/songs/The-Shadows/Find-Me-A-Golden-Street.mp3	1199
9002	Fly Me To The Moon	\N	media/songs/The-Shadows/Fly-Me-To-The-Moon.mp3	1199
9003	Foot Tapper	\N	media/songs/The-Shadows/Foot-Tapper.mp3	1199
9004	Footapper	\N	media/songs/The-Shadows/Footapper.mp3	1199
9005	Foottapper	\N	media/songs/The-Shadows/Foottapper.mp3	1199
9006	Genie With The Light Brown Lamp	\N	media/songs/The-Shadows/Genie-With-The-Light-Brown-Lamp.mp3	1199
9007	Genie With The Light Brown Lamp v2	\N	media/songs/The-Shadows/Genie-With-The-Light-Brown-Lamp-v2.mp3	1199
9008	Gerinimo	\N	media/songs/The-Shadows/Gerinimo.mp3	1199
9009	Geronimo	\N	media/songs/The-Shadows/Geronimo.mp3	1199
9010	Ghost Riders In The Sky	\N	media/songs/The-Shadows/Ghost-Riders-In-The-Sky.mp3	1199
9011	Ghost Riders In The Sky v2	\N	media/songs/The-Shadows/Ghost-Riders-In-The-Sky-v2.mp3	1199
9012	Going Home	\N	media/songs/The-Shadows/Going-Home.mp3	1199
9013	Going Home v2	\N	media/songs/The-Shadows/Going-Home-v2.mp3	1199
9014	Gonzales	\N	media/songs/The-Shadows/Gonzales.mp3	1199
9015	Granada	\N	media/songs/The-Shadows/Granada.mp3	1199
9016	Guitar Tango	\N	media/songs/The-Shadows/Guitar-Tango.mp3	1199
9017	Guitar Tango v2	\N	media/songs/The-Shadows/Guitar-Tango-v2.mp3	1199
9018	Guitartango	\N	media/songs/The-Shadows/Guitartango.mp3	1199
9019	Heartbeat	\N	media/songs/The-Shadows/Heartbeat.mp3	1199
9020	Holy Cow	\N	media/songs/The-Shadows/Holy-Cow.mp3	1199
9021	How Do I Love Thee	\N	media/songs/The-Shadows/How-Do-I-Love-Thee.mp3	1199
9022	I Know Him So Well	\N	media/songs/The-Shadows/I-Know-Him-So-Well.mp3	1199
9023	I Know Him So Well v2	\N	media/songs/The-Shadows/I-Know-Him-So-Well-v2.mp3	1199
9024	Kon Tiki	\N	media/songs/The-Shadows/Kon-Tiki.mp3	1199
9025	Man Of Mystery	\N	media/songs/The-Shadows/Man-Of-Mystery.mp3	1199
9026	Man Of Mystery v2	\N	media/songs/The-Shadows/Man-Of-Mystery-v2.mp3	1199
9027	Midnight	\N	media/songs/The-Shadows/Midnight.mp3	1199
9028	Nivram	\N	media/songs/The-Shadows/Nivram.mp3	1199
9029	Nivram v2	\N	media/songs/The-Shadows/Nivram-v2.mp3	1199
9030	Perfidia	\N	media/songs/The-Shadows/Perfidia.mp3	1199
9031	Riders In The Sky	\N	media/songs/The-Shadows/Riders-In-The-Sky.mp3	1199
9032	Round And Round	\N	media/songs/The-Shadows/Round-And-Round.mp3	1199
9033	Shindig	\N	media/songs/The-Shadows/Shindig.mp3	1199
9034	Shindig v2	\N	media/songs/The-Shadows/Shindig-v2.mp3	1199
9035	Shindig v3	\N	media/songs/The-Shadows/Shindig-v3.mp3	1199
9036	Sleepwalk	\N	media/songs/The-Shadows/Sleepwalk.mp3	1199
9037	Sleepwalk v2	\N	media/songs/The-Shadows/Sleepwalk-v2.mp3	1199
9038	Sleepwalk v3	\N	media/songs/The-Shadows/Sleepwalk-v3.mp3	1199
9039	Sleepwalk v4	\N	media/songs/The-Shadows/Sleepwalk-v4.mp3	1199
9040	Sleepwalk v5	\N	media/songs/The-Shadows/Sleepwalk-v5.mp3	1199
9041	The Boys	\N	media/songs/The-Shadows/The-Boys.mp3	1199
9042	The Breeze And I	\N	media/songs/The-Shadows/The-Breeze-And-I.mp3	1199
9043	The Rise And Fall Of Flingel Bunt	\N	media/songs/The-Shadows/The-Rise-And-Fall-Of-Flingel-Bunt.mp3	1199
9044	The Rumble	\N	media/songs/The-Shadows/The-Rumble.mp3	1199
9045	Theme For Young Lovers	\N	media/songs/The-Shadows/Theme-For-Young-Lovers.mp3	1199
9046	Theme For Young Lovers v2	\N	media/songs/The-Shadows/Theme-For-Young-Lovers-v2.mp3	1199
9047	Theme From Giant	\N	media/songs/The-Shadows/Theme-From-Giant.mp3	1199
9048	Theme From Giant v2	\N	media/songs/The-Shadows/Theme-From-Giant-v2.mp3	1199
9049	Theme From Missing	\N	media/songs/The-Shadows/Theme-From-Missing.mp3	1199
9050	Theme From Missing v2	\N	media/songs/The-Shadows/Theme-From-Missing-v2.mp3	1199
9051	Theme From Shane	\N	media/songs/The-Shadows/Theme-From-Shane.mp3	1199
9052	Theme From Shane v2	\N	media/songs/The-Shadows/Theme-From-Shane-v2.mp3	1199
9053	Theme From The Boys	\N	media/songs/The-Shadows/Theme-From-The-Boys.mp3	1199
9054	Theme From The Deerhunter	\N	media/songs/The-Shadows/Theme-From-The-Deerhunter.mp3	1199
9055	Theme From The Deerhunter v2	\N	media/songs/The-Shadows/Theme-From-The-Deerhunter-v2.mp3	1199
9056	Theme From The Deerhunter v3	\N	media/songs/The-Shadows/Theme-From-The-Deerhunter-v3.mp3	1199
9057	Theme From The Deerhunter v4	\N	media/songs/The-Shadows/Theme-From-The-Deerhunter-v4.mp3	1199
9058	Tonight	\N	media/songs/The-Shadows/Tonight.mp3	1199
9059	Tonight v2	\N	media/songs/The-Shadows/Tonight-v2.mp3	1199
9060	True Love Ways	\N	media/songs/The-Shadows/True-Love-Ways.mp3	1199
9061	True Love Ways v2	\N	media/songs/The-Shadows/True-Love-Ways-v2.mp3	1199
9062	Turn Around And Touch Me	\N	media/songs/The-Shadows/Turn-Around-And-Touch-Me.mp3	1199
9063	Turn Around And Touch Me v2	\N	media/songs/The-Shadows/Turn-Around-And-Touch-Me-v2.mp3	1199
9064	Walk Dont Run	\N	media/songs/The-Shadows/Walk-Dont-Run.mp3	1199
9065	Wonderful Land	\N	media/songs/The-Shadows/Wonderful-Land.mp3	1199
9066	Wonderful Land v2	\N	media/songs/The-Shadows/Wonderful-Land-v2.mp3	1199
9067	Wonderful Land v3	\N	media/songs/The-Shadows/Wonderful-Land-v3.mp3	1199
9068	Wonderful Land v4	\N	media/songs/The-Shadows/Wonderful-Land-v4.mp3	1199
9069	Wonderfull Land	\N	media/songs/The-Shadows/Wonderfull-Land.mp3	1199
9070	Wonderland	\N	media/songs/The-Shadows/Wonderland.mp3	1199
9071	Wonderland v2	\N	media/songs/The-Shadows/Wonderland-v2.mp3	1199
9072	Wonderland v3	\N	media/songs/The-Shadows/Wonderland-v3.mp3	1199
9073	Zambesi	\N	media/songs/The-Shadows/Zambesi.mp3	1199
9074	Dont Hold Back	\N	media/songs/The-Sleeping/Dont-Hold-Back.mp3	1200
9075	Even Rats	\N	media/songs/The-Slip/Even-Rats.mp3	1201
9076	Hand In Glove	\N	media/songs/The-Smiths/Hand-In-Glove.mp3	1202
9077	Stop Me If You Think Youve Heard This One Before	\N	media/songs/The-Smiths/Stop-Me-If-You-Think-Youve-Heard-This-One-Before.mp3	1202
9078	There Is A Light That Never Goes Out	\N	media/songs/The-Smiths/There-Is-A-Light-That-Never-Goes-Out.mp3	1202
9079	What Difference Does It Make	\N	media/songs/The-Smiths/What-Difference-Does-It-Make.mp3	1202
9080	What Difference Does It Make v2	\N	media/songs/The-Smiths/What-Difference-Does-It-Make-v2.mp3	1202
9081	Johnny Guitar	\N	media/songs/The-Spotnicks/Johnny-Guitar.mp3	1203
9082	Rocket Man	\N	media/songs/The-Spotnicks/Rocket-Man.mp3	1203
9083	Fools Gold	\N	media/songs/The-Stone-Roses/Fools-Gold.mp3	1204
9084	Fools Gold	\N	media/songs/The-Stone-Roses/Fools-Gold.mp3	1204
9085	I Am The Resurrection	\N	media/songs/The-Stone-Roses/I-Am-The-Resurrection.mp3	1204
9086	I Am The Resurrection v2	\N	media/songs/The-Stone-Roses/I-Am-The-Resurrection-v2.mp3	1204
9087	Love Spreads	\N	media/songs/The-Stone-Roses/Love-Spreads.mp3	1204
9088	Love Spreads v2	\N	media/songs/The-Stone-Roses/Love-Spreads-v2.mp3	1204
9089	Love Spreads v3	\N	media/songs/The-Stone-Roses/Love-Spreads-v3.mp3	1204
9090	Turn To Stone	\N	media/songs/The-Stone-Roses/Turn-To-Stone.mp3	1204
9091	Rock This Town	\N	media/songs/The-Stray-Cats/Rock-This-Town.mp3	1205
9092	Rock This Town v2	\N	media/songs/The-Stray-Cats/Rock-This-Town-v2.mp3	1205
9093	Rock This Town v3	\N	media/songs/The-Stray-Cats/Rock-This-Town-v3.mp3	1205
9094	Rock This Town v4	\N	media/songs/The-Stray-Cats/Rock-This-Town-v4.mp3	1205
9095	Rock This Town v5	\N	media/songs/The-Stray-Cats/Rock-This-Town-v5.mp3	1205
9096	Stray Cat Strut	\N	media/songs/The-Stray-Cats/Stray-Cat-Strut.mp3	1205
9097	Stray Cat Strut v2	\N	media/songs/The-Stray-Cats/Stray-Cat-Strut-v2.mp3	1205
9098	Stray Cat Strut v3	\N	media/songs/The-Stray-Cats/Stray-Cat-Strut-v3.mp3	1205
9099	Stray Cat Strut v4	\N	media/songs/The-Stray-Cats/Stray-Cat-Strut-v4.mp3	1205
9100	Wipeout	\N	media/songs/The-Surfaris/Wipeout.mp3	1206
9101	Wipeout v2	\N	media/songs/The-Surfaris/Wipeout-v2.mp3	1206
9102	Freya	\N	media/songs/The-Sword/Freya.mp3	1207
9103	Correspondences	\N	media/songs/The-Tea-Party/Correspondences.mp3	1208
9104	Build Me Up Buttercup	\N	media/songs/The-Temptations/Build-Me-Up-Buttercup.mp3	1209
9105	Wild Thing	\N	media/songs/The-Troggs/Wild-Thing.mp3	1210
9106	I Dont Want To Wait Anymore	\N	media/songs/The-Tubes/I-Dont-Want-To-Wait-Anymore.mp3	1211
9107	I Dont Want To Wait Anymore v2	\N	media/songs/The-Tubes/I-Dont-Want-To-Wait-Anymore-v2.mp3	1211
9108	Talk To Ya Later	\N	media/songs/The-Tubes/Talk-To-Ya-Later.mp3	1211
9109	Happy Together	\N	media/songs/The-Turtles/Happy-Together.mp3	1212
9110	Happy Together v2	\N	media/songs/The-Turtles/Happy-Together-v2.mp3	1212
9111	Happy Together v3	\N	media/songs/The-Turtles/Happy-Together-v3.mp3	1212
9112	Eureka I Found Love	\N	media/songs/The-Upper-Crust/Eureka-I-Found-Love.mp3	1213
9113	Bird Rocker	\N	media/songs/The-Ventures/Bird-Rocker.mp3	1214
9114	Blue Bird	\N	media/songs/The-Ventures/Blue-Bird.mp3	1214
9115	Caravan	\N	media/songs/The-Ventures/Caravan.mp3	1214
9116	Diamond Head	\N	media/songs/The-Ventures/Diamond-Head.mp3	1214
9117	Driving Guitars	\N	media/songs/The-Ventures/Driving-Guitars.mp3	1214
9118	Hawaii Five O	\N	media/songs/The-Ventures/Hawaii-Five-O.mp3	1214
9119	James Bond Theme	\N	media/songs/The-Ventures/James-Bond-Theme.mp3	1214
9120	Perfidia	\N	media/songs/The-Ventures/Perfidia.mp3	1214
9121	Pipeline	\N	media/songs/The-Ventures/Pipeline.mp3	1214
9122	Pipeline v2	\N	media/songs/The-Ventures/Pipeline-v2.mp3	1214
9123	Slaughter On 10th Avenue	\N	media/songs/The-Ventures/Slaughter-On-10th-Avenue.mp3	1214
9124	Surf Rider	\N	media/songs/The-Ventures/Surf-Rider.mp3	1214
9125	The House Of The Rising Sun	\N	media/songs/The-Ventures/The-House-Of-The-Rising-Sun.mp3	1214
9126	Walk Dont Run	\N	media/songs/The-Ventures/Walk-Dont-Run.mp3	1214
9127	Walk Dont Run v2	\N	media/songs/The-Ventures/Walk-Dont-Run-v2.mp3	1214
9128	Wipeout	\N	media/songs/The-Ventures/Wipeout.mp3	1214
9129	Wipeout v2	\N	media/songs/The-Ventures/Wipeout-v2.mp3	1214
9130	Lucky Man	\N	media/songs/The-Verve/Lucky-Man.mp3	1215
9131	The Lucky Man	\N	media/songs/The-Verve/The-Lucky-Man.mp3	1215
9132	The Lucky Man v2	\N	media/songs/The-Verve/The-Lucky-Man-v2.mp3	1215
9133	Get Free	\N	media/songs/The-Vines/Get-Free.mp3	1216
9134	Get Free v2	\N	media/songs/The-Vines/Get-Free-v2.mp3	1216
9135	Get Free v3	\N	media/songs/The-Vines/Get-Free-v3.mp3	1216
9136	One Headlight	\N	media/songs/The-Wallflowers/One-Headlight.mp3	1217
9137	One Headlight v2	\N	media/songs/The-Wallflowers/One-Headlight-v2.mp3	1217
9138	Sixth Avenue Heartache	\N	media/songs/The-Wallflowers/Sixth-Avenue-Heartache.mp3	1217
9139	Sixth Avenue Heartache v2	\N	media/songs/The-Wallflowers/Sixth-Avenue-Heartache-v2.mp3	1217
9140	Blind In Texas	\N	media/songs/The-WASP/Blind-In-Texas.mp3	1218
9141	Love Machine	\N	media/songs/The-WASP/Love-Machine.mp3	1218
9142	Love Machine v2	\N	media/songs/The-WASP/Love-Machine-v2.mp3	1218
9143	Texas Radio	\N	media/songs/The-WASP/Texas-Radio.mp3	1218
9144	Texas Radio v2	\N	media/songs/The-WASP/Texas-Radio-v2.mp3	1218
9145	Wild Child	\N	media/songs/The-WASP/Wild-Child.mp3	1218
9146	Ball And Biscuit Live	\N	media/songs/The-White-Stripes/Ball-And-Biscuit-Live.mp3	1219
9147	Blue Orchid	\N	media/songs/The-White-Stripes/Blue-Orchid.mp3	1219
9148	Fell In Love With A Girl	\N	media/songs/The-White-Stripes/Fell-In-Love-With-A-Girl.mp3	1219
9149	Jolene	\N	media/songs/The-White-Stripes/Jolene.mp3	1219
9150	Seven Nation Army	\N	media/songs/The-White-Stripes/Seven-Nation-Army.mp3	1219
9151	Seven Nation Army v2	\N	media/songs/The-White-Stripes/Seven-Nation-Army-v2.mp3	1219
9152	Seven Nation Army v3	\N	media/songs/The-White-Stripes/Seven-Nation-Army-v3.mp3	1219
9153	Seven Nation Army v4	\N	media/songs/The-White-Stripes/Seven-Nation-Army-v4.mp3	1219
9154	Talent Show Backing Track	\N	media/songs/The-White-Stripes/Talent-Show-Backing-Track.mp3	1219
9155	The Hardest Button To Button	\N	media/songs/The-White-Stripes/The-Hardest-Button-To-Button.mp3	1219
9156	The Hardest Button To Button v2	\N	media/songs/The-White-Stripes/The-Hardest-Button-To-Button-v2.mp3	1219
9157	Amazing Journey	\N	media/songs/The-Who/Amazing-Journey.mp3	1220
9158	Baba Oriley	\N	media/songs/The-Who/Baba-Oriley.mp3	1220
9159	Baba Oriley v2	\N	media/songs/The-Who/Baba-Oriley-v2.mp3	1220
9160	Behind Blue Eyes	\N	media/songs/The-Who/Behind-Blue-Eyes.mp3	1220
9161	Behind Blue Eyes v2	\N	media/songs/The-Who/Behind-Blue-Eyes-v2.mp3	1220
9162	Behind Blue Eyes v3	\N	media/songs/The-Who/Behind-Blue-Eyes-v3.mp3	1220
9163	Eminence Front	\N	media/songs/The-Who/Eminence-Front.mp3	1220
9164	Go To The Mirror	\N	media/songs/The-Who/Go-To-The-Mirror.mp3	1220
9165	Going Mobile	\N	media/songs/The-Who/Going-Mobile.mp3	1220
9166	Im Free Live	\N	media/songs/The-Who/Im-Free-Live.mp3	1220
9167	Leaving Here	\N	media/songs/The-Who/Leaving-Here.mp3	1220
9168	My Generation	\N	media/songs/The-Who/My-Generation.mp3	1220
9169	My Generation Live	\N	media/songs/The-Who/My-Generation-Live.mp3	1220
9170	Pinball Wizard	\N	media/songs/The-Who/Pinball-Wizard.mp3	1220
9171	Pinball Wizard v2	\N	media/songs/The-Who/Pinball-Wizard-v2.mp3	1220
9172	Pinball Wizard v3	\N	media/songs/The-Who/Pinball-Wizard-v3.mp3	1220
9173	Real Good Looking Boy	\N	media/songs/The-Who/Real-Good-Looking-Boy.mp3	1220
9174	Sea And Sand	\N	media/songs/The-Who/Sea-And-Sand.mp3	1220
9175	Substitute	\N	media/songs/The-Who/Substitute.mp3	1220
9176	Summertime Blues	\N	media/songs/The-Who/Summertime-Blues.mp3	1220
9177	The Seeker	\N	media/songs/The-Who/The-Seeker.mp3	1220
9178	Who Are You	\N	media/songs/The-Who/Who-Are-You.mp3	1220
9179	Wont Get Fooled Again	\N	media/songs/The-Who/Wont-Get-Fooled-Again.mp3	1220
9180	Wont Get Fooled Again v2	\N	media/songs/The-Who/Wont-Get-Fooled-Again-v2.mp3	1220
9181	Wont Get Fooled Again v3	\N	media/songs/The-Who/Wont-Get-Fooled-Again-v3.mp3	1220
9182	Wont Get Fooled Again v4	\N	media/songs/The-Who/Wont-Get-Fooled-Again-v4.mp3	1220
9183	Young Man Blues	\N	media/songs/The-Who/Young-Man-Blues.mp3	1220
9184	Sick Of Drugs	\N	media/songs/The-Wildhearts/Sick-Of-Drugs.mp3	1221
9185	That Thing You Do	\N	media/songs/The-Wonders/That-Thing-You-Do.mp3	1222
9186	Dead End Friends	\N	media/songs/Them-Crooked-Vultures/Dead-End-Friends.mp3	1223
9187	Dead End Friends v2	\N	media/songs/Them-Crooked-Vultures/Dead-End-Friends-v2.mp3	1223
9188	Scumbag Blues	\N	media/songs/Them-Crooked-Vultures/Scumbag-Blues.mp3	1223
9189	A Team	\N	media/songs/Themes/A-Team.mp3	1224
9190	A Team Theme	\N	media/songs/Themes/A-Team-Theme.mp3	1224
9191	Austin Powers Secret Agent Man	\N	media/songs/Themes/Austin-Powers-Secret-Agent-Man.mp3	1224
9192	Batman	\N	media/songs/Themes/Batman.mp3	1224
9193	Batman v2	\N	media/songs/Themes/Batman-v2.mp3	1224
9194	Beavis And Butthead	\N	media/songs/Themes/Beavis-And-Butthead.mp3	1224
9195	Buffy The Vampire Slayer	\N	media/songs/Themes/Buffy-The-Vampire-Slayer.mp3	1224
9196	Buffy The Vampire Slayer Theme	\N	media/songs/Themes/Buffy-The-Vampire-Slayer-Theme.mp3	1224
9197	Castlevania   Bloody Tears	\N	media/songs/Themes/Castlevania---Bloody-Tears.mp3	1224
9198	Godfather	\N	media/songs/Themes/Godfather.mp3	1224
9199	Guiles Theme	\N	media/songs/Themes/Guiles-Theme.mp3	1224
9200	Halo 2	\N	media/songs/Themes/Halo-2.mp3	1224
9201	Halo Combat Evolved	\N	media/songs/Themes/Halo-Combat-Evolved.mp3	1224
9202	Happy Birthday Rock	\N	media/songs/Themes/Happy-Birthday-Rock.mp3	1224
9203	James Bond	\N	media/songs/Themes/James-Bond.mp3	1224
9204	Kill Bill	\N	media/songs/Themes/Kill-Bill.mp3	1224
9205	Magnum Pi	\N	media/songs/Themes/Magnum-Pi.mp3	1224
9206	Mario Theme	\N	media/songs/Themes/Mario-Theme.mp3	1224
9207	Megaman 2 Wily Stage 1	\N	media/songs/Themes/Megaman-2-Wily-Stage-1.mp3	1224
9208	Megaman 7 Burst Mans Theme	\N	media/songs/Themes/Megaman-7-Burst-Mans-Theme.mp3	1224
9209	Megamaniii Intro	\N	media/songs/Themes/Megamaniii-Intro.mp3	1224
9210	Pegasus Fantasy	\N	media/songs/Themes/Pegasus-Fantasy.mp3	1224
9211	Pulp Fiction	\N	media/songs/Themes/Pulp-Fiction.mp3	1224
9212	Pulp Fiction   Misirlou	\N	media/songs/Themes/Pulp-Fiction---Misirlou.mp3	1224
9213	Pulp Fiction Theme	\N	media/songs/Themes/Pulp-Fiction-Theme.mp3	1224
9214	Red Dwarf	\N	media/songs/Themes/Red-Dwarf.mp3	1224
9215	Red Dwarf Theme	\N	media/songs/Themes/Red-Dwarf-Theme.mp3	1224
9216	South Park	\N	media/songs/Themes/South-Park.mp3	1224
9217	South Park Theme	\N	media/songs/Themes/South-Park-Theme.mp3	1224
9218	South Park Theme v2	\N	media/songs/Themes/South-Park-Theme-v2.mp3	1224
9219	Star Wars Imperial March	\N	media/songs/Themes/Star-Wars-Imperial-March.mp3	1224
9220	Star Wars Imperial March Theme	\N	media/songs/Themes/Star-Wars-Imperial-March-Theme.mp3	1224
9221	The Godfather	\N	media/songs/Themes/The-Godfather.mp3	1224
9222	The Godfather Slash	\N	media/songs/Themes/The-Godfather-Slash.mp3	1224
9223	The Good The Bad The Ugly	\N	media/songs/Themes/The-Good-The-Bad-The-Ugly.mp3	1224
9224	The Simpsons	\N	media/songs/Themes/The-Simpsons.mp3	1224
9225	The Simpsons Theme	\N	media/songs/Themes/The-Simpsons-Theme.mp3	1224
9226	The Simpsons v2	\N	media/songs/Themes/The-Simpsons-v2.mp3	1224
9227	Top Gear	\N	media/songs/Themes/Top-Gear.mp3	1224
9228	Top Gun Anthem	\N	media/songs/Themes/Top-Gun-Anthem.mp3	1224
9229	Top Gun Anthem v2	\N	media/songs/Themes/Top-Gun-Anthem-v2.mp3	1224
9230	Yakety Axe Theme	\N	media/songs/Themes/Yakety-Axe-Theme.mp3	1224
9231	Yakety Axe Theme v2	\N	media/songs/Themes/Yakety-Axe-Theme-v2.mp3	1224
9232	Crazy Tuesday	\N	media/songs/Thenewno2/Crazy-Tuesday.mp3	1225
9233	Bad Girlfriend	\N	media/songs/Theory-Of-A-Deadman/Bad-Girlfriend.mp3	1226
9234	Are You Ready	\N	media/songs/Thin-Lizzy/Are-You-Ready.mp3	1227
9235	Are You Ready Live	\N	media/songs/Thin-Lizzy/Are-You-Ready-Live.mp3	1227
9236	Are You Ready Live v2	\N	media/songs/Thin-Lizzy/Are-You-Ready-Live-v2.mp3	1227
9237	Black Rose	\N	media/songs/Thin-Lizzy/Black-Rose.mp3	1227
9238	Black Rose v2	\N	media/songs/Thin-Lizzy/Black-Rose-v2.mp3	1227
9239	Cold Sweat	\N	media/songs/Thin-Lizzy/Cold-Sweat.mp3	1227
9240	Cold Sweat Live	\N	media/songs/Thin-Lizzy/Cold-Sweat-Live.mp3	1227
9241	Cold Sweat v2	\N	media/songs/Thin-Lizzy/Cold-Sweat-v2.mp3	1227
9242	Cowboy Song	\N	media/songs/Thin-Lizzy/Cowboy-Song.mp3	1227
9243	Cowboy Song v2	\N	media/songs/Thin-Lizzy/Cowboy-Song-v2.mp3	1227
9244	Cowboy Song v3	\N	media/songs/Thin-Lizzy/Cowboy-Song-v3.mp3	1227
9245	Dancing In The Moonlight	\N	media/songs/Thin-Lizzy/Dancing-In-The-Moonlight.mp3	1227
9246	Dancing In The Moonlight v2	\N	media/songs/Thin-Lizzy/Dancing-In-The-Moonlight-v2.mp3	1227
9247	Dancing In The Moonlight v3	\N	media/songs/Thin-Lizzy/Dancing-In-The-Moonlight-v3.mp3	1227
9248	Dancing In The Moonlight v4	\N	media/songs/Thin-Lizzy/Dancing-In-The-Moonlight-v4.mp3	1227
9249	Dedication	\N	media/songs/Thin-Lizzy/Dedication.mp3	1227
9250	Dedication v2	\N	media/songs/Thin-Lizzy/Dedication-v2.mp3	1227
9251	Dont Believe A Word	\N	media/songs/Thin-Lizzy/Dont-Believe-A-Word.mp3	1227
9252	Dont Believe A Word v2	\N	media/songs/Thin-Lizzy/Dont-Believe-A-Word-v2.mp3	1227
9253	Emerald	\N	media/songs/Thin-Lizzy/Emerald.mp3	1227
9254	Emerald v2	\N	media/songs/Thin-Lizzy/Emerald-v2.mp3	1227
9255	Jailbreak	\N	media/songs/Thin-Lizzy/Jailbreak.mp3	1227
9256	Jailbreak Live	\N	media/songs/Thin-Lizzy/Jailbreak-Live.mp3	1227
9257	Jailbreak v2	\N	media/songs/Thin-Lizzy/Jailbreak-v2.mp3	1227
9258	Jailbreak v3	\N	media/songs/Thin-Lizzy/Jailbreak-v3.mp3	1227
9259	Johnny	\N	media/songs/Thin-Lizzy/Johnny.mp3	1227
9260	Johnny v2	\N	media/songs/Thin-Lizzy/Johnny-v2.mp3	1227
9261	Massacre	\N	media/songs/Thin-Lizzy/Massacre.mp3	1227
9262	Massacre Live	\N	media/songs/Thin-Lizzy/Massacre-Live.mp3	1227
9263	Massacre v2	\N	media/songs/Thin-Lizzy/Massacre-v2.mp3	1227
9264	Memory Pain Live	\N	media/songs/Thin-Lizzy/Memory-Pain-Live.mp3	1227
9265	Rosalie	\N	media/songs/Thin-Lizzy/Rosalie.mp3	1227
9266	Rosalie v2	\N	media/songs/Thin-Lizzy/Rosalie-v2.mp3	1227
9267	Sarah	\N	media/songs/Thin-Lizzy/Sarah.mp3	1227
9268	Sha La La	\N	media/songs/Thin-Lizzy/Sha-La-La.mp3	1227
9269	Sha La La Live	\N	media/songs/Thin-Lizzy/Sha-La-La-Live.mp3	1227
9270	Sha La La v2	\N	media/songs/Thin-Lizzy/Sha-La-La-v2.mp3	1227
9271	Soldier Of Fortune	\N	media/songs/Thin-Lizzy/Soldier-Of-Fortune.mp3	1227
9272	Southbound	\N	media/songs/Thin-Lizzy/Southbound.mp3	1227
9273	Southbound v2	\N	media/songs/Thin-Lizzy/Southbound-v2.mp3	1227
9274	Still In Love With You	\N	media/songs/Thin-Lizzy/Still-In-Love-With-You.mp3	1227
9275	Still In Love With You Live	\N	media/songs/Thin-Lizzy/Still-In-Love-With-You-Live.mp3	1227
9276	Still In Love With You v2	\N	media/songs/Thin-Lizzy/Still-In-Love-With-You-v2.mp3	1227
9277	Still In Love With You v3	\N	media/songs/Thin-Lizzy/Still-In-Love-With-You-v3.mp3	1227
9278	Suicide Live	\N	media/songs/Thin-Lizzy/Suicide-Live.mp3	1227
9279	The Boys Are Back In Town	\N	media/songs/Thin-Lizzy/The-Boys-Are-Back-In-Town.mp3	1227
9280	The Boys Are Back In Town Live	\N	media/songs/Thin-Lizzy/The-Boys-Are-Back-In-Town-Live.mp3	1227
9281	The Boys Are Back In Town v2	\N	media/songs/Thin-Lizzy/The-Boys-Are-Back-In-Town-v2.mp3	1227
9282	The Boys Are Back In Town v3	\N	media/songs/Thin-Lizzy/The-Boys-Are-Back-In-Town-v3.mp3	1227
9283	The Boys Are Back In Town v4	\N	media/songs/Thin-Lizzy/The-Boys-Are-Back-In-Town-v4.mp3	1227
9284	The Holy War	\N	media/songs/Thin-Lizzy/The-Holy-War.mp3	1227
9285	The Sun Goes Down	\N	media/songs/Thin-Lizzy/The-Sun-Goes-Down.mp3	1227
9286	Waiting For An Alibi	\N	media/songs/Thin-Lizzy/Waiting-For-An-Alibi.mp3	1227
9287	Waiting For An Alibi Live	\N	media/songs/Thin-Lizzy/Waiting-For-An-Alibi-Live.mp3	1227
9288	Waiting For An Alibi v2	\N	media/songs/Thin-Lizzy/Waiting-For-An-Alibi-v2.mp3	1227
9289	Waiting For An Alibi v3	\N	media/songs/Thin-Lizzy/Waiting-For-An-Alibi-v3.mp3	1227
9290	Waiting For An Alibi v4	\N	media/songs/Thin-Lizzy/Waiting-For-An-Alibi-v4.mp3	1227
9291	Whiskey In The Jar	\N	media/songs/Thin-Lizzy/Whiskey-In-The-Jar.mp3	1227
9292	Whiskey In The Jar v2	\N	media/songs/Thin-Lizzy/Whiskey-In-The-Jar-v2.mp3	1227
9293	Graduate	\N	media/songs/Third-Eye-Blind/Graduate.mp3	1228
9294	Jumper 09	\N	media/songs/Third-Eye-Blind/Jumper-09.mp3	1228
9295	Semi Charmed Life	\N	media/songs/Third-Eye-Blind/Semi-Charmed-Life.mp3	1228
9296	Semi Charmed Life v2	\N	media/songs/Third-Eye-Blind/Semi-Charmed-Life-v2.mp3	1228
9297	Hold Me Now	\N	media/songs/Thompson-Twins/Hold-Me-Now.mp3	1229
9298	Gone Forever	\N	media/songs/Three-Days-Grace/Gone-Forever.mp3	1230
9299	Just Like You	\N	media/songs/Three-Days-Grace/Just-Like-You.mp3	1230
9300	Never Too Late	\N	media/songs/Three-Days-Grace/Never-Too-Late.mp3	1230
9301	On My Own	\N	media/songs/Three-Days-Grace/On-My-Own.mp3	1230
9302	The Good Life	\N	media/songs/Three-Days-Grace/The-Good-Life.mp3	1230
9303	Never Been To Spain	\N	media/songs/Three-Dog-Night/Never-Been-To-Spain.mp3	1231
9304	Never Been To Spain v2	\N	media/songs/Three-Dog-Night/Never-Been-To-Spain-v2.mp3	1231
9305	One	\N	media/songs/Three-Dog-Night/One.mp3	1231
9306	Paradox	\N	media/songs/Threshold/Paradox.mp3	1232
9307	Artist In The Ambulance	\N	media/songs/Thrice/Artist-In-The-Ambulance.mp3	1233
9308	Deadbolt	\N	media/songs/Thrice/Deadbolt.mp3	1233
9309	Image Of The Invisible	\N	media/songs/Thrice/Image-Of-The-Invisible.mp3	1233
9310	The Arsonist	\N	media/songs/Thrice/The-Arsonist.mp3	1233
9311	Whatever That Hurts	\N	media/songs/Tiamat/Whatever-That-Hurts.mp3	1234
9312	The Time Is Wrong	\N	media/songs/Tickle-Me-Pink/The-Time-Is-Wrong.mp3	1235
9313	Alas De Fuego	\N	media/songs/Tierra-Santa/Alas-De-Fuego.mp3	1236
9314	Quitter Never Wins	\N	media/songs/Tinsley-Ellis/Quitter-Never-Wins.mp3	1237
9315	Quitter Never Wins v2	\N	media/songs/Tinsley-Ellis/Quitter-Never-Wins-v2.mp3	1237
9316	10000 Lovers In One	\N	media/songs/TNT/10000-Lovers-In-One.mp3	1238
9317	Walk On The Ocean	\N	media/songs/Toad-The-Wet-Sprocket/Walk-On-The-Ocean.mp3	1239
9318	Possum Kingdom	\N	media/songs/Toadies/Possum-Kingdom.mp3	1240
9319	Possum Kingdom v2	\N	media/songs/Toadies/Possum-Kingdom-v2.mp3	1240
9320	I Love This Bar	\N	media/songs/Toby-Keith/I-Love-This-Bar.mp3	1241
9321	Humanoid	\N	media/songs/Tokio-Hotel/Humanoid.mp3	1242
9322	Monsoon	\N	media/songs/Tokio-Hotel/Monsoon.mp3	1242
9323	Monsoon v2	\N	media/songs/Tokio-Hotel/Monsoon-v2.mp3	1242
9324	American Girl	\N	media/songs/Tom-Petty-And-The-Heartbreakers/American-Girl.mp3	1243
9325	American Girl v2	\N	media/songs/Tom-Petty-And-The-Heartbreakers/American-Girl-v2.mp3	1243
9326	Breakdown	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Breakdown.mp3	1243
9327	Breakdown v2	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Breakdown-v2.mp3	1243
9328	Breakdown v3	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Breakdown-v3.mp3	1243
9329	Free Fallin	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Free-Fallin.mp3	1243
9330	I Need To Know	\N	media/songs/Tom-Petty-And-The-Heartbreakers/I-Need-To-Know.mp3	1243
9331	I Wont Back Down	\N	media/songs/Tom-Petty-And-The-Heartbreakers/I-Wont-Back-Down.mp3	1243
9332	Into The Great Wide Open	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Into-The-Great-Wide-Open.mp3	1243
9333	Listen To Her Heart	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Listen-To-Her-Heart.mp3	1243
9334	Mary Janes Last Dance	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Mary-Janes-Last-Dance.mp3	1243
9335	Mary Janes Last Dance v2	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Mary-Janes-Last-Dance-v2.mp3	1243
9336	Mary Janes Last Dance v3	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Mary-Janes-Last-Dance-v3.mp3	1243
9337	Refugee	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Refugee.mp3	1243
9338	Runnin Down A Dream	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Runnin-Down-A-Dream.mp3	1243
9339	Runnin Down A Dream v2	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Runnin-Down-A-Dream-v2.mp3	1243
9340	Stop Dragging My Heart Around	\N	media/songs/Tom-Petty-And-The-Heartbreakers/Stop-Dragging-My-Heart-Around.mp3	1243
9341	You Wreck Me	\N	media/songs/Tom-Petty-And-The-Heartbreakers/You-Wreck-Me.mp3	1243
9342	2 4 6 8 Motorway	\N	media/songs/Tom-Robinson/2-4-6-8-Motorway.mp3	1244
9343	This Week Ive Been Mostly Playing Guitar	\N	media/songs/Tommy-Inkila/This-Week-Ive-Been-Mostly-Playing-Guitar.mp3	1245
9344	867 5309 Jenny	\N	media/songs/Tommy-Tutone/867-5309-Jenny.mp3	1246
9345	867 5309 Jenny v2	\N	media/songs/Tommy-Tutone/867-5309-Jenny-v2.mp3	1246
9346	867 5309 Jenny v3	\N	media/songs/Tommy-Tutone/867-5309-Jenny-v3.mp3	1246
9347	867 5309 Jenny v4	\N	media/songs/Tommy-Tutone/867-5309-Jenny-v4.mp3	1246
9348	867 5309 Jenny v5	\N	media/songs/Tommy-Tutone/867-5309-Jenny-v5.mp3	1246
9349	Funky Cold Medina	\N	media/songs/Tone-Loc/Funky-Cold-Medina.mp3	1247
9350	If You Could Only See	\N	media/songs/Tonic/If-You-Could-Only-See.mp3	1248
9430	Detonation	\N	media/songs/Trivium/Detonation.mp3	1267
9351	If You Could Only See v2	\N	media/songs/Tonic/If-You-Could-Only-See-v2.mp3	1248
9352	If You Could Only See v3	\N	media/songs/Tonic/If-You-Could-Only-See-v3.mp3	1248
9353	Dreamstate	\N	media/songs/Tony-Burnett/Dreamstate.mp3	1249
9354	Driven	\N	media/songs/Tony-Burnett/Driven.mp3	1249
9355	Edge Of Insanity	\N	media/songs/Tony-Macalpine/Edge-Of-Insanity.mp3	1250
9356	Edge Of Insanity v2	\N	media/songs/Tony-Macalpine/Edge-Of-Insanity-v2.mp3	1250
9357	Empire In The Sky	\N	media/songs/Tony-Macalpine/Empire-In-The-Sky.mp3	1250
9358	Key To City	\N	media/songs/Tony-Macalpine/Key-To-City.mp3	1250
9359	Key To The City	\N	media/songs/Tony-Macalpine/Key-To-The-City.mp3	1250
9360	Kings Cup	\N	media/songs/Tony-Macalpine/Kings-Cup.mp3	1250
9361	Kings Cup v2	\N	media/songs/Tony-Macalpine/Kings-Cup-v2.mp3	1250
9362	Porcelain Doll	\N	media/songs/Tony-Macalpine/Porcelain-Doll.mp3	1250
9363	Tears Of Sahara	\N	media/songs/Tony-Macalpine/Tears-Of-Sahara.mp3	1250
9364	Tears Of Sahara v2	\N	media/songs/Tony-Macalpine/Tears-Of-Sahara-v2.mp3	1250
9365	The Raven	\N	media/songs/Tony-Macalpine/The-Raven.mp3	1250
9366	The Vision	\N	media/songs/Tony-Macalpine/The-Vision.mp3	1250
9367	Time Table	\N	media/songs/Tony-Macalpine/Time-Table.mp3	1250
9368	46 And 2	\N	media/songs/Tool/46-And-2.mp3	1251
9369	Aenima	\N	media/songs/Tool/Aenima.mp3	1251
9370	Aenima v2	\N	media/songs/Tool/Aenima-v2.mp3	1251
9371	Eulogy	\N	media/songs/Tool/Eulogy.mp3	1251
9372	Lateralus	\N	media/songs/Tool/Lateralus.mp3	1251
9373	Lateralus v2	\N	media/songs/Tool/Lateralus-v2.mp3	1251
9374	Pot	\N	media/songs/Tool/Pot.mp3	1251
9375	Schism	\N	media/songs/Tool/Schism.mp3	1251
9376	Sober	\N	media/songs/Tool/Sober.mp3	1251
9377	Sober v2	\N	media/songs/Tool/Sober-v2.mp3	1251
9378	Sober v3	\N	media/songs/Tool/Sober-v3.mp3	1251
9379	Vicarious	\N	media/songs/Tool/Vicarious.mp3	1251
9380	Rising Fighting Spirit	\N	media/songs/Toshiro-Masuda/Rising-Fighting-Spirit.mp3	1252
9381	Africa	\N	media/songs/Toto/Africa.mp3	1253
9382	Africa v2	\N	media/songs/Toto/Africa-v2.mp3	1253
9383	Childs Anthem	\N	media/songs/Toto/Childs-Anthem.mp3	1253
9384	Daves Gone Skiing	\N	media/songs/Toto/Daves-Gone-Skiing.mp3	1253
9385	Dont Chain My Heart	\N	media/songs/Toto/Dont-Chain-My-Heart.mp3	1253
9386	Georgy Porgy	\N	media/songs/Toto/Georgy-Porgy.mp3	1253
9387	Hold The Line	\N	media/songs/Toto/Hold-The-Line.mp3	1253
9388	Hold The Line v2	\N	media/songs/Toto/Hold-The-Line-v2.mp3	1253
9389	Hold The Line v3	\N	media/songs/Toto/Hold-The-Line-v3.mp3	1253
9390	I Wont Hold You Back	\N	media/songs/Toto/I-Wont-Hold-You-Back.mp3	1253
9391	Ill Be Over You	\N	media/songs/Toto/Ill-Be-Over-You.mp3	1253
9392	Rosanna	\N	media/songs/Toto/Rosanna.mp3	1253
9393	Rosanna Solo	\N	media/songs/Toto/Rosanna-Solo.mp3	1253
9394	These Chains	\N	media/songs/Toto/These-Chains.mp3	1253
9395	White Sister	\N	media/songs/Toto/White-Sister.mp3	1253
9396	Fallout	\N	media/songs/Toxic-Holocaust/Fallout.mp3	1254
9397	Nuke The Cross	\N	media/songs/Toxic-Holocaust/Nuke-The-Cross.mp3	1254
9398	Sinister Beings	\N	media/songs/Toxic-Sky/Sinister-Beings.mp3	1255
9399	Give Me One Reason	\N	media/songs/Tracy-Chapman/Give-Me-One-Reason.mp3	1256
9400	Give Me One Reason v2	\N	media/songs/Tracy-Chapman/Give-Me-One-Reason-v2.mp3	1256
9401	God Rest Ye Merry Gentleman	\N	media/songs/Traditional/God-Rest-Ye-Merry-Gentleman.mp3	1257
9402	New Orleans Is Sinking	\N	media/songs/Tragically-Hip/New-Orleans-Is-Sinking.mp3	1258
9403	Drops Of Jupiter	\N	media/songs/Train/Drops-Of-Jupiter.mp3	1259
9404	Drops Of Jupiter v2	\N	media/songs/Train/Drops-Of-Jupiter-v2.mp3	1259
9405	Drops Of Jupiter v3	\N	media/songs/Train/Drops-Of-Jupiter-v3.mp3	1259
9406	Free	\N	media/songs/Train/Free.mp3	1259
9407	Christmas Eve Sarajevo 12 24	\N	media/songs/Trans-Siberian-Orchestra/Christmas-Eve-Sarajevo-12-24.mp3	1260
9408	Wizards In Winter	\N	media/songs/Trans-Siberian-Orchestra/Wizards-In-Winter.mp3	1260
9409	All Of The Above	\N	media/songs/Transatlantic/All-Of-The-Above.mp3	1261
9410	Whos Going Home With You Tonight	\N	media/songs/Trapt/Whos-Going-Home-With-You-Tonight.mp3	1262
9411	Whos Going Home With You Tonight v2	\N	media/songs/Trapt/Whos-Going-Home-With-You-Tonight-v2.mp3	1262
9412	Sing	\N	media/songs/Travis/Sing.mp3	1263
9413	Sing v2	\N	media/songs/Travis/Sing-v2.mp3	1263
9414	Silence Is Golden	\N	media/songs/Tremoloes/Silence-Is-Golden.mp3	1264
9415	Outside	\N	media/songs/Tribe/Outside.mp3	1265
9416	Outside v2	\N	media/songs/Tribe/Outside-v2.mp3	1265
9417	Fight The Good Fight	\N	media/songs/Triumph/Fight-The-Good-Fight.mp3	1266
9418	Lay It On The Line	\N	media/songs/Triumph/Lay-It-On-The-Line.mp3	1266
9419	Lay It On The Line v2	\N	media/songs/Triumph/Lay-It-On-The-Line-v2.mp3	1266
9420	Lay It On The Line v3	\N	media/songs/Triumph/Lay-It-On-The-Line-v3.mp3	1266
9421	A Gunshot To The Head Of Trepidation	\N	media/songs/Trivium/A-Gunshot-To-The-Head-Of-Trepidation.mp3	1267
9422	A Gunshot To The Head Of Trepidation v2	\N	media/songs/Trivium/A-Gunshot-To-The-Head-Of-Trepidation-v2.mp3	1267
9423	Anthem We Are The Fire	\N	media/songs/Trivium/Anthem-We-Are-The-Fire.mp3	1267
9424	Ascendency	\N	media/songs/Trivium/Ascendency.mp3	1267
9425	Black	\N	media/songs/Trivium/Black.mp3	1267
9426	Built To Fall	\N	media/songs/Trivium/Built-To-Fall.mp3	1267
9427	Deceived	\N	media/songs/Trivium/Deceived.mp3	1267
9428	Declaration	\N	media/songs/Trivium/Declaration.mp3	1267
9429	Departure	\N	media/songs/Trivium/Departure.mp3	1267
9431	Dying In Your Arms	\N	media/songs/Trivium/Dying-In-Your-Arms.mp3	1267
9432	Ember To Inferno	\N	media/songs/Trivium/Ember-To-Inferno.mp3	1267
9433	Entrance To The Conflagration	\N	media/songs/Trivium/Entrance-To-The-Conflagration.mp3	1267
9434	If I Could Collapse The Masses	\N	media/songs/Trivium/If-I-Could-Collapse-The-Masses.mp3	1267
9435	Ignition	\N	media/songs/Trivium/Ignition.mp3	1267
9436	In Waves	\N	media/songs/Trivium/In-Waves.mp3	1267
9437	In Waves v2	\N	media/songs/Trivium/In-Waves-v2.mp3	1267
9438	Like Light To Flies	\N	media/songs/Trivium/Like-Light-To-Flies.mp3	1267
9439	Pull Harder	\N	media/songs/Trivium/Pull-Harder.mp3	1267
9440	Rain	\N	media/songs/Trivium/Rain.mp3	1267
9441	This World Cant Tear Us Apart	\N	media/songs/Trivium/This-World-Cant-Tear-Us-Apart.mp3	1267
9442	Throes Of Perdition	\N	media/songs/Trivium/Throes-Of-Perdition.mp3	1267
9443	To The Rats	\N	media/songs/Trivium/To-The-Rats.mp3	1267
9444	Torn Between Scylla And Charybdis	\N	media/songs/Trivium/Torn-Between-Scylla-And-Charybdis.mp3	1267
9445	Tread The Flood	\N	media/songs/Trivium/Tread-The-Flood.mp3	1267
9446	When All Light Dies	\N	media/songs/Trivium/When-All-Light-Dies.mp3	1267
9447	Santa Maria	\N	media/songs/Trooper/Santa-Maria.mp3	1268
9448	Santa Maria v2	\N	media/songs/Trooper/Santa-Maria-v2.mp3	1268
9449	Babylon	\N	media/songs/Troy-Stetina/Babylon.mp3	1269
9450	Flight Of The Bumblebee	\N	media/songs/Troy-Stetina/Flight-Of-The-Bumblebee.mp3	1269
9451	Flight Of The Bumblebee v2	\N	media/songs/Troy-Stetina/Flight-Of-The-Bumblebee-v2.mp3	1269
9452	Antisocial	\N	media/songs/Trust/Antisocial.mp3	1270
9453	Serre Moi	\N	media/songs/Tryo/Serre-Moi.mp3	1271
9454	Wolf Like Me	\N	media/songs/TV-On-The-Radio/Wolf-Like-Me.mp3	1272
9455	Wolf Like Me v2	\N	media/songs/TV-On-The-Radio/Wolf-Like-Me-v2.mp3	1272
9456	Audience And Audio	\N	media/songs/Twin-Atlantic/Audience-And-Audio.mp3	1273
9457	What Is Light Where Is Laughter	\N	media/songs/Twin-Atlantic/What-Is-Light-Where-Is-Laughter.mp3	1273
9458	What Is Light Where Is Laughter v2	\N	media/songs/Twin-Atlantic/What-Is-Light-Where-Is-Laughter-v2.mp3	1273
9459	Youre Turning Into John Wayne	\N	media/songs/Twin-Atlantic/Youre-Turning-Into-John-Wayne.mp3	1273
9460	I Wanna Rock	\N	media/songs/Twisted-Sister/I-Wanna-Rock.mp3	1274
9461	I Wanna Rock v2	\N	media/songs/Twisted-Sister/I-Wanna-Rock-v2.mp3	1274
9462	The Price	\N	media/songs/Twisted-Sister/The-Price.mp3	1274
9463	Were Not Gonna Take It	\N	media/songs/Twisted-Sister/Were-Not-Gonna-Take-It.mp3	1274
9464	Were Not Gonna Take It v2	\N	media/songs/Twisted-Sister/Were-Not-Gonna-Take-It-v2.mp3	1274
9465	Were Not Gonna Take It v3	\N	media/songs/Twisted-Sister/Were-Not-Gonna-Take-It-v3.mp3	1274
9466	Were Not Gonna Take It v4	\N	media/songs/Twisted-Sister/Were-Not-Gonna-Take-It-v4.mp3	1274
9467	Im Going Home	\N	media/songs/TYA/Im-Going-Home.mp3	1275
9468	11 O Clock Tick Tock	\N	media/songs/U2/11-O-Clock-Tick-Tock.mp3	1276
9469	11 O Clock Tick Tock	\N	media/songs/U2/11-O-Clock-Tick-Tock.mp3	1276
9470	11 O Clock Tick Tock Live	\N	media/songs/U2/11-O-Clock-Tick-Tock-Live.mp3	1276
9471	A Sort Of Homecoming	\N	media/songs/U2/A-Sort-Of-Homecoming.mp3	1276
9472	All Because Of You	\N	media/songs/U2/All-Because-Of-You.mp3	1276
9473	All Because Of You Live	\N	media/songs/U2/All-Because-Of-You-Live.mp3	1276
9474	All I Want Is You	\N	media/songs/U2/All-I-Want-Is-You.mp3	1276
9475	An Cat Dubh	\N	media/songs/U2/An-Cat-Dubh.mp3	1276
9476	Angel Of Harlem Live	\N	media/songs/U2/Angel-Of-Harlem-Live.mp3	1276
9477	Bad	\N	media/songs/U2/Bad.mp3	1276
9478	Bad Live	\N	media/songs/U2/Bad-Live.mp3	1276
9479	Bad v2	\N	media/songs/U2/Bad-v2.mp3	1276
9480	Beautiful Day	\N	media/songs/U2/Beautiful-Day.mp3	1276
9481	Beautiful Day Live	\N	media/songs/U2/Beautiful-Day-Live.mp3	1276
9482	Beautiful Day v2	\N	media/songs/U2/Beautiful-Day-v2.mp3	1276
9483	Beautiful Day v3	\N	media/songs/U2/Beautiful-Day-v3.mp3	1276
9484	Breathe Live	\N	media/songs/U2/Breathe-Live.mp3	1276
9485	Bullet The Blue Sky	\N	media/songs/U2/Bullet-The-Blue-Sky.mp3	1276
9486	Bullet The Blue Sky v2	\N	media/songs/U2/Bullet-The-Blue-Sky-v2.mp3	1276
9487	Bullet The Blue Sky v3	\N	media/songs/U2/Bullet-The-Blue-Sky-v3.mp3	1276
9488	City Of Blinding Lights	\N	media/songs/U2/City-Of-Blinding-Lights.mp3	1276
9489	City Of Blinding Lights Live	\N	media/songs/U2/City-Of-Blinding-Lights-Live.mp3	1276
9490	Crumbs From Your Table	\N	media/songs/U2/Crumbs-From-Your-Table.mp3	1276
9491	Crumbs From Your Table v2	\N	media/songs/U2/Crumbs-From-Your-Table-v2.mp3	1276
9492	Desire	\N	media/songs/U2/Desire.mp3	1276
9493	Desire Live	\N	media/songs/U2/Desire-Live.mp3	1276
9494	Do You Feel Loved	\N	media/songs/U2/Do-You-Feel-Loved.mp3	1276
9495	Electrical Storm	\N	media/songs/U2/Electrical-Storm.mp3	1276
9496	Elevation Live	\N	media/songs/U2/Elevation-Live.mp3	1276
9497	Even Better Than The Real Thing	\N	media/songs/U2/Even-Better-Than-The-Real-Thing.mp3	1276
9498	Even Better Than The Real Thing Live	\N	media/songs/U2/Even-Better-Than-The-Real-Thing-Live.mp3	1276
9499	Even Better Than The Real Thing v2	\N	media/songs/U2/Even-Better-Than-The-Real-Thing-v2.mp3	1276
9500	Even Better Than The Real Thing v3	\N	media/songs/U2/Even-Better-Than-The-Real-Thing-v3.mp3	1276
9501	Exit	\N	media/songs/U2/Exit.mp3	1276
9502	Exit Live	\N	media/songs/U2/Exit-Live.mp3	1276
9503	Get On Your Boots Live	\N	media/songs/U2/Get-On-Your-Boots-Live.mp3	1276
9504	Gloria	\N	media/songs/U2/Gloria.mp3	1276
9505	Gloria Live	\N	media/songs/U2/Gloria-Live.mp3	1276
9506	Gloria v2	\N	media/songs/U2/Gloria-v2.mp3	1276
9507	Gone	\N	media/songs/U2/Gone.mp3	1276
9508	Heartland	\N	media/songs/U2/Heartland.mp3	1276
9509	Heartland v2	\N	media/songs/U2/Heartland-v2.mp3	1276
9510	Helter Skelter	\N	media/songs/U2/Helter-Skelter.mp3	1276
9511	Helter Skelter v2	\N	media/songs/U2/Helter-Skelter-v2.mp3	1276
9512	Helter Skelter v3	\N	media/songs/U2/Helter-Skelter-v3.mp3	1276
9513	Helter Skelter v4	\N	media/songs/U2/Helter-Skelter-v4.mp3	1276
9514	Hold Me Thrill Me Kiss Me Kill Me Live	\N	media/songs/U2/Hold-Me-Thrill-Me-Kiss-Me-Kill-Me-Live.mp3	1276
9515	I Still Havent Found What Im Looking For	\N	media/songs/U2/I-Still-Havent-Found-What-Im-Looking-For.mp3	1276
9516	I Still Havent Found What Im Looking For Live	\N	media/songs/U2/I-Still-Havent-Found-What-Im-Looking-For-Live.mp3	1276
9517	I Will Follow	\N	media/songs/U2/I-Will-Follow.mp3	1276
9518	I Will Follow Live	\N	media/songs/U2/I-Will-Follow-Live.mp3	1276
9519	I Will Follow v2	\N	media/songs/U2/I-Will-Follow-v2.mp3	1276
9520	I Will Follow v3	\N	media/songs/U2/I-Will-Follow-v3.mp3	1276
9521	Ill Go Crazy If I Dont Go Crazy Tonight Live	\N	media/songs/U2/Ill-Go-Crazy-If-I-Dont-Go-Crazy-Tonight-Live.mp3	1276
9522	In A Little While Live	\N	media/songs/U2/In-A-Little-While-Live.mp3	1276
9523	In Gods Country	\N	media/songs/U2/In-Gods-Country.mp3	1276
9524	In Gods Country Live	\N	media/songs/U2/In-Gods-Country-Live.mp3	1276
9525	Kite	\N	media/songs/U2/Kite.mp3	1276
9526	Kite Live	\N	media/songs/U2/Kite-Live.mp3	1276
9527	Kite v2	\N	media/songs/U2/Kite-v2.mp3	1276
9528	Last Night On Earth	\N	media/songs/U2/Last-Night-On-Earth.mp3	1276
9529	Love Is Blindness	\N	media/songs/U2/Love-Is-Blindness.mp3	1276
9530	Love Is Blindness Live	\N	media/songs/U2/Love-Is-Blindness-Live.mp3	1276
9531	Love Is Blindness v2	\N	media/songs/U2/Love-Is-Blindness-v2.mp3	1276
9532	Magnificent Live	\N	media/songs/U2/Magnificent-Live.mp3	1276
9533	Mercy	\N	media/songs/U2/Mercy.mp3	1276
9534	Miracle Drug	\N	media/songs/U2/Miracle-Drug.mp3	1276
9535	Miracle Drug v2	\N	media/songs/U2/Miracle-Drug-v2.mp3	1276
9536	Miracle Drug v3	\N	media/songs/U2/Miracle-Drug-v3.mp3	1276
9537	Miss Sarajevo Live	\N	media/songs/U2/Miss-Sarajevo-Live.mp3	1276
9538	Moment Of Surrender Live	\N	media/songs/U2/Moment-Of-Surrender-Live.mp3	1276
9539	Mysterious Ways Live	\N	media/songs/U2/Mysterious-Ways-Live.mp3	1276
9540	New Years Day	\N	media/songs/U2/New-Years-Day.mp3	1276
9541	New Years Day v2	\N	media/songs/U2/New-Years-Day-v2.mp3	1276
9542	New York	\N	media/songs/U2/New-York.mp3	1276
9543	No Line On The Horizon Live	\N	media/songs/U2/No-Line-On-The-Horizon-Live.mp3	1276
9544	One	\N	media/songs/U2/One.mp3	1276
9545	One Live	\N	media/songs/U2/One-Live.mp3	1276
9546	One Tree Hill	\N	media/songs/U2/One-Tree-Hill.mp3	1276
9547	One v2	\N	media/songs/U2/One-v2.mp3	1276
9548	One v3	\N	media/songs/U2/One-v3.mp3	1276
9549	Original Of The Species	\N	media/songs/U2/Original-Of-The-Species.mp3	1276
9550	Out Of Control Live	\N	media/songs/U2/Out-Of-Control-Live.mp3	1276
9551	Please	\N	media/songs/U2/Please.mp3	1276
9552	Please v2	\N	media/songs/U2/Please-v2.mp3	1276
9553	Pride In The Name Of Love	\N	media/songs/U2/Pride-In-The-Name-Of-Love.mp3	1276
9554	Pride In The Name Of Love v2	\N	media/songs/U2/Pride-In-The-Name-Of-Love-v2.mp3	1276
9555	Pride In The Name Of Love v3	\N	media/songs/U2/Pride-In-The-Name-Of-Love-v3.mp3	1276
9556	Pride Live	\N	media/songs/U2/Pride-Live.mp3	1276
9557	Satellite Of Love Live	\N	media/songs/U2/Satellite-Of-Love-Live.mp3	1276
9558	Seconds	\N	media/songs/U2/Seconds.mp3	1276
9559	So Cruel	\N	media/songs/U2/So-Cruel.mp3	1276
9560	So Cruel v2	\N	media/songs/U2/So-Cruel-v2.mp3	1276
9561	Sometimes You Cant Make It On Your Own	\N	media/songs/U2/Sometimes-You-Cant-Make-It-On-Your-Own.mp3	1276
9562	Soon Breathe Live	\N	media/songs/U2/Soon-Breathe-Live.mp3	1276
9563	Stand Up Comedy Live	\N	media/songs/U2/Stand-Up-Comedy-Live.mp3	1276
9564	Stay Live	\N	media/songs/U2/Stay-Live.mp3	1276
9565	Stories For Boys	\N	media/songs/U2/Stories-For-Boys.mp3	1276
9566	Stuck In A Moment	\N	media/songs/U2/Stuck-In-A-Moment.mp3	1276
9567	Stuck In A Moment Live	\N	media/songs/U2/Stuck-In-A-Moment-Live.mp3	1276
9568	Stuck In A Moment v2	\N	media/songs/U2/Stuck-In-A-Moment-v2.mp3	1276
9569	Stuck In A Moment v3	\N	media/songs/U2/Stuck-In-A-Moment-v3.mp3	1276
9570	Sunday Bloody Sunday	\N	media/songs/U2/Sunday-Bloody-Sunday.mp3	1276
9571	Sunday Bloody Sunday Live	\N	media/songs/U2/Sunday-Bloody-Sunday-Live.mp3	1276
9572	Sunday Bloody Sunday v2	\N	media/songs/U2/Sunday-Bloody-Sunday-v2.mp3	1276
9573	Sunday Bloody Sunday v3	\N	media/songs/U2/Sunday-Bloody-Sunday-v3.mp3	1276
9574	Sunday Bloody Sunday v4	\N	media/songs/U2/Sunday-Bloody-Sunday-v4.mp3	1276
9575	The Fly	\N	media/songs/U2/The-Fly.mp3	1276
9576	The Fly Live	\N	media/songs/U2/The-Fly-Live.mp3	1276
9577	The Fly v2	\N	media/songs/U2/The-Fly-v2.mp3	1276
9578	The Fly v3	\N	media/songs/U2/The-Fly-v3.mp3	1276
9579	The Unforgettable Fire	\N	media/songs/U2/The-Unforgettable-Fire.mp3	1276
9580	The Unforgettable Fire Live	\N	media/songs/U2/The-Unforgettable-Fire-Live.mp3	1276
9581	Twilight	\N	media/songs/U2/Twilight.mp3	1276
9582	Two Hearts Beat As One Live	\N	media/songs/U2/Two-Hearts-Beat-As-One-Live.mp3	1276
9583	Ultraviolet	\N	media/songs/U2/Ultraviolet.mp3	1276
9584	Ultraviolet Live	\N	media/songs/U2/Ultraviolet-Live.mp3	1276
9585	Unknown Caller	\N	media/songs/U2/Unknown-Caller.mp3	1276
9586	Until The End Of The World	\N	media/songs/U2/Until-The-End-Of-The-World.mp3	1276
9587	Until The End Of The World Live	\N	media/songs/U2/Until-The-End-Of-The-World-Live.mp3	1276
9588	Until The End Of The World v2	\N	media/songs/U2/Until-The-End-Of-The-World-v2.mp3	1276
9589	Until The End Of The World v3	\N	media/songs/U2/Until-The-End-Of-The-World-v3.mp3	1276
9590	Vertigo	\N	media/songs/U2/Vertigo.mp3	1276
9591	Vertigo Live	\N	media/songs/U2/Vertigo-Live.mp3	1276
9592	Vertigo v2	\N	media/songs/U2/Vertigo-v2.mp3	1276
9593	Vertigo v3	\N	media/songs/U2/Vertigo-v3.mp3	1276
9594	Vertigo v4	\N	media/songs/U2/Vertigo-v4.mp3	1276
9595	Vertigo v5	\N	media/songs/U2/Vertigo-v5.mp3	1276
9596	Walk On	\N	media/songs/U2/Walk-On.mp3	1276
9597	Walk On Live	\N	media/songs/U2/Walk-On-Live.mp3	1276
9598	Walk On v2	\N	media/songs/U2/Walk-On-v2.mp3	1276
9599	When I Look At The World	\N	media/songs/U2/When-I-Look-At-The-World.mp3	1276
9600	Where The Streets Have No Name	\N	media/songs/U2/Where-The-Streets-Have-No-Name.mp3	1276
9601	Where The Streets Have No Name Live	\N	media/songs/U2/Where-The-Streets-Have-No-Name-Live.mp3	1276
9602	Where The Streets Have No Name Live v2	\N	media/songs/U2/Where-The-Streets-Have-No-Name-Live-v2.mp3	1276
9603	Where The Streets Have No Name v2	\N	media/songs/U2/Where-The-Streets-Have-No-Name-v2.mp3	1276
9604	Where The Streets Have No Name v3	\N	media/songs/U2/Where-The-Streets-Have-No-Name-v3.mp3	1276
9605	Whos Gonna Ride Your Wild Horses	\N	media/songs/U2/Whos-Gonna-Ride-Your-Wild-Horses.mp3	1276
9606	Window In The Skies Live	\N	media/songs/U2/Window-In-The-Skies-Live.mp3	1276
9607	With Or Without You	\N	media/songs/U2/With-Or-Without-You.mp3	1276
9608	With Or Without You Live	\N	media/songs/U2/With-Or-Without-You-Live.mp3	1276
9609	With Or Without You Live v2	\N	media/songs/U2/With-Or-Without-You-Live-v2.mp3	1276
9610	With Or Without You v2	\N	media/songs/U2/With-Or-Without-You-v2.mp3	1276
9611	With Or Without You v3	\N	media/songs/U2/With-Or-Without-You-v3.mp3	1276
9612	With Or Without You v4	\N	media/songs/U2/With-Or-Without-You-v4.mp3	1276
9613	With Or Without You v5	\N	media/songs/U2/With-Or-Without-You-v5.mp3	1276
9614	Yahweh Live	\N	media/songs/U2/Yahweh-Live.mp3	1276
9615	Zoo Station	\N	media/songs/U2/Zoo-Station.mp3	1276
9616	Zoo Station Live	\N	media/songs/U2/Zoo-Station-Live.mp3	1276
9617	Zooropa	\N	media/songs/U2/Zooropa.mp3	1276
9618	When Love Comes To Town	\N	media/songs/U2-And-BB-King/When-Love-Comes-To-Town.mp3	1277
9619	Red Red Wine	\N	media/songs/UB40/Red-Red-Wine.mp3	1278
9620	Built For Comfort	\N	media/songs/UFO/Built-For-Comfort.mp3	1279
9621	Doctor Doctor	\N	media/songs/UFO/Doctor-Doctor.mp3	1279
9622	Doctor Doctor v2	\N	media/songs/UFO/Doctor-Doctor-v2.mp3	1279
9623	Doctor Doctor v3	\N	media/songs/UFO/Doctor-Doctor-v3.mp3	1279
9624	Doctor Doctor v4	\N	media/songs/UFO/Doctor-Doctor-v4.mp3	1279
9625	High Flyer	\N	media/songs/UFO/High-Flyer.mp3	1279
9626	Lights Out	\N	media/songs/UFO/Lights-Out.mp3	1279
9627	Lights Out v2	\N	media/songs/UFO/Lights-Out-v2.mp3	1279
9628	Lights Out v3	\N	media/songs/UFO/Lights-Out-v3.mp3	1279
9629	Love To Love	\N	media/songs/UFO/Love-To-Love.mp3	1279
9630	Love To Love v2	\N	media/songs/UFO/Love-To-Love-v2.mp3	1279
9631	Marx	\N	media/songs/UFO/Marx.mp3	1279
9632	Marx v2	\N	media/songs/UFO/Marx-v2.mp3	1279
9633	Only You Can Rock Me	\N	media/songs/UFO/Only-You-Can-Rock-Me.mp3	1279
9634	Rock Bottom	\N	media/songs/UFO/Rock-Bottom.mp3	1279
9635	Rock Bottom v2	\N	media/songs/UFO/Rock-Bottom-v2.mp3	1279
9636	Shoot Shoot	\N	media/songs/UFO/Shoot-Shoot.mp3	1279
9637	Too Hot To Handle	\N	media/songs/UFO/Too-Hot-To-Handle.mp3	1279
9638	Too Hot To Handle v2	\N	media/songs/UFO/Too-Hot-To-Handle-v2.mp3	1279
9639	Too Hot To Handle v3	\N	media/songs/UFO/Too-Hot-To-Handle-v3.mp3	1279
9640	Everything About You	\N	media/songs/Ugly-Kid-Joe/Everything-About-You.mp3	1280
9641	Everything About You v2	\N	media/songs/Ugly-Kid-Joe/Everything-About-You-v2.mp3	1280
9642	Everything About You v3	\N	media/songs/Ugly-Kid-Joe/Everything-About-You-v3.mp3	1280
9643	Neighbor	\N	media/songs/Ugly-Kid-Joe/Neighbor.mp3	1280
9644	Desperate Times Desperate Measures	\N	media/songs/Underoath/Desperate-Times-Desperate-Measures.mp3	1281
9645	Desperate Times Desperate Measures v2	\N	media/songs/Underoath/Desperate-Times-Desperate-Measures-v2.mp3	1281
9646	Marbles	\N	media/songs/Urban/Marbles.mp3	1282
9647	Easy Livin	\N	media/songs/Uriah-Heep/Easy-Livin.mp3	1283
9648	Hold Your Head Up	\N	media/songs/Uriah-Heep/Hold-Your-Head-Up.mp3	1283
9649	Stealin	\N	media/songs/Uriah-Heep/Stealin.mp3	1283
9650	Carnal	\N	media/songs/Vader/Carnal.mp3	1284
9651	Ftk	\N	media/songs/Vagiant/Ftk.mp3	1285
9652	Seven	\N	media/songs/Vagiant/Seven.mp3	1285
9653	Seven v2	\N	media/songs/Vagiant/Seven-v2.mp3	1285
9654	Lonely Dance	\N	media/songs/Val-Kanaga/Lonely-Dance.mp3	1286
9655	Fall Of Pangea	\N	media/songs/Valient-Thorr/Fall-Of-Pangea.mp3	1287
9656	Jacques Cousteau	\N	media/songs/Valmyr-Tavares/Jacques-Cousteau.mp3	1288
9657	A Punk	\N	media/songs/Vampire-Weekend/A-Punk.mp3	1289
9658	A Punk v2	\N	media/songs/Vampire-Weekend/A-Punk-v2.mp3	1289
9659	5150	\N	media/songs/Van-Halen/5150.mp3	1290
9660	5150 v2	\N	media/songs/Van-Halen/5150-v2.mp3	1290
9661	Aint Talkin Bout Love	\N	media/songs/Van-Halen/Aint-Talkin-Bout-Love.mp3	1290
9737	Mean Street	\N	media/songs/Van-Halen/Mean-Street.mp3	1290
9662	Aint Talkin Bout Love v2	\N	media/songs/Van-Halen/Aint-Talkin-Bout-Love-v2.mp3	1290
9663	Aint Talkin Bout Love v3	\N	media/songs/Van-Halen/Aint-Talkin-Bout-Love-v3.mp3	1290
9664	Aint Talkin Bout Love v4	\N	media/songs/Van-Halen/Aint-Talkin-Bout-Love-v4.mp3	1290
9665	Aint Talkin Bout Love v5	\N	media/songs/Van-Halen/Aint-Talkin-Bout-Love-v5.mp3	1290
9666	Aint Talkin Bout Love v6	\N	media/songs/Van-Halen/Aint-Talkin-Bout-Love-v6.mp3	1290
9667	Aint Talkin Bout Love v7	\N	media/songs/Van-Halen/Aint-Talkin-Bout-Love-v7.mp3	1290
9668	And The Cradle Will Rock	\N	media/songs/Van-Halen/And-The-Cradle-Will-Rock.mp3	1290
9669	And The Cradle Will Rock v2	\N	media/songs/Van-Halen/And-The-Cradle-Will-Rock-v2.mp3	1290
9670	Atomic Punk	\N	media/songs/Van-Halen/Atomic-Punk.mp3	1290
9671	Atomic Punk v2	\N	media/songs/Van-Halen/Atomic-Punk-v2.mp3	1290
9672	Atomic Punk v3	\N	media/songs/Van-Halen/Atomic-Punk-v3.mp3	1290
9673	Beat It	\N	media/songs/Van-Halen/Beat-It.mp3	1290
9674	Beat It Solo	\N	media/songs/Van-Halen/Beat-It-Solo.mp3	1290
9675	Beat It Solo v2	\N	media/songs/Van-Halen/Beat-It-Solo-v2.mp3	1290
9676	Beat It v2	\N	media/songs/Van-Halen/Beat-It-v2.mp3	1290
9677	Beat It v3	\N	media/songs/Van-Halen/Beat-It-v3.mp3	1290
9678	Beautiful Girls	\N	media/songs/Van-Halen/Beautiful-Girls.mp3	1290
9679	Black And Blue	\N	media/songs/Van-Halen/Black-And-Blue.mp3	1290
9680	Black And Blue v2	\N	media/songs/Van-Halen/Black-And-Blue-v2.mp3	1290
9681	Cant Stop Loving You	\N	media/songs/Van-Halen/Cant-Stop-Loving-You.mp3	1290
9682	Cant Stop Loving You v2	\N	media/songs/Van-Halen/Cant-Stop-Loving-You-v2.mp3	1290
9683	Cant Stop Loving You v3	\N	media/songs/Van-Halen/Cant-Stop-Loving-You-v3.mp3	1290
9684	Cant This Be Love	\N	media/songs/Van-Halen/Cant-This-Be-Love.mp3	1290
9685	Cant This Be Love v2	\N	media/songs/Van-Halen/Cant-This-Be-Love-v2.mp3	1290
9686	Dance The Night Away	\N	media/songs/Van-Halen/Dance-The-Night-Away.mp3	1290
9687	Dance The Night Away v2	\N	media/songs/Van-Halen/Dance-The-Night-Away-v2.mp3	1290
9688	Dance The Night Away v3	\N	media/songs/Van-Halen/Dance-The-Night-Away-v3.mp3	1290
9689	Dance The Night Away v4	\N	media/songs/Van-Halen/Dance-The-Night-Away-v4.mp3	1290
9690	Dont Tell Me What Love Can Do	\N	media/songs/Van-Halen/Dont-Tell-Me-What-Love-Can-Do.mp3	1290
9691	Dreams	\N	media/songs/Van-Halen/Dreams.mp3	1290
9692	Dreams v2	\N	media/songs/Van-Halen/Dreams-v2.mp3	1290
9693	Drop Dead Legs	\N	media/songs/Van-Halen/Drop-Dead-Legs.mp3	1290
9694	Eruption	\N	media/songs/Van-Halen/Eruption.mp3	1290
9695	Eruption v2	\N	media/songs/Van-Halen/Eruption-v2.mp3	1290
9696	Eruption v3	\N	media/songs/Van-Halen/Eruption-v3.mp3	1290
9697	Everybody Wants Some	\N	media/songs/Van-Halen/Everybody-Wants-Some.mp3	1290
9698	Feel Your Love Tonight	\N	media/songs/Van-Halen/Feel-Your-Love-Tonight.mp3	1290
9699	Feel Your Love Tonight v2	\N	media/songs/Van-Halen/Feel-Your-Love-Tonight-v2.mp3	1290
9700	Feel Your Love Tonight v3	\N	media/songs/Van-Halen/Feel-Your-Love-Tonight-v3.mp3	1290
9701	Hang Em High	\N	media/songs/Van-Halen/Hang-Em-High.mp3	1290
9702	Hear About It Later	\N	media/songs/Van-Halen/Hear-About-It-Later.mp3	1290
9703	Hear About It Later v2	\N	media/songs/Van-Halen/Hear-About-It-Later-v2.mp3	1290
9704	Hear About It Later v3	\N	media/songs/Van-Halen/Hear-About-It-Later-v3.mp3	1290
9705	Hear About It Later v4	\N	media/songs/Van-Halen/Hear-About-It-Later-v4.mp3	1290
9706	Hear About It Later v5	\N	media/songs/Van-Halen/Hear-About-It-Later-v5.mp3	1290
9707	Hear About It Later v6	\N	media/songs/Van-Halen/Hear-About-It-Later-v6.mp3	1290
9708	Hot For Teacher	\N	media/songs/Van-Halen/Hot-For-Teacher.mp3	1290
9709	Hot For Teacher v2	\N	media/songs/Van-Halen/Hot-For-Teacher-v2.mp3	1290
9710	Hot For Teacher v3	\N	media/songs/Van-Halen/Hot-For-Teacher-v3.mp3	1290
9711	Hot For Teacher v4	\N	media/songs/Van-Halen/Hot-For-Teacher-v4.mp3	1290
9712	Humans Being	\N	media/songs/Van-Halen/Humans-Being.mp3	1290
9713	Humans Being In E	\N	media/songs/Van-Halen/Humans-Being-In-E.mp3	1290
9714	Humans Being In Eb	\N	media/songs/Van-Halen/Humans-Being-In-Eb.mp3	1290
9715	Humans Being v2	\N	media/songs/Van-Halen/Humans-Being-v2.mp3	1290
9716	Ice Cream Man	\N	media/songs/Van-Halen/Ice-Cream-Man.mp3	1290
9717	Ice Cream Man v2	\N	media/songs/Van-Halen/Ice-Cream-Man-v2.mp3	1290
9718	Ice Cream Man v3	\N	media/songs/Van-Halen/Ice-Cream-Man-v3.mp3	1290
9719	Ice Cream Man v4	\N	media/songs/Van-Halen/Ice-Cream-Man-v4.mp3	1290
9720	Im The One	\N	media/songs/Van-Halen/Im-The-One.mp3	1290
9721	Im The One v2	\N	media/songs/Van-Halen/Im-The-One-v2.mp3	1290
9722	Im The One v3	\N	media/songs/Van-Halen/Im-The-One-v3.mp3	1290
9723	Jamies Cryin	\N	media/songs/Van-Halen/Jamies-Cryin.mp3	1290
9724	Jamies Cryin v2	\N	media/songs/Van-Halen/Jamies-Cryin-v2.mp3	1290
9725	Jamies Cryin v3	\N	media/songs/Van-Halen/Jamies-Cryin-v3.mp3	1290
9726	Jamies Cryin v4	\N	media/songs/Van-Halen/Jamies-Cryin-v4.mp3	1290
9727	Jump	\N	media/songs/Van-Halen/Jump.mp3	1290
9728	Jump v2	\N	media/songs/Van-Halen/Jump-v2.mp3	1290
9729	Jump v3	\N	media/songs/Van-Halen/Jump-v3.mp3	1290
9730	Jump v4	\N	media/songs/Van-Halen/Jump-v4.mp3	1290
9731	Light Up The Sky	\N	media/songs/Van-Halen/Light-Up-The-Sky.mp3	1290
9732	Little Dreamer	\N	media/songs/Van-Halen/Little-Dreamer.mp3	1290
9733	Little Dreamer v2	\N	media/songs/Van-Halen/Little-Dreamer-v2.mp3	1290
9734	Little Guitars	\N	media/songs/Van-Halen/Little-Guitars.mp3	1290
9735	Loss Of Control	\N	media/songs/Van-Halen/Loss-Of-Control.mp3	1290
9736	Love Walks In	\N	media/songs/Van-Halen/Love-Walks-In.mp3	1290
9738	Mean Street v2	\N	media/songs/Van-Halen/Mean-Street-v2.mp3	1290
9739	Meanstreet	\N	media/songs/Van-Halen/Meanstreet.mp3	1290
9740	Meanstreet v2	\N	media/songs/Van-Halen/Meanstreet-v2.mp3	1290
9741	On Fire	\N	media/songs/Van-Halen/On-Fire.mp3	1290
9742	Outta Love Again	\N	media/songs/Van-Halen/Outta-Love-Again.mp3	1290
9743	Panama	\N	media/songs/Van-Halen/Panama.mp3	1290
9744	Panama v2	\N	media/songs/Van-Halen/Panama-v2.mp3	1290
9745	Panama v3	\N	media/songs/Van-Halen/Panama-v3.mp3	1290
9746	Panama v4	\N	media/songs/Van-Halen/Panama-v4.mp3	1290
9747	Panama v5	\N	media/songs/Van-Halen/Panama-v5.mp3	1290
9748	Poundcake	\N	media/songs/Van-Halen/Poundcake.mp3	1290
9749	Poundcake v2	\N	media/songs/Van-Halen/Poundcake-v2.mp3	1290
9750	Pretty Woman	\N	media/songs/Van-Halen/Pretty-Woman.mp3	1290
9751	Pretty Woman v2	\N	media/songs/Van-Halen/Pretty-Woman-v2.mp3	1290
9752	Pretty Woman v3	\N	media/songs/Van-Halen/Pretty-Woman-v3.mp3	1290
9753	Pretty Woman v4	\N	media/songs/Van-Halen/Pretty-Woman-v4.mp3	1290
9754	Pretty Woman v5	\N	media/songs/Van-Halen/Pretty-Woman-v5.mp3	1290
9755	Pretty Woman v6	\N	media/songs/Van-Halen/Pretty-Woman-v6.mp3	1290
9756	Push Comes To Shove	\N	media/songs/Van-Halen/Push-Comes-To-Shove.mp3	1290
9757	Right Now	\N	media/songs/Van-Halen/Right-Now.mp3	1290
9758	Right Now v2	\N	media/songs/Van-Halen/Right-Now-v2.mp3	1290
9759	Right Now v3	\N	media/songs/Van-Halen/Right-Now-v3.mp3	1290
9760	Romeo Delight	\N	media/songs/Van-Halen/Romeo-Delight.mp3	1290
9761	Runnin With The Devil	\N	media/songs/Van-Halen/Runnin-With-The-Devil.mp3	1290
9762	Runnin With The Devil v2	\N	media/songs/Van-Halen/Runnin-With-The-Devil-v2.mp3	1290
9763	Shes The Woman	\N	media/songs/Van-Halen/Shes-The-Woman.mp3	1290
9764	So This Is Love	\N	media/songs/Van-Halen/So-This-Is-Love.mp3	1290
9765	Somebody Get Me A Doctor	\N	media/songs/Van-Halen/Somebody-Get-Me-A-Doctor.mp3	1290
9766	Somebody Get Me A Doctor v2	\N	media/songs/Van-Halen/Somebody-Get-Me-A-Doctor-v2.mp3	1290
9767	Somebody Get Me A Doctor v3	\N	media/songs/Van-Halen/Somebody-Get-Me-A-Doctor-v3.mp3	1290
9768	Somebody Get Me A Doctor v4	\N	media/songs/Van-Halen/Somebody-Get-Me-A-Doctor-v4.mp3	1290
9769	Somebody Get Me A Doctor v5	\N	media/songs/Van-Halen/Somebody-Get-Me-A-Doctor-v5.mp3	1290
9770	Tattoo	\N	media/songs/Van-Halen/Tattoo.mp3	1290
9771	Top Of The World	\N	media/songs/Van-Halen/Top-Of-The-World.mp3	1290
9772	Top Of The World v2	\N	media/songs/Van-Halen/Top-Of-The-World-v2.mp3	1290
9773	Unchained	\N	media/songs/Van-Halen/Unchained.mp3	1290
9774	Unchained v2	\N	media/songs/Van-Halen/Unchained-v2.mp3	1290
9775	Unchained v3	\N	media/songs/Van-Halen/Unchained-v3.mp3	1290
9776	Unchained v4	\N	media/songs/Van-Halen/Unchained-v4.mp3	1290
9777	Unchained v5	\N	media/songs/Van-Halen/Unchained-v5.mp3	1290
9778	Unchaned W Voclas	\N	media/songs/Van-Halen/Unchaned-W-Voclas.mp3	1290
9779	Voodoo Queen	\N	media/songs/Van-Halen/Voodoo-Queen.mp3	1290
9780	Voodoo Queen v2	\N	media/songs/Van-Halen/Voodoo-Queen-v2.mp3	1290
9781	When Its Love	\N	media/songs/Van-Halen/When-Its-Love.mp3	1290
9782	Why Cant This Be Love	\N	media/songs/Van-Halen/Why-Cant-This-Be-Love.mp3	1290
9783	Why Cant This Be Love v2	\N	media/songs/Van-Halen/Why-Cant-This-Be-Love-v2.mp3	1290
9784	Why Cant This Be Love v3	\N	media/songs/Van-Halen/Why-Cant-This-Be-Love-v3.mp3	1290
9785	Women In Love	\N	media/songs/Van-Halen/Women-In-Love.mp3	1290
9786	You Really Got Me	\N	media/songs/Van-Halen/You-Really-Got-Me.mp3	1290
9787	You Really Got Me v2	\N	media/songs/Van-Halen/You-Really-Got-Me-v2.mp3	1290
9788	You Really Got Me v3	\N	media/songs/Van-Halen/You-Really-Got-Me-v3.mp3	1290
9789	You Really Got Me v4	\N	media/songs/Van-Halen/You-Really-Got-Me-v4.mp3	1290
9790	You Really Got Me v5	\N	media/songs/Van-Halen/You-Really-Got-Me-v5.mp3	1290
9791	You Really Got Me v6	\N	media/songs/Van-Halen/You-Really-Got-Me-v6.mp3	1290
9792	You Really Got Me v7	\N	media/songs/Van-Halen/You-Really-Got-Me-v7.mp3	1290
9793	You Really Got Me v8	\N	media/songs/Van-Halen/You-Really-Got-Me-v8.mp3	1290
9794	Aint No Sunshine	\N	media/songs/Van-Morrison/Aint-No-Sunshine.mp3	1291
9795	Brown Eyed Girl	\N	media/songs/Van-Morrison/Brown-Eyed-Girl.mp3	1291
9796	Brown Eyed Girl v2	\N	media/songs/Van-Morrison/Brown-Eyed-Girl-v2.mp3	1291
9797	Brown Eyed Girl v3	\N	media/songs/Van-Morrison/Brown-Eyed-Girl-v3.mp3	1291
9798	Brown Eyed Girl v4	\N	media/songs/Van-Morrison/Brown-Eyed-Girl-v4.mp3	1291
9799	Brown Eyed Girl v5	\N	media/songs/Van-Morrison/Brown-Eyed-Girl-v5.mp3	1291
9800	Brown Eyed Girl v6	\N	media/songs/Van-Morrison/Brown-Eyed-Girl-v6.mp3	1291
9801	Meltdown	\N	media/songs/Van-Morrison/Meltdown.mp3	1291
9802	Meltdown v2	\N	media/songs/Van-Morrison/Meltdown-v2.mp3	1291
9803	Motherless Child	\N	media/songs/Van-Morrison/Motherless-Child.mp3	1291
9804	Dont Cry For Louie	\N	media/songs/Vaya-Con-Dios/Dont-Cry-For-Louie.mp3	1292
9805	Do It For The Kids	\N	media/songs/Velvet-Revolver/Do-It-For-The-Kids.mp3	1293
9806	Do It For The Kids v2	\N	media/songs/Velvet-Revolver/Do-It-For-The-Kids-v2.mp3	1293
9807	Do It For The Kids v3	\N	media/songs/Velvet-Revolver/Do-It-For-The-Kids-v3.mp3	1293
9808	Fall To Pieces	\N	media/songs/Velvet-Revolver/Fall-To-Pieces.mp3	1293
9809	Fall To Pieces v2	\N	media/songs/Velvet-Revolver/Fall-To-Pieces-v2.mp3	1293
9810	Fall To Pieces v3	\N	media/songs/Velvet-Revolver/Fall-To-Pieces-v3.mp3	1293
9811	Fall To Pieces v4	\N	media/songs/Velvet-Revolver/Fall-To-Pieces-v4.mp3	1293
9812	Headspace	\N	media/songs/Velvet-Revolver/Headspace.mp3	1293
9813	Messages	\N	media/songs/Velvet-Revolver/Messages.mp3	1293
9814	Messages v2	\N	media/songs/Velvet-Revolver/Messages-v2.mp3	1293
9815	Messages v3	\N	media/songs/Velvet-Revolver/Messages-v3.mp3	1293
9816	Quick Machines	\N	media/songs/Velvet-Revolver/Quick-Machines.mp3	1293
9817	Set Me Free	\N	media/songs/Velvet-Revolver/Set-Me-Free.mp3	1293
9818	She Builds Quick Machines	\N	media/songs/Velvet-Revolver/She-Builds-Quick-Machines.mp3	1293
9819	She Builds Quick Machines v2	\N	media/songs/Velvet-Revolver/She-Builds-Quick-Machines-v2.mp3	1293
9820	Slither	\N	media/songs/Velvet-Revolver/Slither.mp3	1293
9821	Slither v2	\N	media/songs/Velvet-Revolver/Slither-v2.mp3	1293
9822	Sucker Train Blues	\N	media/songs/Velvet-Revolver/Sucker-Train-Blues.mp3	1293
9823	Sucker Train Blues Live	\N	media/songs/Velvet-Revolver/Sucker-Train-Blues-Live.mp3	1293
9824	You Got No Right	\N	media/songs/Velvet-Revolver/You-Got-No-Right.mp3	1293
9825	You Got No Right v2	\N	media/songs/Velvet-Revolver/You-Got-No-Right-v2.mp3	1293
9826	History Of The Other Side	\N	media/songs/Versailles/History-Of-The-Other-Side.mp3	1294
9827	Serenade	\N	media/songs/Versailles/Serenade.mp3	1294
9828	Promised Land	\N	media/songs/Vesuvius/Promised-Land.mp3	1295
9829	Ymca	\N	media/songs/Village-People/Ymca.mp3	1296
9830	Ymca v2	\N	media/songs/Village-People/Ymca-v2.mp3	1296
9831	Ymca v3	\N	media/songs/Village-People/Ymca-v3.mp3	1296
9832	One More Last Chance	\N	media/songs/Vince-Gill/One-More-Last-Chance.mp3	1297
9833	April Sky	\N	media/songs/Vinnie-Moore/April-Sky.mp3	1298
9834	April Sky v2	\N	media/songs/Vinnie-Moore/April-Sky-v2.mp3	1298
9835	April Sky v3	\N	media/songs/Vinnie-Moore/April-Sky-v3.mp3	1298
9836	Coming Home	\N	media/songs/Vinnie-Moore/Coming-Home.mp3	1298
9837	Coming Home v2	\N	media/songs/Vinnie-Moore/Coming-Home-v2.mp3	1298
9838	Coming Home v3	\N	media/songs/Vinnie-Moore/Coming-Home-v3.mp3	1298
9839	Cryptic Dreams	\N	media/songs/Vinnie-Moore/Cryptic-Dreams.mp3	1298
9840	Daydream	\N	media/songs/Vinnie-Moore/Daydream.mp3	1298
9841	Life Force	\N	media/songs/Vinnie-Moore/Life-Force.mp3	1298
9842	Meltdown	\N	media/songs/Vinnie-Moore/Meltdown.mp3	1298
9843	Morning Star	\N	media/songs/Vinnie-Moore/Morning-Star.mp3	1298
9844	Morning Star v2	\N	media/songs/Vinnie-Moore/Morning-Star-v2.mp3	1298
9845	Never Been To Barcelona	\N	media/songs/Vinnie-Moore/Never-Been-To-Barcelona.mp3	1298
9846	Pieces Of A Picture	\N	media/songs/Vinnie-Moore/Pieces-Of-A-Picture.mp3	1298
9847	Prelude	\N	media/songs/Vinnie-Moore/Prelude.mp3	1298
9848	Prelude v2	\N	media/songs/Vinnie-Moore/Prelude-v2.mp3	1298
9849	Rain	\N	media/songs/Vinnie-Moore/Rain.mp3	1298
9850	Rain v2	\N	media/songs/Vinnie-Moore/Rain-v2.mp3	1298
9851	Rain v3	\N	media/songs/Vinnie-Moore/Rain-v3.mp3	1298
9852	Rain v4	\N	media/songs/Vinnie-Moore/Rain-v4.mp3	1298
9853	Shadows Of Yesterday	\N	media/songs/Vinnie-Moore/Shadows-Of-Yesterday.mp3	1298
9854	The Maze	\N	media/songs/Vinnie-Moore/The-Maze.mp3	1298
9855	The Tempest	\N	media/songs/Vinnie-Moore/The-Tempest.mp3	1298
9856	While My Guitar Gently Weeps	\N	media/songs/Vinnie-Moore/While-My-Guitar-Gently-Weeps.mp3	1298
9857	While My Guitar Gently Weeps v2	\N	media/songs/Vinnie-Moore/While-My-Guitar-Gently-Weeps-v2.mp3	1298
9858	With The Flow	\N	media/songs/Vinnie-Moore/With-The-Flow.mp3	1298
9859	With The Flow v2	\N	media/songs/Vinnie-Moore/With-The-Flow-v2.mp3	1298
9860	Blister In The Sun	\N	media/songs/Violent-Femmes/Blister-In-The-Sun.mp3	1299
9861	La Danza Del Fuego	\N	media/songs/Walter-Giardino/La-Danza-Del-Fuego.mp3	1300
9862	Everybody Have Fun Tonight	\N	media/songs/Wang-Chung/Everybody-Have-Fun-Tonight.mp3	1301
9863	Everybody Have Fun Tonight v2	\N	media/songs/Wang-Chung/Everybody-Have-Fun-Tonight-v2.mp3	1301
9864	Low Rider	\N	media/songs/War/Low-Rider.mp3	1302
9865	Spill The Wine	\N	media/songs/War/Spill-The-Wine.mp3	1302
9866	Cherry Pie	\N	media/songs/Warrant/Cherry-Pie.mp3	1303
9867	Down Boys	\N	media/songs/Warrant/Down-Boys.mp3	1303
9868	Sometimes She Cries	\N	media/songs/Warrant/Sometimes-She-Cries.mp3	1303
9869	Sometimes She Cries v2	\N	media/songs/Warrant/Sometimes-She-Cries-v2.mp3	1303
9870	Sometimes She Cries v3	\N	media/songs/Warrant/Sometimes-She-Cries-v3.mp3	1303
9871	Werewolves Of London	\N	media/songs/Warren-Zevon/Werewolves-Of-London.mp3	1304
9872	Werewolves Of London v2	\N	media/songs/Warren-Zevon/Werewolves-Of-London-v2.mp3	1304
9873	Werewolves Of London v3	\N	media/songs/Warren-Zevon/Werewolves-Of-London-v3.mp3	1304
9874	Beverly Hills	\N	media/songs/Weezer/Beverly-Hills.mp3	1305
9875	Beverly Hills v2	\N	media/songs/Weezer/Beverly-Hills-v2.mp3	1305
9876	Beverly Hills v3	\N	media/songs/Weezer/Beverly-Hills-v3.mp3	1305
9877	Buddy Holly	\N	media/songs/Weezer/Buddy-Holly.mp3	1305
9878	Buddy Holly v2	\N	media/songs/Weezer/Buddy-Holly-v2.mp3	1305
9879	Buddy Holly v3	\N	media/songs/Weezer/Buddy-Holly-v3.mp3	1305
9880	Buddy Holly v4	\N	media/songs/Weezer/Buddy-Holly-v4.mp3	1305
9881	Dope Nose	\N	media/songs/Weezer/Dope-Nose.mp3	1305
9882	Dope Nose v2	\N	media/songs/Weezer/Dope-Nose-v2.mp3	1305
9883	Dreamin	\N	media/songs/Weezer/Dreamin.mp3	1305
9884	Dreamin v2	\N	media/songs/Weezer/Dreamin-v2.mp3	1305
9885	El Scorcho	\N	media/songs/Weezer/El-Scorcho.mp3	1305
9886	El Scorcho v2	\N	media/songs/Weezer/El-Scorcho-v2.mp3	1305
9887	Hash Pipe	\N	media/songs/Weezer/Hash-Pipe.mp3	1305
9888	Hash Pipe v2	\N	media/songs/Weezer/Hash-Pipe-v2.mp3	1305
9889	I Want You To	\N	media/songs/Weezer/I-Want-You-To.mp3	1305
9890	Island In The Sun	\N	media/songs/Weezer/Island-In-The-Sun.mp3	1305
9891	Island In The Sun v2	\N	media/songs/Weezer/Island-In-The-Sun-v2.mp3	1305
9892	My Name Is Jonas	\N	media/songs/Weezer/My-Name-Is-Jonas.mp3	1305
9893	No One Else	\N	media/songs/Weezer/No-One-Else.mp3	1305
9894	Perfect Situation	\N	media/songs/Weezer/Perfect-Situation.mp3	1305
9895	Perfect Situation v2	\N	media/songs/Weezer/Perfect-Situation-v2.mp3	1305
9896	Pork And Beans	\N	media/songs/Weezer/Pork-And-Beans.mp3	1305
9897	Pork And Beans v2	\N	media/songs/Weezer/Pork-And-Beans-v2.mp3	1305
9898	Say It Aint So	\N	media/songs/Weezer/Say-It-Aint-So.mp3	1305
9899	Say It Aint So	\N	media/songs/Weezer/Say-It-Aint-So.mp3	1305
9900	Say It Aint So v2	\N	media/songs/Weezer/Say-It-Aint-So-v2.mp3	1305
9901	Say It Aint So v3	\N	media/songs/Weezer/Say-It-Aint-So-v3.mp3	1305
9902	The Greatest Man That Ever Lived	\N	media/songs/Weezer/The-Greatest-Man-That-Ever-Lived.mp3	1305
9903	The Greatest Man That Ever Lived v2	\N	media/songs/Weezer/The-Greatest-Man-That-Ever-Lived-v2.mp3	1305
9904	Troublemaker	\N	media/songs/Weezer/Troublemaker.mp3	1305
9905	Undone The Sweater Song	\N	media/songs/Weezer/Undone-The-Sweater-Song.mp3	1305
9906	Undone The Sweater Song v2	\N	media/songs/Weezer/Undone-The-Sweater-Song-v2.mp3	1305
9907	Why Bother	\N	media/songs/Weezer/Why-Bother.mp3	1305
9908	Why Bother v2	\N	media/songs/Weezer/Why-Bother-v2.mp3	1305
9909	Far Wes	\N	media/songs/Wes-Montgomery/Far-Wes.mp3	1306
9910	Far Wes v2	\N	media/songs/Wes-Montgomery/Far-Wes-v2.mp3	1306
9911	Far Wes v3	\N	media/songs/Wes-Montgomery/Far-Wes-v3.mp3	1306
9912	Gone With The Wind	\N	media/songs/Wes-Montgomery/Gone-With-The-Wind.mp3	1306
9913	Greensleeves	\N	media/songs/Wes-Montgomery/Greensleeves.mp3	1306
9914	Jingles	\N	media/songs/Wes-Montgomery/Jingles.mp3	1306
9915	Round Midnight	\N	media/songs/Wes-Montgomery/Round-Midnight.mp3	1306
9916	Tequila	\N	media/songs/Wes-Montgomery/Tequila.mp3	1306
9917	Faithless Street	\N	media/songs/Whiskeytown/Faithless-Street.mp3	1307
9918	Lady Of The Valley	\N	media/songs/White-Lion/Lady-Of-The-Valley.mp3	1308
9919	Little Fighter	\N	media/songs/White-Lion/Little-Fighter.mp3	1308
9920	Radar Love	\N	media/songs/White-Lion/Radar-Love.mp3	1308
9921	Tell Me	\N	media/songs/White-Lion/Tell-Me.mp3	1308
9922	Wait	\N	media/songs/White-Lion/Wait.mp3	1308
9923	When The Children Cry	\N	media/songs/White-Lion/When-The-Children-Cry.mp3	1308
9924	When The Children Cry v2	\N	media/songs/White-Lion/When-The-Children-Cry-v2.mp3	1308
9925	Aint No Love	\N	media/songs/White-Snake/Aint-No-Love.mp3	1309
9926	Aint No Love v2	\N	media/songs/White-Snake/Aint-No-Love-v2.mp3	1309
9927	Bad Boys	\N	media/songs/White-Snake/Bad-Boys.mp3	1309
9928	Burn	\N	media/songs/White-Snake/Burn.mp3	1309
9929	Crying In The Rain	\N	media/songs/White-Snake/Crying-In-The-Rain.mp3	1309
9930	Crying In The Rain Live	\N	media/songs/White-Snake/Crying-In-The-Rain-Live.mp3	1309
9931	Crying In The Rain v2	\N	media/songs/White-Snake/Crying-In-The-Rain-v2.mp3	1309
9932	Crying In The Rain v3	\N	media/songs/White-Snake/Crying-In-The-Rain-v3.mp3	1309
9933	Dont Break My Heart Again	\N	media/songs/White-Snake/Dont-Break-My-Heart-Again.mp3	1309
9934	Dont Break My Heart Again Live	\N	media/songs/White-Snake/Dont-Break-My-Heart-Again-Live.mp3	1309
9935	Dont Break My Heart Again v2	\N	media/songs/White-Snake/Dont-Break-My-Heart-Again-v2.mp3	1309
9936	Dont Break My Heart Again v3	\N	media/songs/White-Snake/Dont-Break-My-Heart-Again-v3.mp3	1309
9937	Fool For Your Lovin	\N	media/songs/White-Snake/Fool-For-Your-Lovin.mp3	1309
9938	Fool For Your Lovin Live	\N	media/songs/White-Snake/Fool-For-Your-Lovin-Live.mp3	1309
9939	Fool For Your Lovin v2	\N	media/songs/White-Snake/Fool-For-Your-Lovin-v2.mp3	1309
9940	Fool For Your Lovin v3	\N	media/songs/White-Snake/Fool-For-Your-Lovin-v3.mp3	1309
9941	Give Me All Your Love	\N	media/songs/White-Snake/Give-Me-All-Your-Love.mp3	1309
9942	Give Me All Your Love Live	\N	media/songs/White-Snake/Give-Me-All-Your-Love-Live.mp3	1309
9943	Give Me All Your Love v2	\N	media/songs/White-Snake/Give-Me-All-Your-Love-v2.mp3	1309
9944	Here I Go Again	\N	media/songs/White-Snake/Here-I-Go-Again.mp3	1309
9945	Here I Go Again v2	\N	media/songs/White-Snake/Here-I-Go-Again-v2.mp3	1309
9946	Here I Go Again v3	\N	media/songs/White-Snake/Here-I-Go-Again-v3.mp3	1309
9947	Hungry For Love	\N	media/songs/White-Snake/Hungry-For-Love.mp3	1309
9948	Is This Love	\N	media/songs/White-Snake/Is-This-Love.mp3	1309
9949	Is This Love Live	\N	media/songs/White-Snake/Is-This-Love-Live.mp3	1309
9950	Is This Love v2	\N	media/songs/White-Snake/Is-This-Love-v2.mp3	1309
9951	Is This Love v3	\N	media/songs/White-Snake/Is-This-Love-v3.mp3	1309
9952	Judgement Day	\N	media/songs/White-Snake/Judgement-Day.mp3	1309
9953	Judgement Day v2	\N	media/songs/White-Snake/Judgement-Day-v2.mp3	1309
9954	Looking For Love	\N	media/songs/White-Snake/Looking-For-Love.mp3	1309
9955	Love Aint No Stranger	\N	media/songs/White-Snake/Love-Aint-No-Stranger.mp3	1309
9956	Love Aint No Stranger Live	\N	media/songs/White-Snake/Love-Aint-No-Stranger-Live.mp3	1309
9957	Medicine Man	\N	media/songs/White-Snake/Medicine-Man.mp3	1309
9958	Ready And Willing	\N	media/songs/White-Snake/Ready-And-Willing.mp3	1309
9959	Ready And Willing v2	\N	media/songs/White-Snake/Ready-And-Willing-v2.mp3	1309
9960	Sailing Ships	\N	media/songs/White-Snake/Sailing-Ships.mp3	1309
9961	Slide It In	\N	media/songs/White-Snake/Slide-It-In.mp3	1309
9962	Still Of The Night	\N	media/songs/White-Snake/Still-Of-The-Night.mp3	1309
10040	Andante	\N	media/songs/Yngwie-Malmsteen/Andante.mp3	1325
9963	Still Of The Night Live	\N	media/songs/White-Snake/Still-Of-The-Night-Live.mp3	1309
9964	Still Of The Night v2	\N	media/songs/White-Snake/Still-Of-The-Night-v2.mp3	1309
9965	Still Of The Night v3	\N	media/songs/White-Snake/Still-Of-The-Night-v3.mp3	1309
9966	Trouble	\N	media/songs/White-Snake/Trouble.mp3	1309
9967	Trouble v2	\N	media/songs/White-Snake/Trouble-v2.mp3	1309
9968	Black Sunshine	\N	media/songs/White-Zombie/Black-Sunshine.mp3	1310
9969	Black Sunshine v2	\N	media/songs/White-Zombie/Black-Sunshine-v2.mp3	1310
9970	Black Sunshine v3	\N	media/songs/White-Zombie/Black-Sunshine-v3.mp3	1310
9971	Thunderkiss 65	\N	media/songs/White-Zombie/Thunderkiss-65.mp3	1310
9972	Thunderkiss 65 v2	\N	media/songs/White-Zombie/Thunderkiss-65-v2.mp3	1310
9973	Thunderkiss 65 v3	\N	media/songs/White-Zombie/Thunderkiss-65-v3.mp3	1310
9974	Thunderkiss 65 v4	\N	media/songs/White-Zombie/Thunderkiss-65-v4.mp3	1310
9975	Thunderkiss 65 v5	\N	media/songs/White-Zombie/Thunderkiss-65-v5.mp3	1310
9976	Play That Funky Music	\N	media/songs/Wild-Cherry/Play-That-Funky-Music.mp3	1311
9977	Play That Funky Music v2	\N	media/songs/Wild-Cherry/Play-That-Funky-Music-v2.mp3	1311
9978	Play That Funky Music v3	\N	media/songs/Wild-Cherry/Play-That-Funky-Music-v3.mp3	1311
9979	On The Road Again Live	\N	media/songs/Willie-Nelson/On-The-Road-Again-Live.mp3	1312
9980	Graveyard Shift	\N	media/songs/Windtunnel-Syndrome/Graveyard-Shift.mp3	1313
9981	Hungry	\N	media/songs/Winger/Hungry.mp3	1314
9982	Miles Away	\N	media/songs/Winger/Miles-Away.mp3	1314
9983	Seventeen	\N	media/songs/Winger/Seventeen.mp3	1314
9984	Seventeen v2	\N	media/songs/Winger/Seventeen-v2.mp3	1314
9985	Band On The Run	\N	media/songs/Wings/Band-On-The-Run.mp3	1315
9986	Band On The Run v2	\N	media/songs/Wings/Band-On-The-Run-v2.mp3	1315
9987	Helen Wheels	\N	media/songs/Wings/Helen-Wheels.mp3	1315
9988	Hi Hi Hi	\N	media/songs/Wings/Hi-Hi-Hi.mp3	1315
9989	Jet	\N	media/songs/Wings/Jet.mp3	1315
9990	Jet v2	\N	media/songs/Wings/Jet-v2.mp3	1315
9991	Juniors Farm	\N	media/songs/Wings/Juniors-Farm.mp3	1315
9992	Let Me Roll It	\N	media/songs/Wings/Let-Me-Roll-It.mp3	1315
9993	Maybe Im Amazed	\N	media/songs/Wings/Maybe-Im-Amazed.mp3	1315
9994	Beyond The Darkened Sun	\N	media/songs/Wintersun/Beyond-The-Darkened-Sun.mp3	1316
9995	What Have You Done	\N	media/songs/Within-Temptation/What-Have-You-Done.mp3	1317
9996	Back Round	\N	media/songs/Wolfmother/Back-Round.mp3	1318
9997	Back Round v2	\N	media/songs/Wolfmother/Back-Round-v2.mp3	1318
9998	California Queen	\N	media/songs/Wolfmother/California-Queen.mp3	1318
9999	California Queen v2	\N	media/songs/Wolfmother/California-Queen-v2.mp3	1318
10000	Cosmic Egg	\N	media/songs/Wolfmother/Cosmic-Egg.mp3	1318
10001	Cosmic Egg v2	\N	media/songs/Wolfmother/Cosmic-Egg-v2.mp3	1318
10002	Dimension	\N	media/songs/Wolfmother/Dimension.mp3	1318
10003	Dimension v2	\N	media/songs/Wolfmother/Dimension-v2.mp3	1318
10004	Joker And The Thief	\N	media/songs/Wolfmother/Joker-And-The-Thief.mp3	1318
10005	Joker And The Thief v2	\N	media/songs/Wolfmother/Joker-And-The-Thief-v2.mp3	1318
10006	Joker And The Thief v3	\N	media/songs/Wolfmother/Joker-And-The-Thief-v3.mp3	1318
10007	Joker And The Thief v4	\N	media/songs/Wolfmother/Joker-And-The-Thief-v4.mp3	1318
10008	Minds Eye	\N	media/songs/Wolfmother/Minds-Eye.mp3	1318
10009	Pilgrim	\N	media/songs/Wolfmother/Pilgrim.mp3	1318
10010	Pilgrim v2	\N	media/songs/Wolfmother/Pilgrim-v2.mp3	1318
10011	White Unicorn	\N	media/songs/Wolfmother/White-Unicorn.mp3	1318
10012	Woman	\N	media/songs/Wolfmother/Woman.mp3	1318
10013	Woman v2	\N	media/songs/Wolfmother/Woman-v2.mp3	1318
10014	Woman v3	\N	media/songs/Wolfmother/Woman-v3.mp3	1318
10015	See Tomorrow Shine	\N	media/songs/Wuthering-Heights/See-Tomorrow-Shine.mp3	1319
10016	Los Angeles	\N	media/songs/X/Los-Angeles.mp3	1320
10017	Inside Out	\N	media/songs/XYZ/Inside-Out.mp3	1321
10018	Inside Out v2	\N	media/songs/XYZ/Inside-Out-v2.mp3	1321
10019	Date With The Night	\N	media/songs/Yeah-Yeah-Yeahs/Date-With-The-Night.mp3	1322
10020	Date With The Night v2	\N	media/songs/Yeah-Yeah-Yeahs/Date-With-The-Night-v2.mp3	1322
10021	Maps	\N	media/songs/Yeah-Yeah-Yeahs/Maps.mp3	1322
10022	Ocean Avenue	\N	media/songs/Yellowcard/Ocean-Avenue.mp3	1323
10023	The Takedown	\N	media/songs/Yellowcard/The-Takedown.mp3	1323
10024	The Takedown v2	\N	media/songs/Yellowcard/The-Takedown-v2.mp3	1323
10025	Heart Of The Sunrise	\N	media/songs/Yes/Heart-Of-The-Sunrise.mp3	1324
10026	Long Distance Runaround	\N	media/songs/Yes/Long-Distance-Runaround.mp3	1324
10027	Love Will Find A Way	\N	media/songs/Yes/Love-Will-Find-A-Way.mp3	1324
10028	Owner Of A Lonely Heart	\N	media/songs/Yes/Owner-Of-A-Lonely-Heart.mp3	1324
10029	Owner Of A Lonely Heart v2	\N	media/songs/Yes/Owner-Of-A-Lonely-Heart-v2.mp3	1324
10030	Owner Of A Lonely Heart v3	\N	media/songs/Yes/Owner-Of-A-Lonely-Heart-v3.mp3	1324
10031	Roundabout	\N	media/songs/Yes/Roundabout.mp3	1324
10032	Roundabout v2	\N	media/songs/Yes/Roundabout-v2.mp3	1324
10033	South Side Of The Sky	\N	media/songs/Yes/South-Side-Of-The-Sky.mp3	1324
10034	Adagio	\N	media/songs/Yngwie-Malmsteen/Adagio.mp3	1325
10035	Aftermath	\N	media/songs/Yngwie-Malmsteen/Aftermath.mp3	1325
10036	Allegro	\N	media/songs/Yngwie-Malmsteen/Allegro.mp3	1325
10037	Alone In Paradise	\N	media/songs/Yngwie-Malmsteen/Alone-In-Paradise.mp3	1325
10038	Amberdawn	\N	media/songs/Yngwie-Malmsteen/Amberdawn.mp3	1325
10039	Amberdawn v2	\N	media/songs/Yngwie-Malmsteen/Amberdawn-v2.mp3	1325
10041	Anguish And Fear	\N	media/songs/Yngwie-Malmsteen/Anguish-And-Fear.mp3	1325
10042	Arpeggios From Hell	\N	media/songs/Yngwie-Malmsteen/Arpeggios-From-Hell.mp3	1325
10043	Arpeggios From Hell v2	\N	media/songs/Yngwie-Malmsteen/Arpeggios-From-Hell-v2.mp3	1325
10044	As Above So Below	\N	media/songs/Yngwie-Malmsteen/As-Above-So-Below.mp3	1325
10045	Bad Blood	\N	media/songs/Yngwie-Malmsteen/Bad-Blood.mp3	1325
10046	Baroque And Roll	\N	media/songs/Yngwie-Malmsteen/Baroque-And-Roll.mp3	1325
10047	Beethovens 5th Symphony	\N	media/songs/Yngwie-Malmsteen/Beethovens-5th-Symphony.mp3	1325
10048	Beethovens 5th Symphony v2	\N	media/songs/Yngwie-Malmsteen/Beethovens-5th-Symphony-v2.mp3	1325
10049	Black Star	\N	media/songs/Yngwie-Malmsteen/Black-Star.mp3	1325
10050	Black Star v2	\N	media/songs/Yngwie-Malmsteen/Black-Star-v2.mp3	1325
10051	Black Star v3	\N	media/songs/Yngwie-Malmsteen/Black-Star-v3.mp3	1325
10052	Blitzkrieg	\N	media/songs/Yngwie-Malmsteen/Blitzkrieg.mp3	1325
10053	Blitzkrieg v2	\N	media/songs/Yngwie-Malmsteen/Blitzkrieg-v2.mp3	1325
10054	Blue	\N	media/songs/Yngwie-Malmsteen/Blue.mp3	1325
10055	Blue v2	\N	media/songs/Yngwie-Malmsteen/Blue-v2.mp3	1325
10056	Brothers	\N	media/songs/Yngwie-Malmsteen/Brothers.mp3	1325
10057	Cantabile	\N	media/songs/Yngwie-Malmsteen/Cantabile.mp3	1325
10058	Capricci Di Diablo	\N	media/songs/Yngwie-Malmsteen/Capricci-Di-Diablo.mp3	1325
10059	Cavalino Rampante	\N	media/songs/Yngwie-Malmsteen/Cavalino-Rampante.mp3	1325
10060	Crash And Burn	\N	media/songs/Yngwie-Malmsteen/Crash-And-Burn.mp3	1325
10061	Cry No More	\N	media/songs/Yngwie-Malmsteen/Cry-No-More.mp3	1325
10062	Crying	\N	media/songs/Yngwie-Malmsteen/Crying.mp3	1325
10063	Deja Vu	\N	media/songs/Yngwie-Malmsteen/Deja-Vu.mp3	1325
10064	Demon Driver	\N	media/songs/Yngwie-Malmsteen/Demon-Driver.mp3	1325
10065	Dreaming	\N	media/songs/Yngwie-Malmsteen/Dreaming.mp3	1325
10066	Eclipse	\N	media/songs/Yngwie-Malmsteen/Eclipse.mp3	1325
10067	Far Beyond The Sun	\N	media/songs/Yngwie-Malmsteen/Far-Beyond-The-Sun.mp3	1325
10068	Far Beyond The Sun v2	\N	media/songs/Yngwie-Malmsteen/Far-Beyond-The-Sun-v2.mp3	1325
10069	Far Beyond The Sun v3	\N	media/songs/Yngwie-Malmsteen/Far-Beyond-The-Sun-v3.mp3	1325
10070	Far Beyond The Sun v4	\N	media/songs/Yngwie-Malmsteen/Far-Beyond-The-Sun-v4.mp3	1325
10071	Fire In The Sky	\N	media/songs/Yngwie-Malmsteen/Fire-In-The-Sky.mp3	1325
10072	Forever Is A Long Time	\N	media/songs/Yngwie-Malmsteen/Forever-Is-A-Long-Time.mp3	1325
10073	Forever One	\N	media/songs/Yngwie-Malmsteen/Forever-One.mp3	1325
10074	Fugue	\N	media/songs/Yngwie-Malmsteen/Fugue.mp3	1325
10075	Heaven Tonight	\N	media/songs/Yngwie-Malmsteen/Heaven-Tonight.mp3	1325
10076	Hold On	\N	media/songs/Yngwie-Malmsteen/Hold-On.mp3	1325
10077	How Many Miles To Babylon	\N	media/songs/Yngwie-Malmsteen/How-Many-Miles-To-Babylon.mp3	1325
10078	I Am A Viking	\N	media/songs/Yngwie-Malmsteen/I-Am-A-Viking.mp3	1325
10079	I Am A Viking v2	\N	media/songs/Yngwie-Malmsteen/I-Am-A-Viking-v2.mp3	1325
10080	I Am A Viking v3	\N	media/songs/Yngwie-Malmsteen/I-Am-A-Viking-v3.mp3	1325
10081	I Dont Know	\N	media/songs/Yngwie-Malmsteen/I-Dont-Know.mp3	1325
10082	I Dont Know v2	\N	media/songs/Yngwie-Malmsteen/I-Dont-Know-v2.mp3	1325
10083	Icarus Dream Fanfare	\N	media/songs/Yngwie-Malmsteen/Icarus-Dream-Fanfare.mp3	1325
10084	Icarus Dream Suite Opus 4	\N	media/songs/Yngwie-Malmsteen/Icarus-Dream-Suite-Opus-4.mp3	1325
10085	Ill See The Light Tonight	\N	media/songs/Yngwie-Malmsteen/Ill-See-The-Light-Tonight.mp3	1325
10086	Leonardo	\N	media/songs/Yngwie-Malmsteen/Leonardo.mp3	1325
10087	Leviathan	\N	media/songs/Yngwie-Malmsteen/Leviathan.mp3	1325
10088	Leviathan v2	\N	media/songs/Yngwie-Malmsteen/Leviathan-v2.mp3	1325
10089	Like An Angel	\N	media/songs/Yngwie-Malmsteen/Like-An-Angel.mp3	1325
10090	Like An Angel v2	\N	media/songs/Yngwie-Malmsteen/Like-An-Angel-v2.mp3	1325
10091	Little Savage	\N	media/songs/Yngwie-Malmsteen/Little-Savage.mp3	1325
10092	Majestic Blue	\N	media/songs/Yngwie-Malmsteen/Majestic-Blue.mp3	1325
10093	Making Love	\N	media/songs/Yngwie-Malmsteen/Making-Love.mp3	1325
10094	Marching Out	\N	media/songs/Yngwie-Malmsteen/Marching-Out.mp3	1325
10095	Meant To Be	\N	media/songs/Yngwie-Malmsteen/Meant-To-Be.mp3	1325
10096	Never Die	\N	media/songs/Yngwie-Malmsteen/Never-Die.mp3	1325
10097	Now Is The Time	\N	media/songs/Yngwie-Malmsteen/Now-Is-The-Time.mp3	1325
10098	Now Your Ships Are Burning	\N	media/songs/Yngwie-Malmsteen/Now-Your-Ships-Are-Burning.mp3	1325
10099	On The Run Again	\N	media/songs/Yngwie-Malmsteen/On-The-Run-Again.mp3	1325
10100	Overture 1383	\N	media/songs/Yngwie-Malmsteen/Overture-1383.mp3	1325
10101	Overture 1622	\N	media/songs/Yngwie-Malmsteen/Overture-1622.mp3	1325
10102	Perpetual	\N	media/songs/Yngwie-Malmsteen/Perpetual.mp3	1325
10103	Prelidium	\N	media/songs/Yngwie-Malmsteen/Prelidium.mp3	1325
10104	Prelude To April	\N	media/songs/Yngwie-Malmsteen/Prelude-To-April.mp3	1325
10105	Presto Vivace Finale	\N	media/songs/Yngwie-Malmsteen/Presto-Vivace-Finale.mp3	1325
10106	Queen In Love	\N	media/songs/Yngwie-Malmsteen/Queen-In-Love.mp3	1325
10107	Requiem	\N	media/songs/Yngwie-Malmsteen/Requiem.mp3	1325
10108	Riot In The Dungeons	\N	media/songs/Yngwie-Malmsteen/Riot-In-The-Dungeons.mp3	1325
10109	Rise Up	\N	media/songs/Yngwie-Malmsteen/Rise-Up.mp3	1325
10110	Rising Force	\N	media/songs/Yngwie-Malmsteen/Rising-Force.mp3	1325
10111	Save Our Love	\N	media/songs/Yngwie-Malmsteen/Save-Our-Love.mp3	1325
10112	Ship Of Fools	\N	media/songs/Yngwie-Malmsteen/Ship-Of-Fools.mp3	1325
10113	Sorrow	\N	media/songs/Yngwie-Malmsteen/Sorrow.mp3	1325
10114	The Seventh Sign	\N	media/songs/Yngwie-Malmsteen/The-Seventh-Sign.mp3	1325
10115	Trilogy Suite Opus 5	\N	media/songs/Yngwie-Malmsteen/Trilogy-Suite-Opus-5.mp3	1325
10116	Vengeance	\N	media/songs/Yngwie-Malmsteen/Vengeance.mp3	1325
10117	Vengeance v2	\N	media/songs/Yngwie-Malmsteen/Vengeance-v2.mp3	1325
10118	You Dont Remember Ill Never Forget	\N	media/songs/Yngwie-Malmsteen/You-Dont-Remember-Ill-Never-Forget.mp3	1325
10119	Goodnight Julia	\N	media/songs/Yoko-Kanno/Goodnight-Julia.mp3	1326
10120	Finders Keepers	\N	media/songs/You-Me-At-Six/Finders-Keepers.mp3	1327
10121	Trophy Eyes	\N	media/songs/You-Me-At-Six/Trophy-Eyes.mp3	1327
10122	Pollito	\N	media/songs/Yucatan-A-Go-Go/Pollito.mp3	1328
10123	Asteroide	\N	media/songs/Zoe/Asteroide.mp3	1329
10124	Dead	\N	media/songs/Zoe/Dead.mp3	1329
10125	Dead v2	\N	media/songs/Zoe/Dead-v2.mp3	1329
10126	Miel	\N	media/songs/Zoe/Miel.mp3	1329
10127	Shes Not There	\N	media/songs/Zombies/Shes-Not-There.mp3	1330
10128	Tell Her No	\N	media/songs/Zombies/Tell-Her-No.mp3	1330
10129	Blue Jean Blues	\N	media/songs/ZZ-Top/Blue-Jean-Blues.mp3	1331
10130	Blue Jean Blues v2	\N	media/songs/ZZ-Top/Blue-Jean-Blues-v2.mp3	1331
10131	Cheap Sunglasses	\N	media/songs/ZZ-Top/Cheap-Sunglasses.mp3	1331
10132	Cheap Sunglasses v2	\N	media/songs/ZZ-Top/Cheap-Sunglasses-v2.mp3	1331
10133	Cheap Sunglasses v3	\N	media/songs/ZZ-Top/Cheap-Sunglasses-v3.mp3	1331
10134	Cheap Sunglasses v4	\N	media/songs/ZZ-Top/Cheap-Sunglasses-v4.mp3	1331
10135	Cheap Sunglasses v5	\N	media/songs/ZZ-Top/Cheap-Sunglasses-v5.mp3	1331
10136	Fool For Your Stockings	\N	media/songs/ZZ-Top/Fool-For-Your-Stockings.mp3	1331
10137	Gimme All Your Lovin	\N	media/songs/ZZ-Top/Gimme-All-Your-Lovin.mp3	1331
10138	Gimme All Your Lovin v2	\N	media/songs/ZZ-Top/Gimme-All-Your-Lovin-v2.mp3	1331
10139	Gimme All Your Lovin v3	\N	media/songs/ZZ-Top/Gimme-All-Your-Lovin-v3.mp3	1331
10140	Gimme All Your Loving	\N	media/songs/ZZ-Top/Gimme-All-Your-Loving.mp3	1331
10141	Got Me Under Pressure	\N	media/songs/ZZ-Top/Got-Me-Under-Pressure.mp3	1331
10142	Got Me Under Pressure v2	\N	media/songs/ZZ-Top/Got-Me-Under-Pressure-v2.mp3	1331
10143	Got Me Under Pressure v3	\N	media/songs/ZZ-Top/Got-Me-Under-Pressure-v3.mp3	1331
10144	Heard It On The X	\N	media/songs/ZZ-Top/Heard-It-On-The-X.mp3	1331
10145	Hey Joe	\N	media/songs/ZZ-Top/Hey-Joe.mp3	1331
10146	I Need You Tonight	\N	media/songs/ZZ-Top/I-Need-You-Tonight.mp3	1331
10147	I Need You Tonight v2	\N	media/songs/ZZ-Top/I-Need-You-Tonight-v2.mp3	1331
10148	I Need You Tonight v3	\N	media/songs/ZZ-Top/I-Need-You-Tonight-v3.mp3	1331
10149	Im Bad  Im Nationwide	\N	media/songs/ZZ-Top/Im-Bad--Im-Nationwide.mp3	1331
10150	Im Bad  Im Nationwide v2	\N	media/songs/ZZ-Top/Im-Bad--Im-Nationwide-v2.mp3	1331
10151	Just Got Paid	\N	media/songs/ZZ-Top/Just-Got-Paid.mp3	1331
10152	Just Got Paid v2	\N	media/songs/ZZ-Top/Just-Got-Paid-v2.mp3	1331
10153	Just Got Paid v3	\N	media/songs/ZZ-Top/Just-Got-Paid-v3.mp3	1331
10154	Just Got Paid v4	\N	media/songs/ZZ-Top/Just-Got-Paid-v4.mp3	1331
10155	La Grange	\N	media/songs/ZZ-Top/La-Grange.mp3	1331
10156	La Grange v2	\N	media/songs/ZZ-Top/La-Grange-v2.mp3	1331
10157	La Grange v3	\N	media/songs/ZZ-Top/La-Grange-v3.mp3	1331
10158	La Grange v4	\N	media/songs/ZZ-Top/La-Grange-v4.mp3	1331
10159	La Grange v5	\N	media/songs/ZZ-Top/La-Grange-v5.mp3	1331
10160	La Grange v6	\N	media/songs/ZZ-Top/La-Grange-v6.mp3	1331
10161	La Grange v7	\N	media/songs/ZZ-Top/La-Grange-v7.mp3	1331
10162	La Grange v8	\N	media/songs/ZZ-Top/La-Grange-v8.mp3	1331
10163	La Grange v9	\N	media/songs/ZZ-Top/La-Grange-v9.mp3	1331
10164	Legs	\N	media/songs/ZZ-Top/Legs.mp3	1331
10165	Legs v2	\N	media/songs/ZZ-Top/Legs-v2.mp3	1331
10166	Master Of Sparks	\N	media/songs/ZZ-Top/Master-Of-Sparks.mp3	1331
10167	Move Me On Down The Line	\N	media/songs/ZZ-Top/Move-Me-On-Down-The-Line.mp3	1331
10168	Nasty Dogs And Funky Kings	\N	media/songs/ZZ-Top/Nasty-Dogs-And-Funky-Kings.mp3	1331
10169	Pearl Necklace	\N	media/songs/ZZ-Top/Pearl-Necklace.mp3	1331
10170	Precious And Grace	\N	media/songs/ZZ-Top/Precious-And-Grace.mp3	1331
10171	Rough Boy	\N	media/songs/ZZ-Top/Rough-Boy.mp3	1331
10172	Rough Boy v2	\N	media/songs/ZZ-Top/Rough-Boy-v2.mp3	1331
10173	Rough Boy v3	\N	media/songs/ZZ-Top/Rough-Boy-v3.mp3	1331
10174	Sharp Dressed Man	\N	media/songs/ZZ-Top/Sharp-Dressed-Man.mp3	1331
10175	Sharp Dressed Man v2	\N	media/songs/ZZ-Top/Sharp-Dressed-Man-v2.mp3	1331
10176	Sharp Dressed Man v3	\N	media/songs/ZZ-Top/Sharp-Dressed-Man-v3.mp3	1331
10177	Sharp Dressed Man v4	\N	media/songs/ZZ-Top/Sharp-Dressed-Man-v4.mp3	1331
10178	Sharp Dressed Man v5	\N	media/songs/ZZ-Top/Sharp-Dressed-Man-v5.mp3	1331
10179	Sharp Dressed Man v6	\N	media/songs/ZZ-Top/Sharp-Dressed-Man-v6.mp3	1331
10180	Sharp Dressed Men	\N	media/songs/ZZ-Top/Sharp-Dressed-Men.mp3	1331
10181	Sheik	\N	media/songs/ZZ-Top/Sheik.mp3	1331
10182	Tube Snake Boogie	\N	media/songs/ZZ-Top/Tube-Snake-Boogie.mp3	1331
10183	Tush	\N	media/songs/ZZ-Top/Tush.mp3	1331
10184	Tush v2	\N	media/songs/ZZ-Top/Tush-v2.mp3	1331
10185	Tush v3	\N	media/songs/ZZ-Top/Tush-v3.mp3	1331
10186	Tush v4	\N	media/songs/ZZ-Top/Tush-v4.mp3	1331
10187	Tush v5	\N	media/songs/ZZ-Top/Tush-v5.mp3	1331
10188	Waiting For The Bus	\N	media/songs/ZZ-Top/Waiting-For-The-Bus.mp3	1331
10189	Waiting For The Bus v2	\N	media/songs/ZZ-Top/Waiting-For-The-Bus-v2.mp3	1331
10190	Waiting On The Bus	\N	media/songs/ZZ-Top/Waiting-On-The-Bus.mp3	1331
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: songs_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.songs_artist_id_seq', 1331, true);


--
-- Name: songs_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.songs_song_id_seq', 10190, true);


--
-- PostgreSQL database dump complete
--

